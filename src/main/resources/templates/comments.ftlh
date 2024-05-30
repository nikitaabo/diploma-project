<#--<!DOCTYPE html>-->
<#--<html>-->
<#--<head>-->
<#--    <title>Відгуки</title>-->
<#--    <!-- Підключення Bootstrap CSS &ndash;&gt;-->
<#--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">-->
<#--    <style>-->
<#--        .custom-nav {-->
<#--            margin-left: -350px; /* Змінити значення для досягнення бажаного результату */-->
<#--        }-->
<#--        nav-link {-->
<#--            font-size: 1.7rem; /* Збільшуємо розмір шрифту */-->
<#--        } -->
<#--    </style>-->
<#--</head>-->
<#--<body>-->
<#--<header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">-->
<#--    <div class="col-md-3 mb-2 mb-md-0">-->
<#--        <a href="/" class="d-inline-flex link-body-emphasis text-decoration-none">-->
<#--            <svg class="bi" width="40" height="32" role="img" aria-label="Bootstrap">-->
<#--                <use xlink:href="#bootstrap"></use>-->
<#--            </svg>-->
<#--        </a>-->
<#--    </div>-->

<#--    <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0 custom-nav">-->
<#--        <#if user.email??>-->
<#--            <li><a href="/my-orders" class="nav-link px-2 link-secondary font-weight-bold">Мої замовлення</a></li>-->
<#--        </#if>-->
<#--        <li><a href="/" class="nav-link px-2 link-secondary font-weight-bold">Головна</a></li>-->
<#--        <li><a href="/rooms" class="nav-link px-2 font-weight-bold">Доступні номери</a></li>-->
<#--        <li><a href="/comments" class="nav-link px-2 font-weight-bold">Відгуки</a></li>-->
<#--        <li><a href="/about" class="nav-link px-2 font-weight-bold">Про нас</a></li>-->
<#--    </ul>-->

<#--    <div class="col-md-3 text-end">-->
<#--        <#if user.email??>-->
<#--            <form action="/logout" method="post" class="mt-3">-->
<#--                <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--                <button type="submit" class="btn btn-primary">-->
<#--                    <i class="fas fa-sign-out-alt"></i> Вийти-->
<#--                </button>-->
<#--            </form>-->
<#--        <#else>-->
<#--            <button type="button" class="btn btn-outline-primary me-2"><a href="/login">Увійти</a></button>-->
<#--            <button type="button" class="btn btn-warning"><a href="/registration">Зареєструватися</a></button>-->
<#--        </#if>-->
<#--    </div>-->
<#--</header>-->

<#--<div class="container mt-5">-->
<#--    <h1>Відгуки</h1>-->
<#--    <hr>-->
<#--    <div class="list-group">-->
<#--        <#list comments as comment>-->
<#--            <div class="list-group-item">-->
<#--                <h5>${comment.author}</h5>-->
<#--                <p>${comment.text}</p>-->
<#--                <small class="text-muted">${comment.date}</small>-->
<#--            </div>-->
<#--        </#list>-->
<#--    </div>-->
<#--</div>-->

<#--<footer class="bg-light text-center text-lg-start mt-5">-->
<#--    <div class="container p-4">-->
<#--        <div class="row">-->
<#--            <div class="col-lg-6 col-md-12 mb-4 mb-md-0">-->
<#--                <h5 class="text-uppercase">Hotel Booking</h5>-->
<#--                <p>-->
<#--                    Ласкаво просимо до нашої системи замовлення готельних номерів. Насолоджуйтесь швидким та зручним-->
<#--                    процесом замовлення.-->
<#--                </p>-->
<#--            </div>-->

<#--            <div class="col-lg-3 col-md-6 mb-4 mb-md-0">-->
<#--                <h5 class="text-uppercase">Посилання</h5>-->
<#--                <ul class="list-unstyled mb-0">-->
<#--                    <li><a href="/" class="text-dark">Головна</a></li>-->
<#--                    <li><a href="/rooms" class="text-dark">Доступні номери</a></li>-->
<#--                    <li><a href="/comments" class="text-dark">Відгуки</a></li>-->
<#--                    <li><a href="/about" class="text-dark">Про нас</a></li>-->
<#--                </ul>-->
<#--            </div>-->

<#--            <div class="col-lg-3 col-md-6 mb-4 mb-md-0">-->
<#--                <h5 class="text-uppercase">Контакти</h5>-->
<#--                <ul class="list-unstyled mb-0">-->
<#--                    <li><a href="#!" class="text-dark">Контактна інформація</a></li>-->
<#--                    <li><a href="#!" class="text-dark">Наша адреса</a></li>-->
<#--                    <li><a href="#!" class="text-dark">Електронна пошта</a></li>-->
<#--                    <li><a href="#!" class="text-dark">Телефон</a></li>-->
<#--                </ul>-->
<#--            </div>-->
<#--        </div>-->
<#--    </div>-->

<#--    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">-->
<#--        © 2024 Hotel Booking. Усі права захищено.-->
<#--    </div>-->
<#--</footer>-->

<#--<!-- Підключення Bootstrap та jQuery JS &ndash;&gt;-->
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

        .text-underline {
            text-decoration: underline;
        }

        .small {
            font-size: 0.875em;
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

<div class="container mt-5">
    <h1>Відгуки</h1>
    <hr>
    <div class="list-group">
        <#list comments as comment>
            <div class="list-group-item d-flex justify-content-between align-items-center">
                <div>
                    <h5>${comment.author.email}</h5>
                    <p>${comment.text}</p>
                    <#assign formattedDate = helper.formatLocalDateTime(comment.dateOfCreated, "dd-MM-yyyy HH:mm:ss")>
                    <div class="text-muted text-underline mt-2 small">${formattedDate}</div>
                </div>
                <#if user.email??>
                    <#if user.isAdmin()>
                        <form action="/comment-delete/${comment.id}" method="post">
                            <input type="hidden" name="_csrf" value="${_csrf.token}">
                            <button type="submit" class="btn btn-danger">Видалити</button>
                        </form>
                    <#else>
                        <#if user.name?string == comment.author.name?string>
                            <div class="d-flex gap-2">
                                <form action="/comment-edit/${comment.id}" method="get">
                                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                                    <button type="submit" class="btn btn-primary">Редагувати</button>
                                </form>
                                <form action="/comment-delete/${comment.id}" method="post">
                                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                                    <button type="submit" class="btn btn-danger">Видалити</button>
                                </form>
                            </div>
                        </#if>
                    </#if>
                </#if>
            </div>
            <#else>
            <p>Відгуків немає</p>
        </#list>
    </div>
    <br>
    <#if user.email??>
        <form action="/comments/add-comment" method="get">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input type="submit" value="Додати відгук">
        </form>
    <#else>
        <p>Для того, щоб залишити відгук, <a href="/login">увійдіть</a> до свого облікового запису</p>
    </#if>
</div>

<br><br><br><br><br><br><br><br>

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
