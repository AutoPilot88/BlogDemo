<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{block name="title"}{$app_name}{/block}</title>
    <link rel="stylesheet" href="/css/app.css">
</head>
<body>
{include file="partials/header.tpl"}

<main class="page">
    {block name="content"}{/block}
</main>

{include file="partials/footer.tpl"}
</body>
</html>
