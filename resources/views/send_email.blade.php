<!DOCTYPE html>

<html>

<head>

    <title>ASKER</title>

</head>

<body>
    @php
        // Helper::print_exit($content);   
    @endphp
    {{-- <h1>{{ $title }}</h1> --}}

    <h2>Welcome to the site</h2><br/>
    {{$asker_author}} has invited you to take part in an Asker video questionnaire. The unique Access code for this Asker is {{$asker_code}}. You can use this code to answer via the web app at www.askerapp.com or through the mobile app available to download from Google Play or Apple store.
    
    {{-- {{$content['email']}} , Please click on the below link to verify your email account<br/>
    <a href={{url("api/verify/".$content['token'])}}>Verify Email</a>; --}}
    {{-- <p>{{ $details['body'] }}</p> --}}

   

    <p>Thank you</p>

</body>

</html>