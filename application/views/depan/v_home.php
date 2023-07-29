<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>SDKU | HOME</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicons -->
    <link href="<?php echo base_url() . 'assets/img/favicon.png' ?>" rel="icon">
    <link href="<?php echo base_url() . 'assets/img/apple-touch-icon.png' ?>" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">

    <!-- Bootstrap CSS File -->
    <link href="<?php echo base_url() . 'assets/lib/bootstrap/css/bootstrap.min.css' ?>" rel="stylesheet">

    <!-- Libraries CSS Files -->
    <link href="<?php echo base_url() . 'assets/lib/font-awesome/css/font-awesome.min.css' ?>" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url() . 'assets/lib/font-awesome/css/all.min.css' ?>" rel="stylesheet" type="text/css">
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="<?php echo base_url() . 'assets/lib/animate/animate.min.css' ?>" rel="stylesheet">
    <link href="<?php echo base_url() . 'assets/lib/ionicons/css/ionicons.min.css' ?>" rel="stylesheet">
    <link href="<?php echo base_url() . 'assets/lib/owlcarousel/assets/owl.carousel.min.css' ?>" rel="stylesheet">

    <!-- Main Stylesheet File -->
    <link href="<?php echo base_url() . 'assets/css/style.css' ?>" rel="stylesheet">

    <?php
    function limit_words($string, $word_limit)
    {
        $words = explode(" ", $string);
        return implode(" ", array_splice($words, 0, $word_limit));
    }
    ?>

</head>

<body>

    <div class="click-closed"></div>
    <!--/ Form Search Star /-->
    <div class="box-collapse">
        <div class="title-box-d">
            <h3 class="title-d">Pencarian</h3>
        </div>
        <span class="close-box-collapse right-boxed ion-ios-close"></span>
        <div class="box-collapse-wrap form">
            <form class="form-a" action="<?php echo site_url('blog/search'); ?>" method="get">
                <div class="row">
                    <div class="col-md-12 mb-2">
                        <div class="form-group">
                            <!-- <label for="Type">Keyword</label> -->
                            <input type="text" name="keyword" placeholder="Cari Sesuatu..." class="form-control form-control-lg form-control-a blog-search" placeholder="Keyword" required>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <button type="submit" class="btn btn-b">Cari</button>
                    </div>
                </div>l
            </form>
        </div>
    </div>
    <!--/ Form Search End /-->

    <!--/ Nav Star /-->
    <nav class="navbar navbar-default navbar-expand-lg fixed-top navbar-reduce">
        <div class="container">
            <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarDefault" aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">
                <span></span>
                <span></span>
                <span></span>
            </button>
            <a class="navbar-brand-nav text-brand" href="<?php echo site_url(''); ?>" color-b>SDN 1 BUSATO</span></a>
            <button type="button" class="btn btn-link nav-search navbar-toggle-box-collapse d-md-none" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-expanded="false">
                <span class="fa fa-search" aria-hidden="true"></span>
            </button>
            <div class="navbar-collapse collapse justify-content-center" id="navbarDefault">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" href="<?php echo site_url(''); ?>">Home</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Profil
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="<?php echo site_url('sambutan'); ?>">Sambutan</a>
                            <a class="dropdown-item" href="<?php echo site_url('sejarah'); ?>">Sejarah</a>
                            <a class="dropdown-item" href="<?php echo site_url('struktur'); ?>">Struktur</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<?php echo site_url('galeri'); ?>">Galeri</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<?php echo site_url('blog'); ?>">Artikel</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Akademik
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="<?php echo site_url('agenda'); ?>">Agenda</a>
                            <a class="dropdown-item" href="<?php echo site_url('pengumuman'); ?>">Pengumuman</a>
                            <a class="dropdown-item" href="<?php echo site_url('download'); ?>">Download</a>
                            <a class="dropdown-item" href="<?php echo site_url('guru'); ?>">Daftar Guru</a>
                            <a class="dropdown-item" href="<?php echo site_url('siswa'); ?>">Daftar Siswa</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<?php echo site_url('contact'); ?>">Kontak</a>
                    </li>
                </ul>
            </div>
            <button type="button" class="btn btn-b-n navbar-toggle-box-collapse d-none d-md-block" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-expanded="false">
                <span class="fa fa-search" aria-hidden="true"></span>
            </button>
        </div>
    </nav>
    <!--/ Nav End /-->
    <!--/ Carousel Star /-->
    <div class="intro intro-carousel">
        <div id="carousel" class="owl-carousel owl-theme">
            <div class="carousel-item-a intro-item bg-image bg-image1" style="background-image: url(<?php echo base_url() . 'assets/img/slide-1.jpg' ?>)">
                <div class="overlay overlay-a"></div>
                <div class="intro-content display-table">
                    <div class="table-cell">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-8">
                                    <div class="intro-body">
                                        <!-- <p class="intro-title-top">Sekolah Dasar
                                            <br>Negeri 1 Busato
                                        </p> -->
                                        <h4 class="intro-title mb-4">
                                            <span class="color-b">GURU </span> TERBAIK
                                            <br>BERKUALITAS TINGGI
                                        </h4>
                                        <!-- <p class="intro-subtitle intro-price">
                                            <a href="#"><span class="price-a">LEARN MORE</span></a>
                                        </p> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item-a intro-item bg-image" style="background-image: url(<?php echo base_url() . 'assets/img/slide-2.jpg' ?>)">
                <div class="overlay overlay-a"></div>
                <div class="intro-content display-table">
                    <div class="table-cell">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-8">
                                    <div class="intro-body">
                                        <!-- <p class="intro-title-top">Sekolah Dasar
                                            <br>Negeri 1 Busato
                                        </p> -->
                                        <h1 class="intro-title mb-4">
                                            <span class="color-b">BERFIKIR </span>
                                            <br> KREATIF & INOVATIF
                                        </h1>
                                        <!-- <p class="intro-subtitle intro-price">
                                            <a href="#"><span class="price-a">LEARN MORE</span></a>
                                        </p> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item-a intro-item bg-image" style="background-image: url(<?php echo base_url() . 'assets/img/slide-3.jpg' ?>)">
                <div class="overlay overlay-a"></div>
                <div class="intro-content display-table">
                    <div class="table-cell">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-8">
                                    <div class="intro-body">
                                        <!-- <p class="intro-title-top">Sekolah Dasar
                                            <br>Negeri 1 Busato
                                        </p> -->
                                        <h1 class="intro-title mb-4">
                                            <span class="color-b">PROSES </span>
                                            <br>BELAJAR INTERAKTIF
                                        </h1>
                                        <!-- <p class="intro-subtitle intro-price">
                                            <a href="#"><span class="price-a">LEARN MORE</span></a>
                                        </p> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ Carousel end /-->

    <!--/ Services Star /-->
    <section class="section-services section-t8">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="title-wrap d-flex justify-content-between">
                        <div class="title-box">
                            <h2 class="title-a">Selamat Datang di Sekolahan Kami</h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="card-box-c foo">
                        <div class="card-header-c d-flex">
                            <div class="card-box-ico">
                                <span class="fa fa-book"></span>
                            </div>
                            <div class="card-title-c align-self-center">
                                <h2 class="title-c">Belajar</h2>
                            </div>
                        </div>
                        <div class="card-body-c">
                            <p class="content-c">
                                Kami membuat proses belajar mengajar menjadi lebih interatif.
                                dengan demikian siswa lebih menyukai dan dapat konsentrasi dalam proses belajar.
                            </p>
                        </div>

                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card-box-c foo">
                        <div class="card-header-c d-flex">
                            <div class="card-box-ico">
                                <span class="fa fa-user"></span>
                            </div>
                            <div class="card-title-c align-self-center">
                                <h2 class="title-c">Guru</h2>
                            </div>
                        </div>
                        <div class="card-body-c">
                            <p class="content-c">
                                Guru merupakan faktor penting dalam proses belajar-mengajar.
                                Itulah kenapa kami mendatangkan guru-guru terbaik dari berbagai penjuru.
                            </p>
                        </div>

                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card-box-c foo">
                        <div class="card-header-c d-flex">
                            <div class="card-box-ico">
                                <span class="fa fa-star"></span>
                            </div>
                            <div class="card-title-c align-self-center">
                                <h2 class="title-c">Berfikir</h2>
                            </div>
                        </div>
                        <div class="card-body-c">
                            <p class="content-c">
                                Bagi kami kreativitas merupakan gerbang masa depan.
                                kreativitas akan mendorong inovasi. Itulah yang kami lakukan.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/ Services End /-->

    <!--============================= EVENTS =============================-->
    <section class="event section-t8">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="title-wrap d-flex justify-content-between">
                        <div class="title-box">
                            <h2 class="title-a">Pengumuman</h2>
                        </div>
                    </div>
                    <div class="row foo">
                        <div class="col-md-12">
                            <?php foreach ($pengumuman->result() as $row) : ?>
                                <div class="vent">
                                    <div class="img-vent">
                                        <img src="<?php echo base_url() . 'assets/img/announcement-icon.png' ?>" class="img-vent" alt="event-img">
                                    </div>
                                </div>
                                <div class="deskripsi">
                                    <h3><a href="<?php echo site_url('pengumuman'); ?>" style="font-weight: 600;"><?php echo $row->pengumuman_judul; ?></a>
                                    </h3>
                                    <span><?php echo $row->tanggal; ?></span>
                                    <p><?php echo limit_words($row->pengumuman_deskripsi, 10) . '...'; ?></p>
                                    <hr class="event_line">
                                </div>
                            <?php endforeach; ?>

                        </div>
                    </div>

                </div>
                <div class="col-lg-6">
                    <div class="title-wrap d-flex justify-content-between">
                        <div class="title-box">
                            <h2 class="title-a">Agenda</h2>
                        </div>
                    </div>
                    <div class="row foo">
                        <div class="col-md-12">
                            <?php foreach ($agenda->result() as $row) : ?>
                                <div class="event_date">
                                    <div class="event-date-wrap">
                                        <p><?php echo date("d", strtotime($row->agenda_tanggal)); ?></p>
                                        <span><?php echo date("M. y", strtotime($row->agenda_tanggal)); ?></span>
                                    </div>
                                </div>
                                <div class="date-description">
                                    <h3><a href="<?php echo site_url('agenda'); ?>"><?php echo $row->agenda_nama; ?></a>
                                    </h3>
                                    <p><?php echo limit_words($row->agenda_deskripsi, 10) . '...'; ?></p>
                                    <hr class="event_line">
                                </div>
                            <?php endforeach; ?>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!--//END EVENTS -->



    <!--============================= OUR COURSES =============================-->
    <section class="section-news">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="title-wrap d-flex justify-content-between">
                        <div class="title-box">
                            <h2 class="title-a">Artikel Terbaru</h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="our_courses">
                <div class="row">
                    <?php foreach ($berita->result() as $row) : ?>
                        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                            <div class="courses_box mb-2">
                                <div class="course-img-wrap">
                                    <img src="<?php echo base_url() . 'assets/images/' . $row->tulisan_gambar; ?>" class="img-fluid" alt="courses-img">
                                </div>
                                <!-- // end .course-img-wrap  -->
                                <div class="spasi">
                                    <a href="<?php echo site_url('artikel/' . $row->tulisan_slug); ?>" class="course-box-content">
                                        <h3 style="text-align:center;font-size: larger;"><?php echo $row->tulisan_judul; ?></h3>
                                    </a>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>
                    <div class="col-md-12" style="text-align:center;">
                        <a href="<?php echo site_url('artikel'); ?>"><button class="btn btn-a btn-ku">Lihat Artikel
                                Lainnya</button></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--//END OUR COURSES -->


    <!--============================= DETAILED CHART =============================-->
    <div class="detailed_chart">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-3 chart_bottom">
                    <div class="chart-img">
                        <img src="<?php echo base_url() . 'assets/img/chart-icon_1.png' ?>" class="img-fluid" alt="chart_icon">
                    </div>
                    <div class="chart-text">
                        <p><span class="counter"><?php echo $tot_guru; ?></span> Guru
                        </p>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3 chart_bottom chart_top">
                    <div class="chart-img">
                        <img src="<?php echo base_url() . 'assets/img/chart-icon_2.png' ?>" class="img-fluid" alt="chart_icon">
                    </div>
                    <div class="chart-text">
                        <p><span class="counter"><?php echo $tot_siswa; ?></span> Siswa
                        </p>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3 chart_top">
                    <div class="chart-img">
                        <img src="<?php echo base_url() . 'assets/img/chart-icon_3.png' ?>" class="img-fluid" alt="chart_icon">
                    </div>
                    <div class="chart-text">
                        <p><span class="counter"><?php echo $tot_files; ?></span> Download
                        </p>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="chart-img">
                        <img src="<?php echo base_url() . 'assets/img/chart-icon_4.png' ?>" class="img-fluid" alt="chart_icon">
                    </div>
                    <div class="chart-text">
                        <p><span class="counter"><?php echo $tot_agenda; ?></span> Agenda</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--//END DETAILED CHART -->


    <!--/ footer Star /-->
    <section class="section-footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-md-5">
                    <div class="widget-a">
                        <div class="w-header-a">
                            <img src="<?php echo base_url() . 'assets/img/sd.png' ?>" class="img-fluid" style="float: left; margin-right: 10px; max-width: 20%;">
                            <h3 class="w-title-a text-brand">Sekolah Dasar Negeri 1 Busato</h3></br>

                        </div>
                        <div class="w-body-a">
                            <p class="w-text-a color-text-a">
                                Jln. Desa Busato, Kec. Pinogaluman, Kabupaten Bolaang Mongondow Utara, Sulawesi Utara 95765
                            </p>
                        </div>
                        <div class="w-footer-a">
                            <ul class="list-unstyled">
                                <li class="color-a">
                                    <span class="color-text-a">Phone .</span> +54 356 945234
                                </li>
                                <li class="color-a">
                                    <span class="color-text-a">Email .</span> contact@example.com
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 col-md-3 section-md-t3">
                    <div class="widget-a">
                        <div class="w-header-a">
                            <h3 class="w-title-a text-brand">Menu Utama</h3>
                        </div>
                        <div class="w-body-a">
                            <div class="w-body-a">
                                <ul class="list-unstyled">
                                    <li class="item-list-a">
                                        <i class="fa fa-angle-right"></i> <a href="<?php echo site_url(''); ?>">Home</a>
                                    </li>
                                    <li class="item-list-a">
                                        <i class="fa fa-angle-right"></i> <a href="<?php echo site_url('about'); ?>">Profil</a>
                                    </li>
                                    <li class="item-list-a">
                                        <i class="fa fa-angle-right"></i> <a href="<?php echo site_url('galeri'); ?>">Galeri</a>
                                    </li>
                                    <li class="item-list-a">
                                        <i class="fa fa-angle-right"></i> <a href="<?php echo site_url('blog'); ?>">Artikel</a>
                                    </li>
                                    <li class="item-list-a">
                                        <i class="fa fa-angle-right"></i> <a href="<?php echo site_url('contact'); ?>">Kontak</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 col-md-4 section-md-t3">
                    <div class="widget-a">
                        <div class="w-header-a">
                            <h3 class="w-title-a text-brand">Akademik</h3>
                        </div>
                        <div class="w-body-a">
                            <ul class="list-unstyled">
                                <li class="item-list-a">
                                    <i class="fa fa-angle-right"></i> <a href="<?php echo site_url('agenda'); ?>">Agenda</a>
                                </li>
                                <li class="item-list-a">
                                    <i class="fa fa-angle-right"></i> <a href="<?php echo site_url('pengumuman'); ?>">Pengumuman</a>
                                </li>
                                <li class="item-list-a">
                                    <i class="fa fa-angle-right"></i> <a href="<?php echo site_url('learning'); ?>">E-learning</a>
                                </li>
                                <li class="item-list-a">
                                    <i class="fa fa-angle-right"></i> <a href="<?php echo site_url('guru'); ?>">Daftar
                                        Guru</a>
                                </li>
                                <li class="item-list-a">
                                    <i class="fa fa-angle-right"></i> <a href="<?php echo site_url('siswa'); ?>">Daftar
                                        Siswa</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <nav class="nav-footer">
                        <ul class="list-inline">
                            <li class="list-inline-item">
                                <a style="color: black;">Social Media</a>
                            </li>
                        </ul>
                    </nav>
                    <div class="socials-a">
                        <ul class="list-inline">
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fa fa-facebook" aria-hidden="true"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fa fa-twitter" aria-hidden="true"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fa fa-instagram" aria-hidden="true"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fa fa-pinterest-p" aria-hidden="true"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fa fa-dribbble" aria-hidden="true"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="copyright-footer">
                        <p class="copyright color-text-a">
                            &copy; Modified by
                            <span class="color-a"><a href="">JD-Com@Cru--APTIKA</a></span> All
                            Rights Reserved.
                        </p>
                    </div>
                    <div class="credits">
                        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--/ Footer End /-->

    <!-- <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
    <div id="preloader"></div> -->

    <!- - JavaScript Libraries -->
        <script src="<?php echo base_url() . 'assets/lib/jquery/jquery.min.js' ?>"></script>
        <script src="<?php echo base_url() . 'assets/lib/jquery/jquery-migrate.min.js' ?>"></script>
        <script src="<?php echo base_url() . 'assets/lib/popper/popper.min.js' ?>"></script>
        <script src="<?php echo base_url() . 'assets/lib/bootstrap/js/bootstrap.min.js' ?>"></script>
        <script src="<?php echo base_url() . 'assets/lib/easing/easing.min.js' ?>"></script>
        <script src="<?php echo base_url() . 'assets/lib/owlcarousel/owl.carousel.min.js' ?>"></script>
        <script src="<?php echo base_url() . 'assets/lib/scrollreveal/scrollreveal.min.js' ?>"></script>
        <!-- Contact Form JavaScript File -->
        <script src="<?php echo base_url() . 'assets/contactform/contactform.js' ?>"></script>

        <!-- Plugins -->
        <script src="<?php echo base_url() . 'assets/js/slick.min.js' ?>"></script>
        <script src="<?php echo base_url() . 'assets/js/waypoints.min.js' ?>"></script>
        <script src="<?php echo base_url() . 'assets/js/counterup.min.js' ?>"></script>
        <script src="<?php echo base_url() . 'assets/js/validate.js' ?>"></script>
        <script src="<?php echo base_url() . 'assets/js/tether.min.js' ?>"></script>
        <script src="<?php echo base_url() . 'assets/js/tweetie.min.js' ?>"></script>
        <script src="<?php echo base_url() . 'assets/js/main.js' ?>"></script>
        <script src="<?php echo base_url() . 'assets/js/script.js' ?>"></script>


</body>

</html>