@extends('template.backend.main')

@section('title')
    <i class="fa fa-calendar" aria-hidden="true"></i> User Management
@endsection

@section('content')
<div class="row justify-content-center">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
              <span class="title">User Management</span>
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
                                    <th>Nama</th>
                                    <th>Email</th>
                                    <th>No. Telp</th>
                                    <th>Alamat</th>
                                    <th>CV</th>
                                    <th width="15%">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($users as $val)
                                <tr>
                                    <td>{{ $no++ }}</td>
                                    <td>{{ $val->name }}</td>
                                    <td>{{ $val->email }}</td>
                                    <td>{{ $val->nomor_telepon }}</td>
                                    <td>{{ $val->alamat }}</td>
                                    <td>
                                        @if(!empty($val->cv))
                                        <a href="{{ url('/upload/cv/'.$val->cv) }}" target="_blank" class="btn btn-sm btn-dark" style="margin-top:7px;"><i class="fa fa-eyes"></i>Lihat</a>
                                        @else
                                        -
                                        @endif
                                    </td>
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
                <h5 class="modal-title" id="exampleModalLabel">Menambah User Management</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="form-simpan" method="POST" action="{{ route('admin.user_management.store') }}">
            @csrf
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <label for="nama">Nama</label>
                                    <input type="text" class="form-control" name="nama" id="nama" placeholder="Nama">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <label for="telpon">No. Telp</label>
                                    <input type="text" class="form-control" name="telpon" id="telpon" placeholder="No. Telp">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <label for="email">Email</label>
                                    <input type="email" class="form-control" name="email" id="email" placeholder="Email">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <label for="password">Password</label>
                                    <input type="text" class="form-control" name="password" id="password" placeholder="Password">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <label for="password">Alamat</label>
                                    <textarea rows="4" class="form-control" name="alamat" id="alamat" placeholder="Alamat"></textarea>
                                </div>
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

<!-- Modal Edit -->
<div class="modal fade" id="modal-edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Mengedit User Management</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="form-edit" method="POST" action="{{ route('admin.user_management.update') }}">
            @csrf
                <div class="modal-body">
                    <input type="hidden" name="id_users" id="id_users">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <label for="nama">Nama</label>
                                    <input type="text" class="form-control" name="nama" id="e_nama" placeholder="Nama">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <label for="telpon">No. Telp</label>
                                    <input type="text" class="form-control" name="telpon" id="e_telpon" placeholder="No. Telp">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <label for="email">Email</label>
                                    <input type="email" class="form-control" name="email" id="e_email" placeholder="Email">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <label for="password">Password</label>
                                    <input type="text" class="form-control" name="password" id="e_password" placeholder="Password">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <label for="password">Alamat</label>
                                    <textarea rows="4" class="form-control" name="alamat" id="e_alamat" placeholder="Alamat"></textarea>
                                </div>
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
    });

    function edit(obj)
    {
        var item = $(obj).data('item');
        console.log(item);

        $('#id_users').val(item.id);
        $('#e_nama').val(item.name);
        $('#e_telpon').val(item.nomor_telepon);
        $('#e_email').val(item.email);
        $('#e_password').val(item.password_real);
        $('#e_alamat').val(item.alamat);

        $('#modal-edit').modal('show');
    }

    function hapus(id_users)
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
                    window.location.href = "{{ URL::to('admin/user-management/hapus')}}"+'/'+id_users;
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