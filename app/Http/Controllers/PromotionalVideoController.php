<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\PromotionalVideo;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;
use Illuminate\Contracts\Filesystem\Cloud as CloudFilesystemContract;
use Illuminate\Contracts\Filesystem\Filesystem as FilesystemContract;
use Helper;

class PromotionalVideoController extends AdminBaseController
{
    public $view = "backend.promotional-video";
    public $model = "App\Models\PromotionalVideo";
    public $slug= "video";

    /**
     * Display a Listing.
     *
     * @return array and redirect 
     */
    public function index(){
        $model_order_by=$this->model::orderBy('id','DESC')->paginate(10);
        return view($this->view.".index")->with("promotional_videos",$model_order_by);
    }

   /**
     * Store a newly created resource in storage.
     *
     * @param $request array
     * @return redirect
     */
    public function store(Request $request){
        $this->validate($request,[
            'title'=>'string|required',
            'author'=>'string|required',
            'description'=>'string|nullable',
            'video'=>'required',
            'status'=>'required|in:active,inactive',
        ]);
        $file = $request->video."".time();
        /**
         * AWS S3 through uploading video section start
         */
        // Helper::print_exit(time()."".$request->file('video').".".$request->file('video')->getClientOriginalExtension());

        $client = \Aws\S3\S3Client::factory([
            'version' => '2006-03-01',
            'region' => env('AWS_DEFAULT_REGION'),
            'signature_version' => 'v4',
            'credentials' => [
                'key' => env('AWS_ACCESS_KEY_ID'),
                'secret' => env('AWS_SECRET_ACCESS_KEY')
            ]
        ]);
        if ($request->hasFile('video')) {
			$video_file = time()."".$request->file('video').".".$request->file('video')->getClientOriginalExtension();
        $client->putObject(
			array(
				'Bucket'=>env('AWS_BUCKET'),
                'Key' => $video_file,
                'ACL' => 'public-read', 
                // 'CacheControl'=> 'max-age=31536000',
				'SourceFile' => $request->file('video'),
			)
        );
            }
        // Storage::disk('s3')->put('admin-promotional-video', $request->video);
        /**
         * AWS S3 uploading video end
         */
        $data=$request->all();
        $data['video'] = $video_file;
        $status=$this->model::create($data);
        if($status){
            request()->session()->flash('success',$this->slug.' successfully added');
        }else{
            request()->session()->flash('error','Error occurred while adding'.$this->slug);
        }
        return redirect('admin/video');
    }
}
