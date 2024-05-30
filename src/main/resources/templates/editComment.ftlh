<!DOCTYPE html>
<html>
<head>
    <title>Додати коментар</title>
    <!-- Підключення Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h1>Відредагувати коментар</h1>
    <hr>
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card mt-3">
                <div class="card-body">
                    <form action="/comment-edit/${comment.id}" method="post">
                        <div class="form-group">
                            <label for="comment">Текст:</label>
                            <textarea class="form-control" id="comment" name="comment" rows="5" required> ${comment.text}</textarea>
                        </div>
                        <!-- Додавання CSRF токена -->
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <button type="submit" class="btn btn-primary">Зберегти зміни</button>
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
