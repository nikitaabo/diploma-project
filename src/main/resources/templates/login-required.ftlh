<#--<!DOCTYPE html>-->
<#--<html lang="uk">-->
<#--<head>-->
<#--    <meta charset="UTF-8">-->
<#--    <meta name="viewport" content="width=device-width, initial-scale=1.0">-->
<#--    <title>Доступ обмежений</title>-->
<#--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">-->
<#--</head>-->
<#--<body>-->
<#--<div class="container mt-5">-->
<#--    <div class="alert alert-warning text-center" role="alert">-->
<#--        <h4>${message}</h4>-->
<#--        <a href="/login" class="btn btn-primary mt-3">Увійти</a>-->
<#--        <a href="/registration" class="btn btn-warning mt-3">Зареєструватися</a>-->
<#--    </div>-->
<#--</div>-->
<#--</body>-->
<#--</html>-->


<#--<!DOCTYPE html>-->
<#--<html lang="uk">-->
<#--<head>-->
<#--    <meta charset="UTF-8">-->
<#--    <meta name="viewport" content="width=device-width, initial-scale=1.0">-->
<#--    <title>Доступ обмежений</title>-->
<#--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">-->
<#--    <style>-->
<#--        body {-->
<#--            background: url('https://www.example.com/your-background-image.jpg') no-repeat center center fixed;-->
<#--            background-size: cover;-->
<#--            color: #333;-->
<#--        }-->
<#--        .container {-->
<#--            background: rgba(255, 255, 255, 0.8);-->
<#--            border-radius: 10px;-->
<#--            padding: 20px;-->
<#--        }-->
<#--        .alert {-->
<#--            font-family: 'Arial', sans-serif;-->
<#--            border: 1px solid #ffc107;-->
<#--            background-color: #fff3cd;-->
<#--        }-->
<#--        h4 {-->
<#--            font-size: 1.5rem;-->
<#--            color: #856404;-->
<#--        }-->
<#--        .btn-primary, .btn-warning {-->
<#--            font-size: 1.1rem;-->
<#--            padding: 10px 20px;-->
<#--            border-radius: 25px;-->
<#--        }-->
<#--        .btn-primary:hover, .btn-warning:hover {-->
<#--            opacity: 0.9;-->
<#--        }-->
<#--    </style>-->
<#--</head>-->
<#--<body>-->
<#--<div class="container mt-5">-->
<#--    <div class="alert alert-warning text-center" role="alert">-->
<#--        <h4>${message}</h4>-->
<#--        <a href="/login" class="btn btn-primary mt-3">Увійти</a>-->
<#--        <a href="/registration" class="btn btn-warning mt-3">Зареєструватися</a>-->
<#--    </div>-->
<#--</div>-->
<#--<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>-->
<#--<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>-->
<#--<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>-->
<#--</body>-->
<#--</html>-->



<!DOCTYPE html>
<html lang="uk">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Доступ обмежений</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            background: linear-gradient(to right, #00c6ff, #0072ff);
            color: #fff;
            font-family: 'Arial', sans-serif;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .alert {
            background: rgba(255, 255, 255, 0.9);
            color: #333;
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .alert h4 {
            font-size: 1.5rem;
        }

        .btn {
            border: none;
            border-radius: 50px;
            padding: 10px 20px;
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        .btn-primary {
            background: #007bff;
            color: #fff;
        }

        .btn-warning {
            background: #ffc107;
            color: #fff;
        }

        .btn-primary:hover {
            background: #0056b3;
        }

        .btn-warning:hover {
            background: #d39e00;
        }

        .btn i {
            margin-right: 5px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="alert alert-warning text-center" role="alert">
        <h4>${message}</h4>
        <a href="/login" class="btn btn-primary mt-3">
            <i class="fas fa-sign-in-alt"></i> Увійти
        </a>
        <a href="/registration" class="btn btn-warning mt-3">
            <i class="fas fa-user-plus"></i> Зареєструватися
        </a>
    </div>
</div>
</body>
</html>

