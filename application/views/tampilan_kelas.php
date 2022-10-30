<div class="jumbotron jumbotron-fluid text-center text-uppercase">
    <h3 class="display-4">Kelas TJKT</h3>
    <hr class="my-4">
</div>

<div class="container">
    <div class="row mt-2">
        <div class="col-md">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr class="text-center">
                                    <th scope="col">#</th>
                                    <th scope="col">ID Kelas</th>
                                    <th scope="col">Kelas</th>
                                    <th scope="col">Kode Jurusan</th>
                                    <th scope="col">Jurusan</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <?php
                                    $no = 1;
                                    foreach ($kelas as $row) {
                                    ?>
                                        <td><?php echo $no++; ?></td>
                                        <td class="text-center"><?= $row['id_kelas'] ?></td>
                                        <td class="text-center"><?= $row['kelas'] ?></td>
                                        <td class="text-center"><?= $row['kode'] ?></td>
                                        <td><?= $row['jurusan'] ?></td>
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