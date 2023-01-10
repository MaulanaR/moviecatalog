<script src="https://unpkg.com/html5-qrcode"></script>
<!-- Full Width Column -->
<div class="content-wrapper" style="min-height: 901px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Scan QRcode
            <small>Please enable your camera</small>
        </h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-info">
                    <div class=" box-body">
                        <div class="row">
                            <div class="col-md-4"></div>
                            <div class="col-md-4">
                                <div id="qr-reader" style="width:100%"></div>
                            </div>
                            <div class="col-md-4"></div>
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
                <h3 class="modal-title">Result</h3>
            </div>
            <div class="modal-body">
                <div class="box-body">
                    <div class="form-group">
                        <label for="user_id" class="col-sm-2 control-label">User ID</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="user_id" placeholder="User ID" name="user_id">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">Nama </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="name" placeholder="Nama" name="name">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="no" class="col-sm-2 control-label">No urut </label>
                        <div class="col-sm-10">
                            <input type="number" class="form-control" id="no" placeholder="No urut" name="no">
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer text-center">
                <button type="button" class="btn btn-info pull-right">Set as check in</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<script type="text/javascript">
    $(document).ready(function() {

    });
    var resultContainer = document.getElementById('qr-reader-results');
    var lastResult, countResults = 0;

    function onScanSuccess(decodedText, decodedResult) {
        if (decodedText !== lastResult) {
            ++countResults;
            lastResult = decodedText;
            // Handle on success condition with the decoded message.
            console.log(`Scan result ${decodedText}`, decodedResult);
            openResult(decodedText);
        }
    }

    function openResult(texts) {
        let dec = JSON.parse(texts);
        $("#show_list").modal('show');
        $("#user_id").val(dec.user_id);
        $("#name").val(dec.name);
        $("#no").val(dec.no);
    }

    var html5QrcodeScanner = new Html5QrcodeScanner(
        "qr-reader", {
            fps: 10,
            qrbox: 250
        });
    html5QrcodeScanner.render(onScanSuccess);
</script>