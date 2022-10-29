<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sifremiunuttum.aspx.cs" Inherits="furkadir.opt.sifremiunuttum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="icon" type="image/png" href="/images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="/vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="/vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="/vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="/css/util.css">
	<link rel="stylesheet" type="text/css" href="/css/main.css">
	<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body style="background-image="/images/logo.jpg"">
        

            <div class="limiter">
		<div class="container-login100">
			
				<form class="login100-form validate-form" runat="server">
					<span class="login100-form-title p-b-43">
						Şifreni Değiştir
					</span>

					
					<div class="wrap-input100 validate-input" data-validate = "Kullanıcı Adı">
						<asp:TextBox ID="kullaniciadi" CssClass="input100" runat="server"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="label-input100">Kullanıcı Adı</span>
					</div>
					

					<div class="wrap-input100 validate-input" data-validate="Mevcut Şifre">
						<asp:TextBox ID="eskisifre" CssClass="input100" runat="server" TextMode="Password"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="label-input100">Mevcut Şifre</span>
					</div>

					
					<div class="wrap-input100 validate-input" data-validate="Şifre">
						<asp:TextBox ID="sifre" CssClass="input100" runat="server" TextMode="Password"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="label-input100">Şifre</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Şifre Doğrula">
						<asp:TextBox ID="sifre2" CssClass="input100" runat="server" TextMode="Password"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="label-input100">Şifre Doğrula</span>
					</div>

					<div class="flex-sb-m w-full p-t-3 p-b-32">
						<div>
								<asp:Label ID="Label1" ForeColor="Red" runat="server" Text=""></asp:Label>
						</div>

					</div>
			

					<div class="container-login100-form-btn">
						<asp:Button ID="Button1" runat="server" Text="Değiştir" CssClass="login100-form-btn" OnClick="Button1_Click" />
					</div>
					<br />
					<div style="text-align:center">
					<asp:Button ID="Button2" runat="server" Text="Anasayfaya Dön" CssClass="btn btn-outline-primary" OnClick="Button2_Click" />
					</div>


				</form>

				
				</div>
			
		</div>
	</div>


		<script src="/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="/vendor/animsition/js/animsition.min.js"></script>
	<script src="/vendor/bootstrap/js/popper.js"></script>
	<script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="/vendor/select2/select2.min.js"></script>
	<script src="/vendor/daterangepicker/moment.min.js"></script>
	<script src="/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="/vendor/countdowntime/countdowntime.js"></script>
	<script src="/js/main.js"></script>
	<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

   
</body>
</html>
