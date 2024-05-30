<#--<!DOCTYPE html>-->
<#--<html>-->
<#--<head>-->
<#--    <title>diploma</title>-->
<#--    <!-- Підключення Bootstrap CSS &ndash;&gt;-->
<#--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">-->
<#--&lt;#&ndash;    <script>&ndash;&gt;-->
<#--&lt;#&ndash;        // Функція для зміни мови повідомлень про помилку&ndash;&gt;-->
<#--&lt;#&ndash;        function changeValidationMessages() {&ndash;&gt;-->
<#--&lt;#&ndash;            var inputs = document.querySelectorAll('input[required]');&ndash;&gt;-->
<#--&lt;#&ndash;            inputs.forEach(function (input) {&ndash;&gt;-->
<#--&lt;#&ndash;                input.addEventListener('invalid', function () {&ndash;&gt;-->
<#--&lt;#&ndash;                    if (!this.value ) {&ndash;&gt;-->
<#--&lt;#&ndash;                        this.setCustomValidity('Будь ласка, заповніть це поле.');&ndash;&gt;-->
<#--&lt;#&ndash;                    } else {&ndash;&gt;-->
<#--&lt;#&ndash;                        this.setCustomValidity('');&ndash;&gt;-->
<#--&lt;#&ndash;                    }&ndash;&gt;-->
<#--&lt;#&ndash;                });&ndash;&gt;-->
<#--&lt;#&ndash;            });&ndash;&gt;-->
<#--&lt;#&ndash;        }&ndash;&gt;-->
<#--&lt;#&ndash;        window.onload = changeValidationMessages;&ndash;&gt;-->
<#--&lt;#&ndash;    </script>&ndash;&gt;-->
<#--&lt;#&ndash;    <script>&ndash;&gt;-->
<#--&lt;#&ndash;        // Функція для зміни мови повідомлень про помилку&ndash;&gt;-->
<#--&lt;#&ndash;        function changeValidationMessages() {&ndash;&gt;-->
<#--&lt;#&ndash;            var inputs = document.querySelectorAll('input[required]');&ndash;&gt;-->
<#--&lt;#&ndash;            inputs.forEach(function (input) {&ndash;&gt;-->
<#--&lt;#&ndash;                input.addEventListener('invalid', function () {&ndash;&gt;-->
<#--&lt;#&ndash;                    if (!this.value) {&ndash;&gt;-->
<#--&lt;#&ndash;                        this.setCustomValidity('Будь ласка, заповніть це поле.');&ndash;&gt;-->
<#--&lt;#&ndash;                    } else {&ndash;&gt;-->
<#--&lt;#&ndash;                        this.setCustomValidity('');&ndash;&gt;-->
<#--&lt;#&ndash;                    }&ndash;&gt;-->
<#--&lt;#&ndash;                });&ndash;&gt;-->
<#--&lt;#&ndash;            });&ndash;&gt;-->
<#--&lt;#&ndash;        }&ndash;&gt;-->

<#--&lt;#&ndash;        // Функція для перевірки правильності введених даних&ndash;&gt;-->
<#--&lt;#&ndash;        function validateFields() {&ndash;&gt;-->
<#--&lt;#&ndash;            var nameField = document.getElementById('name');&ndash;&gt;-->
<#--&lt;#&ndash;            var emailField = document.getElementById('email');&ndash;&gt;-->
<#--&lt;#&ndash;            var phoneNumberField = document.getElementById('phoneNumber');&ndash;&gt;-->
<#--&lt;#&ndash;            var passwordField = document.getElementById('password');&ndash;&gt;-->

<#--&lt;#&ndash;            var namePattern = /^[^#$@]+$/; // Шаблон для імені&ndash;&gt;-->
<#--&lt;#&ndash;            var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/; // Шаблон для електронної пошти&ndash;&gt;-->
<#--&lt;#&ndash;            var phonePattern = /^\+380\d{9}$/; // Шаблон для номера телефону&ndash;&gt;-->
<#--&lt;#&ndash;            var passwordPattern = /^\d+$/; // Шаблон для пароля (тільки цифри)&ndash;&gt;-->

<#--&lt;#&ndash;            if (!namePattern.test(nameField.value)) {&ndash;&gt;-->
<#--&lt;#&ndash;                nameField.setCustomValidity('Введено неправильне ім\'я користувача.');&ndash;&gt;-->
<#--&lt;#&ndash;            } else if (!emailPattern.test(emailField.value)) {&ndash;&gt;-->
<#--&lt;#&ndash;                emailField.setCustomValidity('Введено неправильну пошту.');&ndash;&gt;-->
<#--&lt;#&ndash;            } else if (!phonePattern.test(phoneNumberField.value)) {&ndash;&gt;-->
<#--&lt;#&ndash;                phoneNumberField.setCustomValidity('Введено неправильний номер телефону.');&ndash;&gt;-->
<#--&lt;#&ndash;            } else if (!passwordPattern.test(passwordField.value)) {&ndash;&gt;-->
<#--&lt;#&ndash;                passwordField.setCustomValidity('Пароль повинен містити тільки цифри.');&ndash;&gt;-->
<#--&lt;#&ndash;            } else {&ndash;&gt;-->
<#--&lt;#&ndash;                // Якщо всі поля пройшли валідацію, скидаємо всі повідомлення про помилку&ndash;&gt;-->
<#--&lt;#&ndash;                nameField.setCustomValidity('');&ndash;&gt;-->
<#--&lt;#&ndash;                emailField.setCustomValidity('');&ndash;&gt;-->
<#--&lt;#&ndash;                phoneNumberField.setCustomValidity('');&ndash;&gt;-->
<#--&lt;#&ndash;                passwordField.setCustomValidity('');&ndash;&gt;-->
<#--&lt;#&ndash;            }&ndash;&gt;-->
<#--&lt;#&ndash;        }&ndash;&gt;-->

<#--&lt;#&ndash;        window.onload = function () {&ndash;&gt;-->
<#--&lt;#&ndash;            changeValidationMessages();&ndash;&gt;-->
<#--&lt;#&ndash;            // Виклик функції перевірки правильності введених даних при втраті фокуса від полів&ndash;&gt;-->
<#--&lt;#&ndash;            document.getElementById('name').addEventListener('blur', validateFields);&ndash;&gt;-->
<#--&lt;#&ndash;            document.getElementById('email').addEventListener('blur', validateFields);&ndash;&gt;-->
<#--&lt;#&ndash;            document.getElementById('phoneNumber').addEventListener('blur', validateFields);&ndash;&gt;-->
<#--&lt;#&ndash;            document.getElementById('password').addEventListener('blur', validateFields);&ndash;&gt;-->
<#--&lt;#&ndash;        };&ndash;&gt;-->
<#--&lt;#&ndash;    </script>&ndash;&gt;-->

<#--    <script>-->
<#--        // Функція для перевірки правильності введених даних-->
<#--        function validateFields() {-->
<#--            var nameField = document.getElementById('name');-->
<#--            var emailField = document.getElementById('email');-->
<#--            var phoneNumberField = document.getElementById('phoneNumber');-->
<#--            var passwordField = document.getElementById('password');-->

<#--            var namePattern = /^[^#$@]+$/; // Шаблон для імені-->
<#--            var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/; // Шаблон для електронної пошти-->
<#--            var phonePattern = /^\+380\d{9}$/; // Шаблон для номера телефону-->
<#--            var passwordPattern = /^\d+$/; // Шаблон для пароля (тільки цифри)-->

<#--            if (!namePattern.test(nameField.value)) {-->
<#--                nameField.setCustomValidity('Введено неправильне ім\'я користувача.');-->
<#--            } else if (!emailPattern.test(emailField.value)) {-->
<#--                emailField.setCustomValidity('Введено неправильну пошту.');-->
<#--            } else if (!phonePattern.test(phoneNumberField.value)) {-->
<#--                phoneNumberField.setCustomValidity('Введено неправильний номер телефону.');-->
<#--            } else if (!passwordField.value.match(/[a-zA-Z]/)) {-->
<#--                passwordField.setCustomValidity('Пароль повинен містити хоча б одну літеру.');-->
<#--            } else if (!passwordPattern.test(passwordField.value)) {-->
<#--                passwordField.setCustomValidity('Пароль повинен містити хоча б одну цифру.');-->
<#--            } else {-->
<#--                // Якщо всі поля пройшли валідацію, скидаємо всі повідомлення про помилку-->
<#--                nameField.setCustomValidity('');-->
<#--                emailField.setCustomValidity('');-->
<#--                phoneNumberField.setCustomValidity('');-->
<#--                passwordField.setCustomValidity('');-->
<#--            }-->
<#--        }-->

<#--        window.onload = function () {-->
<#--            changeValidationMessages();-->
<#--            // Виклик функції перевірки правильності введених даних при втраті фокуса від полів-->
<#--            document.getElementById('name').addEventListener('blur', validateFields);-->
<#--            document.getElementById('email').addEventListener('blur', validateFields);-->
<#--            document.getElementById('phoneNumber').addEventListener('blur', validateFields);-->
<#--            document.getElementById('password').addEventListener('blur', validateFields);-->
<#--        };-->
<#--    </script>-->


<#--</head>-->
<#--<body>-->
<#--<div class="container">-->
<#--    <h1 class="mt-5">Створення облікового запису</h1>-->
<#--    <hr>-->
<#--    <div class="row justify-content-center">-->
<#--        <div class="col-md-6">-->
<#--            <div class="card mt-3">-->
<#--                <div class="card-body">-->
<#--                    <form action="/registration" method="post">-->
<#--                        <div class="form-group">-->
<#--                            <label for="name">Ім'я користувача:</label>-->
<#--                            <input type="text" class="form-control" id="name" name="name" required title="Будь ласка, введіть ім'я користувача">-->
<#--                        </div>-->
<#--                        <div class="form-group">-->
<#--                            <label for="email">Пошта:</label>-->
<#--                            <input type="email" class="form-control" id="email" name="email" required title="Будь ласка, введіть Email">-->
<#--                        </div>-->
<#--                        <div class="form-group">-->
<#--                            <label for="phoneNumber">Номер телефону:</label>-->
<#--                            <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" required title="Будь ласка, введіть номер телефону">-->
<#--                        </div>-->
<#--                        <div class="form-group">-->
<#--                            <label for="password">Пароль:</label>-->
<#--                            <input type="password" class="form-control" id="password" name="password" required title="Будь ласка, введіть пароль">-->
<#--                        </div>-->
<#--                        <!-- Додавання CSRF токена &ndash;&gt;-->
<#--                        <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--                        <button type="submit" class="btn btn-primary">Зареєструватися</button>-->
<#--                    </form>-->
<#--                    <!-- Повідомлення про помилку &ndash;&gt;-->
<#--                    <#if errorMessage??>-->
<#--                        <div class="alert alert-danger mt-3" role="alert">${errorMessage}</div>-->
<#--                    </#if>-->
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





<#--<!DOCTYPE html>-->
<#--<html>-->
<#--<head>-->
<#--    <title>diploma</title>-->
<#--    <!-- Підключення Bootstrap CSS &ndash;&gt;-->
<#--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">-->
<#--    <script>-->
<#--        // Функція для зміни мови повідомлень про помилку-->
<#--        function changeValidationMessages() {-->
<#--            var inputs = document.querySelectorAll('input[required]');-->
<#--            inputs.forEach(function (input) {-->
<#--                input.addEventListener('invalid', function () {-->
<#--                    if (!this.value) {-->
<#--                        this.setCustomValidity('Будь ласка, заповніть це поле.');-->
<#--                    } else {-->
<#--                        this.setCustomValidity('');-->
<#--                    }-->
<#--                });-->
<#--            });-->
<#--        }-->

<#--        // Функція для перевірки правильності введених даних-->
<#--        function validateFields() {-->
<#--            var nameField = document.getElementById('name');-->
<#--            var emailField = document.getElementById('email');-->
<#--            var phoneNumberField = document.getElementById('phoneNumber');-->
<#--            var passwordField = document.getElementById('password');-->

<#--            var namePattern = /^[^#$@]+$/; // Шаблон для імені-->
<#--            var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/; // Шаблон для електронної пошти-->
<#--            var phonePattern = /^\+380\d{9}$/; // Шаблон для номера телефону-->
<#--            var passwordPattern = /^\d+$/; // Шаблон для пароля (тільки цифри)-->

<#--            if (!namePattern.test(nameField.value)) {-->
<#--                nameField.setCustomValidity('Введено неправильне ім\'я користувача.');-->
<#--            } else if (!emailPattern.test(emailField.value)) {-->
<#--                emailField.setCustomValidity('Введено неправильну пошту.');-->
<#--            } else if (!phonePattern.test(phoneNumberField.value)) {-->
<#--                phoneNumberField.setCustomValidity('Введено неправильний номер телефону.');-->
<#--            } else if (!passwordField.value.match(/[a-zA-Z]/)) {-->
<#--                passwordField.setCustomValidity('Пароль повинен містити хоча б одну літеру.');-->
<#--            } else if (!passwordPattern.test(passwordField.value)) {-->
<#--                passwordField.setCustomValidity('Пароль повинен містити хоча б одну цифру.');-->
<#--            } else {-->
<#--                // Якщо всі поля пройшли валідацію, скидаємо всі повідомлення про помилку-->
<#--                nameField.setCustomValidity('');-->
<#--                emailField.setCustomValidity('');-->
<#--                phoneNumberField.setCustomValidity('');-->
<#--                passwordField.setCustomValidity('');-->
<#--            }-->
<#--        }-->

<#--        window.onload = function () {-->
<#--            changeValidationMessages();-->
<#--            // Виклик функції перевірки правильності введених даних при втраті фокуса від полів-->
<#--            document.getElementById('name').addEventListener('blur', validateFields);-->
<#--            document.getElementById('email').addEventListener('blur', validateFields);-->
<#--            document.getElementById('phoneNumber').addEventListener('blur', validateFields);-->
<#--            document.getElementById('password').addEventListener('blur', validateFields);-->
<#--        };-->
<#--    </script>-->
<#--</head>-->
<#--<body>-->
<#--<div class="container">-->
<#--    <h1 class="mt-5">Створення облікового запису</h1>-->
<#--    <hr>-->
<#--    <div class="row justify-content-center">-->
<#--        <div class="col-md-6">-->
<#--            <div class="card mt-3">-->
<#--                <div class="card-body">-->
<#--                    <form action="/registration" method="post">-->
<#--                        <div class="form-group">-->
<#--                            <label for="name">Ім'я користувача:</label>-->
<#--                            <input type="text" class="form-control" id="name" name="name" required title="Будь ласка, введіть ім'я користувача">-->
<#--                        </div>-->
<#--                        <div class="form-group">-->
<#--                            <label for="email">Пошта:</label>-->
<#--                            <input type="email" class="form-control" id="email" name="email" required title="Будь ласка, введіть Email">-->
<#--                        </div>-->
<#--                        <div class="form-group">-->
<#--                            <label for="phoneNumber">Номер телефону:</label>-->
<#--                            <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" required title="Будь ласка, введіть номер телефону">-->
<#--                        </div>-->
<#--                        <div class="form-group">-->
<#--                            <label for="password">Пароль:</label>-->
<#--                            <input type="password" class="form-control" id="password" name="password" required title="Будь ласка, введіть пароль">-->
<#--                        </div>-->
<#--                        <!-- Додавання CSRF токена &ndash;&gt;-->
<#--                        <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--                        <button type="submit" class="btn btn-primary">Зареєструватися</button>-->
<#--                    </form>-->
<#--                    <!-- Повідомлення про помилку &ndash;&gt;-->
<#--                    <#if errorMessage??>-->
<#--                        <div class="alert alert-danger mt-3" role="alert">${errorMessage}</div>-->
<#--                    </#if>-->
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






<#--<!DOCTYPE html>-->
<#--<html>-->
<#--<head>-->
<#--    <title>diploma</title>-->
<#--    <!-- Підключення Bootstrap CSS &ndash;&gt;-->
<#--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">-->
<#--    <script>-->
<#--        // Функція для зміни мови повідомлень про помилку-->
<#--        function changeValidationMessages() {-->
<#--            var inputs = document.querySelectorAll('input[required]');-->
<#--            inputs.forEach(function (input) {-->
<#--                input.addEventListener('invalid', function () {-->
<#--                    if (!this.value) {-->
<#--                        this.setCustomValidity('Будь ласка, заповніть це поле.');-->
<#--                    } else {-->
<#--                        this.setCustomValidity('');-->
<#--                    }-->
<#--                });-->
<#--            });-->
<#--        }-->

<#--        // Функція для перевірки правильності введених даних-->
<#--        function validateFields() {-->
<#--            var nameField = document.getElementById('name');-->
<#--            var emailField = document.getElementById('email');-->
<#--            var phoneNumberField = document.getElementById('phoneNumber');-->
<#--            var passwordField = document.getElementById('password');-->

<#--            var namePattern = /^[^#$@]+$/; // Шаблон для імені-->
<#--            var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/; // Шаблон для електронної пошти-->
<#--            var phonePattern = /^\+380\d{9}$/; // Шаблон для номера телефону-->
<#--            var passwordPattern = /^(?=.*[0-9])(?=.*[a-zA-Z])([a-zA-Z0-9]+)$/; // Шаблон для пароля (повинен містити хоча б одну цифру та одну літеру)-->

<#--            if (!namePattern.test(nameField.value)) {-->
<#--                nameField.setCustomValidity('Введено неправильне ім\'я користувача.');-->
<#--            } else if (!emailPattern.test(emailField.value)) {-->
<#--                emailField.setCustomValidity('Введено неправильну пошту.');-->
<#--            } else if (!phonePattern.test(phoneNumberField.value)) {-->
<#--                phoneNumberField.setCustomValidity('Введено неправильний номер телефону.');-->
<#--            } else if (!passwordPattern.test(passwordField.value)) {-->
<#--                passwordField.setCustomValidity('Пароль повинен містити хоча б одну цифру та одну літеру.');-->
<#--            } else {-->
<#--                // Якщо всі поля пройшли валідацію, скидаємо всі повідомлення про помилку-->
<#--                nameField.setCustomValidity('');-->
<#--                emailField.setCustomValidity('');-->
<#--                phoneNumberField.setCustomValidity('');-->
<#--                passwordField.setCustomValidity('');-->
<#--            }-->
<#--        }-->

<#--        window.onload = function () {-->
<#--            changeValidationMessages();-->
<#--            // Виклик функції перевірки правильності введених даних при втраті фокуса від полів-->
<#--            document.getElementById('name').addEventListener('blur', validateFields);-->
<#--            document.getElementById('email').addEventListener('blur', validateFields);-->
<#--            document.getElementById('phoneNumber').addEventListener('blur', validateFields);-->
<#--            document.getElementById('password').addEventListener('blur', validateFields);-->
<#--        };-->
<#--    </script>-->
<#--</head>-->
<#--<body>-->
<#--<div class="container">-->
<#--    <h1 class="mt-5">Створення облікового запису</h1>-->
<#--    <hr>-->
<#--    <div class="row justify-content-center">-->
<#--        <div class="col-md-6">-->
<#--            <div class="card mt-3">-->
<#--                <div class="card-body">-->
<#--                    <form action="/registration" method="post">-->
<#--                        <div class="form-group">-->
<#--                            <label for="name">Ім'я користувача:</label>-->
<#--                            <input type="text" class="form-control" id="name" name="name" required title="Будь ласка, введіть ім'я користувача">-->
<#--                        </div>-->
<#--                        <div class="form-group">-->
<#--                            <label for="email">Пошта:</label>-->
<#--                            <input type="email" class="form-control" id="email" name="email" required title="Будь ласка, введіть Email">-->
<#--                        </div>-->
<#--                        <div class="form-group">-->
<#--                            <label for="phoneNumber">Номер телефону:</label>-->
<#--                            <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" required title="Будь ласка, введіть номер телефону">-->
<#--                        </div>-->
<#--                        <div class="form-group">-->
<#--                            <label for="password">Пароль:</label>-->
<#--                            <input type="password" class="form-control" id="password" name="password" required title="Будь ласка, введіть пароль">-->
<#--                        </div>-->
<#--                        <!-- Додавання CSRF токена &ndash;&gt;-->
<#--                        <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--                        <button type="submit" class="btn btn-primary">Зареєструватися</button>-->
<#--                    </form>-->
<#--                    <!-- Повідомлення про помилку &ndash;&gt;-->
<#--                    <#if errorMessage??>-->
<#--                        <div class="alert alert-danger mt-3" role="alert">${errorMessage}</div>-->
<#--                    </#if>-->
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




<#--<!DOCTYPE html>-->
<#--<html>-->
<#--<head>-->
<#--    <title>diploma</title>-->
<#--    <!-- Підключення Bootstrap CSS &ndash;&gt;-->
<#--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">-->
<#--    <script>-->
<#--        // Функція для зміни мови повідомлень про помилку-->
<#--        function changeValidationMessages() {-->
<#--            var inputs = document.querySelectorAll('input[required]');-->
<#--            inputs.forEach(function (input) {-->
<#--                input.addEventListener('invalid', function () {-->
<#--                    if (!this.value) {-->
<#--                        this.setCustomValidity('Будь ласка, заповніть це поле.');-->
<#--                    } else {-->
<#--                        this.setCustomValidity('');-->
<#--                    }-->
<#--                });-->
<#--            });-->
<#--        }-->

<#--        // Функція для перевірки правильності введених даних-->
<#--        function validateFields() {-->
<#--            var nameField = document.getElementById('name');-->
<#--            var emailField = document.getElementById('email');-->
<#--            var phoneNumberField = document.getElementById('phoneNumber');-->
<#--            var passwordField = document.getElementById('password');-->

<#--            var namePattern = /^[^#$@]+$/; // Шаблон для імені-->
<#--            var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/; // Шаблон для електронної пошти-->
<#--            var phonePattern = /^\+380\d{9}$/; // Шаблон для номера телефону-->
<#--            var passwordPattern = /^(?=.*[0-9])(?=.*[a-zA-Z])([a-zA-Z0-9]+)$/; // Шаблон для пароля (повинен містити хоча б одну цифру та одну літеру)-->

<#--            var nameError = document.getElementById('nameError');-->
<#--            var emailError = document.getElementById('emailError');-->
<#--            var phoneError = document.getElementById('phoneError');-->
<#--            var passwordError = document.getElementById('passwordError');-->

<#--            if (!namePattern.test(nameField.value)) {-->
<#--                nameError.innerText = 'Введено неправильне ім\'я користувача.';-->
<#--            } else {-->
<#--                nameError.innerText = '';-->
<#--            }-->

<#--            if (!emailPattern.test(emailField.value)) {-->
<#--                emailError.innerText = 'Введено неправильну пошту.';-->
<#--            } else {-->
<#--                emailError.innerText = '';-->
<#--            }-->

<#--            if (!phonePattern.test(phoneNumberField.value)) {-->
<#--                phoneError.innerText = 'Введено неправильний номер телефону.';-->
<#--            } else {-->
<#--                phoneError.innerText = '';-->
<#--            }-->

<#--            if (!passwordPattern.test(passwordField.value)) {-->
<#--                passwordError.innerText = 'Пароль повинен містити хоча б одну цифру та одну літеру.';-->
<#--            } else {-->
<#--                passwordError.innerText = '';-->
<#--            }-->
<#--        }-->

<#--        window.onload = function () {-->
<#--            changeValidationMessages();-->
<#--            // Виклик функції перевірки правильності введених даних при втраті фокуса від полів-->
<#--            document.getElementById('name').addEventListener('blur', validateFields);-->
<#--            document.getElementById('email').addEventListener('blur', validateFields);-->
<#--            document.getElementById('phoneNumber').addEventListener('blur', validateFields);-->
<#--            document.getElementById('password').addEventListener('blur', validateFields);-->
<#--        };-->
<#--    </script>-->
<#--</head>-->
<#--<body>-->
<#--<div class="container">-->
<#--    <h1 class="mt-5">Створення облікового запису</h1>-->
<#--    <hr>-->
<#--    <div class="row justify-content-center">-->
<#--        <div class="col-md-6">-->
<#--            <div class="card mt-3">-->
<#--                <div class="card-body">-->
<#--                    <form action="/registration" method="post">-->
<#--                        <div class="form-group">-->
<#--                            <label for="name">Ім'я користувача:</label>-->
<#--                            <input type="text" class="form-control" id="name" name="name" required title="Будь ласка, введіть ім'я користувача">-->
<#--                            <span id="nameError" style="color: red;"></span>-->
<#--                        </div>-->
<#--                        <div class="form-group">-->
<#--                            <label for="email">Пошта:</label>-->
<#--                            <input type="email" class="form-control" id="email" name="email" required title="Будь ласка, введіть Email">-->
<#--                            <span id="emailError" style="color: red;"></span>-->
<#--                        </div>-->
<#--                        <div class="form-group">-->
<#--                            <label for="phoneNumber">Номер телефону:</label>-->
<#--                            <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" required title="Будь ласка, введіть номер телефону" placeholder="+380ХХХХХХХХХ">-->
<#--                            <span id="phoneError" style="color: red;"></span>-->
<#--                        </div>-->
<#--                        <div class="form-group">-->
<#--                            <label for="password">Пароль:</label>-->
<#--                            <input type="password" class="form-control" id="password" name="password" required title="Будь ласка, введіть пароль">-->
<#--                            <span id="passwordError" style="color: red;"></span>-->
<#--                        </div>-->
<#--                        <!-- Додавання CSRF токена &ndash;&gt;-->
<#--                        <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--                        <button type="submit" class="btn btn-primary">Зареєструватися</button>-->
<#--                    </form>-->
<#--                    <!-- Повідомлення про помилку &ndash;&gt;-->
<#--                    <#if errorMessage??>-->
<#--                        <div class="alert alert-danger mt-3" role="alert">${errorMessage}</div>-->
<#--                    </#if>-->
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
    <title>diploma</title>
    <!-- Підключення Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Стилі для відображення повідомлень про помилку */
        input:invalid {
            border-color: #dc3545; /* Змінюємо колір рамки на червоний для неправильних введень */
        }

        input:invalid::after {
            content: attr(title); /* Використовуємо значення атрибуту title як текст повідомлення */
            color: #dc3545; /* Змінюємо колір тексту на червоний */
            font-size: 0.875rem; /* Змінюємо розмір тексту */
            margin-top: 0.25rem; /* Додаємо невеликий відступ зверху */
            display: block; /* Відображаємо повідомлення як блок */
        }
    </style>
    <script>
        // Функція для перевірки правильності введених даних перед надсиланням форми
        function validateForm(event) {
            // Отримання полів форми
            var nameField = document.getElementById('name');
            var emailField = document.getElementById('email');
            var phoneNumberField = document.getElementById('phoneNumber');
            var passwordField = document.getElementById('password');

            // Перевірка правильності введених даних
            var namePattern = /^[^#$@]+$/; // Шаблон для імені
            var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/; // Шаблон для електронної пошти
            var phonePattern = /^\+380\d{9}$/; // Шаблон для номера телефону
            var passwordPattern = /^\d+$/; // Шаблон для пароля (тільки цифри)

            if (!namePattern.test(nameField.value)) {
                alert('Введено неправильне ім\'я користувача.');
                event.preventDefault(); // Зупинка відправки форми
            } else if (!emailPattern.test(emailField.value)) {
                alert('Введено неправильну пошту.');
                event.preventDefault(); // Зупинка відправки форми
            } else if (!phonePattern.test(phoneNumberField.value)) {
                alert('Введено неправильний номер телефону.');
                event.preventDefault(); // Зупинка відправки форми
            } else if (!passwordPattern.test(passwordField.value)) {
                alert('Пароль повинен містити тільки цифри.');
                event.preventDefault(); // Зупинка відправки форми
            }
        }

        // Додавання обробника події на форму для виклику функції перед надсиланням
        document.getElementById('registrationForm').addEventListener('submit', validateForm);
    </script>
</head>
<body>
<div class="container">
    <h1 class="mt-5">Створення облікового запису</h1>
    <hr>
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card mt-3">
                <div class="card-body">
                    <form action="/registration" method="post">
                        <div class="form-group">
                            <label for="name">Ім'я користувача:</label>
                            <input type="text" class="form-control" id="name" name="name" required
                                   title="Будь ласка, введіть ім'я користувача">
                        </div>
                        <div class="form-group">
                            <label for="email">Пошта:</label>
                            <input type="email" class="form-control" id="email" name="email" required
                                   title="Будь ласка, введіть Email">
                        </div>
                        <div class="form-group">
                            <label for="phoneNumber">Номер телефону:</label>
                            <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" required
                                   placeholder="Введіть номер телефону у форматі +380XXXXXXXXX">
                        </div>
                        <div class="form-group">
                            <label for="password">Пароль:</label>
                            <input type="password" class="form-control" id="password" name="password" required
                                   title="Будь ласка, введіть пароль">
                        </div>
                        <!-- Додавання CSRF токена -->
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <button type="submit" class="btn btn-primary">Зареєструватися</button>
                    </form>
                    <!-- Повідомлення про помилку -->
                    <#if errorMessage??>
                        <div class="alert alert-danger mt-3" role="alert">${errorMessage}</div>
                    </#if>
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











<#--<!DOCTYPE html>-->
<#--<html>-->
<#--<head>-->
<#--    <title>Реєстрація користувача</title>-->
<#--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">-->
<#--</head>-->
<#--<body>-->
<#--<div class="container">-->
<#--    <h1 class="mt-5">Реєстрація нового користувача</h1>-->
<#--    <hr>-->
<#--    <div class="row justify-content-center">-->
<#--        <div class="col-md-6">-->
<#--            <div class="card mt-3">-->
<#--                <div class="card-body">-->
<#--                    <form id="registrationForm" action="/registration" method="post">-->
<#--                        <div class="form-group">-->
<#--                            <label for="name">Ім'я користувача:</label>-->
<#--                            <input type="text" class="form-control" id="name" name="name" required>-->
<#--                            <div id="nameError" class="invalid-feedback">Будь ласка, введіть ім'я користувача.</div>-->
<#--                        </div>-->
<#--                        <div class="form-group">-->
<#--                            <label for="email">Пошта:</label>-->
<#--                            <input type="email" class="form-control" id="email" name="email" required>-->
<#--                            <div id="emailError" class="invalid-feedback">Будь ласка, введіть коректну електронну пошту.</div>-->
<#--                        </div>-->
<#--                        <div class="form-group">-->
<#--                            <label for="phoneNumber">Номер телефону:</label>-->
<#--                            <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" required pattern="^\+380\d{9}$" placeholder="+380XXXXXXXXX">-->
<#--                            <div id="phoneNumberError" class="invalid-feedback">Будь ласка, введіть номер телефону у форматі +380XXXXXXXXX.</div>-->
<#--                        </div>-->
<#--                        <div class="form-group">-->
<#--                            <label for="password">Пароль:</label>-->
<#--                            <input type="password" class="form-control" id="password" name="password" required>-->
<#--                            <div id="passwordError" class="invalid-feedback">Пароль повинен містити щонайменше одну літеру та одну цифру, і бути довжиною не менше 8 символів.</div>-->
<#--                        </div>-->
<#--                        <button type="submit" class="btn btn-primary">Зареєструватися</button>-->
<#--                    </form>-->
<#--                </div>-->
<#--            </div>-->
<#--        </div>-->
<#--    </div>-->
<#--</div>-->

<#--<script>-->
<#--    // Функція для валідації полів форми перед надсиланням-->
<#--    function validateForm(event) {-->
<#--        // Отримання полів форми-->
<#--        var nameField = document.getElementById('name');-->
<#--        var emailField = document.getElementById('email');-->
<#--        var phoneNumberField = document.getElementById('phoneNumber');-->
<#--        var passwordField = document.getElementById('password');-->

<#--        // Перевірка ім'я користувача-->
<#--        if (!nameField.checkValidity()) {-->
<#--            document.getElementById('nameError').style.display = 'block';-->
<#--       //     event.preventDefault(); // Зупинка відправки форми-->
<#--        } else {-->
<#--            document.getElementById('nameError').style.display = 'none';-->
<#--        }-->

<#--        // Перевірка електронної пошти-->
<#--        if (!emailField.checkValidity()) {-->
<#--            document.getElementById('emailError').style.display = 'block';-->
<#--          //  event.preventDefault(); // Зупинка відправки форми-->
<#--        } else {-->
<#--            document.getElementById('emailError').style.display = 'none';-->
<#--        }-->

<#--        // Перевірка номера телефону-->
<#--        if (!phoneNumberField.checkValidity()) {-->
<#--            document.getElementById('phoneNumberError').style.display = 'block';-->
<#--         //   event.preventDefault(); // Зупинка відправки форми-->
<#--        } else {-->
<#--            document.getElementById('phoneNumberError').style.display = 'none';-->
<#--        }-->

<#--        // Перевірка пароля-->
<#--        var passwordPattern = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;-->
<#--        if (!passwordPattern.test(passwordField.value)) {-->
<#--            document.getElementById('passwordError').style.display = 'block';-->
<#--        //    event.preventDefault(); // Зупинка відправки форми-->
<#--        } else {-->
<#--            document.getElementById('passwordError').style.display = 'none';-->
<#--        }-->
<#--    }-->

<#--    // Додавання обробника події на форму для виклику функції перед надсиланням-->
<#--    document.getElementById('registrationForm').addEventListener('submit', validateForm);-->
<#--</script>-->

<#--</body>-->
<#--</html>-->

