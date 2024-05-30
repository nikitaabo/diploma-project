<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Бронювання готельного номеру</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <style>
        .ui-datepicker-unavailable .ui-state-default {
            background: #f00;
            color: #fff;
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <div class="card">
        <div class="card-header">
            <h5 class="card-title">Бронювання готельного номеру</h5>
        </div>
        <div class="card-body">
            <form action="/create-booking" method="post">
                <div class="form-group">
                    <label for="name">Ім'я користувача:</label>
                    <input type="text" class="form-control" id="name" name="name" value="${user.name}" readonly>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="text" class="form-control" id="name" name="name" value="${user.email}" readonly>
                </div>
                <div class="form-group">
                    <label for="room">Готель:</label>
                    <input type="text" class="form-control" id="name" name="name" value="${hotelName}" readonly>
                </div>
                <div class="form-group">
                    <label for="room">Тип номеру:</label>
                    <input type="text" class="form-control" id="name" name="name" value="${room.type}" readonly>
                </div>
                <div class="form-group">
                    <label for="unavailable_dates">Зайняті дати:</label>
                    <div id="unavailable_dates"></div>
                </div>
                <div class="form-group">
                    <label for="checkin">Дата заїзду:</label>
                    <input type="date" class="form-control" id="checkin" name="checkin" required>
                </div>
                <div class="form-group">
                    <label for="checkout">Дата виїзду:</label>
                    <input type="date" class="form-control" id="checkout" name="checkout" required>
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <input type="hidden" name="room_id" value="${room.id}">
                <button type="submit" class="btn btn-primary">Забронювати</button>
            </form>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<#--<script>-->
<#--    $(document).ready(function () {-->
<#--        var unavailableDates = []; // Тут будуть зберігатися зайняті дати-->

<#--        // Завантаження зайнятих дат з сервера-->
<#--        $.ajax({-->
<#--            url: '/get-unavailable-dates',-->
<#--            method: 'GET',-->
<#--            data: {roomId: ${room.id}},-->
<#--            success: function (data) {-->
<#--                unavailableDates = data; // Очікується, що сервер поверне масив зайнятих дат у форматі yyyy-mm-dd-->
<#--                $('#unavailable_dates').datepicker({-->
<#--                    beforeShowDay: function (date) {-->
<#--                        var string = jQuery.datepicker.formatDate('yy-mm-dd', date);-->
<#--                        return [unavailableDates.indexOf(string) === -1];-->
<#--                    },-->
<#--                    dateFormat: 'yy-mm-dd'-->
<#--                });-->
<#--            }-->
<#--        });-->
<#--    });-->
<#--</script>-->
<script>
    $(document).ready(function () {
        var unavailableDates = []; // Тут будуть зберігатися зайняті дати

        // Завантаження зайнятих дат з сервера
        $.ajax({
            url: '/get-unavailable-dates',
            method: 'GET',
            data: {roomId: ${room.id}},
            success: function (data) {
                unavailableDates = data; // Очікується, що сервер поверне масив зайнятих дат у форматі yyyy-mm-dd
                $('#unavailable_dates').datepicker({
                    beforeShowDay: function (date) {
                        var string = jQuery.datepicker.formatDate('yy-mm-dd', date);
                        if (unavailableDates.indexOf(string) !== -1) {
                            return [false, "ui-datepicker-unavailable", "Зайнято"];
                        }
                        return [true, ""];
                    },
                    dateFormat: 'yy-mm-dd'
                });
            }
        });

        // Налаштування локалізації на українську
        $.datepicker.setDefaults($.datepicker.regional['uk']);
    });
</script>
<script>
    $(document).ready(function () {
        var unavailableDates = []; // Тут будуть зберігатися зайняті дати

        // Завантаження зайнятих дат з сервера
        $.ajax({
            url: 'get-unavailable-dates',
            method: 'GET',
            data: {roomId: ${room.id}},
            success: function (data) {
                unavailableDates = data; // Очікується, що сервер поверне масив зайнятих дат у форматі yyyy-mm-dd
                $('#checkin, #checkout').datepicker({
                    beforeShowDay: function (date) {
                        var string = jQuery.datepicker.formatDate('yy-mm-dd', date);
                        if (unavailableDates.indexOf(string) !== -1) {
                            return [false, "ui-datepicker-unavailable", "Зайнято"];
                        }
                        return [true, ""];
                    },
                    dateFormat: 'yy-mm-dd',
                    minDate: 0
                });
            }
        });

        // Налаштування локалізації на українську
        $.datepicker.setDefaults($.datepicker.regional['uk']);
    });
</script>
</body>
</html>
