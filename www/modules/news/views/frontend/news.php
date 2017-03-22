<h2 class="hide">News Page</h2>
<div class="main_title">
    <div class="wrapper">
        <h2 class="title_h2">Our News</h2>
    </div>
</div>
<section class="news_block">
	<h2 class="hide">News Content</h2>
	<div class="wrapper">
        <div class="articles_flex">
            <?php foreach ($news as $article): ?>
                <article class="news_item">
                    <div class="news_img">
                        <img src="/<?php echo $article['img']; ?>" alt="<?php echo $article['title']; ?>" title="<?php echo $article['title']; ?>">
                    </div>
                    <h2 class="title_h2"><?php echo $article['title']; ?></h2>
                    <p class="pub_date"><?php echo Config::getDateTime($article['date'])->format('j M, Y'); ?></p>
                    <p class="news_descr"><?php echo $article['text']; ?></p>
                </article>
            <?php endforeach; ?>
        </div>
        <div class="news_pagination">
            <?php for($i=1; $i<=$pages_qnt; ++$i): ?>
                <?php if($i == $curr_page): ?>
                    <span class="page_num curr_num"><?php echo $i; ?></span>
                <?php else: ?>
                    <a class="page_num" href="/news/<?php echo $i; ?>"><?php echo $i; ?></a>
                <?php endif; ?>
            <?php endfor; ?>
        </div>
    </div>
</section>
<section class="email_block">
    <h2 class="hide">Call to Action</h2>
    <div class="wrapper">
        <h2 class="title_h2">Contact Us Today</h2>
        <a class="btn_more" href="/contact">contact here</a>
    </div>
</section>
<section class="news_message">
    <h2 class="hide">News Message</h2>
    <div class="wrapper_small">
        <p>Welcome to our News page. Here we'll cover new projects, and give information about ongoing projects. Our Events page has news about upcoming events and things you don't want to miss. Don't forget to connect to our Facebook page as well to find out more.</p>
        <p>Check back soon for more news about the island and updates on all of our projects. Expect to see more frequent updating during our operating season end of May to mid-September.</p>
        <a class="btn_more" href="/page/schedulerates">View Our Schedules</a>
    </div>
</section>