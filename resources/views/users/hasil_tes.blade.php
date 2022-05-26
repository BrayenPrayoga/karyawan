@extends('template.backend.main')

@section('title')
    <i class="fa fa-calendar" aria-hidden="true"></i> Hasil Tes
@endsection

@section('content')
<div class="row justify-content-center">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
              <span class="title">Hasil Tes</span>
            </div>
            <div class="card-body">
                @if($pelamar->status == null)
                    <div class="alert alert-info alert-dismissible" role="alert">
                        <div class="alert-icon" style="font-size:28px;">
                            <i class="fa fa-bell"></i>
                        </div>
                        <div class="alert-message" style="font-size:20px;">
                            <span>
                                <strong>Info !</strong>
                                <br>
                                Silahkan Melakukan Tes Terlebih Dahulu.
                            </span>
                        </div>
                    </div>
                @elseif($pelamar->status == 1)
                    <div class="alert alert-warning alert-dismissible mb-0" role="alert">
                        <div class="alert-icon" style="font-size:28px;">
                            <i class="fa fa-exclamation-triangle"></i>
                        </div>
                        <div class="alert-message" style="font-size:20px;">
                            <span>
                                <strong>Warning !</strong>
                                <br>
                                Menunggu Hasil Verifikasi.
                            </span>
                        </div>
                    </div>
                @elseif($pelamar->status == 2)
                    <div class="alert alert-danger alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                        <div class="alert-icon" style="font-size:28px;">
                            <i class="fa fa-times"></i>
                        </div>
                        <div class="alert-message" style="font-size:20px;">
                            <span>
                                <strong>Danger !</strong>
                                <br>
                                Maaf, Belum Beruntung, Mungkin Lain Kali.
                            </span>
                        </div>
                    </div>
                @else
                    <div class="alert alert-success alert-dismissible" role="alert">
                        <div class="alert-icon" style="font-size:28px;">
                            <i class="fa fa-check"></i>
                        </div>
                        <div class="alert-message" style="font-size:20px;">
                            <span>
                                <strong>Success !</strong>
                                <br>
                                Selamat Anda Berhasil
                            </span>
                        </div>
                    </div>
                @endif
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