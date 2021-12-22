@extends('backend.layouts.master')

@section('main-content')
 <!-- DataTales Example -->
 <div class="card shadow mb-4">
     <div class="row">
          <div class="col-md-4"></div>
          <div class="col-md-4"></div>
          <div class="col-md-12">
              @include('backend.layouts.notification')
          </div>
     </div>
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary float-left">JOB Lists</h6>
    </div>
    <div class="card-body">
      <div class="table-responsive">
        @if(count($jobs)>0)
        <table class="table table-bordered" id="product-dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th>S.N.</th>
              <th>Title</th>
              <th>Author</th>
              <th>Asker Code</th>
              <th>Status</th>
            </tr>
          </thead>
          <tfoot>
            <tr>
              <th>S.N.</th>
              <th>Title</th>
              <th>Author</th>
              <th>Asker Code</th>
              <th>Status</th>
            </tr>
          </tfoot>
          <tbody>
           
            @foreach($jobs as $job)   
              @php 
                // $sub_cat_info=DB::table('categories')->select('title')->where('id',$product->child_cat_id)->get();
                // $brands=DB::table('brands')->select('title')->where('id',$product->brand_id)->get();
              @endphp
                <tr>
                    <td>{{$job->id}}</td>
                    <td><a href="{{url('admin/job/'.$job->id)}}" target="_blank">{{$job->title}}</a></td>
                    <td>{{$job->author}}</td>
                    <td>{{$job->asker_code}}</td>
                    <td>
                        @if($job->status=='active')
                            <span class="badge badge-success">{{$job->status}}</span>
                        @else
                            <span class="badge badge-warning">{{$job->status}}</span>
                        @endif
                    </td>
                </tr>  
            @endforeach
          </tbody>
        </table>
        {{-- <span style="float:right">{{$job->links()}}</span> --}}
        @else
          <h6 class="text-center">No Jobs found!!!</h6>
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
      
      // $('#product-dataTable').DataTable( {
      //   "scrollX": false
      //       "columnDefs":[
      //           {
      //               "orderable":false,
      //               "targets":[10,11,12]
      //           }
      //       ]
      //   } );
  </script>
  <script>
      $(document).ready(function(){
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
          // $('.dltBtn').click(function(e){
          //   var form=$(this).closest('form');
          //     var dataID=$(this).data('id');
          //     e.preventDefault();
          //     swal({
          //           title: "Are you sure?",
          //           text: "Once deleted, you will not be able to recover this data!",
          //           icon: "warning",
          //           buttons: true,
          //           dangerMode: true,
          //       })
          //       .then((willDelete) => {
          //           if (willDelete) {
          //              form.submit();
          //           } else {
          //               swal("Your data is safe!");
          //           }
          //       });
          // })
      })
  </script>
@endpush