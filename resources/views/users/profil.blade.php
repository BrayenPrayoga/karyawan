@extends('template.backend.main')

@section('title')
    <i class="fa fa-calendar" aria-hidden="true"></i> Profil
@endsection

@section('content')
<div class="row justify-content-center">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
              <span class="title">Profil</span>
            </div>
            <div class="card-body">
                <form method="POST" action="{{ route('user.profil.update') }}" enctype="multipart/form-data">
                @csrf
                    <div class="row">
                        <input type="hidden" name="id_pelamar" value="{{ $users->id_pelamar }}">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="nama">Nama</label>
                                <input type="text" class="form-control" id="nama" name="nama" value="{{ $users->name }}" placeholder="Masukan Nama">
                                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" id="email" name="email" value="{{ $users->email }}" placeholder="Masukan Email">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="telpon">No. Telp</label>
                                <input type="text" class="form-control" id="telpon" name="telpon" value="{{ $users->nomor_telepon }}" placeholder="Masukan No. Telp">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="cv">CV</label>
                                {{-- <div class="custom-file">
                                    <input type="file" class="custom-file-input" id="cv" name="cv">
                                    <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
                                </div> --}}
                                <input type="file" class="form-control" id="cv" name="cv">
                                @if($users->cv != null)
                                <a href="{{ url('/upload/cv/'.$users->cv) }}" target="_blank" class="btn btn-sm btn-dark" style="margin-top:7px;"><i class="fa fa-eyes"></i>Lihat</a>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="alamat">Alamat</label>
                                <textarea rows="4" class="form-control" id="alamat" value="{{ $users->alamat }}" name="alamat" placeholder="Masukan Alamat">{{ $users->alamat }}</textarea>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <button type="submit" class="btn btn-primary">Simpan</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection

@section('script')
<script>
    $(document).ready(function(e){

    });
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