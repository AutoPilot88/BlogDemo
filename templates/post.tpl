{extends file="layout.tpl"}

{block name="title"}{$post.name} — {$app_name}{/block}

{block name="content"}
    <div class="container">
        <article class="post">
            {if $category}
                <p class="post__category">
                    <a href="/category/{$category.uuid}">{$category.name}</a>
                </p>
            {/if}

            <h1 class="post__title">{$post.name}</h1>

            <p class="post__meta">
                <span class="post__date">{$post.formatted_date}</span>
                <span class="post__meta-separator">&middot;</span>
                <span class="post__views">{$post.views} просмотров</span>
            </p>

            <img src="{$post.image_path}" alt="{$post.name|escape}" class="post__image" loading="lazy">

            {if $post.description}
                <p class="post__description">{$post.description}</p>
            {/if}

            {if $post.text}
                <div class="post__text">{$post.text|escape|nl2br}</div>
            {/if}
        </article>

        {if $similarPosts|@count}
            <section class="similar-posts">
                <h2 class="similar-posts__title">Похожие публикации</h2>

                <div class="category__posts">
                    {foreach $similarPosts as $similar}
                        <article class="post-card">
                            <a href="/post/{$similar.uuid}" class="post-card__image-link">
                                <img src="{$similar.image_path}" alt="{$similar.name|escape}" class="post-card__image" loading="lazy">
                            </a>
                            <h3 class="post-card__title">
                                <a href="/post/{$similar.uuid}">{$similar.name}</a>
                            </h3>
                            <p class="post-card__date">{$similar.formatted_date}</p>
                            <p class="post-card__excerpt">{$similar.description|truncate:140:"..."}</p>
                            <a href="/post/{$similar.uuid}" class="post-card__continue">Продолжить чтение</a>
                        </article>
                    {/foreach}
                </div>
            </section>
        {/if}
    </div>
{/block}
