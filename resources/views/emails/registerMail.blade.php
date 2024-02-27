<!DOCTYPE html>
<html>
<head>
    <title>User management</title>
</head>
<body>
    <h1>{{ $mailData['title'] }}</h1>
    <p>{{ $mailData['body'] }}</p>
    <p>Please login with following credential</p>
    <br/>
    <strong>Email: &nbsp; {{$mailData['email']}}</strong>
    <br/>
    <strong>Password: &nbsp; {{$mailData['password']}}</strong>
    <br/>
    <a href="{{$mailData['url']}}">Click here</a>
     
    <p>Regards,</p>
    <p>User management</p>
</body>
</html>