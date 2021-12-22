<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use DB;
use Helper;
use App\Models\PromotionalVideo;
class AskerController 
{

    /**
     * Country code Api
     * 
     * @author chandani
     * @return json
     */
    public function createAsker(Request $request){
        if(isset($request->user_id) && isset($request->job_title) &&isset($request->job_author)){
            $asker = \App\Models\Job::where('user_id',$request->user_id)->where('title',$request->job_title)->first();
            $data = [];
            if(!empty($asker)){
                $client = \Aws\S3\S3Client::factory([
                    'version' => '2006-03-01',
                    'region' => env('AWS_DEFAULT_REGION'),
                    'signature_version' => 'v4',
                    'credentials' => [
                        'key' => env('AWS_ACCESS_KEY_ID'),
                        'secret' => env('AWS_SECRET_ACCESS_KEY')
                    ]
                ]);
                if(isset($request->job_profile)){
                    $file = time()."".$request->file('job_profile').".".$request->file('job_profile')->getClientOriginalExtension();
                    $client->putObject(
                        array(
                            'Bucket'=>env('AWS_BUCKET'),
                            'Key' => $file,
                            'ACL' => 'public-read', 
                            // 'CacheControl'=> 'max-age=31536000',
                            'SourceFile' => $request->job_profile,
                        )
                    );

                    $create_asker = \App\Models\Job::where('user_id',$request->user_id)->update(['title'=>$request->job_title,'author'=>$request->author,'asker_image'=>$file]);
                
                    $already_asker = \App\Models\Job::where('user_id',$asker->user_id)->where('title',$request->job_title)->where('author',$request->job_author)->select('id','user_id')->first();
    
                        //Helper::print_exit($already_asker);
                    $data['id'] = $create_asker;
                    $data['status'] = true;
                    // $data['message'] = "data success";
                    $data['message'] = Helper::lang_message('ASKER_CREATE_AUTHOR');
                    // $data['status'] = false;
                    // $data['message'] = "No Data Found.";
                }else{
                    $create_asker = \App\Models\Job::create([
                        'user_id'=>$request->user_id,
                        'title'=>$request->job_title,
                        'author'=>$request->job_author
                    ]);
                    $already_asker = \App\Models\Job::where('user_id',$request->user_id)->where('title',$request->job_title)->where('author',$request->job_author)->select('id','user_id')->first();
                    $data['asker'] = $already_asker; 
                    $data['status'] = true;
                    $data['message'] = Helper::lang_message('ASKER_CREATE_AUTHOR');
                }
               
            }else{
                $client = \Aws\S3\S3Client::factory([
                    'version' => '2006-03-01',
                    'region' => env('AWS_DEFAULT_REGION'),
                    'signature_version' => 'v4',
                    'credentials' => [
                        'key' => env('AWS_ACCESS_KEY_ID'),
                        'secret' => env('AWS_SECRET_ACCESS_KEY')
                    ]
                ]);
                if(isset($request->job_profile)){
                    $file = time()."".$request->file('job_profile').".".$request->file('job_profile')->getClientOriginalExtension();
                    $client->putObject(
                        array(
                            'Bucket'=>env('AWS_BUCKET'),
                            'Key' => $file,
                            'ACL' => 'public-read', 
                            // 'CacheControl'=> 'max-age=31536000',
                            'SourceFile' => $request->job_profile,
                        )
                    );
                    $create_asker = \App\Models\Job::create([
                        'user_id'=>$request->user_id,
                        'title'=>$request->job_title,
                        'author'=>$request->job_author,
                        'asker_image'=>$file
                    ]);
                    // $create_asker = \App\Models\Job::where('user_id',\Auth::user()->id)->update(['title'=>$request->job_title,'author'=>$request->author,'profile'=>$file]);
                
                    // $already_asker = \App\Models\Job::where('user_id',$asker->user_id)->where('title',$request->job_title)->where('author',$request->job_author)->select('id','user_id')->first();
    
                        //Helper::print_exit($already_asker);
                    $data['id'] = $create_asker;
                    $data['status'] = true;
                    // $data['message'] = "data success";
                    $data['message'] = Helper::lang_message('ASKER_CREATE_AUTHOR');
                    // $data['status'] = false;
                    // $data['message'] = "No Data Found.";
                }else{
                    $create_asker = \App\Models\Job::create([
                        'user_id'=>$request->user_id,
                        'title'=>$request->job_title,
                        'author'=>$request->job_author
                    ]);
                    $already_asker = \App\Models\Job::where('user_id',$request->user_id)->where('title',$request->job_title)->where('author',$request->job_author)->select('id','user_id')->first();
                    $data['asker'] = $already_asker; 
                    $data['status'] = true;
                    $data['message'] = Helper::lang_message('ASKER_CREATE_AUTHOR');
                }
            }
        }else{
            $data['status'] = false;
            $data['message'] = Helper::lang_message("SEND_SMS_PARAMS_MISMATCH");
        }
        return response()->json($data);
    }

    public function askerQuestionList(Request $request){
        // Helper::print_exit($request->all());
        if(isset($request->user_id) && isset($request->asker_id) ){
            $asker = \App\Models\Job::leftJoin('questions as q','q.job_id','jobs.id')->where('jobs.user_id',$request->user_id)->where('jobs.id',$request->asker_id)->select('q.id as q_id','q.question as question')->get();
            // Helper::print_exit($asker);

            $data = [];
            $question_list = [];
            if(empty($asker)){
                $data['status'] = false;
                $data['message'] = "No Data Found.";
            }else{
                $settings = \App\Models\Settings::first();
                foreach($asker as $a_key =>$a_value){
                    $question_list[$a_key]['questions'] = $a_value['question'];
                    $question_list[$a_key]['questions_id'] = $a_value['q_id'];
                    $question_list[$a_key]['time'] = $settings['timer'];
                }
                $data['asker'] = $question_list; 
                $data['status'] = true;
                $data['message'] = Helper::lang_message('ASKER_QUESTION_LIST');
                   
            }
        }else{
            $data['status'] = false;
            $data['message'] = Helper::lang_message("SEND_SMS_PARAMS_MISMATCH");
        }
        return response()->json($data);
    }

    public function publishAsker(Request $request){
        if(isset($request->user_id) && isset($request->asker_id) ){
            $asker = \App\Models\Job::where('user_id',$request->user_id)->where('id',$request->asker_id)->first();
            $data = [];
            $question_list = [];
            if(empty($asker)){
                $data['status'] = false;
                $data['message'] = "No Data Found.";
            }else{
                $asker_code = strtoupper(\Str::random(6));
                \App\Models\Job::where('id',$request->asker_id)->where('user_id',$request->user_id)->update(['status'=>'active','asker_code'=>$asker_code]);
                $asker = \App\Models\Job::where('id',$request->asker_id)->where('user_id',$request->user_id)->select('id','user_id','asker_code')->first();
                $data['asker'] = $asker;
                $data['status'] = true;
                $data['message'] = Helper::lang_message('ASKER_PUBLISH_SUCCESS');
                   
            }
        }else{
            $data['status'] = false;
            $data['message'] = Helper::lang_message("SEND_SMS_PARAMS_MISMATCH");
        }
        return response()->json($data);
    }

    public function questionList(){
        $asker_questions = \App\Models\Question::where('job_id','0')->get()->toArray();
        $data = [];
        $asker_que = [];
        $settings = \App\Models\Settings::first();
        foreach($asker_questions as $asker_key => $asker_value){
            $asker_que[$asker_key]['id'] = $asker_value['id']; 
            $asker_que[$asker_key]['question'] = $asker_value['question']; 
            $asker_que[$asker_key]['time'] = $settings['timer']; 
        }
        $data['question'] = $asker_que;
        $data['status'] = true;
        $data['message'] = Helper::lang_message('ASKER_PREBUILD_QUESTIONS_SUCESS');
        return response()->json($data);
    }

    public function askerQuestion(Request $request)
    {
        $asker = \App\Models\Job::where('user_id',$request->user_id)->where('id',$request->asker_id)->first();
        $data = [];
        if(isset($request->question) && isset($request->user_id) && isset($request->asker_id)){
            if(!empty($asker)){
                \App\Models\Question::create([
                    'job_id'=>$request->asker_id,
                    'user_id'=>$request->user_id,
                    'question'=>$request->question
                ]);
                $questions = \App\Models\Question::where('question',$request->question)->where('job_id',$request->asker_id)->first();
                // \App\Models\Job::create([
                //     'created_job_id'=>$request->asker_id,
                //     'user_id'=>$request->user_id,
                //     'question_id'=>$questions->id
                // ]);
                $data['status'] = true;
                $data['message'] = Helper::lang_message('ASKER_QUESTIONS');
            }else{
                $data['status'] = false;
                $data['message'] = "No Data Dound";
            }
        }
        
        return response()->json($data);

        // Helper::print_exit($request->all());
    }

    public function allAsker(Request $request){
        $asker_detail = [];
        $data = [];
        // if(!empty($asker)){
            if(isset($request->user_id)){
                $asker = \App\Models\Job::where('user_id',$request->user_id)->where('asker_code','!=',NULL)->get()->toArray();
                if(!empty($asker)){
                    foreach($asker as $a_key => $a_value){
                        $all_asker = \App\Models\Job::where('id',$a_value['id'])
                                    ->where('user_id',$request->user_id)->first();
                        $ans = \App\Models\Answer::where('job_id',$all_asker['id'])->first(); 
                        $ans_id = isset($ans['id'])?$ans['id']:"";
                        if($ans_id == "" && $ans_id !== NULL && isset($ans_id)){
                                $asker_detail[$a_key]['watch_answer'] = 'n';
                                $asker_detail[$a_key]['author'] = $a_value['author'];
                                $asker_detail[$a_key]['title'] = $a_value['title'];
                                $asker_detail[$a_key]['asker_id'] = $a_value['id'];
                                $asker_detail[$a_key]['asker_code'] = $a_value['asker_code'];
                                $asker_detail[$a_key]['asker_status'] = $a_value['status'];
                        } else {
                            $asker_detail[$a_key]['watch_answer'] = 'y';
                            $asker_detail[$a_key]['author'] = $a_value['author'];
                            $asker_detail[$a_key]['title'] = $a_value['title'];
                            $asker_detail[$a_key]['asker_id'] = $a_value['id'];
                            $asker_detail[$a_key]['asker_code'] = $a_value['asker_code'];
                            $asker_detail[$a_key]['asker_status'] = $a_value['status'];

                        }
                                $data['asker'] = $asker_detail;
                                $data['status'] = true;
                                $data['message'] = Helper::lang_message('ALL_ASKER_SUCCESS');
                    }
                    
                }else{
                    $data['status'] = false;
                    $data['message'] = Helper::lang_message('ALL_ASKER_FAIL');
                }
            }else{
                $data['status'] = false;
                $data['message'] = Helper::lang_message("SEND_SMS_PARAMS_MISMATCH");
            }

        return response()->json($data);
    }

    public function activeAsker(Request $request){
        $asker_detail = [];
        $data = [];
        if(isset($request->user_id)){
            $asker = \App\Models\Job::where('user_id',$request->user_id)->where('status','active')->where('asker_code','!=',NULL)->get()->toArray();
            if(!empty($asker)){
                foreach($asker as $a_key => $a_value){
                    $all_asker = \App\Models\Job::where('id',$a_value['id'])
                                ->where('user_id',$request->user_id)->first();
                    $ans = \App\Models\Answer::where('job_id',$all_asker['id'])->first(); 
                    $ans_id = isset($ans['id'])?$ans['id']:"";
                    if($ans_id == "" && $ans_id !== NULL && isset($ans_id)){
                            $asker_detail[$a_key]['watch_answer'] = 'n';
                            $asker_detail[$a_key]['author'] = $a_value['author'];
                            $asker_detail[$a_key]['title'] = $a_value['title'];
                            $asker_detail[$a_key]['asker_id'] = $a_value['id'];
                            $asker_detail[$a_key]['asker_code'] = $a_value['asker_code'];
                            $asker_detail[$a_key]['asker_status'] = $a_value['status'];
            
                    } else {
                        $asker_detail[$a_key]['watch_answer'] = 'y';
                        $asker_detail[$a_key]['author'] = $a_value['author'];
                        $asker_detail[$a_key]['title'] = $a_value['title'];
                        $asker_detail[$a_key]['asker_id'] = $a_value['id'];
                        $asker_detail[$a_key]['asker_code'] = $a_value['asker_code'];
                        $asker_detail[$a_key]['asker_status'] = $a_value['status'];

                    }
                            $data['asker'] = $asker_detail;
                            $data['status'] = true;
                            $data['message'] = Helper::lang_message('ALL_ASKER_SUCCESS');
                }
            }else{
                $data['status'] = false;
                $data['message'] = Helper::lang_message('ALL_ASKER_FAIL');
            }
        }else{
            $data['status'] = false;
            $data['message'] = Helper::lang_message("SEND_SMS_PARAMS_MISMATCH");
        }
        return response()->json($data);
    }

    public function archivedAsker(Request $request){
        $asker_detail = [];
        $data = [];
        if(isset($request->user_id)){
            $asker = \App\Models\Job::where('user_id',$request->user_id)->where('asker_code','!=',NULL)->where('status','inactive')->get()->toArray();
            if(!empty($asker)){
                foreach($asker as $a_key => $a_value){
                    $all_asker = \App\Models\Job::where('id',$a_value['id'])
                                ->where('user_id',$request->user_id)->first();
                    $ans = \App\Models\Answer::where('job_id',$all_asker['id'])->first(); 
                    $ans_id = isset($ans['id'])?$ans['id']:"";
                    if($ans_id == "" && $ans_id !== NULL && isset($ans_id)){
                            $asker_detail[$a_key]['watch_answer'] = 'n';
                            $asker_detail[$a_key]['author'] = $a_value['author'];
                            $asker_detail[$a_key]['title'] = $a_value['title'];
                            $asker_detail[$a_key]['asker_id'] = $a_value['id'];
                            $asker_detail[$a_key]['asker_code'] = $a_value['asker_code'];
                            $asker_detail[$a_key]['asker_status'] = $a_value['status'];

                    } else {
                        $asker_detail[$a_key]['watch_answer'] = 'y';
                        $asker_detail[$a_key]['author'] = $a_value['author'];
                        $asker_detail[$a_key]['title'] = $a_value['title'];
                        $asker_detail[$a_key]['asker_id'] = $a_value['id'];
                        $asker_detail[$a_key]['asker_code'] = $a_value['asker_code'];
                        $asker_detail[$a_key]['asker_status'] = $a_value['status'];

                    }
                            $data['asker'] = $asker_detail;
                            $data['status'] = true;
                            $data['message'] = Helper::lang_message('ALL_ASKER_SUCCESS');
                }
                
            }else{
                $data['status'] = false;
                $data['message'] = Helper::lang_message('ALL_ASKER_FAIL');
            }
        }else{
            $data['status'] = false;
            $data['message'] = Helper::lang_message("SEND_SMS_PARAMS_MISMATCH");
        }
        return response()->json($data);
    }

    public function askerCode(Request $request){
        $asker = \App\Models\Job::where('status','active')->where('asker_code',$request->asker_code)->first();
        $asker_detail = [];
        $data = [];
        $questions_list = [];
        if(!empty($asker)){
            if(isset($request->user_id) && isset($request->asker_code)){
                    $all_asker = \App\Models\Job::leftJoin('questions as q','q.job_id','jobs.id')->where('jobs.id',$asker->id)->get();
                    $total_question = \App\Models\Job::leftJoin('questions as q','q.job_id','jobs.id')->where('jobs.id',$asker->id)->where('jobs.user_id',$asker->user_id)->get()->count();
                    $completed_question = \App\Models\Job::leftJoin('answers as a','a.job_id','jobs.id')->where('jobs.id',$asker->id)->where('a.user_id',$request->user_id)->get()->count();
            
                    foreach($all_asker as $ask_id =>$ask_value){
                    //    $questions = $ask_value['question_id'];
                    //    $que = \App\Models\Question::where('id',$ask_value['question_id'])->where('job_id',$ask_value['created_job_id'])->first();
                       $settings = \App\Models\Settings::first();
                       $questions_list[$ask_id]['question'] = $ask_value['question'];
                       $questions_list[$ask_id]['time'] = $settings['timer'];
                    }
                   
                        $asker_detail['question'] = $questions_list;
                        $asker_detail['author'] = $asker['author'];
                        $asker_detail['title'] = $asker['title'];
                        $asker_detail['asker_id'] = $asker['id'];
                        $asker_detail['total_question'] = $total_question;
                        $asker_detail['completed_question'] = $completed_question;
                        $data['asker'] = $asker_detail;
                        $data['status'] = true;
                        $data['message'] = Helper::lang_message('ASKER_CODE_SUCCESS');
            }else{
                $data['status'] = false;
                $data['message'] = Helper::lang_message('SEND_SMS_PARAMS_MISMATCH');
            }
        }else{
            // $data['asker'] = [];
            $data['status'] = false;
            $data['message'] = Helper::lang_message('ASKER_CODE_FAILED');
        }
        return response()->json($data);
    }

    public function submitAnswer(Request $request){
        $asker = \App\Models\Job::leftJoin('questions as q','q.job_id','jobs.id')->where('jobs.id',$request->asker_id)->where('q.id',$request->question_id)->first();
        $asker_detail = [];
        $data = [];
        $questions_list = [];
        if(!empty($asker)){
            
                if(isset($request->user_id) && isset($request->question_id) && isset($request->asker_id)){
                
                    $client = \Aws\S3\S3Client::factory([
                        'version' => '2006-03-01',
                        'region' => env('AWS_DEFAULT_REGION'),
                        'signature_version' => 'v4',
                        'credentials' => [
                            'key' => env('AWS_ACCESS_KEY_ID'),
                            'secret' => env('AWS_SECRET_ACCESS_KEY')
                        ]
                    ]);
                    if(isset($request->answer)){
                        // Helper::print_exit(time()."".$request->file('answer').".".$request->file('answer')->getClientOriginalExtension());
                        $file = time()."".$request->file('answer').".".$request->file('answer')->getClientOriginalExtension();
                        $client->putObject(
                            array(
                                'Bucket'=>env('AWS_BUCKET'),
                                'Key' => $file,
                                'ACL' => 'public-read', 
                                // 'CacheControl'=> 'max-age=31536000',
                                'SourceFile' => $request->answer,
                            )
                        );
                        $all_asker = \App\Models\Answer::create([
                            'user_id'=>$request->user_id,
                            'question_id'=>$request->question_id,
                            'job_id'=>$request->asker_id,
                            'answer'=>$file
                        ]);
                        $asker_ans = \App\Models\Answer::where(['user_id'=>$request->user_id,'question_id'=>$request->question_id,'job_id'=>$request->asker_id,'answer'=>time()."".$request->answer])->select('id')->first();
                        // \App\Models\Job::where(['created_job_id'=>$request->asker_id,'question_id'=>$request->question_id,'user_id'=>$request->user_id])->update(['answer_id'=>$asker_ans['id']]);
                            $data['status'] = true;
                            $data['message'] = Helper::lang_message('SUBMIT_ANSWER_SUCCESS');
                    }else{
                            $data['asker'] = [];
                            $data['status'] = false;
                            $data['message'] = Helper::lang_message('SUBMIT_ANSWER_FAILED');
                    }
                    
                        
                }else{
                    $data['status'] = false;
                    $data['message'] = Helper::lang_message('SEND_SMS_PARAMS_MISMATCH');
                }
            
            
        }else{
            $data['asker'] = [];
            $data['status'] = false;
            $data['message'] = Helper::lang_message('SUBMIT_ANSWER_FAILED');
        }
        return response()->json($data);
    }

    public function nextQuestionList(Request $request){
        $asker = \App\Models\Job::where('id',$request->asker_id)->select('user_id')->first();
        $total_question = \App\Models\Job::leftJoin('questions as q','q.job_id','jobs.id')->where('jobs.id',$request->asker_id)->where('jobs.user_id',$asker->user_id)->get()->count();
        $completed_question = \App\Models\Job::leftJoin('answers as a','a.job_id','jobs.id')->where('jobs.id',$request->asker_id)->where('a.user_id',$request->user_id)->get()->count();
        if($total_question !== 0 &&  $completed_question !== 0){
            $percentage = $completed_question/$total_question*100;
        }else{
            $percentage = 0;
        }
        $question_list = [];
        $data = [];
        $questions = \App\Models\Job::leftJoin('questions as q','q.job_id','jobs.id')->where('jobs.id',$request->asker_id)->select('jobs.*','q.id as question_id','q.question as questions')->get()->toArray();
        if(!empty($questions)){
            if(isset($request->user_id) && isset($request->asker_id)){
                foreach($questions as $q_key => $q_value){
                    // Helper::print_exit($q_value);
                    // $question = \App\Models\Question::where('id',$q_value['question_id'])->where('job_id',$request->asker_id)->first();
                    $settings = \App\Models\Settings::first();
                    $answers = \App\Models\Answer::where('job_id',$request->asker_id)->where('question_id',$q_value['question_id'])->where('user_id',$request->user_id)->first();
                    if(empty($answers)){

                        $question_list[$q_key]['question_id'] = $q_value['question_id'];
                        $question_list[$q_key]['title'] = $q_value['questions'];
                        $question_list[$q_key]['time'] = $settings['timer'];
                        $question_list[$q_key]['submitted_answer'] = "n";
                    }else{
                        $question_list[$q_key]['question_id'] = $q_value['question_id'];
                        $question_list[$q_key]['title'] = $q_value['questions'];
                        $question_list[$q_key]['time'] = $settings['timer'];
                        $question_list[$q_key]['submitted_answer'] = "y";
                    }
                        $data['question_list'] = $question_list;
                        $data['total_question'] = $total_question;
                        $data['total_answered_question'] = $completed_question;
                        $data['percentage'] = $percentage;
                        $data['asker_id'] = $request->asker_id;
                        $data['user_id'] = $request->user_id;
                        $data['status'] = true;
                        $data['message'] = Helper::lang_message('ASKER_NEXT_QUESTION_LIST_SUCCESS');
                }
    
            }else{
                $data['status'] = false;
                $data['message'] = Helper::lang_message('ASKER_NEXT_QUESTION_LIST_FAILED');    
            }
        }else{
            $data['status'] = false;
            $data['message'] = Helper::lang_message('SEND_SMS_PARAMS_MISMATCH');
        }
        return response()->json($data);
    }

    public function sendAnswers(Request $request){
        $asker = \App\Models\Job::where('id',$request->asker_id)->where('user_id',$request->user_id)->first();
        $data = [];
        if($request->completed_questions == $request->total_questions){
            \App\Models\User::where('id',$request->user_id)->update(['job_status'=>'completed']);
            $data['status'] = true;
            $data['message'] = Helper::lang_message('SEND_ANSWER_TO_ASKER_SUCCESS');
        }else{
            $data['status'] = false;
            $data['message'] = Helper::lang_message('SEND_ANSWER_TO_ASKER_FAILED');
        }
        return response()->json($data);
    }

    public function videoRating(Request $request)
    {
        $data = [];
        if(isset($request->user_id) && isset($request->asker_id) && isset($request->question_id) && isset($request->answer_id) && isset($request->rating)){
            $asker = \App\Models\Answer::where('job_id',$request->asker_id)->where('user_id',$request->user_id)->where('id',$request->answer_id)->where('question_id',$request->question_id)->first();
            if(!empty($asker)){
                $asker = \App\Models\Answer::where('job_id',$request->asker_id)->where('user_id',$request->user_id)->where('id',$request->answer_id)->where('question_id',$request->question_id)->update([
                    'rating'=>$request->rating
                ]);
                $data['status'] = true;
                $data['message'] = Helper::lang_message('VIDEO_RATING_SUCCESS');    
            }else{
                $data['status'] = false;
                $data['message'] = Helper::lang_message('VIDEO_RATING_FAILED');
            }
        }else{
            $data['status'] = false;
            $data['message'] = Helper::lang_message('SEND_SMS_PARAMS_MISMATCH');
        }
        return response()->json($data);
    }

    public function viewAnswers(Request $request){
        $asker = \App\Models\Job::where('user_id',$request->user_id)->where('id',$request->asker_id)->first();
            if(isset($request->user_id) && isset($request->asker_id)){
                $answers = \App\Models\Answer::LeftJoin('users as u','u.id','answers.user_id')
                        ->leftJoin('jobs as j','j.id','answers.job_id')
                        ->where('answers.job_id',$request->asker_id)
                        ->select('j.*','answers.user_id as answer_user_id','answers.answer as answers','u.*')
                        ->groupBy('answers.user_id')
                        ->get()->toArray();

                $questions_ids = \App\Models\Question::select(DB::raw('group_concat(id) as ids'))->where('job_id',$_REQUEST['asker_id'])->where('user_id',$_REQUEST['user_id'])->first();
                $qids = [];
                if($questions_ids){
                    $qids = explode(',',$questions_ids->ids);
                }

                            if(!empty($answers)){
                                $asker_details = [];

                                foreach($answers as $a_key => $a_value){
                                    $questions = \App\Models\Question::where('job_id',$request->asker_id)->where('user_id',$a_value['user_id'])->get()->count();
                                    // $answer_rating = \App\Models\Answer::LeftJoin('questions as q','q.job_id','answers.job_id')
                                    //                 ->where('answers.job_id',$request->asker_id)
                                    //                 ->where('q.user_id',$request->user_id)->where('q.job_id',$request->asker_id)->get()->count();
                                    $answer_rating = \App\Models\Answer::where('job_id',$request->asker_id)->where('user_id',$a_value['answer_user_id'])->whereIn('question_id', $qids)->get()->count();
                                    //Helper::print_exit($answer_rating);
                                    $answer_rating_sum = \App\Models\Answer::where('job_id',$request->asker_id)->where('user_id',$a_value['answer_user_id'])->where('rating','!=',NULL)->sum('rating');
                                    if($questions !== 0 && $answer_rating_sum !== 0){
                                        $ans_average = $answer_rating_sum/$questions;
                                    }else{
                                        $ans_average = 0;
                                    }
                                    $asker_details[$a_key]['candidate_user_id'] = $a_value['id'];
                                    $asker_details[$a_key]['name'] = $a_value['name'];
                                    $asker_details[$a_key]['rating'] = round($ans_average,2);
                                    $asker_details[$a_key]['total_answers'] = $answer_rating;
                                    $asker_details[$a_key]['email'] = $a_value['email'];
                                    $asker_details[$a_key]['mobile_number'] = $a_value['phone'];
                                    $asker_details[$a_key]['country_code'] = $a_value['country_code'];
                                }

                                $data['data']['asker_detail'] = $asker_details;
                                $data['data']['asker_title'] = $answers[0]['title'];
                                $data['data']['asker_id'] = $answers[0]['id'];
                                $data['data']['asker_author'] = $answers[0]['author'];
                                $data['data']['asker_code'] = $answers[0]['asker_code'];
                                $data['status'] = true;
                                $data['message'] = Helper::lang_message('VIEW_ANSWERS_SUCCESS');
                            }else{
                                $data['status'] = false;
                                $data['message'] = Helper::lang_message('VIEW_ANSWERS_FAILED');
                            }
                
            }else{
                $data['status'] = false;
                $data['message'] = Helper::lang_message('SEND_SMS_PARAMS_MISMATCH');

            }
            return response()->json($data);
    }

    public function inactiveAsker(Request $request){
        if(isset($request->user_id) && isset($request->asker_id) && isset($request->asker_status)){
            $data = [];
            $asker = \App\Models\Job::where('id',$request->asker_id)->where('user_id',$request->user_id)->first();
            if(!empty($asker)){
                $asker->update(['status'=>$request->asker_status=="i"?"inactive":'active']);
                $data['status'] = true;
                $data['message'] = Helper::lang_message('INACTIVE_STATUS_SUCCESS');
            }else{
                $data['status'] = false;
                $data['message'] = Helper::lang_message('INACTIVE_STATUS_FAILED');
            }
        }else{
            $data['status'] = false;
            $data['message'] = Helper::lang_message('SEND_SMS_PARAMS_MISMATCH');
        }
        return response()->json($data);
    }

    public function askerTitle(Request $request){
        if(isset($request->user_id) && isset($request->asker_id) && isset($request->asker_title) && isset($request->asker_author)){
            $data = [];
            $asker = \App\Models\Job::where('id',$request->asker_id)->where('user_id',$request->user_id)->first();
            if(!empty($asker)){
                $client = \Aws\S3\S3Client::factory([
                    'version' => '2006-03-01',
                    'region' => env('AWS_DEFAULT_REGION'),
                    'signature_version' => 'v4',
                    'credentials' => [
                        'key' => env('AWS_ACCESS_KEY_ID'),
                        'secret' => env('AWS_SECRET_ACCESS_KEY')
                    ]
                ]);
                if(isset($request->job_profile)){
                    $file = time()."".$request->file('job_profile').".".$request->file('job_profile')->getClientOriginalExtension();
                    $client->putObject(
                        array(
                            'Bucket'=>env('AWS_BUCKET'),
                            'Key' => $file,
                            'ACL' => 'public-read', 
                            // 'CacheControl'=> 'max-age=31536000',
                            'SourceFile' => $request->job_profile,
                        )
                    );
                    $asker->update(['title'=>$request->asker_title,'author'=>$request->asker_author,'asker_image'=>$file]);
                $updated_asker = \App\Models\Job::where('id',$request->asker_id)->where('user_id',$request->user_id)->first();
                $data['asker_title'] = $updated_asker['title'];
                $data['asker_author'] = $updated_asker['author'];
                $data['status'] = true;
                $data['message'] = Helper::lang_message('INACTIVE_STATUS_SUCCESS');
                }else{
                    $asker->update(['title'=>$request->asker_title,'author'=>$request->asker_author]);
                    $updated_asker = \App\Models\Job::where('id',$request->asker_id)->where('user_id',$request->user_id)->first();
                    $data['asker_title'] = $updated_asker['title'];
                    $data['asker_author'] = $updated_asker['author'];
                    $data['status'] = true;
                    $data['message'] = Helper::lang_message('INACTIVE_STATUS_SUCCESS');
                }
            }else{
                $data['status'] = false;
                $data['message'] = Helper::lang_message('INACTIVE_STATUS_FAILED');
            }
        }else{
            $data['status'] = false;
            $data['message'] = Helper::lang_message('SEND_SMS_PARAMS_MISMATCH');
        }
        return response()->json($data);
    }

    public function askerEditQuestion(Request $request){
        $data = [];
        if(isset($request->user_id) && isset($request->asker_id) && isset($request->question_id) && isset($request->question)){
            $asker = \App\Models\Question::where('id',$request->question_id)->where('user_id',$request->user_id)->where('job_id',$request->asker_id)->first();
            if(!empty($asker)){
                $asker->update(['question'=>$request->question]);
                $updated_asker = \App\Models\Question::where('id',$request->question_id)->where('user_id',$request->user_id)->where('job_id',$request->asker_id)->first();
                $data['updated_question'] = $updated_asker['question'];
                $data['status'] = true;
                $data['message'] = Helper::lang_message('INACTIVE_STATUS_SUCCESS');
            }else{
                $data['status'] = false;
                $data['message'] = Helper::lang_message('INACTIVE_STATUS_FAILED');
            }
        }else{
            $data['status'] = false;
            $data['message'] = Helper::lang_message('SEND_SMS_PARAMS_MISMATCH');
        }
        return response()->json($data);
    }

    public function shareAsker(Request $request){
        $data = [];
        if(isset($request->user_id) && isset($request->asker_id)){
            $asker = \App\Models\Job::where('id',$request->asker_id)->where('user_id',$request->user_id)->first();
            if(!empty($asker)){
                $data['asker_code'] = $asker['asker_code'];
                $data['status'] = true;
                $data['message'] = Helper::lang_message('ASKER_CODE_SUCCESS');
            }else{
                $data['status'] = false;
                $data['message'] = Helper::lang_message('ASKER_CODE_FAILED');
            }
        }else{
            $data['status'] = false;
            $data['message'] = Helper::lang_message('SEND_SMS_PARAMS_MISMATCH');
        }
        return response()->json($data);
    }

    public function answerList(Request $request){
        $data = [];
            $asker = \App\Models\Job::where('id',$request->asker_id)->first();
            if(!empty($asker)){
                if(isset($request->candidate_user_id) && isset($request->asker_id)){

                    $answer = \App\Models\Answer::leftJoin('questions as q','q.id','answers.question_id')->select('answers.*','q.*','answers.id as aid','answers.user_id as auid')->where('answers.job_id',$request->asker_id)->where('answers.user_id',$request->candidate_user_id)->groupBy('answers.question_id')->get();
                    
                    $question_list = [];
                    if(sizeof($answer) > 0){
                        foreach($answer as $q_key => $q_value){
                            $question_list[$q_key]['question'] = $q_value['question'];
                            $question_list[$q_key]['question_id'] = $q_value['id'];
                            
                            // $question_list[$q_key]['answer'] = "https://askercoretus.s3.ap-south-1.amazonaws.com/".$q_value['answer'];
                            $question_list[$q_key]['answer'] = "https://askerweb.s3.us-east-2.amazonaws.com/".$q_value['answer'];
                            $question_list[$q_key]['answer_id'] = $q_value['aid'];
                            $question_list[$q_key]['answer_user_id'] = $q_value['auid'];
                            $question_list[$q_key]['rating'] = $q_value['rating'] == NULL ?0:round($q_value['rating'],2);

                            $data['answer_list'] = $question_list;
                            $data['asker_title'] = $asker['title'];      
                            $data['asker_author'] = $asker['author'];      
                            $data['asker_id'] = $asker['id'];      
                            $data['status'] = true;
                            $data['message'] = Helper::lang_message('ANSWER_LIST_SUCCESS');
                        }
                    }else{
                        $data['status'] = false;
                        $data['message'] = Helper::lang_message('ANSWER_LIST_FAILED');
                    }
                
                }else{
                    $data['status'] = false;
                    $data['message'] = Helper::lang_message('SEND_SMS_PARAMS_MISMATCH');
                }
            }else{
                $data['status'] = false;
                $data['message'] = Helper::lang_message('ANSWER_LIST_FAILED');
                
            }
        return response()->json($data);
    }

    public function share_asker_send_mail_api(Request $request){
        // Helper::print_exit($request->all());
        $data = [];
        if(isset($request->email) && isset($request->asker_code)){
            $asker = \App\Models\Job::where('asker_code',$request->asker_code)->first();
            Helper::send_email($request->email,$asker['asker_code'],$asker['author']);
            $data['status'] = true;
            $data['message'] = Helper::lang_message("MAIL_SEND_SUCCESSFULLY");
            // request()->session()->flash('success',Helper::lang_message('SEND_EMAIL_SUCCESS'));

            // return redirect()->route('api.home');
        }
        else{
            $data['status'] = false;
            $data['message'] = Helper::lang_message("SEND_SMS_PARAMS_MISMATCH");
        }
        return response()->json($data);

    }
    
}
