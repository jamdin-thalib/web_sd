<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>SDKU | ARTIKEL</title>
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

    <!-- Image Hover CSS -->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'assets/css/normalize.css' ?>" />
    <link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'assets/css/set2.css' ?>" />

    <!-- Magnific Popup CSS -->
    <link rel="stylesheet" href="<?php echo base_url() . 'assets/css/magnific-popup.css' ?>">


    <!-- Libraries CSS Files -->
    <link href="<?php echo base_url() . 'assets/lib/font-awesome/css/font-awesome.min.css' ?>" rel="stylesheet">
    <link href="<?php echo base_url() . 'assets/lib/animate/animate.min.css' ?>" rel="stylesheet">
    <link href="<?php echo base_url() . 'assets/lib/ionicons/css/ionicons.min.css' ?>" rel="stylesheet">
    <link href="<?php echo base_url() . 'assets/lib/owlcarousel/assets/owl.carousel.min.css' ?>" rel="stylesheet">

    <!-- Main Stylesheet File -->
    <link href="<?php echo base_url() . 'assets/css/style.css' ?>" rel="stylesheet">
    <!-- Masonry Gallery -->
    <!-- <link href="<?php echo base_url() . 'assets/css/animated-masonry-gallery.css' ?>" rel="stylesheet"
    type="text/css" /> -->

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
                </div>
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
                        <a class="nav-link" href="<?php echo site_url(''); ?>">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<?php echo site_url('about'); ?>">Profil</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<?php echo site_url('galeri'); ?>">Galeri</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="<?php echo site_url('blog'); ?>">Artikel</a>
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
    <!--/ Intro Single star /-->
    <section class="intro-single">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-lg-8">
                    <div class="title-single-box">
                        <h1 class="title-single">Artikel</h1>
                        <span class="color-text-a"></span>
                    </div>
                </div>
                <div class="col-md-12 col-lg-4">
                    <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="<?php echo site_url(''); ?>">Home</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">
                                Artikel
                            </li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!--/ Intro Single End /-->

    <!--============================= BLOG =============================-->
    <section class="">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <?php echo $this->session->flashdata('msg'); ?>
                    <?php foreach ($data->result() as $row) : ?>
                        <div class="blog-single-item">
                            <div class="blog-img_block">
                                <img src="<?php echo base_url() . 'assets/images/' . $row->tulisan_gambar; ?>" class="img-fluid" alt="blog-img">
                                <div class="blog-date">
                                    <span><?php echo $row->tanggal; ?></span>
                                </div>
                            </div>
                            <div class="blog-tiltle_block">
                                <h4><a href="<?php echo site_url('artikel/' . $row->tulisan_slug); ?>"><?php echo $row->tulisan_judul; ?></a>
                                </h4>
                                <h6> <a href="#"><i class="fa fa-user" aria-hidden="true"></i><span><?php echo $row->tulisan_author; ?></span> </a>|
                                    <a href="#"><i class="fa fa-tags" aria-hidden="true"></i><span><?php echo $row->tulisan_kategori_nama; ?></span></a>
                                </h6>
                                <?php echo word_limiter($row->tulisan_isi, 20) . ''; ?>
                                <div class="blog-icons">
                                    <div class="blog-share_block">

                                        <button type="button" class="btn btn-b-n"><a href="<?php echo site_url('artikel/' . $row->tulisan_slug); ?>" style="color:white; font-family: 'Poppins', sans-serif;">Selengkapnya <i class="ion ion-ios-share-alt">
                                                </i></a></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>
                    <nav>
                        <?php error_reporting(0);
                        echo $page; ?>
                    </nav>
                </div>
                <div class="col-md-4">
                    <div class="blog-category_block">
                        <h3>Kategori</h3>
                        <ul>
                            <?php foreach ($category->result() as $row) : ?>
                                <li><a href="<?php echo site_url('blog/kategori/' . str_replace(" ", "-", $row->kategori_nama)); ?>"><?php echo $row->kategori_nama; ?><i class="fa fa-caret-right" aria-hidden="true"></i></a></li>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                    <div class="blog-featured_post">
                        <h3 style="margin-top:15%;">Populer</h3>
                        <?php foreach ($populer->result() as $row) : ?>
                            <div class="blog-featured-img_block">
                                <img width="35%" src="<?php echo base_url() . 'assets/images/' . $row->tulisan_gambar; ?>" class="img-fluid" alt="blog-featured-img">
                                <h5><a href="<?php echo site_url('artikel/' . $row->tulisan_slug); ?>"><?php echo $row->tulisan_judul; ?></a>
                                </h5>
                                <p><?php echo word_limiter($row->tulisan_isi, 3); ?></p>
                            </div>
                            <hr>
                        <?php endforeach; ?>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!--//END BLOG -->


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
                                    <span class="color-text-a">Phone .</span> contact@example.com
                                </li>
                                <li class="color-a">
                                    <span class="color-text-a">Email .</span> +54 356 945234
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

    <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
    <div id="preloader"></div>

    <!-- JavaScript Libraries -->
    <script src="<?php echo base_url() . 'assets/lib/jquery/jquery.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/lib/jquery/jquery-migrate.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/lib/popper/popper.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/lib/bootstrap/js/bootstrap.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/lib/easing/easing.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/lib/owlcarousel/owl.carousel.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/lib/scrollreveal/scrollreveal.min.js' ?>"></script>
    <!-- Contact Form JavaScript File -->
    <script src="<?php echo base_url() . 'assets/contactform/contactform.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/js/animated-masonry-gallery.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/js/jquery-ui-1.10.4.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/js/jquery.isotope.min.js' ?>"></script>

    <!-- Template Main Javascript File -->
    <script src="<?php echo base_url() . 'assets/js/main.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/js/subscribe.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/js/tether.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/js/counterup.min.js' ?>"></script>
    <!-- Plugins -->
    <script src="<?php echo base_url() . 'assets/js/slick.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/js/waypoints.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/js/jquery.magnific-popup.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/js/validate.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/js/tweetie.min.js' ?>"></script>


</body>

</html>