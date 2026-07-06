{extends file="layout.tpl"}

{block name="title"}{$category.name} — {$app_name}{/block}

{block name="content"}
    <div class="container">
        <div class="category-page__header">
            <h1 class="category-page__title">{$category.name}</h1>
            {if $category.description}
                <p class="category-page__description">{$category.description}</p>
            {/if}
        </div>

        <div class="category-page__toolbar">
            <span class="category-page__toolbar-label">Сортировать по:</span>
            <a href="?sort=date&dir=desc" class="category-page__sort-link{if $sort == 'date'} category-page__sort-link--active{/if}">Дате</a>
            <a href="?sort=views&dir=desc" class="category-page__sort-link{if $sort == 'views'} category-page__sort-link--active{/if}">Просмотрам</a>
        </div>

        <div class="category__posts">
            {foreach $posts as $post}
                <article class="post-card">
                    <a href="/post/{$post.uuid}" class="post-card__image-link">
                        <img src="{$post.image_path}" alt="{$post.name|escape}" class="post-card__image" loading="lazy">
                    </a>
                    <h3 class="post-card__title">
                        <a href="/post/{$post.uuid}">{$post.name}</a>
                    </h3>
                    <p class="post-card__meta">
                        <span class="post-card__date">{$post.formatted_date}</span>
                        <span class="post-card__meta-separator">&middot;</span>
                        <span class="post-card__views">{$post.views} просмотров</span>
                    </p>
                    <p class="post-card__excerpt">{$post.description|truncate:140:"..."}</p>
                    <a href="/post/{$post.uuid}" class="post-card__continue">Продолжить чтение</a>
                </article>
            {foreachelse}
                <p class="category-page__empty">В этой категории пока нет публикаций.</p>
            {/foreach}
        </div>

        {if $pagination.totalPages > 1}
            <nav class="pagination">
                {if $pagination.hasPrevious}
                    <a href="?sort={$sort}&dir={$dir}&page={$pagination.page - 1}" class="pagination__link">&laquo; Назад</a>
                {/if}

                <span class="pagination__status">Страница {$pagination.page} из {$pagination.totalPages}</span>

                {if $pagination.hasNext}
                    <a href="?sort={$sort}&dir={$dir}&page={$pagination.page + 1}" class="pagination__link">Вперёд &raquo;</a>
                {/if}
            </nav>
        {/if}
    </div>
{/block}
