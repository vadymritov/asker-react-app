@extends('backend.layouts.master')

@section('main-content')
 <!-- DataTales Example -->
 <div class="card ca-card">
     <div class="row">
          <div class="col-md-4"></div>
          <div class="col-md-4"></div>
          <div class="col-md-4">
              @include('backend.layouts.notification')
          </div>
     </div>
    <div class="card-header ca-card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary float-left">Pages Lists</h6>
      <a href="{{route('pages.create')}}" class="btn btn-primary btn-sm float-right" data-toggle="tooltip" data-placement="bottom" title="Add User"><i class="fas fa-plus"></i> Add Post</a>
    </div>
    <div class="card-body ca-card-body">
      <div class="table-responsive">
        @if(count($pages)>0)
        <table class="table table-bordered" id="product-dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th>S.N.</th>
              <th>Title</th>
              <th>Category</th>
              <th>Slug Url</th>
              <th>Link</th>
              <th>Description</th>
              <th>Photo</th>
              <th>Status</th>
              <th>Action</th>
            </tr>
          </thead>
          <tfoot>
            <tr>
              <th>S.N.</th>
              <th>Title</th>
              <th>Category</th>
              <th>Slug Url</th>
              <th>Link</th>
              <th>Description</th>
              <th>Photo</th>
              <th>Status</th>
              <th>Action</th>
            </tr>
          </tfoot>
          <tbody>
           
            @foreach($pages as $page)   
              @php 

              $category_info=DB::table('categories')->select('title')->where('id',$page->cat_id)->get();
              $cat_info = $page->category_info;
              @endphp
                <tr>
                    <td>{{$page->id}}</td>
                    <td>{{$page->name}}</td>
                    <td>@foreach ($category_info as $category)
                        {{$category->title}}
                    @endforeach</td>
                    <td>{{$page->slug}}</td>
                    <td>{{$page->link}}</td>
                    <td>{!! $page->description !!}</td>
                    <td>
                        @if($page->photo)
                            <img src="{{$page->photo}}" class="img-fluid zoom" style="max-width:80px" alt="{{$page->photo}}">
                        @else
                            <img src="{{asset('seller/img/thumbnail-default.jpg')}}" class="img-fluid" style="max-width:80px" alt="avatar.png">
                        @endif
                    </td>                   
                    <td>
                        @if($page->status=='active')
                            <span class="badge badge-success">{{$page->status}}</span>
                        @else
                            <span class="badge badge-warning">{{$page->status}}</span>
                        @endif
                    </td>
                    <td>
                        <a href="{{route('pages.edit',$page->id)}}" class="btn btn-primary btn-sm float-left mr-1" style="height:30px; width:30px;border-radius:50%" data-toggle="tooltip" title="edit" data-placement="bottom"><i class="fas fa-edit"></i></a>
                    <form method="POST" action="{{route('pages.destroy',[$page->id])}}">
                      @csrf 
                      @method('delete')
                          <button class="btn btn-danger btn-sm dltBtn" data-id={{$page->id}} style="height:30px; width:30px;border-radius:50%" data-toggle="tooltip" data-placement="bottom" title="Delete"><i class="fas fa-trash-alt"></i></button>
                        </form>
                    </td>
                </tr>  
            @endforeach
          </tbody>
        </table>
        <span style="float:right">{{$pages->links()}}</span>
        @else
          <h6 class="text-center">No posts found!!! Please create Post</h6>
        @endif
      </div>
    </div>
</div>
@endsection

@push('styles')
  <link href="{{asset('seller/vendor/datatables/dataTables.bootstrap4.min.css')}}" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
  <style>
      div.dataTables_wrapper div.dataTables_paginate{
          display: none;
      }
      .zoom {
        transition: transform .2s; /* Animation */
      }

      .zoom:hover {
        transform: scale(5);
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
      
      $('#product-dataTable').DataTable( {
            "columnDefs":[
                {
                    "orderable":false,
                    "targets":[8,9,10]
                }
            ]
        } );

  </script>
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