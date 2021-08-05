<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="lrStyle.css">
    <title>Login</title>
</head>

<body>
    <div class="container">
        <h1>Please Login</h1>
        <form action="login.do" method="POST">
            <div class="form-control">
                <input type="email" required>
                <label for="">Email</label>
            </div>
            <div class="form-control">
                <input type="password" required>
                <label for="">Password</label>
            </div>
            <button class="btn">Login</button>
            <p class="text">Don't have an account? <a href="register.jsp">Register</a></p>
        </form>
    </div>
    <script src="lrScript.js"></script>

</body>

</html>