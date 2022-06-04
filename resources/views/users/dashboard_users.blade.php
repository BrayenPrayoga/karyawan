@extends('template.backend.main')

@section('content')
<div class="row justify-content-center">
    <div class="col-md-10" align="center">
        <div id="home">
            <img src="{{asset('assets/img/logo.png')}}" width="30%">
            <div class="card">
                <div class="card-body" align="center" style="background-color: #cc1616;border-radius: 15px;">
                    <h3 style="color: white;margin-bottom: 30px;">SELEKSI KARYAWAN</h3>
                    <h4 style="text-transform: uppercase; color: white;">SELAMAT DATANG - {{ Auth::guard('user')->user()->name }}</h4>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection