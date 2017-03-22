<section class="edit_page_main">
    <div class="wrapper">
        <ul>
            <li>
                <strong>News List</strong>
                <strong>Options List</strong>
            </li>
        <?php foreach ($news as $news_article): ?>
            <li>
                <a href="/admin/news/edit/<?php echo $news_article['id']?>"><?php echo $news_article['title']?></a>
                <a href="/admin/news/delete/<?php echo $news_article['id']?>">Delete</a>
            </li>
        <?php endforeach; ?>
        </ul>
        <a class="btn_more" href="/admin/news/add"><i class="fa fa-plus"></i> Add new</a>
    </div>
</section>