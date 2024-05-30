<!DOCTYPE html>
<html lang="uk">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Про нас - Замовлення номерів в готелі</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#logout-btn').click(function () {
                $.ajax({
                    type: 'POST',
                    url: '/logout',
                    data: $('#logout-form').serialize(),
                    success: function () {
                        window.location.reload();
                    }
                });
            });
        });
    </script>
    <style>

        .hero-section h1 {
            font-size: 3rem;
            margin-bottom: 0;
        }


        .content-section h2 {
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        .content-section p {
            font-size: 1.2rem;
        }

        .nav-link {
            font-size: 1.7rem; /* Збільшуємо розмір шрифту */
        }

        footer {
            background-color: lightblue;
        }

        .logout-button {
            font-size: 1.2rem; /* Збільшення шрифту кнопки */
            padding: 10px 20px;
        }

        .custom-nav {
            margin-left: -350px; /* Змінити значення для досягнення бажаного результату */
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            text-align: center;
            vertical-align: middle;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
        }

        .text-outline {
            color: white; /* Основний колір тексту */
            text-shadow: -1px -1px 0 #000,
            1px -1px 0 #000,
            -1px 1px 0 #000,
            1px 1px 0 #000;
        }
    </style>
</head>
<body>

<header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
    <div class="col-md-3 mb-2 mb-md-0">
        <a href="/" class="d-inline-flex link-body-emphasis text-decoration-none">
            <svg class="bi" width="40" height="32" role="img" aria-label="Bootstrap">
                <use xlink:href="#bootstrap"></use>
            </svg>
        </a>
    </div>

    <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0 custom-nav">
        <#--        <#if user.email??>-->
        <#--            <li><a href="/my-orders" class="nav-link px-2 link-secondary font-weight-bold">Мої замовлення</a></li>-->
        <#--        </#if>-->
        <li><a href="/" class="nav-link px-2 link-secondary font-weight-bold">Головна</a></li>
        <li><a href="/rooms" class="nav-link px-2 font-weight-bold">Номери</a></li>
        <li><a href="/comments" class="nav-link px-2 font-weight-bold">Відгуки</a></li>
        <li><a href="/about" class="nav-link px-2 font-weight-bold">Про нас</a></li>
    </ul>

    <div class="col-md-3 text-end">
        <#if user.email??>
            <form action="/logout" method="post" id="logout-form" class="header-form">
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <button type="button" id="logout-btn" class="btn btn-primary logout-button">
                    <i class="fas fa-sign-out-alt"></i> Вийти
                </button>
            </form>
        <#else>
            <button type="button" class="btn btn-outline-primary me-2"><a href="/login">Увійти</a></button>
            <button type="button" class="btn btn-warning"><a href="/registration">Зареєструватися</a></button>
        </#if>
    </div>
</header>
<h1 align="center">Редагування інформації про готель:</h1>

<form action="/update-hotel" method="post" enctype="multipart/form-data">
    <div class="form-group">
        <label for="field1">Назва:</label>
        <input type="text" class="form-control" id="hotelName" name="name" value="${hotel.name}">
    </div>
    <div class="form-group">
        <label for="field2">Адреса:</label>
        <input type="text" class="form-control" id="address" name="address" value="${hotel.address}">
    </div>
    <div class="form-group">
        <label for="field3">Контактні дані:</label>
        <input type="text" class="form-control" id="contactData" name="contactData" value="${hotel.contactData}">
    </div>
    <div class="form-group">
        <label for="field3">Опис:</label>
        <input type="text" class="form-control" id="description" name="description" value="${hotel.description}">
    </div>
    <div class="form-group">
        <label for="field4">Фотографія:</label> <br>
        <#list hotelImages as img>
            <img src="/hotel_images/${hotel.id}" height="350px">
        </#list>
    </div>
    <div class="form-group">
        <label for="image">Завантажити нове зображення:</label>
        <div class="custom-file">
            <input type="file" class="custom-file-input" id="image" name="image" lang="uk">
            <label class="custom-file-label" for="image">Виберіть файл</label>
        </div>
    </div>
    <br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="hidden" name="id" value="${hotel.id}">
    <button type="submit" class="btn btn-primary">Зберегти зміни</button>
</form>




<br>


<br><br><br><br><br><br>

<footer class="text-white pt-4">
    <div class="container">
        <div class="row">
            <!-- Контактная информация -->
            <div class="col-md-4">
                <h5>Контакти</h5>
                <p>Адреса: вулиця Перемоги, 1, Київ, Україна</p>
                <p>Телефон: +38 (012) 345-67-89</p>
                <p>Email: info@hotel.com</p>
            </div>
            <!-- Быстрые ссылки -->
            <div class="col-md-4">
                <h5>Швидкі посилання</h5>
                <ul class="list-unstyled">
                    <li><a href="/" class="text-white">Головна</a></li>
                    <li><a href="/rooms" class="text-white">Номери</a></li>
                    <li><a href="/comments" class="text-white">Відгуки</a></li>
                    <li><a href="/about" class="text-white">Про нас</a></li>
                </ul>
            </div>
            <!-- Социальные сети -->
            <div class="col-md-4">
                <h5>Наші соціальні мережі:</h5>
                <a href="#" class="text-white mr-3"><i class="fab fa-facebook"></i> Facebook</a>
                <a href="#" class="text-white mr-3"><i class="fab fa-twitter"></i> Twitter</a>
                <a href="#" class="text-white mr-3"><i class="fab fa-instagram"></i> Instagram</a>
            </div>
        </div>
        <hr>
        <div class="text-center py-3">
            <p class="text-outline">&copy; 2024 Hotel Booking. Усі права захищено.</p>
        </div>
    </div>
</footer>

<#--<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>-->
<#--<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>-->
<#--<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>-->

<#--<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>-->
<#--<script>-->
<#--    $(document).ready(function () {-->
<#--        $('#logout-btn').click(function () {-->
<#--            $.ajax({-->
<#--                type: 'POST',-->
<#--                url: '/logout',-->
<#--                data: $('#logout-form').serialize(),-->
<#--                success: function () {-->
<#--                    window.location.reload();-->
<#--                }-->
<#--            });-->
<#--        });-->
<#--    });-->
<#--</script>-->

</body>
</html>
