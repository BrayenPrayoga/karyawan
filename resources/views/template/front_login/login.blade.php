<!DOCTYPE html>
<html lang="en">

<head>
    <title>SELEKSI KARYAWAN</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=dev<!DOCTYPE html>
	<html lang=" en">

    <!-- Mirrored from codervent.com/bulona/demo/authentication-signin.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 04 Jun 2020 14:20:12 GMT -->

    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>SELEKSI KARYAWAN</title>
        <!--favicon-->
  		<link rel="icon" type="image/png" href="{{ asset('assets/img/icon.png') }}"/>
        <!-- Bootstrap core CSS-->
        <link href="{{ asset('asset_login/css/bootstrap.min.css') }}" rel="stylesheet" />
        <!-- animate CSS-->
        <link href="{{ asset('asset_login/css/animate.css') }}" rel="stylesheet" type="text/css" />
        <!-- Icons CSS-->
        <link href="{{ asset('asset_login/css/icons.css') }}" rel="stylesheet" type="text/css" />
        <!-- Custom Style-->
        <link href="{{ asset('asset_login/css/app-style.css') }}" rel="stylesheet" />

    </head>

<body>

    <!-- start loader -->
    <div id="pageloader-overlay" class="visible incoming">
        <div class="loader-wrapper-outer">
            <div class="loader-wrapper-inner">
                <div class="loader"></div>
            </div>
        </div>
    </div>
    <!-- end loader -->

    <!-- Start wrapper-->
    <div id="wrapper">

        <div class="loader-wrapper">
            <div class="lds-ring">
                <div></div>
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>
        <div class="card card-authentication1 mx-auto my-5">
            <div class="card-body">
                <div class="card-content p-2">
                    <div class="text-center">
                        <img src="asset_login/images/logo-icon.png" alt="logo icon">
                    </div>
                    <div class="card-title text-uppercase text-center py-3">LOGIN</div>
                    <form method="POST" action="{{ route('login') }}">
                    {{ csrf_field() }}
                            <div class="form-group">
                                <label for="exampleInputUsername" class="sr-only">Email</label>
                                <div class="position-relative has-icon-right">
                                    <input type="email" name="email" id="email" class="form-control input-shadow"
                                        placeholder="Masukan Email" required>
                                    <div class="form-control-position">
                                        <i class="fa fa-user"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword" class="sr-only">Password</label>
                                <div class="position-relative has-icon-right">
                                    <input type="password" name="password" id="password" class="form-control input-shadow"
                                        placeholder="Masukan Password" required>
                                    <div class="form-control-position">
                                        <i class="fa fa-lock" id="iconView" onclick="viewPassword()"></i>
                                    </div>
                                </div>
                            </div>
                        <div class="form-row">
                            {{-- <div class="form-group col-6">
                            </div>
                            <div class="form-group col-6 text-right">
                                <a href="authentication-reset-password.html">Reset Password</a>
                            </div> --}}
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">LOGIN</button>

                    </form>
                </div>
            </div>
            <div class="card-footer text-center py-3">
                <p class="text-dark mb-0">Belum Punya Akun? <a href="{{ route('register') }}"> Registrasi</a>
                </p>
            </div>
        </div>

        <!--Start Back To Top Button-->
        <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
        <!--End Back To Top Button-->



    </div>
    <!--wrapper-->

    <!-- Bootstrap core JavaScript-->
    <script src="{{ asset('asset_login/js/jquery.min.js') }}"></script>
    <script src="{{ asset('asset_login/js/popper.min.js') }}"></script>
    <script src="{{ asset('asset_login/js/bootstrap.min.js') }}"></script>

    <!-- sidebar-menu js -->
    <script src="{{ asset('asset_login/js/sidebar-menu.js') }}"></script>

    <!-- Custom scripts -->
    <script src="{{ asset('asset_login/js/app-script.js') }}"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        function viewPassword(){
            var icon = $('#iconView').attr('class');
            if(icon == 'fa fa-lock'){
                $("#iconView").removeClass("fa fa-lock");
                $("#iconView").addClass("fa fa-unlock");
                $('#password').attr('type','text');
            }else{
                $("#iconView").removeClass("fa fa-unlock");
                $("#iconView").addClass("fa fa-lock");
                $('#password').attr('type','password');
            }
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
</body>
</html>