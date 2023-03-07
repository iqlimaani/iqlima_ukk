<body>

    <?php $page = basename($_SERVER['PHP_SELF']); ?>

    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
        <div>
            <a style="margin-left: 25px; color:#000000;" class="navbar-brand"
                href="<?= base_url('index.php/welcome/'); ?>index">pengaduan dan pelayanan
                masyarakat</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="oi oi-menu"></span> Menu
            </button>
            <div style="margin-left: 550px; margin-top: -60px;" class="container">
                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item btn btn-light <?php if ($page == 'index'):
                            echo 'active';
                        endif; ?>"><a style="color:#000000;" href="<?= base_url('auth/'); ?>index" class="nav-link">login</a></li>
                        <li class="nav-item btn btn-light <?php if ($page == 'rooms'):
                            echo 'active';
                        endif; ?> "><a style="color:#000000;" href="<?= base_url('auth/'); ?>register" class="nav-link">daftar</a></li>

                    </ul>
                </div>
            </div>
        </div>
    </nav>
    <!-- END nav -->
    <section class="home-slider owl-carousel">
        <div class="slider-item" style="background-image:url(landing/images/tes.png); background-size:1600px;">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text align-items-center justify-content-center">
                    <div class="col-md-10 ftco-animate text-center">
                        <div class="text mb-5 pb-3">
                            <h1 style="color:#000000;" class="mb-3">Selamat Datang Di Pengaduan Masyarakat</h1>
                            <h2 style="color:#000000;">Pengaduan &amp; Pelayanan</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="slider-item" style="background-image:url(landing/images/regis.jpg); background-size:1500px;">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text align-items-center justify-content-center">
                    <div class="col-md-10 ftco-animate text-center">
                        <div class="text mb-5 pb-3">
                            <h1 style="color:#000000;" class="mb-3">Adukan Semua Masalahmu Di Sini</h1>
                            <h2 style="color:#000000;">Pengaduan & Pelayanan</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <br>

    <section style="margin-bottom:50px ;" class="ftco-section ftc-no-pb ftc-no-pt">
        <div class="container">
            <div class="row">
                <div class="py-5 wrap-about pb-md-5 ftco-animate">
                    <div class="heading-section heading-section-wo-line ">
                        <div class="ml-md-5">
                            <h2 style="text-align: center;" class="mb-4">Selamat Datang di Aplikasi Pengaduan</h2>
                        </div>
                    </div>
                    <div style="text-align:center;">
                        <p>hai kalian!,ini adalah aplikasi untuk mengdukan apapun
                            yang yang terjadi seperti kecelakaan sampai bencana alam Laporkan semua masalahmu di sini</p>
                        <p>ingat!,gunakan aplikasi ini sebaik mungkin karena aplikasi ini diawasi oleh
                            cybercrime,gunakan kata kata yang sopan yaah!
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>