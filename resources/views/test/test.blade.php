<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<form action="http://up.qiniu.com" method="post" enctype="multipart/form-data">
    <input type="hidden" name="token" value="{{ $token }}">
    <input type="file" name="file">
    <input type="submit" value="上传">
</form>
</body>
</html>