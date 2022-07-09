@extends('template.backend.main')

@section('title')
    <i class="fa fa-calendar" aria-hidden="true"></i> Master Profesi
@endsection

@section('content')
<div class="row justify-content-center">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
              <span class="title">Master Profesi</span>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-12">
                        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modal-tambah"><i class="fa fa-plus"></i>&nbsp;Tambah</button>
                        <br><br>
                    </div>
                    <div class="col-lg-12">
                        <table id="table-support" width="100%" class="table table-striped table-bordered dt-responsive nowrap">
                            <thead>
                                <tr>
                                    <th width="10%">No.</th>
                                    <th>Kode</th>
                                    <th>Kepribadian</th>
                                    <th>Profesi</th>
                                    <th>Status</th>
                                    <th width="15%">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($profesi as $sp)
                                <tr>
                                    <td>{{ $no++ }}</td>
                                    <td>{{ $sp->kode }}</td>
                                    <td>{{ $sp->kepribadian }}</td>
                                    <td>{{ $sp->saran_profesi }}</td>
                                    <td>
                                        @if($sp->status == 0)
                                        <span class="badge badge-info">DRAFT</span>
                                        @else
                                        <span class="badge badge-success">PUBISH</span>
                                        @endif
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-info" data-item="{{json_encode($sp)}}" onclick="edit(this)"><i class="fa fa-edit"></i></button>
                                        <button type="button" class="btn btn-sm btn-danger" onclick="hapus('{{$sp->id}}')"><i class="fa fa-trash"></i></button>
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

<!-- Modal Tambah -->
<div class="modal fade" id="modal-tambah" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Menambah Proses Tes</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="form-simpan" method="POST" action="{{ route('admin.proses.store') }}">
            @csrf
                <div class="modal-body">
                    <div class="form-row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="input4">Tipe Kepribadian</label>
                                <select class="form-control select2" name="kepribadian" id="kepribadian">
                                    <option value="">-- PILIH KEPRIBADIAN --</option>
                                    @foreach($kepribadian as $val)
                                    <option value="{{ $val->id }}">{{ $val->nama }} ({{$val->kode}})</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="input4">Profesi</label>
                                <select class="form-control select2" name="profesi" id="profesi">
                                    
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-dark" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-info">Simpan</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Modal edit -->
<div class="modal fade" id="modal-edit" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Mengedit Proses Tes</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="form-simpan" method="POST" action="{{ route('admin.proses.update') }}">
            @csrf
                <div class="modal-body">
                    <div class="form-row">
                        <input type="hidden" name="id" id="id">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="input4">Tipe Kepribadian</label>
                                <select class="form-control select2" name="kepribadian" id="e_kepribadian">
                                    <option value="">-- PILIH KEPRIBADIAN --</option>
                                    @foreach($kepribadian as $val)
                                    <option value="{{ $val->id }}">{{ $val->nama }} ({{$val->kode}})</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="input4">Profesi</label>
                                <select class="form-control select2" name="profesi" id="e_profesi">

                                </select>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="input4">Status</label>
                                <select class="form-control" name="status" id="e_status">
                                    <option value="0">DRAFT</option>
                                    <option value="1">PUBLISH</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-dark" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-info">Simpan</button>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection

@section('script')
<script>
    $(document).ready(function(e){
        $('#table-support').DataTable();
        $('.select2').select2();

        $('#kepribadian').change(function(){
            var html = '';
            var tipe_kepribadian_id = $(this).val();
            $.get("{{ URL::to('admin/proses/get-profesi') }}",{tipe_kepribadian_id:tipe_kepribadian_id}, function(res){
                $.each(res, function(i, val){
                    html += '<option value="'+val.id+'">'+val.saran_profesi+'</option>'
                })

                $('#profesi').html(html);
            })
        })
        $('#e_kepribadian').change(function(){
            var html = '';
            var tipe_kepribadian_id = $(this).val();
            $.get("{{ URL::to('admin/proses/get-profesi') }}",{tipe_kepribadian_id:tipe_kepribadian_id}, function(res){
                $.each(res, function(i, val){
                    html += '<option value="'+val.id+'">'+val.saran_profesi+'</option>'
                })

                $('#e_profesi').html(html);
            })
        })
    });

    function edit(obj)
    {
        var item = $(obj).data('item');

        $('#id').val(item.id);
        $('#e_kepribadian').val(item.tipe_kepribadian_id).trigger('change');
        $('#e_status').val(item.status).trigger('change');

        var html = '';
        var select = '';
        var tipe_kepribadian_id = $('#e_kepribadian').val();
        $.get("{{ URL::to('admin/proses/get-profesi') }}",{tipe_kepribadian_id:tipe_kepribadian_id}, function(res){
            $.each(res, function(i, val){
                if(val.id == item.saran_profesi_tipe_kepribadian_id){
                    select = 'selected';
                }else{
                    select = '';
                }
                html += '<option value="'+val.id+'" '+select+'>'+val.saran_profesi+'</option>'
            })

            $('#e_profesi').html(html);
        })

        $('#modal-edit').modal('show');
    }

    function hapus(id)
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
                    window.location.href = "{{ URL::to('admin/proses/hapus')}}"+'/'+id;
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