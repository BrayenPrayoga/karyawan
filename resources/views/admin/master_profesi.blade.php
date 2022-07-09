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
                                    <th width="15%">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($saran_profesi as $sp)
                                <tr>
                                    <td>{{ $no++ }}</td>
                                    <td>{{ $sp->kode }}</td>
                                    <td>{{ $sp->kepribadian }}</td>
                                    <td>{{ $sp->saran_profesi }}</td>
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
                <h5 class="modal-title" id="exampleModalLabel">Menambah Profesi</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="form-simpan" method="POST" action="{{ route('admin.profesi.store') }}">
            @csrf
                <div class="modal-body">
                    <div class="form-row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="input4">Tipe Kepribadian</label>
                                <select class="form-control select2" name="kepribadian" id="kepribadian">
                                    @foreach($kepribadian as $val)
                                    <option value="{{ $val->id }}">{{ $val->nama }} ({{$val->kode}})</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="input4">Saran Profesi</label>
                                <input type="text" class="form-control" name="saran_profesi" id="saran_profesi">
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
                <h5 class="modal-title" id="exampleModalLabel">Mengedit Profesi</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="form-simpan" method="POST" action="{{ route('admin.profesi.update') }}">
            @csrf
                <div class="modal-body">
                    <div class="form-row">
                        <input type="hidden" name="id" id="id">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="input4">Tipe Kepribadian</label>
                                <select class="form-control select2" name="kepribadian" id="e_kepribadian">
                                    @foreach($kepribadian as $val)
                                    <option value="{{ $val->id }}">{{ $val->nama }} ({{$val->kode}})</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="input4">Saran Profesi</label>
                                <input type="text" class="form-control" name="saran_profesi" id="e_saran_profesi">
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
    });

    function edit(obj)
    {
        var item = $(obj).data('item');

        $('#id').val(item.id);
        $('#e_kepribadian').val(item.tipe_kepribadian_id).trigger('change');;
        $('#e_saran_profesi').val(item.saran_profesi);

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
                    window.location.href = "{{ URL::to('admin/profesi/hapus')}}"+'/'+id;
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