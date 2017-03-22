<h2 class="hide">Gallery Page</h2>
<div class="main_title">
    <div class="wrapper">
        <h2 class="title_h2">Gallery</h2>
    </div>
</div>
<section class="gallery_block">
	<h2 class="hide">Gallery Content</h2>
	<div class="wrapper gallery_box">
		<?php foreach ($images as $image):?>
            <div class="flex_item">
                <img src="/<?php echo $image['thumb']; ?>" alt="<?php echo $image['title']; ?>" title="<?php echo $image['title']; ?>" id="<?php echo $image['id']; ?>">
            </div>
		<?php endforeach; ?>
	</div>
</section>
<div class="popup_bg_dark">
    <div class="popup_window">
        <i class="fa fa-times close_icon"></i>
        <div class="popup_img">
            <img src="" alt="" title="">
        </div>
        <p class="popup_text"></p>
        <i class="gal_prev fa fa-chevron-left"></i> <i class="gal_next fa fa-chevron-right"></i>
    </div>
</div>
<section class="gallery_message">
    <h2 class="hide">Gallery Message</h2>
    <div class="wrapper_small">
        <p>Welcome to our photo gallery. This section includes pictures of Chantry Island and the area of Lake Huron surrounding the Island. It also includes pictures of the lighthouse and keeper's cottage inside and out, as well as photos of some of the birds and flowers native to the island.</p>
        <p>If you have photos of Chantry Island that you would like to share with us, connect with our Facebook page.</p>
    </div>
</section>
<section class="email_block">
    <h2 class="hide">Call to Action</h2>
    <div class="wrapper">
        <h2 class="title_h2">Contact Us Today</h2>
        <a class="btn_more" href="/contact">contact here</a>
    </div>
</section>

<script>
    window.addEventListener("load", function(){
        var gal_images = document.querySelectorAll(".gallery_block .gallery_box .flex_item img");
        gal_images.forEach(function (img) {
            img.addEventListener("click", function () {
                var gallery = new Gallery(this);
                gallery.openPopup();
            });
        });
    });
</script>
