        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <h3>Detail Petugas</h3>

            <div class="row">
                <div class="col-lg-12">
                    <div class="alert alert-warning">
                        <strong>Note : </strong> Jika anda menghapus data petugas maka semua data tanggapan dengan ID yang sama akan juga terhapus
                    </div>
                    <div class="card shadow">
                        <div class="card-body">
                            <a href="<?= base_url('master/petugas'); ?>" class="btn btn-success mb-3"><i class="fa fa-arrow-left"></i> Kembali</a>
                            <table class="table table-striped table-bordered" id="myTable">
                                <thead class="table-info">
                                    <tr>
                                        <th>No</th>
                                        <th>Nama</th>
                                        <th>Username</th>
                                        <th>Password</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $i = 1;
                                    foreach ($petugas as $p) { ?>
                                        <tr>
                                            <td><?= $i++; ?></td>
                                            <td><?= $p->nama; ?></td>
                                            <td><?= $p->username; ?></td>
                                            <td><?= $p->password; ?></td>
                                         
                                        </tr>
                                    <?php } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->


        <!-- Modal -->
      