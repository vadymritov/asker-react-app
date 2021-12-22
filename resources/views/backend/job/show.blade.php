@extends('backend.layouts.master')

@section('main-content')
    {{-- <pre> --}}
        <h3>User Details</h3>
        @php
        $user_details = \App\Models\User::where('id',$job->user_id)->where('email_verified','y')->where('status','active')->first();
        $details = \App\Models\Answer::leftJoin('jobs as j','j.user_id','answers.user_id')
                    ->leftJoin('questions as q','q.id','j.question_id')
                    // ->where('user_id',$job->user_id)
                    // ->where('job_id',$job->id)
                    ->select('j.id as job_id','j.title as job_title','j.user_id as job_user_id','j.question_id as job_question_id','j.answer_id as job_answer_id','j.title as job_title','j.author as job_author','j.asker_code as job_asker_code','q.job_id as question_job_id','answers.answer as answer_video','answers.user_id as answer_user_id','answers.job_id as answer_job_id','q.job_id as question_job_id','q.id as question_id','q.question as question_question_id')
                    ->get()->toArray();
        $job_name = "";
        $job_author = "";
        $job_asker_code = "";
            // Helper::print_exit($details);
        @endphp
        <ul>
            <li>User name :{{$user_details['name']}}</li>
            <li>User Email :{{$user_details['email']}}</li>
            <li>User Contact :{{$user_details['country_code']."".$user_details['phone']}}</li>
        </ul>
        @foreach ($details as $d_key => $d_value)
            @php
            $job_name = $d_value['job_title'];
            $job_author = $d_value['job_author'];
            $job_asker_code = $d_value['job_asker_code'];
            $questions_array = json_decode($d_value['job_question_id']);
            $answers_array = json_decode($d_value['job_answer_id']);
            $questions = [];
            $answers = [];
            foreach ($questions_array as $q_key => $q_value) {
                $questions[] = \App\Models\Question::where('id',$q_value)->first(); 
                
            }
            foreach ($answers_array as $a_key => $a_value) {
                $answers[] = \App\Models\Answer::where('id',$a_value)->first(); 
            }
            @endphp
            
        @endforeach
        <ul>
            <h3>Job Details</h3>
            <li>Job Title : {{$job_name}}</li>
            <li>Job Author : {{$job_author}}</li>
            <li>Job Asker Code : {{$job_asker_code}}</li>

        @foreach ($questions as $que_key => $que_value)
            @foreach ($answers as $ans_key =>$ans_value)
                        @php
                            $url = env('AWS_URL')."/".$ans_value['answer'];
                            // Helper::print_exit($url);
  
                        @endphp
                       

            @endforeach
            {{-- <div> --}}
                    <li>{{$que_value['question']}} : <video width="200" controls>
                        <source src="{{$url}}" type="video/mp4">
                    </video>
                    </li>
            {{-- </div> --}}
                {{-- <div>{{$que_value['question']}}</div> --}}
            @endforeach
        </ul>

    {{-- </pre> --}}
@endsection