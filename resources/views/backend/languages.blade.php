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
                @foreach($columns[0] as $column_key => $column_value)
                    <tr>
                        <td><a href="{{route('admin.languages.edit')}}" class="translate-key" data-title="Enter Key" data-type="text" data-pk="{{ $column_key }}" data-url="{{ route('translation.update.json.key') }}">{{ $column_key }}</a></td>
                            @for($i=1; $i<=$columns_count; ++$i)
                                <td><a href="#" data-title="Enter Translate" class="translate" data-code="{{ $columns[$i]['lang'] }}" data-type="textarea" data-pk="{{ $column_key }}" data-url="{{ route('translation.update.json') }}">{{ isset($columns[$i]['data'][$column_key]) ? $columns[$i]['data'][$column_key] : '' }}</a></td>
                            @endfor
                        <td><button data-action="{{ route('translations.destroy', $column_key) }}" class="btn btn-danger btn-xs remove-key">Delete</button></td>
                    </tr>
                @endforeach
            @endif
        </tbody>
    </table>
</div>
<script type="text/javascript">
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
</script>
@endsection
<!DOCTYPE html>
<html>
<head>
    <title>Laravel Multi Language Translation - ItSolutionStuff.com</title>

    <meta name="csrf-token" content="{{ csrf_token() }}" />


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.css" />

    <link href="//cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet"/>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script src="//cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/js/bootstrap-editable.min.js"></script>

</head>

<body>



</body>
</html>