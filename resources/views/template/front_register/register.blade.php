<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from codervent.com/bulona/demo/authentication-signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 04 Jun 2020 14:20:12 GMT -->

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Bulona - Bootstrap Admin Dashboard Template</title>
    <!--favicon-->
    <link rel="icon" href="asset_login/images/favicon.ico" type="image/x-icon">
    <!-- Bootstrap core CSS-->
    <link href="asset_login/css/bootstrap.min.css" rel="stylesheet" />
    <!-- animate CSS-->
    <link href="asset_login/css/animate.css" rel="stylesheet" type="text/css" />
    <!-- Icons CSS-->
    <link href="asset_login/css/icons.css" rel="stylesheet" type="text/css" />
    <!-- Custom Style-->
    <link href="asset_login/css/app-style.css" rel="stylesheet" />
    <style>
        #alertPassword{
            color:red;
            font-size: 12px;
        }

        .invalid{
            display: block;
        }
        .valid{
            display: none;
        }
    </style>
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

        <div class="card card-authentication1 mx-auto my-4">
            <div class="card-body">
                <div class="card-content p-2">
                    <div class="text-center">
                        <img src="asset_login/images/logo-icon.png" alt="logo icon">
                    </div>
                    <div class="card-title text-uppercase text-center py-3">REGISTER</div>
                    <form method="POST" action="{{ route('register.simpan') }}">
                    {{ csrf_field() }}
                        <div class="form-group">
                            <label for="nama" class="sr-only">Nama</label>
                            <div class="position-relative has-icon-right">
                                <input type="text" id="nama" name="nama" class="form-control input-shadow" onkeypress="return hanyaHuruf(event)"
                                    placeholder="Masukan Nama" required>
                                <div class="form-control-position">
                                    <i class="fa fa-user"></i>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="sr-only">Email</label>
                            <div class="position-relative has-icon-right">
                                <input type="email" id="email" name="email" class="form-control input-shadow"
                                    placeholder="Masukan Email" required>
                                <div class="form-control-position">
                                    <i class="fa fa-envelope-open"></i>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="telpon" class="sr-only">No. Telp</label>
                            <div class="position-relative has-icon-right">
                                <input type="tel" id="telpon" name="telpon" class="form-control input-shadow" onkeypress="return hanyaAngka(event)"
                                    placeholder="Masukan No. Telp" required>
                                <div class="form-control-position">
                                    <i class="fa fa-phone"></i>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="alamat" class="sr-only">Alamat</label>
                            <div class="position-relative has-icon-right">
                                <input type="text" id="alamat" name="alamat" class="form-control input-shadow"
                                    placeholder="Masukan Alamat" required>
                                <div class="form-control-position">
                                    <i class="fa fa-address-book"></i>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword" class="sr-only">Password</label>
                            <div class="position-relative has-icon-right">
                                <input type="password" id="password" name="password" class="form-control input-shadow"
                                    placeholder="Masukan Password" required>
                                <div class="form-control-position">
                                    <i class="fa fa-lock" id="iconView" onclick="viewPassword()"></i>
                                </div>
                            </div>
                            <span id="alertPassword" style="display:none;">
                                Password Terdiri dari : 
                                <span id="letter" class="invalid">*Huruf Kecil</span>
                                <span id="capital" class="invalid">*Huruf Besar</span>
                                <span id="number" class="invalid">*Mengandung Angka</span>
                                <span id="length" class="invalid">*Minimal 8 Karakter</span>
                            </span>
                        </div>

                        <button type="submit" id="btnSimpan" class="btn btn-primary btn-block waves-effect waves-light">
                            REGISTER
                        </button>
                    </form>
                </div>
            </div>
            <div class="card-footer text-center py-3">
                <p class="text-dark mb-0">Sudah Punya Akun? <a href="{{ url('login') }}"> Login</a></p>
            </div>
        </div>

        <!--Start Back To Top Button-->
        <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
        <!--End Back To Top Button-->



    </div>
    <!--wrapper-->

    <!-- Bootstrap core JavaScript-->
    <script src="asset_login/js/jquery.min.js"></script>
    <script src="asset_login/js/popper.min.js"></script>
    <script src="asset_login/js/bootstrap.min.js"></script>

    <!-- sidebar-menu js -->
    <script src="asset_login/js/sidebar-menu.js"></script>

    <!-- Custom scripts -->
    <script src="asset_login/js/app-script.js"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
         $(document).ready(function(){
            $('#email').change(function(){
                var email = $('#email').val();
                $.get("{{URL::to('cek-email')}}",{email:email},function(res){
                    console.log(res);
                    if(res == 'ADA'){
                        $('#btnSimpan').attr('disabled',true);
                        alertSubmit("Email Tersebut Sudah Terdaftar !");
                        $('#email').val('');
                    }else{
                        $('#btnSimpan').attr('disabled',false);
                        $('#btnSimpan').removeAttr('onclick');
                    }
                })
            });
        })

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

        function hanyaHuruf(event){
            var charCode = (event.which) ? event.which : event.keyCode
            if ((charCode < 65 || charCode > 90)&&(charCode < 97 || charCode > 122)&&charCode>32)
                return false;
            return true;
        }

        function hanyaAngka(event) {
            var angka = (event.which) ? event.which : event.keyCode
            if (angka != 46 && angka > 31 && (angka < 48 || angka > 57))
                return false;
            return true;
        }

        function alertSubmit(message)
        {
            Swal.fire({
                icon: 'info',
                text: message,
                showConfirmButton: false,
                showConfirmButton: true
            });
        }
    </script>
    <script>
        var myInput = document.getElementById("password");
        var letter = document.getElementById("letter");
        var capital = document.getElementById("capital");
        var number = document.getElementById("number");
        var length = document.getElementById("length");

        myInput.onfocus = function() {
            document.getElementById("alertPassword").style.display = "block";
        }
        myInput.onblur = function() {
            document.getElementById("alertPassword").style.display = "none";
        }

        myInput.onkeyup = function() {
          // Validate lowercase letters
          var lowerCaseLetters = /[a-z]/g;
          if(myInput.value.match(lowerCaseLetters)) {  
            letter.classList.remove("invalid");
            letter.classList.add("valid");
          } else {
            letter.classList.remove("valid");
            letter.classList.add("invalid");
          }
          
          // Validate capital letters
          var upperCaseLetters = /[A-Z]/g;
          if(myInput.value.match(upperCaseLetters)) {  
            capital.classList.remove("invalid");
            capital.classList.add("valid");
          } else {
            capital.classList.remove("valid");
            capital.classList.add("invalid");
          }
          // Validate numbers
          var numbers = /[0-9]/g;
          if(myInput.value.match(numbers)) {  
            number.classList.remove("invalid");
            number.classList.add("valid");
          } else {
            number.classList.remove("valid");
            number.classList.add("invalid");
          }
          
          // Validate length
          if(myInput.value.length >= 8) {
            length.classList.remove("invalid");
            length.classList.add("valid");
          } else {
            length.classList.remove("valid");
            length.classList.add("invalid");
          }

          var valid = $('.valid').length;
          if(valid == 4){
            document.getElementById("alertPassword").style.display = "none";
            $('#btnSimpan').attr('disabled',false);
            $('#btnSimpan').removeAttr('onclick');
          }else{
            document.getElementById("alertPassword").style.display = "block";
            $('#btnSimpan').attr('disabled',true);
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

<!-- Mirrored from codervent.com/bulona/demo/authentication-signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 04 Jun 2020 14:20:12 GMT -->

</html>
