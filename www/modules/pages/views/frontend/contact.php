<ul>
	<?php foreach ($errors as $error):?>
        <li><?php echo $error ?></li>
	<?php endforeach;?>
</ul>

<section class="contact_message">
	<h2 class="hide">Contact Message</h2>
	<div class="wrapper">
		<div class="contact_flex">
			<div class="flex_item">
				<ul>
					<li>Call: <a href="tel:5197975862">519-797-5862</a></li>
					<li>Toll: <a href="tel:18667975862">Free 1-866-797-5862</a></li>
					<li>Marine Heritage Society</li>
					<li>86 Saugeen Street</li>
					<li>Southampton, Ontario</li>
					<li>Canada, N0H 2L0</li>
				</ul>
			</div>
			<div class="flex_item">
				<h3>Directions</h3>
				<p>From Highway 21 in Southampton, turn west on Clarendon and follow the signs, or From High Street, (the main street), turn north on Huron or Grosvenor Street and look for the signs.</p>
			</div>
		</div>
	</div>
</section>
<section class="contact_block">
    <?php if(!$sended): ?>
        <h2 class="hide">Contact Content</h2>
        <div class="wrapper_small">
            <form method="post" class="contact_form">
                <input disabled="disabled" type="text" value="To: <?php echo \Config::get('global')['feedback_mail'] ?>" />
                <input name="name" required="" type="text" placeholder="Name" />
                <input name="email" required="" type="email" placeholder="Email" />
                <input name="phone" required="" type="tel" placeholder="Phone" />
                <input name="subject" required="" type="text" placeholder="Subject" />
                <textarea name="message" required="" placeholder="Message"></textarea>
                <input type="submit" value="send">
            </form>
        </div>
        <div id="map_box"></div>
    <?php else: ?>
        <h2>Success</h2>
    <?php endif;?>
</section>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCbBL9ofDwMcjTiK8gQ5tIe_DPHwsjy4wA"></script>
<script>
    window.addEventListener("load", function () {
        initMap();
	});

    document.querySelector('.contact_form').addEventListener('submit', function (e) {
        document.querySelectorAll('input:not([type="submit"]), textarea').forEach(function(element){
            if(!element.value){
                e.preventDefault();
                element.classList.add('error');
            }
        });
    });
</script>