@extends('template.backend.main')

@section('title')
    <i class="fa fa-calendar" aria-hidden="true"></i> Master Pertanyaan
@endsection

@section('content')
<div class="row justify-content-center">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
              <span class="title">Master Pertanyaan</span>
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
                                    <th>Urutan</th>
                                    <th>Dimensi</th>
                                    <th>Soal</th>
                                    <th width="15%">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($pernyataan as $val)
                                <tr>
                                    <td>{{ $no++ }}</td>
                                    <td>{{ $val->soal_kepribadian_id }}</td>
                                    <td>{{ $val->dimensi }}</td>
                                    <td>{{ $val->soal }}</td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-info" data-item="{{json_encode($val)}}" onclick="edit(this)"><i class="fa fa-edit"></i></button>
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

<!-- Modal Tambah -->
<div class="modal fade" id="modal-tambah" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Menambah Data Header</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="form-simpan" method="POST" action="{{ route('admin.pertanyaan.store') }}">
            @csrf
                <div class="modal-body">
                    <div class="form-row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="input4">Jenis Pernyataan</label>
                                <select class="form-control" name="jenis" id="jenis">
                                    <option value="baru">DATA BARU</option>
                                    <option value="ada">DATA SUDAH ADA</option>
                                </select>
                            </div>
                            <div class="form-group" id="div_urutan_input">
                                <label for="input4">Urutan</label>
                                <input type="text" class="form-control" name="urutan_last" id="urutan_last" value="{{ count($urutan) + 1 }}" readonly>
                            </div>
                            <div class="form-group" id="div_urutan_select" style="display:none;">
                                <label for="input4">Urutan</label>
                                <select class="form-control" name="urutan" id="urutan">
                                    @foreach($urutan as $val)
                                    <option value="{{ $val->id }}">{{ $val->id }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="input4">Dimensi</label>
                                <select class="form-control" name="dimensi" id="dimensi">
                                    <option value="" style="display:none;">-- Pilih Dimensi --</option>
                                    @foreach($dimensi as $val)
                                    <option value="{{ $val->id }}">{{ $val->nama }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="input4">Soal</label>
                                <input type="text" class="form-control" name="soal" id="soal">
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
<div class="modal fade" id="modal-edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Menambah Data Header</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="form-simpan" method="POST" action="{{ route('admin.pertanyaan.update') }}">
            @csrf
                <div class="modal-body">
                    <div class="form-row">
                        <input type="hidden" name="id" id="id">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="input4">Urutan</label>
                                <select class="form-control" name="urutan" id="e_urutan" disabled>
                                    @foreach($urutan as $val)
                                    <option value="{{ $val->id }}">{{ $val->id }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="input4">Dimensi</label>
                                <select class="form-control" name="dimensi" id="e_dimensi">
                                    @foreach($dimensi as $val)
                                    <option value="{{ $val->id }}">{{ $val->nama }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="input4">Soal</label>
                                <input type="text" class="form-control" name="soal" id="e_soal">
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

        $('#jenis').change(function(){
            var jenis = $(this).val();
            if(jenis == 'ada'){
                $('#div_urutan_select').show();
                $('#div_urutan_input').hide();
            }else{
                $('#div_urutan_select').hide();
                $('#div_urutan_input').show();
            }
        })
    });

    function edit(obj)
    {
        var item = $(obj).data('item');

        $('#id').val(item.id);
        $('#e_urutan').val(item.soal_kepribadian_id);
        $('#e_dimensi').val(item.dimensi_kepribadian_id);
        $('#e_soal').val(item.soal);

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
                    window.location.href = "{{ URL::to('admin/pertanyaan/hapus')}}"+'/'+id;
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