@extends('backend.layouts.master')
@section('title','Questions')

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
      <h6 class="m-0 font-weight-bold text-primary float-left">Questions Lists</h6>
      <a href="{{route('question.create')}}" class="btn btn-primary btn-sm float-right" data-toggle="tooltip" data-placement="bottom" title="Add User"><i class="fas fa-plus"></i> Add Question</a>
    </div>
    <div class="card-body ca-card-body">
      <div class="table-responsive ca-table-responsive">
        @if(count($questions)>0)
        <table class="table table-bordered ca-table" id="product-dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th>S.N.</th>
              <th>Question</th>
              <th>Action</th>
            </tr>
          </thead>
          <tfoot>
            <tr>
              <th>S.N.</th>
              <th>Question</th>
              <th>Action</th>
            </tr>
          </tfoot>
          <tbody>
           
            @foreach($questions as $question)   
              @php 
              @endphp
                <tr>
                    <td>{{$question->id}}</td>
                    <td>{{$question->question}}</td>
                    <td>
                        <a href="{{route('question.edit',$question->id)}}" class="btn btn-primary btn-sm float-left mr-1" style="height:30px; width:30px;border-radius:50%" data-toggle="tooltip" title="edit" data-placement="bottom"><i class="fas fa-pencil-alt"></i></a>
                        <form method="POST" action="{{route('question.destroy',[$question->id])}}">
                          @csrf 
                          @method('delete')
                              <button class="btn btn-danger btn-sm dltBtn" data-id={{$question->id}} style="height:30px; width:30px;border-radius:50%" data-toggle="tooltip" data-placement="bottom" title="Delete"><i class="fas fa-trash-alt"></i></button>
                        </form>
                    </td>
                </tr>  
            @endforeach
          </tbody>
        </table>
        {{-- <span style="float:right">{{$payment->links()}}</span> --}}
        @else
          <h6 class="text-center">No Questions found!!! Please create question</h6>
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