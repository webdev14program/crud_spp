<div class="jumbotron jumbotron-fluid text-center text-uppercase">
    <h3 class="display-4">Jurusan</h3>
    <hr class="my-4">
</div>

<div class="container">
    <div class="row">
        <div class="col-md mt-4">
            <div class="row mt-3">
                <div class="col-md">
                    <div class="card">
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered">
                                    <thead>
                                        <tr class="text-center">
                                            <th scope="col">
                                                <h6 class="font-weight-bold" style="text-transform: uppercase;">#</h6>
                                            </th>
                                            <th scope="col">
                                                <h6 class="font-weight-bold" style="text-transform: uppercase;">ID Jurusan</h6>
                                            </th>
                                            <th scope="col">
                                                <h6 class="font-weight-bold" style="text-transform: uppercase;">Kode Jurusan</h6>
                                            </th>
                                            <th scope="col">
                                                <h6 class="font-weight-bold" style="text-transform: uppercase;">Jurusan</h6>
                                            </th>
                                            <th scope="col">
                                                <h6 class="font-weight-bold" style="text-transform: uppercase;">Jumlah Kelas</h6>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <?php
                                            $no = 1;
                                            foreach ($jurusan as $row) {
                                            ?>
                                                <td class="text-centers">
                                                    <h6><?php echo $no++; ?></h6>
                                                </td>
                                                <td>
                                                    <h6 class="text-uppercase text-center"><?php echo $row['id']; ?></h6>
                                                </td>
                                                <td>
                                                    <h6 class="text-uppercase text-center"><?php echo $row['kode']; ?></h6>
                                                </td>
                                                <td>
                                                    <h6 class="text-uppercase"><?php echo $row['jurusan']; ?></h6>
                                                </td>
                                                <td>
                                                    <h6 class="text-uppercase text-center"><?php echo $row['jumlah_kelas']; ?> Kelas</h6>
                                                </td>
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
    </div>
</div>