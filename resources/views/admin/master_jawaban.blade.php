@extends('template.backend.main')

@section('title')
    <i class="fa fa-calendar" aria-hidden="true"></i> Jawaban
@endsection

@section('css')

@endsection

@section('content')
<div class="row justify-content-center">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
              <span class="title"> Jawaban</span>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-12">
                        <table id="table-support" width="100%" class="table table-striped table-bordered dt-responsive nowrap">
                            <thead>
                                <tr>
                                    <th width="10%">No.</th>
                                    <th>Nama</th>
                                    <th>Tipe Kepribadian</th>
                                    <th>Kode</th>
                                    <th><center>Status</center></th>
                                    <th width="15%">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($hasil as $val)
                                <tr>
                                    <td>{{ $no++ }}</td>
                                    <td>{{ getUser($val->users_id)->name }}</td>
                                    <td>{{ $val->nama }}</td>
                                    <td>{{ $val->kode }}</td>
                                    <td>
                                        <center>
                                        @if($val->status == 1)
                                        <span class="badge badge-warning">MENUNGGU</span>
                                        @elseif($val->status == 2)
                                        <span class="badge badge-danger">TOLAK</span>
                                        @else
                                        <span class="badge badge-success">TERIMA</span>
                                        @endif
                                        </center>
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-info" data-item="{{json_encode($val)}}" onclick="edit(this)"><i class="fa fa-edit"></i></button>
                                        <button type="button" class="btn btn-sm btn-warning" data-item="{{json_encode($val)}}" onclick="view(this)"><i class="fa fa-eye"></i></button>
                                        <button type="button" class="btn btn-sm btn-danger" onclick="hapus('{{$val->id}}')"><i class="fa fa-trash"></i></button>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Modal View -->
<div class="modal fade" id="modal-view" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">View Hasil Tes</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12" style="overflow-x:auto;">
                        <table id="table-modal" width="100%" class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th width="5%">No.</th>
                                    <th width="5%">Urutan</th>
                                    <th width="20%">Jawaban</th>
                                    <th>Dimensi</th>
                                </tr>
                            </thead>
                            <tbody>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-dark" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-info">Simpan</button>
            </div>
        </div>
    </div>
</div>
@endsection

@section('script')
<script>
    $(document).ready(function(e){
        $('#table-support').DataTable();
    });

    function edit(obj){
        var item = $(obj).data('item');

        if(item.status == 1){
            var menunggu = 'selected';
        }else if(item.status == 2){
            var tolak = 'selected';
        }else{
            var terima = 'selected';
        }
        var html = '<form id="verifikasiTes" method="post" action="{{ route("admin.verifikasi_tes") }}" width="100%">'+
                    '@csrf'+
                      '<input type="hidden" name="id_pelamar" value="'+item.id+'">'+
                      '<label>Status</label>'+
                      '<select class="form-control" id="status" name="status">'+
                            '<option value="1" '+menunggu+'>MENUNGGU</option>'+
                            '<option value="2" '+tolak+'>TOLAK</option>'+
                            '<option value="3" '+terima+'>TERIMA</option>'+
                        '</select>'+
                  '</form>';
        Swal.fire({
            position: 'mid-end',
            title: 'Verifikasi Hasil Tes',
            html: html,
            showCancelButton: true,
            cancelButtonText:'Batal',
          }).then(function(result) {
                if (result.value) {
                    document.getElementById("verifikasiTes").submit();
                } else if (result.value === 0) {
                    Swal.fire({
                        icon: 'error',
                        text: "Batal Simpan"
                    });
                } else {
                    Swal.fire({
                        icon: 'error',
                        text: "Batal Simpan"
                    });
                }
          })
    }

    function view(obj)
    {
        var item = $(obj).data('item');
        var id_pelamar = item.id;
        $.get("{{ URL::to('admin/hasil/get-jawaban') }}",{id_pelamar:id_pelamar}, function(res){
            var data = JSON.parse(res);
            var html = '';

            $('#table-modal tbody').html('');
            $('#table-modal').DataTable().destroy();
            $.each(data, function(i, val){
                var no = i + 1;
                html +='<tr>';
                html +='<td>'+no+'</td>';
                html +='<td>'+val.soal_kepribadian_id+'</td>';
                html +='<td>'+val.soal+'</td>';
                html +='<td>'+val.nama+'</td>';
                html +='</tr>';
            });
            $('#table-modal tbody').html(html);
            $('#table-modal').DataTable();
            $('#modal-view').modal('show');
        });
    }

    function hapus(id_pelamar)
    {
        Swal.fire({
            title: 'Apakah Anda Yakin?',
            text: "Ingin Menghapus Data Tersebut",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Delete'
            }).then((result) => {
                if(result.value){
                    window.location.href = "{{ URL::to('admin/hasil/hapus')}}"+'/'+id_pelamar;
                }else{
                    Swal.fire({
                        icon: 'error',
                        text: "Batal Hapus",
                        showConfirmButton: false,
                        timer: 1500
                    });
                }
        })
    }
</script>
@if(Session::has('success'))
    <script type="text/javascript">
        Swal.fire({
            icon: 'success',
            text: '{{Session::get("success")}}',
            showConfirmButton: true
        });
    </script>
    <?php
        Session::forget('success');
    ?>
@endif
@if(Session::has('error'))
    <script type="text/javascript">
        Swal.fire({
            icon: 'error',
            text: '{{Session::get("error")}}',
            showConfirmButton: true
        });
    </script>
    <?php
        Session::forget('error');
    ?>
@endif
@endsection