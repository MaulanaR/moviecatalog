<div class="content-wrapper" style="min-height: 901px;background:#fff;">

      <section class="content">
        <div class="box box-success" style="border-top:#3c8dbc 6px solid;">
            <div class="box-header" style="border-bottom:1px dotted #dadada">
                <i class="fa fa-map-o"></i> <?php echo $title_head; ?>
            </div>
            
            <div class="box-body">

              <div class="col-sm-12">
                <div class="col-sm-6">
                  <div id="darting1" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
                </div>
                <div class="col-sm-6">
                  <table class="table table-striped table-bordered">
                      <thead>
                          <tr>
                            <td colspan="5" style="text-align:center;">Kemiskinan</td>
                          </tr>
                          <tr style="background:#3c8dbc;color:#fff;">
                              <td>Provinsi</td>
                              <td>Value P0(<i>X</i>)</td>
                              <td>Value P1(<i>X</i>)</td>
                              <td>Value P2(<i>X</i>)</td>
                              <td><i class="fa fa-cog"></i></td>
                          </tr>
                      </thead>
                      <tbody>
                        <?php
                        $nomuter = 1;
                        $getmaster_nama = $this->db->query("SELECT A.provinsi,A.`value` as jumlahval,B.provinsi,B.`value` as jumlahval1,C.provinsi,C.`value` as jumlahval2 FROM
(SELECT *,SUM(`value`) as jumlahval FROM dtketersediankemiskinan WHERE kdprov !='0' and kdkabu ='0' and indikator = 'P0' GROUP BY provinsi) A
LEFT JOIN
(SELECT *,SUM(`value`) as jumlahval FROM dtketersediankemiskinan WHERE kdprov !='0' and kdkabu ='0' and indikator = 'P1' GROUP BY provinsi) B ON A.kdprov = B.kdprov
LEFT JOIN
(SELECT *,SUM(`value`) as jumlahval FROM dtketersediankemiskinan WHERE kdprov !='0' and kdkabu ='0' and indikator = 'P2' GROUP BY provinsi) C ON A.kdprov = C.kdprov");
                          foreach ($getmaster_nama->result() as $key => $value_nama) {
                            $namalegend[] = $value_nama->provinsi;
                            $valuelegend[] = round($value_nama->jumlahval,2);
                            $valuelegend1[] = round($value_nama->jumlahval1,2);
                            $valuelegend2[] = round($value_nama->jumlahval2,2);
                          
                          ?>
                          <tr>
                            <td><?php echo $value_nama->provinsi; ?></td>
                            <td><?php echo round($value_nama->jumlahval,2); ?></td>
                            <td><?php echo round($value_nama->jumlahval1,2); ?></td>
                            <td><?php echo round($value_nama->jumlahval2,2); ?></td>
                            <td><a href="javascript:" onclick="cekdata<?php echo $nomuter; ?>()" class="btn btn-xs btn-primary"><i class="fa fa-hand-o-up"></i></a></td>
                          </tr>
                          <script type="text/javascript">
                              function cekdata<?php echo $nomuter; ?>() {
                                  $('html,body').animate({
                                    scrollTop: $(".datacari<?php echo $nomuter; ?>").offset().top},
                                  'slow');
                              }
                          </script>
                          <?php $nomuter++; } ?>
                          <?php


                          $getmaster_valuenas = $this->db->query("SELECT A.provinsi,A.`value` as jumlahvalnas,B.provinsi,B.`value` as jumlahvalnas1,C.provinsi,C.`value` as jumlahvalnas2 FROM
(SELECT *,SUM(`value`) as jumlahval FROM dtketersediankemiskinan WHERE kdprov ='0' and kdkabu ='0' and indikator = 'P0' GROUP BY provinsi) A
LEFT JOIN
(SELECT *,SUM(`value`) as jumlahval FROM dtketersediankemiskinan WHERE kdprov ='0' and kdkabu ='0' and indikator = 'P1' GROUP BY provinsi) B ON A.kdprov = B.kdprov
LEFT JOIN
(SELECT *,SUM(`value`) as jumlahval FROM dtketersediankemiskinan WHERE kdprov ='0' and kdkabu ='0' and indikator = 'P2' GROUP BY provinsi) C ON A.kdprov = C.kdprov");
                          foreach ($getmaster_valuenas->result() as $key => $value_valuenas) {
                            $valuelegendnas_data = $value_valuenas->jumlahvalnas;
                            $valuelegendnas_data1 = $value_valuenas->jumlahvalnas1;
                            $valuelegendnas_data2 = $value_valuenas->jumlahvalnas2;
                          ?>
                              <tr style="background:#ffcc00">
                                  <td>Nasional</td>
                                  <td><?php echo $value_valuenas->jumlahvalnas; ?></td>
                                  <td><?php echo $value_valuenas->jumlahvalnas1; ?></td>
                                  <td><?php echo $value_valuenas->jumlahvalnas2; ?></td>
                              </tr>
                          <?php }

                          $jumlahdata = $getmaster_nama->num_rows();
                          for ($i=0; $i < $jumlahdata; $i++) { 
                          $valuelegendnas[] = $valuelegendnas_data;
                          $valuelegendnas1[] = $valuelegendnas_data1;
                          $valuelegendnas2[] = $valuelegendnas_data2;
                          }
                          ?>
                      </tbody>
                  </table>
                </div>
              </div>

                
                  <?php
                    $rodamutar = 1;
                        $getmaster_nama = $this->db->query("SELECT * FROM dtketersediankemiskinan
                          WHERE kdprov !='0' and kdkabu !='0' and indikator = 'P0'
                          GROUP BY provinsi");
                          foreach ($getmaster_nama->result() as $key => $value_nama2) {                          
                          ?>
                  <div class="col-sm-12 datacari<?php echo $rodamutar; ?>" style="border-top:2px dotted #dadada;margin-top:20px;">        
                  <div class="col-sm-6">
                    <div id="container<?php echo $rodamutar; ?>"></div>
                  </div>
                  <div class="col-sm-6">
                      <table class="table table-striped table-bordered">
                          <thead>
                              <tr>
                                  <td colspan="8" align="center" style="background:#e7e7e7;"><?php echo $value_nama2->provinsi; ?></td>
                              </tr>
                              <tr style="background:#3c8dbc;color:#fff;">
                                  <td>Nama Kabupaten</td>
                                  <td>Kategori</td>
                                  <td>P1</td>
                                  <td>P2</td>
                                  <td>P3</td>
                                  <td>Capaian P0</td>
                                  <td>Capaian P1</td>
                                  <td>Capaian P2</td>
                              </tr>
                          </thead>
                          <tbody>
                            <?php
                              $namalegendkab = null;
                              $valuekabdata = null;
                              $valuekabdata1 = null;
                              $valuekabdata2 = null;
                              $valuekabcapaian = null;
                              $valuekabcapaian1 = null;
                              $valuekabcapaian2 = null;
                              $getkab = $this->db->query("SELECT A.*,A.`value` as jumlahval,B.`value` as jumlahval1,B.capaian as capaian1,C.`value` as jumlahval2,C.capaian as capaian2 FROM
(SELECT * FROM dtketersediankemiskinan WHERE kdprov !='0' and kdkabu !='0' and indikator = 'P0' and kdprov='".$value_nama2->kdprov."') A
LEFT JOIN (SELECT * FROM dtketersediankemiskinan WHERE kdprov !='0' and kdkabu !='0' and indikator = 'P1' and kdprov='".$value_nama2->kdprov."') B ON A.kdprov = B.kdprov and A.kdkabu = B.kdkabu
LEFT JOIN (SELECT * FROM dtketersediankemiskinan WHERE kdprov !='0' and kdkabu !='0' and indikator = 'P2' and kdprov='".$value_nama2->kdprov."') C ON A.kdprov = C.kdprov and A.kdkabu = C.kdkabu");
                              foreach ($getkab->result() as $key => $valuekab) {
                            ?>
                              <tr>
                                  <td><?php echo $namalegendkab[] = $valuekab->kabupaten; ?></td>
                                  <td><?php echo $valuekab->subskateg; ?></td>
                                  <td><?php echo $valuekabdata[] = round($valuekab->jumlahval,2); ?></td>
                                  <td><?php echo $valuekabdata1[] = round($valuekab->jumlahval1,2); ?></td>
                                  <td><?php echo $valuekabdata2[] = round($valuekab->jumlahval2,2); ?></td>
                                  <td style="background:#<?php if(round($valuekab->capaian,2)>0){ echo 'f1ffc5'; } else { echo 'dcffd2'; } ?>"><?php echo $valuekabcapaian[] = round($valuekab->capaian,2); ?></td>
                                  <td style="background:#<?php if(round($valuekab->capaian1,2)>0){ echo 'f1ffc5'; } else { echo 'dcffd2'; } ?>"><?php echo $valuekabcapaian1[] = round($valuekab->capaian1,2); ?></td>
                                  <td style="background:#<?php if(round($valuekab->capaian2,2)>0){ echo 'f1ffc5'; } else { echo 'dcffd2'; } ?>"><?php echo $valuekabcapaian2[] = round($valuekab->capaian2,2); ?></td>
                              </tr>
                            <?php } ?>
                          </tbody>
                      </table>
                  </div>
                  </div>
                  <script type="text/javascript">
var namalegendkab<?php echo $rodamutar; ?> = <?php echo json_encode($namalegendkab); ?>;
var valuekabdata = <?php echo str_replace('"',"",json_encode($valuekabdata)); ?>;
var valuekabdata1 = <?php echo str_replace('"',"",json_encode($valuekabdata1)); ?>;
var valuekabdata2 = <?php echo str_replace('"',"",json_encode($valuekabdata2)); ?>;
var valuekabcapaian = <?php echo str_replace('"',"",json_encode($valuekabcapaian)); ?>;
var valuekabcapaian1 = <?php echo str_replace('"',"",json_encode($valuekabcapaian1)); ?>;
var valuekabcapaian2 = <?php echo str_replace('"',"",json_encode($valuekabcapaian2)); ?>;

Highcharts.chart('container<?php echo $rodamutar; ?>', {
    chart: {
        type: 'column'
    },
    title: {
        text: '<?php echo $value_nama2->provinsi; ?>'
    },
    subtitle: {
        text: 'Source: SIMREG'
    },
    xAxis: {
        categories: namalegendkab<?php echo $rodamutar; ?>,
        title: {
            text: null
        }
    },
    yAxis: {
        min: 0,
        title: {
            text: 'Value',
            align: 'high'
        },
        labels: {
            overflow: 'justify'
        }
    },
    tooltip: {
        valueSuffix: ' millions'
    },
    plotOptions: {
        bar: {
            dataLabels: {
                enabled: true
            }
        }
    },
    legend: {
        layout: 'vertical',
        align: 'right',
        verticalAlign: 'top',
        x: -40,
        y: 80,
        floating: true,
        borderWidth: 1,
        backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'),
        shadow: true
    },
    credits: {
        enabled: false
    },
    series: [{
        name: 'P0',
        data: valuekabdata
    },{
        name: 'Capain P0',
        data: valuekabcapaian
    },{
        name: 'P1',
        data: valuekabdata1
    },{
        name: 'Capain P1',
        data: valuekabcapaian1
    },{
        name: 'P2',
        data: valuekabdata2
    },{
        name: 'Capain P2',
        data: valuekabcapaian2
    }]
});
                      </script>
                  <?php $rodamutar++; }  ?>
              
            </div>
          </div>
      </section>

</div>



<script type="text/javascript">
var namalegend = <?php echo json_encode($namalegend); ?>;
var valuelegend = <?php echo str_replace('"',"",json_encode($valuelegend)); ?>;
var valuelegend1 = <?php echo str_replace('"',"",json_encode($valuelegend1)); ?>;
var valuelegend2 = <?php echo str_replace('"',"",json_encode($valuelegend2)); ?>;
var valuelegendnas = <?php echo str_replace('"',"",json_encode($valuelegendnas)); ?>;
var valuelegendnas1 = <?php echo str_replace('"',"",json_encode($valuelegendnas1)); ?>;
var valuelegendnas2 = <?php echo str_replace('"',"",json_encode($valuelegendnas2)); ?>;

Highcharts.chart('darting1', {
    title: {
        text: 'Daerah Tertinggal - Ketersediaan - Kemiskinan'
    },
    xAxis: {
        categories: namalegend
    },
    labels: {
        items: [{
            /*html: 'Total fruit consumption',
            style: {
                left: '50px',
                top: '18px',
                color: (Highcharts.theme && Highcharts.theme.textColor) || 'black'
            }*/
        }]
    },
    series: [{
        type: 'column',
        name: 'P0',
        data: valuelegend
    },
    {
        type: 'column',
        name: 'P1',
        data: valuelegend1
    },
    {
        type: 'column',
        name: 'P2',
        data: valuelegend2
    }, {
        type: 'spline',
        name: 'Nasional P0',
        data: valuelegendnas,
        marker: {
            lineWidth: 2,
            lineColor: Highcharts.getOptions().colors[3],
            fillColor: 'white'
        }
    }
    , {
        type: 'spline',
        name: 'Nasional P1',
        data: valuelegendnas1,
        marker: {
            lineWidth: 2,
            lineColor: Highcharts.getOptions().colors[3],
            fillColor: 'white'
        }
    }, {
        type: 'spline',
        name: 'Nasional P1',
        data: valuelegendnas2,
        marker: {
            lineWidth: 2,
            lineColor: Highcharts.getOptions().colors[3],
            fillColor: 'white'
        }
    }/*, {
        type: 'pie',
        name: 'Total consumption',
        data: [{
            name: 'Jane',
            y: 13,
            color: Highcharts.getOptions().colors[0] // Jane's color
        }, {
            name: 'John',
            y: 23,
            color: Highcharts.getOptions().colors[1] // John's color
        }, {
            name: 'Joe',
            y: 19,
            color: Highcharts.getOptions().colors[2] // Joe's color
        }],
        center: [100, 80],
        size: 100,
        showInLegend: false,
        dataLabels: {
            enabled: false
        }
    }*/]
});



    </script>

    