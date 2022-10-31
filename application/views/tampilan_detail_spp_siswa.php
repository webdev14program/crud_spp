<div class="jumbotron jumbotron-fluid text-center text-uppercase">
    <h3 class="display-4">PEMBAYARAN SPP SISWA TJKT</h3>
    <hr class="my-4">
</div>

<div class="container">
    <div class="col-md-1">
        <a class="btn btn-success btn-sm text-uppercase font-weight-bold text-white" href="<?= base_url() ?>Pembayaran_spp/detail_siswa/<?= $siswa['id'] ?>"> kembali</a>
    </div>
    <div class="row">
        <div class="col-md mt-2">
            <div class="card">
                <div class="card-body">
                    <form>
                        <div class="form-group">
                            <label>Nama Siswa</label>
                            <input type="text" class="form-control text-uppercase" value="<?= $siswa['nama_siswa'] ?>" disabled>
                        </div>
                        <div class="form-group">
                            <label>Kelas</label>
                            <input type="text" class="form-control" value="<?= $siswa['kelas'] ?>" disabled>
                        </div>
                        <div class="form-group">
                            <label>Jurusan</label>
                            <input type="text" class="form-control" value="<?= $siswa['jurusan'] ?>" disabled>
                        </div>
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                            Pembayarn SPP
                        </button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md mt-2">
            <div class="card">
                <div class="card-body">
                    <table class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Bulan</th>
                                <th scope="col">Nominal</th>
                                <th scope="col">Tanggal</th>
                            </tr>
                        </thead>
                        <tbody>

                        </tbody>
                    </table>
                </div>
            </div>

        </div>
    </div>
</div>

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Pembayaran SPP</h5>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label>Nama Siswa</label>
                        <input type="text" class="form-control text-uppercase" value="<?= $siswa['nama_siswa'] ?>" disabled>
                    </div>
                    <div class="form-group">
                        <label>Kelas</label>
                        <input type="text" class="form-control" value="<?= $siswa['kelas'] ?>" disabled>
                    </div>
                    <div class="form-group">
                        <label>Bulan Bayar</label>
                        <select class="form-control" name="bulan">
                            <option>Januari</option>
                            <option>Februari</option>
                            <option>Maret</option>
                            <option>April</option>
                            <option>Mei</option>
                            <option>Juni</option>
                            <option>July</option>
                            <option>Agustus</option>
                            <option>September</option>
                            <option>Oktober</option>
                            <option>November</option>
                            <option>Desember</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Nominal</label>
                        <!-- <input type="text" name="nominal" class="form-control"> -->
                        <select class="form-control" name="nominal">
                            <option value="400000">Rp 400.000</option>
                            <option value="425000">Rp 425.000</option>
                            <option value="450000">Rp 450.000</option>
                            <option value="475000">Rp 475.000</option>
                            <option value="500000">Rp 500.000</option>
                        </select>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save changes</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>