@extends('template.backend.main')

@section('title')
    <i class="fa fa-calendar" aria-hidden="true"></i> Pertanyaan
@endsection

@section('content')
<div class="row justify-content-center">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
              <span class="title">Pertanyaan</span>
            </div>
            <div class="card-body">
                @if(getPelamar($pelamar->id)->tipe_kepribadian_id != null)
                <div class="alert alert-success alert-dismissible" role="alert">
                    <div class="alert-icon">
                        <i class="fa fa-check"></i>
                    </div>
                    <div class="alert-message">
                        <span><strong>Selesai!</strong> Sudah Melakukan Tes Myer Briggs Type Indicator!</span>
                    </div>
                </div>
                @endif
                <div class="row">
                    <div class="col-lg-12">
                        @if(getPelamar($pelamar->id)->tipe_kepribadian_id == null)
                            <p>{{ $nomor }}</p>
                            <form id="form-test-kepribadian" method="POST" action="{{ route('user.simpan_pertanyaan') }}">
                                @csrf
                                <input type="hidden" name="nomor" value="{{ $nomor }}">
                                @foreach($pertanyaan as $result)
                                    <div class="radio">
                                        <label><input type="radio" name="pernyataan_kepribadian_id" value="{{ $result->id }}" {{ $jawabanSoalKepribadian != null ? ($jawabanSoalKepribadian->pernyataan_kepribadian_id == $result->id ? 'checked' : '') : ''}}> {{ $result->soal }}</label>
                                    </div>
                                @endforeach
                            </form>
                            <br>
                            @if ($nomor >= 2)
                                <a id="button-previous" href="#" class="btn btn-info" role="button">Sebelumnya</a>
                            @endif
                            @if ($nomor >= count($cek_pertanyaan))
                                <a id="button-finish" href="#" class="btn btn-info" role="button">Finish</a>
                            @elseif ($nomor >= 1)
                                <a id="button-next" href="#" class="btn btn-info" role="button">Berikutnya</a>
                            @endif
                        @else
                            <p style="color:blue;"><b>{{ $tipe_kepribadian->kode }} ({{ $tipe_kepribadian->nama }})</b></p>
                            <ul>
                                @foreach($deskripsi_tipe_kepribadian as $val)
                                <li>{{ $val->deskripsi }}</li>
                                @endforeach
                            </ul>
                            <p style="color:black;"><b>SARAN PENGEMBANGAN :</b></p>
                            <ul>
                                @foreach($saran_pengembangan_tipe_kepribadian as $val)
                                <li>{{ $val->saran_pengembangan }}</li>
                                @endforeach
                            </ul>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('script')
<script>
    $(document).ready(function(e){
        $("#button-previous").click(function(event) {
            event.preventDefault();
            $('#form-test-kepribadian').append('<input type="hidden" name="type" value="previous">');
            $('#form-test-kepribadian').submit();
        });

        $("#button-finish").click(function(event) {
            event.preventDefault();
            $('#form-test-kepribadian').append('<input type="hidden" name="type" value="finish">');
            $('#form-test-kepribadian').submit();
        });

        $("#button-next").click(function(event) {
            event.preventDefault();
            $('#form-test-kepribadian').append('<input type="hidden" name="type" value="next">');
            $('#form-test-kepribadian').submit();
        });
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