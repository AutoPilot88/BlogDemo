{extends file="layout.tpl"}

{block name="content"}
    <div class="container">
        {foreach $categories as $category}
            <section class="category">
                <div class="category__header">
                    <h2 class="category__title">{$category.name}</h2>
                    <a href="/category/{$category.uuid}" class="category__view-all">Показать все</a>
                </div>

                <div class="category__posts">
                    {foreach $category.posts as $post}
                        <article class="post-card">
                            <a href="#" class="post-card__image-link">
                                <img src="{$post.image_path}" alt="{$post.name|escape}" class="post-card__image" loading="lazy">
                            </a>
                            <h3 class="post-card__title">
                                <a href="#">{$post.name}</a>
                            </h3>
                            <p class="post-card__date">{$post.formatted_date}</p>
                            <p class="post-card__excerpt">{$post.description|truncate:140:"..."}</p>
                            <a href="#" class="post-card__continue">Продолжить чтение</a>
                        </article>
                    {/foreach}
                </div>
            </section>
        {/foreach}
    </div>
{/block}
