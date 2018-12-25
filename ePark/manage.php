<!DOCTYPE html>
<html class="no-js" lang="en">

<head>

    <meta charset="utf-8">
    <title>ePark</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/vendor.css">
    <link rel="stylesheet" href="css/main.css">

    <script src="js/modernizr.js"></script>
    <script src="js/pace.min.js"></script>

    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
<style>
    .s-clients {
        background-color: black;
    }
    .btn, button, input[type="submit"], input[type="reset"], input[type="button"] {
        padding: 0%;
    }
</style>
</head>

<body id="top">

    <header class="s-header">

        <div class="header-logo">
            <a class="site-logo" href="index.html">
                <img src="images/logo.png" alt="Homepage">
            </a>
        </div>

        <nav class="header-nav">

            <a href="#0" class="header-nav__close" title="close"><span>Close</span></a>

            <div class="header-nav__content">
                <h3>Navigation</h3>
                
                <ul class="header-nav__list">
                    <li class="current"><a class="smoothscroll"  href="#home" title="home">Home</a></li>
                    <li><a class="smoothscroll"  href="#park" title="park">Park</a></li>
                    <li><a class="smoothscroll"  href="#about" title="about">About</a></li>
                    <li><a class="smoothscroll"  href="#services" title="services">Services</a></li>
                    <li><a class="smoothscroll"  href="#contact" title="contact">Contact</a></li>
                </ul>

            </div>

        </nav> 

        <a class="header-menu-toggle" href="#0">
            <span class="header-menu-text">Menu</span>
            <span class="header-menu-icon"></span>
        </a>

    </header> 

    <section id='about' class="s-about">

        <div class="row section-header has-bottom-sep" data-aos="fade-up">
            <div class="col-full">
                <h3 class="subhead subhead--dark"> Status of your</h3>
                <h1 class="display-1 display-1--light">Parking Spot</h1>
            </div>
        <?php include("php/credentials.php");
            
            $db_selected = mysqli_connect($host, $username, $password, $database);
            if (!$db_selected) {
            die ('Can\'t use db : ' . mysqli_error());}
            
            $query = "SELECT * FROM nippon WHERE slno='1'";
            $result = mysqli_query($db_selected,$query);
            if (!$result) {
            die('Invalid query: ' . mysqli_error());}
            
            $row = @mysqli_fetch_assoc($result);
            $VNumber=$row['VNumber'];
            $Arrival=$row['Arrival'];
            $Departure=$row['Departure'];  ?>
        </div>

        <div class="container" style="background-color: white; border-radius: 25px; margin-left: 6%; margin-right: 6%; margin-top: 20%;">
            <div> <h6>License Number: <?php echo $VNumber;?> </h6> </div>    
            <div> <h6 style="margin: 0%;"><input style="color: green;" class="enjoy-css" id="arrive1" type="button" value="Free" onclick="change1()"> </h6> </div>
            <div> <h6 style="margin: 0%;">Arrival Time <?php echo $Arrival; ?> </h6> </div>   
            <div> <h6 style="margin: 0%;">Departure Time <?php echo $Departure; ?> </h6> </div>    
            <div> <h6 style="padding-top:1%; margin: 0%; border-bottom: 1px solid white;">Compute Rate</h6> </div>
        </div>

    </section>

    <div aria-hidden="true" class="pswp" role="dialog" tabindex="-1">

        <div class="pswp__bg"></div>
        <div class="pswp__scroll-wrap">

            <div class="pswp__container">
                <div class="pswp__item"></div>
                <div class="pswp__item"></div>
                <div class="pswp__item"></div>
            </div>

            <div class="pswp__ui pswp__ui--hidden">
                <div class="pswp__top-bar">
                    <div class="pswp__counter"></div><button class="pswp__button pswp__button--close" title="Close (Esc)"></button> <button class="pswp__button pswp__button--share" title=
                    "Share"></button> <button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button> <button class="pswp__button pswp__button--zoom" title=
                    "Zoom in/out"></button>
                    <div class="pswp__preloader">
                        <div class="pswp__preloader__icn">
                            <div class="pswp__preloader__cut">
                                <div class="pswp__preloader__donut"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
                    <div class="pswp__share-tooltip"></div>
                </div><button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)"></button> <button class="pswp__button pswp__button--arrow--right" title=
                "Next (arrow right)"></button>
                <div class="pswp__caption">
                    <div class="pswp__caption__center"></div>
                </div>
            </div>

        </div>

    </div>

    <div id="preloader">
        <div id="loader">
            <div class="line-scale-pulse-out">
                <div></div>
                <div></div>
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        function change1(){
            var a = document.querySelector("#arrive1");
            a.value="Taken";
            a.style.color="red";
        }   
    </script>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>

</body>

</html>