    <!DOCTYPE html>
    <html>
    <head>
        <title>Tambah Ekstrakurikuler</title>
    </head>
    <body>
        <div class="container">
            <h2>Tambah Ekstrakurikuler</h2>
            <!-- Menampilkan pesan jika terjadi kesalahan input -->
            <?php if(validation_errors()): ?>
                <div class="alert alert-danger" role="alert">
                    <?php echo validation_errors(); ?>
                </div>
            <?php endif; ?>
            <form action="<?php echo base_url('administrator/ekstra/tambah_aksi'); ?>" method="post">
                <div class="form-group">
                    <label for="nama_ekstra">Nama Ekstrakurikuler:</label>
                    <input type="text" class="form-control" id="nama_ekstra" name="nama_ekstra" required>
                </div>
                <div class="form-group">
                    <label for="deskripsi">Deskripsi:</label>
                    <textarea class="form-control" id="deskripsi" name="deskripsi" required></textarea>
                </div>
                <div class="form-group">
                    <label for="guru">Pilih Guru:</label>
                    <select class="form-control" id="guru" name="guru" required>
                        <option value="">--Pilih Guru--</option>
                        <?php foreach ($guru_list as $guru): ?>
                            <option value="<?php echo $guru->nik; ?>"><?php echo $guru->nama_guru; ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="form-group">
                    <label for="kelas">Pilih Kelas:</label>
                    <select class="form-control" id="kelas" name="kelas" required>
                        <option value="">--Pilih Kelas--</option>
                        <?php foreach ($kelas_list as $kelas): ?>
                            <option value="<?php echo $kelas->id_kelas; ?>"><?php echo $kelas->nama_kelas; ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Simpan</button>
            </form>
        </div>
    </body>
    </html>
