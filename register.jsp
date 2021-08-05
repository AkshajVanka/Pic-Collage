<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="lrStyle.css">
    <title>Register</title>
</head>

<body>
    <div class="container">
        <h1>Please Register</h1>
        <form action="register.do" method="POST">
            <div class="form-control">
                <input type="email" required>
                <label for="">Email</label>
            </div>
            <div class="form-control">
                <input type="password" required>
                <label for="">Password</label>
            </div>
            <button class="btn">Register</button>
            <p class="text">Already have an account? <a href="index.jsp">Login</a></p>
        </form>
    </div>
    <script src="lrScript.js"></script>

</body>

</html>