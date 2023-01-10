<!-- Full Width Column -->
<div class="content-wrapper" style="min-height: 901px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Create
            <small>Barcode</small>
        </h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-6">
                <div class="box box-info">
                    <div class="box-header with-border">
                        <h3 class="box-title">Informasi</h3>
                    </div>


                    <form class="form-horizontal" method="POST" action="<?= base_url('maulana/create') ?>">
                        <?php
                        $csrf = array(
                            'name' => $this->security->get_csrf_token_name(),
                            'hash' => $this->security->get_csrf_hash()
                        );
                        ?>
                        <input type="hidden" name="<?= $csrf['name']; ?>" value="<?= $csrf['hash']; ?>" />
                        <div class=" box-body">
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-2 control-label">User ID</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputEmail3" placeholder="User ID" name="user_id" value="1222">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-2 control-label">Nama </label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="inputPassword3" placeholder="Nama" name="name" value="Maulana">
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-2 control-label">No urut </label>
                                <div class="col-sm-10">
                                    <input type="number" class="form-control" id="inputPassword3" placeholder="No urut" name="no" value="1">
                                </div>
                            </div>
                        </div>

                        <div class="box-footer">
                            <button type="submit" class="btn btn-info pull-right">Generate</button>
                        </div>

                    </form>
                </div>
            </div>
            <div class="col-md-6">
                <div class="box box-info">
                    <div class="box-header with-border">
                        <h3 class="box-title">Hasil Generate</h3>
                    </div>
                    <div class="box-body">
                        <div class="col-md-12">
                            <div class="text-center">
                                <?php
                                if ($qr != "") {
                                    echo '<img src="' . base_url($qr) . '" class="img-thumbnail">';
                                }
                                ?>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<div id="show_list" class="modal fade" role="dialog">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h3 class="modal-title">Pop Up</h3>
            </div>
            <div class="modal-body">
                <table id="table_list" class="table table-bordered">
                    <thead style="background-color: #F9F9F9;">
                    </thead>
                    <tbody id="list_data">
                    </tbody>
                    <tfoot></tfoot>
                </table>
            </div>
            <div class="modal-footer">

            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<script type="text/javascript">
    $(document).ready(function() {

    });
</script>