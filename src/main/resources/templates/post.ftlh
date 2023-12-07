[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Můj blog</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <style>
        body {
            background-image: url('https://source.unsplash.com/KT3WlrL_bsg');
            background-size: cover;
            background-repeat: no-repeat;
        }
        h1, h3 {
            color: black;
        }
    </style>
</head>
<body>
<div class="container mt-5" style="background-color: oldlace; padding: 20px; border-radius: 10px;">
    <h1 class="display-4 text-center">${post.title}</h1>
    <h3 class="mb-3 text-muted">Autor: ${post.author}</h3>
    <div>
        ${post.body?no_esc}
    </div>
</div>
</body>
</html>
