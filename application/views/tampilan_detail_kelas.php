<div class="jumbotron jumbotron-fluid text-center text-uppercase">
    <h3 class="display-4">SISWA</h3>
    <hr class="my-4 font-weight-bold">
    <h3 class="display-4">KELAS <?= $header['kelas'] ?></h3>
</div>

<div class="container">
    <div class="row">
        <div class="col-md mt-2">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-4">
                            <a class="btn btn-success btn-sm text-uppercase font-weight-bold text-white" href="<?= base_url() ?>Siswa"> kembali</a>
                            <button type="button" class="btn btn-primary btn-sm text-uppercase font-weight-bold" data-toggle="modal" data-target="#exampleModal">
                                Tambah Siswa
                            </button>
                        </div>
                        <div class="col-md-8">
                            <h5>Jumlah Sisiwa : <?= $header['jumlah_siswa'] ?></h5>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="row mt-2">
        <div class="col-md">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr class="text-center">
                                    <th scope="col">#</th>
                                    <th scope="col">Nama Siswa</th>
                                    <th scope="col">Kelas</th>
                                    <th scope="col">Jurusan</th>

                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <?php
                                    $no = 1;
                                    foreach ($siswa as $row) {
                                    ?>
                                        <td class="text-center"><?php echo $no++; ?></td>
                                        <td class="text-center text-uppercase"><?= $row['nama_siswa'] ?></td>
                                        <td class="text-center"><?= $row['kelas'] ?></td>
                                        <td class="text-center"><?= $row['jurusan'] ?></td>
                                </tr>
                            <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Tambah Siswa</h5>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label>Nama Siswa</label>
                        <input type="test" class="form-control">
                    </div>

                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>