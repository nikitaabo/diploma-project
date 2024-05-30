<#--<!DOCTYPE html>-->
<#--<html>-->
<#--<head>-->
<#--    <title>Вхід до свого облікового запису</title>-->
<#--    <!-- Підключення Bootstrap CSS &ndash;&gt;-->
<#--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">-->
<#--    <script>-->
<#--        // Функція для зміни мови повідомлень про помилку-->
<#--        function changeValidationMessages() {-->
<#--            var inputs = document.querySelectorAll('input[required]');-->
<#--            inputs.forEach(function (input) {-->
<#--                input.addEventListener('invalid', function () {-->
<#--                    if (!this.value ) {-->
<#--                        this.setCustomValidity('Будь ласка, заповніть це поле.');-->
<#--                    } else {-->
<#--                        this.setCustomValidity('');-->
<#--                    }-->
<#--                });-->
<#--            });-->
<#--        }-->
<#--        window.onload = changeValidationMessages;-->
<#--    </script>-->
<#--</head>-->
<#--<body>-->
<#--<div class="container">-->
<#--    <h1 class="mt-5">Вхід до облікового запису</h1>-->
<#--    <hr>-->
<#--    <div class="row justify-content-center">-->
<#--        <div class="col-md-6">-->
<#--            <div class="card mt-3">-->
<#--                <div class="card-body">-->
<#--                    <form action="/login" method="post">-->
<#--                        <div class="form-group">-->
<#--                            <label for="email">Пошта:</label>-->
<#--                            <input type="email" class="form-control" id="email" name="username" required title="Будь ласка, введіть Email">-->
<#--                        </div>-->
<#--                        <div class="form-group">-->
<#--                            <label for="password">Пароль:</label>-->
<#--                            <input type="password" class="form-control" id="password" name="password" required title="Будь ласка, введіть пароль">-->
<#--                        </div>-->
<#--                        <!-- Додавання CSRF токена &ndash;&gt;-->
<#--                        <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--                        <button type="submit" class="btn btn-primary">Увійти</button>-->
<#--                    </form>-->
<#--                </div>-->
<#--            </div>-->
<#--        </div>-->
<#--    </div>-->
<#--</div>-->

<#--<!-- Підключення Bootstrap та jQuery JS &ndash;&gt;-->
<#--<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>-->
<#--<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>-->
<#--<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>-->
<#--</body>-->
<#--</html>-->




<!DOCTYPE html>
<html>
<head>
    <title>Вхід до свого облікового запису</title>
    <!-- Підключення Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script>
        // Функція для зміни мови повідомлень про помилку
        function changeValidationMessages() {
            var inputs = document.querySelectorAll('input[required]');
            inputs.forEach(function (input) {
                input.addEventListener('invalid', function () {
                    if (!this.value ) {
                        this.setCustomValidity('Будь ласка, заповніть це поле.');
                    } else {
                        this.setCustomValidity('');
                    }
                });
            });
        }
        window.onload = changeValidationMessages;
    </script>
</head>
<body>
<div class="container">
    <h1 class="mt-5">Вхід до облікового запису</h1>
    <hr>
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card mt-3">
                <div class="card-body">
                    <#if errorMessage??>
                        <div class="alert alert-danger" role="alert">
                            ${errorMessage}
                        </div>
                    </#if>
                    <form action="/login" method="post">
                        <div class="form-group">
                            <label for="email">Пошта:</label>
                            <input type="email" class="form-control" id="email" name="username" required title="Будь ласка, введіть Email">
                        </div>
                        <div class="form-group">
                            <label for="password">Пароль:</label>
                            <input type="password" class="form-control" id="password" name="password" required title="Будь ласка, введіть пароль">
                        </div>
                        <!-- Додавання CSRF токена -->
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <button type="submit" class="btn btn-primary">Увійти</button>
                        <a href="/registration">Немає облікового запису?</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Підключення Bootstrap та jQuery JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
