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


<#--<#list bookings as booking>-->
<#--    <p>${booking.user.name}</p>-->
<#--    <p>${booking.room.type}</p>-->
<#--    <#if booking.actual>-->
<#--        Актуальне замовлення-->
<#--        <#else >-->
<#--        Неактуальне замовлення-->
<#--    </#if>-->
<#--<#else>-->
<#--    <p>Замовлень немає.</p>-->
<#--</#list>-->

<div class="container mt-5">
    <h1 class="text-center">Замовлення користувача ${user.name}</h1>
    <hr>

    <#if bookings?size gt 0>

        <div class="table-responsive">
            <table class="table table-striped table-bordered">
                <thead class="thead-dark">
                <tr>
                    <th>Назва номеру</th>
                    <th>Назва готелю</th>
                    <th>Дата створення</th>
                    <th>Початок бронювання</th>
                    <th>Закінчення бронювання</th>
                    <th>Загальна ціна</th>
                    <th>Підтвердження</th>
                    <th>Дії</th>
                </tr>
                </thead>
                <tbody>
                <#list bookings as booking>
                    <tr>
                        <td><a href="/room-info/${booking.room.id}" style="color: black" class="card-title font-weight-bold">${booking.room.type}</a></td>
                        <td> <a href="/hotel-info/${booking.room.hotel.id}" style="color: black" class="card-title font-weight-bold">${booking.room.hotel.name}</a></td>
                        <#assign formattedDate = helper.formatLocalDateTime(booking.dateOfCreated, "dd-MM-yyyy HH:mm:ss")>
                        <td>${formattedDate}</td>
                        <#assign formattedDate = helper.formatLocalDateTime(booking.dateOfStart, "dd-MM-yyyy HH:mm:ss")>
                        <td>${formattedDate}</td>
                        <#assign formattedDate = helper.formatLocalDateTime(booking.dateOfFinish, "dd-MM-yyyy HH:mm:ss")>
                        <td>${formattedDate}</td>
                        <td>${booking.totalPrice} грн</td>
                        <td>
                            <#if booking.actual>
                                <#if booking.confirmed>
                                    <span class="badge badge-success">Підтверджено</span>
                                <#else>
                                    <span class="badge badge-warning">Не підтверджено</span>
                                </#if>
                             <#else>
                                 <span class="badge badge-warning">Замовлення не актуальне</span>
                            </#if>
                        </td>
                        <td>
                            <#if booking.actual>
                            <form action="/cancel-order/${booking.id}" method="post" class="d-inline-block">
                                <input type="hidden" name="_csrf" value="${_csrf.token}">
                                <button type="submit" class="btn btn-danger btn-sm">Скасувати</button>
                            </form>
                            <#else>
                                <span class="badge badge-warning">Замовлення не актуальне</span>
                            </#if>
                        </td>
                    </tr>
                </#list>
                </tbody>
            </table>
        </div>
    <#else>
        <div class="alert alert-info text-center" role="alert">
            <h4>У користувача немає замовлень.</h4>
            <a href="/rooms" class="btn btn-primary mt-3">Переглянути номери</a>
        </div>
    </#if>
</div>





<br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br>
<br><br>

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
