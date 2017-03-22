<!doctype>
<html>
<head>
    <meta charset="utf-8">
    <title><?php echo App::getInstance()->getParam('title'); ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="<?php echo Config::get('global')['css_dir']; ?>main.css" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Ubuntu:300,400,700" rel="stylesheet">
</head>
<body>
    <!--[if lt IE 8]>
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->
    <h1 class="hide">Chantry Island</h1>
    <?php if(App::getInstance()->getParam('header')): ?>
        <?php echo App::getInstance()->getParam('header'); ?>
    <?php else: ?>
        <header class="header">
            <h2 class="hide">Header</h2>
            <div class="banner_h_inner">
                <div class="top_panel">
                    <div class="wrapper flex_box">
                        <div class="flex_item socials_h">
                            <a href="http://www.facebook.com/MarineHeritageSociety"><i class="fa fa-facebook-square"></i></a>
                            <a href="http://www.youtube.com/channel/UC5BwiLq9hSIl9BZRq7Q4UNA?feature=watch"><i class="fa fa-youtube-square"></i></a>
                        </div>
                        <div class="flex_item">
                            <div class="contacts_h">
                                <a href="/contact"><i class="fa fa-map-marker"></i> 86 Saugeen St., Southampton, Ontario</a>
                                <a href="tel:5197975862"><i class="fa fa-phone"></i> 519-797-5862,</a> <a href="tel:18667975862"><strong>Free</strong> 1-866-797-5862</a>
                            </div>
                        </div>
                    </div>
                </div>
                <nav class="nav_h">
                    <h2 class="hide">Header Navigation</h2>
                    <div class="wrapper">
                        <label for="mobile-menu" id="mobile-menu-label">
                            <i class="fa fa-bars"></i>
                        </label>
                        <input id="mobile-menu" type="checkbox" />
                        <ul>
                            <li><a href="/">Home</a></li>
                            <li class="parent_menu"><a href="#">About</a>
                                <ul class="sub_menu">
                                    <li><a href="/page/history">History</a></li>
                                    <li><a href="/news">News</a></li>
                                    <li><a href="/page/events">Events</a></li>
                                    <li><a href="/page/restoration">Restoration</a></li>
                                    <li><a href="/page/volunteers">Volunteers</a></li>
                                </ul>
                            </li>
                            <li class="parent_menu"><a href="#">Booking</a>
                                <ul class="sub_menu">
                                    <li><a href="/page/tourinfo">Tour Info</a></li>
                                    <li><a href="/page/schedulerates">Schedule & Rates</a></li>
                                </ul>
                            </li>
                            <li><a href="/gallery">Gallery</a></li>
                            <li><a href="/page/donation">Donate</a></li>
                            <li><a href="/contact">Contact Us</a></li>
                        </ul>
                    </div>
                </nav>
                <section class="welcome_block_inner">
                    <h2 class="hide">Welcome Content</h2>
                    <div class="wrapper flex_box">
                        <div class="flex_item">
                            <a href="/" class="logo_h"><img src="../static/img/logo.svg" title="Logo Header" alt="Logo Header"></a>
                        </div>
                        <div class="flex_item">
                            <a class="btn_more ajax" href="/page/schedulerates">Book a Tour</a>
                        </div>
                    </div>
                </section>
            </div>
        </header>
    <?php endif; ?>

    <?php echo $__content; ?>

    <footer class="footer">
        <h2 class="hide">Footer</h2>
        <div class="wrapper">
            <div class="flex_f">
                <div class="flex_item">
                    <a href="/" class="logo_f"><img src="../static/img/logo.svg" alt="Logo Footer" title="Logo Footer"></a>
                    <a href="/admin/">Sign-In</a>
                </div>
                <div class="flex_item">
                    <h2 class="title_h2">Contact Us</h2>
                    <p><a href="/contact"><i class="fa fa-map-marker"></i> 86 Saugeen St., Southampton, Ontario</a></p>
                    <p><a href="tel:5197975862"><i class="fa fa-phone"></i> 519-797-5862,</a> <a href="tel:18667975862"><strong>Free</strong> 1-866-797-5862</a></p>
                </div>
                <div class="flex_item">
                    <h2 class="title_h2">Follow Us</h2>
                    <div class="flex_item socials_f">
                        <a href="http://www.facebook.com/MarineHeritageSociety"><i class="fa fa-facebook-square"></i></a>
                        <a href="http://www.youtube.com/channel/UC5BwiLq9hSIl9BZRq7Q4UNA?feature=watch"><i class="fa fa-youtube-square"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright_f">
            <p>© 2017 Copyright Marine Heritage Society, Chantry Island Tours.</p>
        </div>
    </footer>
    <script type="text/javascript" src="<?php echo Config::get('global')['js_dir']?>frontend/functions.js"></script>
    <script type="text/javascript" src="<?php echo Config::get('global')['js_dir']?>classes.js"></script>
    <script type="text/javascript" src="<?php echo Config::get('global')['js_dir']?>frontend/common.js"></script>
</body>
</html>