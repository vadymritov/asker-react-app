@extends('backend.layouts.master')
@section('title','Promotional Video Page')
@section('main-content')
 <!-- DataTales Example -->
 <div class="card ca-card">
     <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4"></div>
         <div class="col-md-4 ">
            @include('backend.layouts.notification')
         </div>
     </div>
    <div class="card-header ca-card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary float-left">Promotional Video List</h6>
      <a href="{{route('video.create')}}" class="btn btn-primary btn-sm float-right" data-toggle="tooltip" data-placement="bottom" title="Add User"><i class="fas fa-plus"></i> Add Promotional Video</a>
    </div>
    <div class="card-body ca-card-body">
      <div class="table-responsive ca-table-responsive">
        @if(count($promotional_videos)>0)
        <table class="table table-bordered ca-table" id="banner-dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th>S.N.</th>
              <th>Title</th>
              {{-- <th>Video</th> --}}
              <th>Status</th>
              <th>Action</th>
            </tr>
          </thead>
          <tfoot>
            <tr>
              <th>S.N.</th>
              <th>Title</th>
              {{-- <th>Video</th> --}}
              <th>Status</th>
              <th>Action</th>
              </tr>
          </tfoot>
          <tbody>
            @foreach($promotional_videos as $banner)   
                <tr>
                    <td>{{$banner->id}}</td>
                    <td>{{$banner->title}}</td>
                    {{-- <td>
                        @if($banner->video)
                            <source src="{{asset('admin/promotional-video/mp4')}}" class="img-fluid zoom" style="max-width:80px" alt="{{asset('admin/promotional-video/mp4')}}">
                        @else
                            <img src="{{asset('seller/img/thumbnail-default.jpg')}}" class="img-fluid zoom" style="max-width:100%" alt="avatar.png">
                        @endif
                    </td> --}}
                    <td>
                        @if($banner->status=='active')
                            <span class="badge badge-success">{{$banner->status}}</span>
                        @else
                            <span class="badge badge-warning">{{$banner->status}}</span>
                        @endif
                    </td>
                    <td>
                        <form method="POST" action="{{route('video.destroy',[$banner->id])}}">
                          @csrf 
                          @method('delete')
                              <button class="btn btn-danger btn-sm dltBtn" data-id={{$banner->id}} style="height:30px; width:30px;border-radius:50%" data-toggle="tooltip" data-placement="bottom" title="Delete"><i class="fas fa-trash-alt"></i></button>
                        </form>
                    </td>
                </tr>  
            @endforeach
          </tbody>
        </table>
        <span style="float:right" class="d-none">{{$promotional_videos->links()}}</span>
        @else
          <h6 class="text-center">No banners found!!! Please create banner</h6>
        @endif
      </div>
    </div>
</div>
@endsection

@push('styles')
  <link href="{{asset('seller/vendor/datatables/dataTables.bootstrap4.min.css')}}" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
  <style>
      .zoom {
        transition: transform .2s; /* Animation */
      }

      .zoom:hover {
        transform: scale(3.2);
      }
  </style>
@endpush

@push('scripts')

  <!-- Page level plugins -->
  <script src="{{asset('seller/vendor/datatables/jquery.dataTables.min.js')}}"></script>
  <script src="{{asset('seller/vendor/datatables/dataTables.bootstrap4.min.js')}}"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="{{asset('seller/js/demo/datatables-demo.js')}}"></script>

  <script>
      $(document).ready(function(){
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
          $('.dltBtn').click(function(e){
            var form=$(this).closest('form');
              var dataID=$(this).data('id');
              // alert(dataID);
              e.preventDefault();
              swal({
                    title: "Are you sure?",
                    text: "Once deleted, you will not be able to recover this data!",
                    icon: "warning",
                    buttons: true,
                    dangerMode: true,
                })
                .then((willDelete) => {
                    if (willDelete) {
                       form.submit();
                    } else {
                        swal("Your data is safe!");
                    }
                });
          })
      })
  </script>
@endpush