<section class="edit_single_news">
    <div class="wrapper">
        <form class="add_news" method="post" enctype="multipart/form-data">
            <label>New Title</label>
            <input type="text" name="title">
            <label>New Image</label>
            <input type="file" name="img">
            <label>New Description</label>
            <textarea name="text"></textarea>
            <input type="submit">
        </form>
        <ul>
            <?php foreach ($errors as $error):?>
                <li><?php echo $error ?></li>
            <?php endforeach;?>
        </ul>
    </div>
</section>
<script>
    document.querySelector('.add_news').addEventListener('submit', function (e) {
        document.querySelectorAll('input:not([type="submit"]), textarea').forEach(function(element){
            if(!element.value){
                e.preventDefault();
                element.classList.add('error');
            }
        });
    })
</script>