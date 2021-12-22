@extends('backend.layouts.master')
@section('main-content')
<div class="container">
    
    <table class="table table-hover table-bordered">
        <thead>
        <tr>
            <th>Key</th>
            @if($languages->count() > 0)
                @foreach($languages as $language)
                    <th>{{ $language->name }}({{ $language->code }})</th>
                @endforeach
            @endif
            <th width="80px;">Action</th>
        </tr>
        </thead>
        <tbody>
            
            @if($columns_count > 0)
            @php
            $lang_key = [];
                // Helper::print_exit($columns);   
            @endphp
                @foreach ($columns as $c_key => $c_value)
                        @php
                            $columns_detail = json_decode(json_encode($c_value['data']),true);
                            $json_detail = preg_split('{":,"}',$columns_detail);
                            $lang = [];
                            foreach ($json_detail as $key => $value) {
                                $json_value = explode(",",$value);
                                $json_value_1 = implode(":",$json_value);
                                $json_value_2 = explode(":",$json_value_1);
                                foreach ($json_value_2 as $j_key => $j_value) {
                                    $lang[] = $j_value;
                                }
                            }
                            print_r($lang);
                            
                        @endphp
                        <tr>
                            @foreach ($lang as $l_key => $l_value)
                                {{-- @foreach ($l_value as $lang_key => $lang_value)
                                    @php
                                        print_r($lang_value);
                                    @endphp
                                @endforeach --}}
                                @php
                                    // print_r($l_value);   
                                @endphp
                            @endforeach

                                {{-- <td><a href="{{url('admin/languages/edit/'.$json_value_2)}}" data-title="Enter Translate" class="translate" data-code="{{isset($json_value_2)? $json_value_2 :''}}" data-type="textarea" data-pk="{{ $json_value_2 }}" data-url="{{ route('translation.update.json') }}">{{$json_value_2 !== "null"?$json_value_2:''}}</a></td> --}}
                            {{-- <td><a href="#" class="translate-key" data-title="Enter Key" data-type="text" data-pk="{{ $c_value['lang'] }}" data-url="{{ route('translation.update.json.key') }}">{{ $column_value['lang'] }}</a></td> --}}

                        </tr>
                        @endforeach
                @foreach($columns as $column_key => $column_value)
                    @php
                       $json_data =$column_value['data'];
                    //    $data = json_decode($column_value['data']);
                    // $data = implode(",",$json_data);
                    //    print_r(implode(",",$json_data));
                    @endphp
                <tr>

                    {{-- @foreach ($data as $d_key => $d_value)
                    @php
                        $lang_value = $d_key;

                    @endphp  
  
                    @endforeach --}}
                    <td><a href="#" class="translate-key" data-title="Enter Key" data-type="text" data-pk="{{ $column_value['lang'] }}" data-url="{{ route('translation.update.json.key') }}">{{ $column_value['lang'] }}</a></td>
                        {{-- @for($i=1; $i<=$columns_count; ++$i) --}}
                        @php
                        // $column = json_decode($column_value,true);
                        //  print_r(isset($columns[$i]['data'][$column_key])?$columns[$i]['data'][$column_key]:""); 
                            // print_r(implode(",",$json_data));
                            //  $key = isset($columns[$i]['data'][$column_value])?$columns[$i]['data'][$column_value]:"";
                             

                        @endphp
                            {{-- <td><a href="{{url('admin/languages/edit/'.$column_value['lang'])}}" data-title="Enter Translate" class="translate" data-code="{{isset($column_value['lang'])? $column_value['lang'] :""}}" data-type="textarea" data-pk="{{ $column_key }}" data-url="{{ route('translation.update.json') }}">{{$data !== "null"?$data:""}}</a></td> --}}
                        {{-- @endfor --}}
                    <td>
                        <a href="{{route('translations.destroy', $column_key)}}" class="btn btn-danger btn-sm " style="height:30px; width:30px;border-radius:50%" data-toggle="tooltip" title="delete" data-placement="bottom"><i class="fas fa-trash"></i></a>
                        <a href="{{url('admin/languages/edit/'.$column_key)}}" class="btn btn-primary btn-sm " style="height:30px; width:30px;border-radius:50%" data-toggle="tooltip" title="edit" data-placement="bottom"><i class="fas fa-pencil"></i></a>
                        {{-- <form method="POST" action="{{route('coupon.destroy',[$coupon->id])}}">
                        @csrf 
                        @method('delete')
                            <button class="btn btn-danger btn-sm dltBtn" data-id={{$coupon->id}} style="height:30px; width:30px;border-radius:50%" data-toggle="tooltip" data-placement="bottom" title="Delete"><i class="fas fa-trash-alt"></i></button>
                        </form> --}}
                        {{-- <button data-action="{{ route('translations.destroy', $column_key) }}" class="btn btn-danger btn-sm remove-key"><i class="fa fa-trash"></i></button> --}}
                        {{-- <button src="{{ url('admin/languages/edit/'.$column_key) }}" class="btn btn-primary btn-sm "><i class="fa fa-pencil"></i></button></td> --}}
                </tr> 
                  
                @endforeach
            @endif
        </tbody>
    </table>
</div>
<script type="text/javascript">
$(function(){


    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $('.translate').editable({
        params: function(params) {
            params.code = $(this).editable().data('code');
            return params;
        }
    });
    $('.translate-key').editable({
        validate: function(value) {
            if($.trim(value) == '') {
                return 'Key is required';
            }
        }
    });
    $('body').on('click', '.remove-key', function(){
        var cObj = $(this);
        if (confirm("Are you sure want to remove this item?")) {
            $.ajax({
                url: cObj.data('action'),
                method: 'DELETE',
                success: function(data) {
                    cObj.parents("tr").remove();
                    alert("Your imaginary file has been deleted.");
                }
            });
        }
    });
})
   
</script>
    {{-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.css" /> --}}
    <link href="https://cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet"/>
    {{-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> --}}
    {{-- <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script> --}}
    <script src="//cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/js/bootstrap-editable.min.js"></script>
@endsection
