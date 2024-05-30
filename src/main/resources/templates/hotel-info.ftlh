<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Замовлення онлайн</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <style>
        .hero-section {
            background-image: url('/images/back.jpg'); /* Замените на путь к вашему изображению */
            background-size: cover;
            background-position: center;
            height: 100vh;
            color: white;
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            text-shadow: 2px 2px 8px black;
        }

        .hero-section h1 {
            font-size: 4rem;
            margin-bottom: 20px;
            text-shadow: 1px 1px 6px black;
        }

        .hero-section p {
            font-size: 1.5rem;
            margin-bottom: 40px;
        }

        .btn-primary {
            padding: 10px 20px;
            font-size: 1.2rem;
        }

        .nav-link {
            font-size: 1.7rem; /* Збільшуємо розмір шрифту */
        }
        .text-outline {
            color: white; /* Основний колір тексту */
            text-shadow:
                    -1px -1px 0 #000,
                    1px -1px 0 #000,
                    -1px  1px 0 #000,
                    1px  1px 0 #000;
        }

        /*.logout-button {*/
        /*    font-size: 1.2rem; !* Збільшення шрифту кнопки *!*/
        /*    padding: 10px 20px;*/
        /*}*/

        .custom-nav {
            margin-left: -350px; /* Змінити значення для досягнення бажаного результату */
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
        <#if user.email??>
            <#if user.isAdmin()>
                <li><a href="/admin" class="nav-link px-2 link-secondary font-weight-bold">Панель адміна</a></li>
            <#else >
                <li><a href="/my-orders" class="nav-link px-2 link-secondary font-weight-bold">Мої замовлення</a></li>
            </#if>
        </#if>
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

<div class="container my-5">
    <div class="card">
        <div class="card-header text-center">
            <h1 class="card-title">${hotel.name}</h1>
            <h6 class="card-subtitle mb-2 text-muted">${hotel.address}</h6>
            <h6 class="card-subtitle mb-2 text-muted">${hotel.contactData}</h6>
        </div>
        <div id="hotelCarousel" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <#list hotel.hotelImages as img>
                    <div class="carousel-item <#if img?index == 0>active</#if>">
                        <img src="/hotel_images/${img.id}" class="d-block w-100" alt="Hotel Image">
                    </div>
                </#list>
            </div>
            <a class="carousel-control-prev" href="#hotelCarousel" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#hotelCarousel" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <div class="card-body">
            <h3 class="card-title">Про готель</h3>
            <p class="hotel-description">${hotel.description}</p>
        </div>
    </div>
</div>

<footer style="background-color: lightblue;" class="text-white pt-4" >
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
<#--<script src="https://kit.fontawesome.com/a076d05399.js"></script>-->

<#--<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>-->
<#--<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>-->
<#--<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>-->
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

</body>
</html>


