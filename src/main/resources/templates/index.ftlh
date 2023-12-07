[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>True Crime Blog</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">


    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<style>
    body {
        background-image: url("https://source.unsplash.com/KT3WlrL_bsg");
        background-size: cover;
        background-repeat: no-repeat;
    }
    h1 {
        color: black;
    }
</style>
<body>
<div class="container">
    <h1 class="text-center my-4">Johana's True Crime Blog</h1>

    [#list post.content as post]
        <div class="card mb-4">
            <div class="card-body", style="background-color: oldlace">
                <a href="/post/${post.slug?no_esc}" class="text-dark text-decoration-none">
                    <h2 class="card-title">${post.title}</h2>
                    <p class="card-text">Autor: ${post.author}</p>
                    <p class="card-text">${post.perex?no_esc}</p>
                </a>
            </div>
        </div>
    [/#list]
</div>

</body>
</html>
