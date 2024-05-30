<#if user.email??>
    <!DOCTYPE html>
    <html lang="uk">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Номери</title>
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

            .hero-section {
                background: linear-gradient(rgba(106, 17, 203, 0.5), rgba(37, 117, 252, 0.5)), url('/images/tekstura-siniy-cvet-fon.webp') no-repeat center center fixed;
                background-size: cover;
                color: black; /* Зміна кольору тексту для кращої читабельності */
                padding: 20px;
                border-radius: 10px;
            }

            .content-section {
                background: rgba(255, 255, 255, 0.8); /* Напівпрозорий фон для вмісту */
                color: black;
                padding: 20px;
                border-radius: 10px;
                margin-top: 20px; /* Додати відступ зверху, щоб відокремити від хедера */
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
            <#if user.email??>
                <#if user.isAdmin()>
                    <li><a href="/admin" class="nav-link px-2 link-secondary font-weight-bold">Панель адміна</a></li>
                <#else >
                    <li><a href="/my-orders" class="nav-link px-2 link-secondary font-weight-bold">Мої замовлення</a>
                    </li>
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

    <div class="container hero-section">
        <div class="row">
            <#list rooms as room>
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <div id="carousel-${room.id}" class="carousel slide" data-ride="carousel" data-interval="false">
                            <div class="carousel-inner">
                                <#list room.roomImages as img>
                                    <div class="carousel-item <#if img?index == 0>active</#if>">
                                        <img src="/room_images/${img.id}" class="d-block w-100" alt="Зображення номера">
                                    </div>
                                </#list>
                            </div>
                            <a class="carousel-control-prev" href="#carousel-${room.id}" role="button"
                               data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carousel-${room.id}" role="button"
                               data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                        <div class="card-body">
<#--                            <h5 class="card-title">${room.type}</h5>-->
                            <a href="/room-info/${room.id}" style="color: black" class="card-title font-weight-bold">${room.type}</a>
                            <br>
                            <a href="/hotel-info/${room.hotel.id}" style="color: black" class="card-title font-weight-bold">${room.hotel.name}</a>
                            <p class="card-text">
<#--                                <strong>Вільний:</strong> ${room.available?string('Так', 'Ні')}<br>-->
                                <strong>Ціна за ніч:</strong> ${room.priceOfNight} грн
                            </p>
                            <div class=" text-center">
                                <#if room.isAvailable()>
                                <form action="/create-booking" method="get" class="d-inline-block">
                                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                                    <input type="hidden" name="room" value="${room.id}">
<#--                                    <input type="hidden" name="user" value="${user.id}">-->
                                    <input type="submit" value="Забронювати" class="btn btn-primary">
                                </form>
                                <#else>
                                    <div class="text-danger">Номер зайнятий</div>
                                </#if>

                            </div>
                        </div>
                    </div>
                </div>
            <#else>
                <div class="col-12">
                    <div class="alert alert-info text-center" role="alert">
                        Номерів немає.
                    </div>
                </div>
            </#list>
        </div>
    </div>
    <br>

    <footer style="background-color: lightblue;" class="text-white pt-4">
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


<#--    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>-->
<#--    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>-->
<#--    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>-->


<#--    <script>-->
<#--        $(document).ready(function () {-->
<#--            $('#logout-btn').click(function () {-->
<#--                $.ajax({-->
<#--                    type: 'POST',-->
<#--                    url: '/logout',-->
<#--                    data: $('#logout-form').serialize(),-->
<#--                    success: function () {-->
<#--                        window.location.reload();-->
<#--                    }-->
<#--                });-->
<#--            });-->

<#--            // Зміна тексту у елементі input[type="file"]-->
<#--            $('input[type="file"]').change(function (e) {-->
<#--                var fileName = e.target.files[0] ? e.target.files[0].name : 'Виберіть файл';-->
<#--                $(this).next('.custom-file-label').html(fileName);-->
<#--            });-->
<#--        });-->
<#--    </script>-->

    </body>
    </html>
<#else>
<#-- Перенаправляє на сторінку "Будь ласка, зайдіть до свого облікового запису або створіть новий" -->
    <script>
        window.location.href = "/login-required";
    </script>
</#if>