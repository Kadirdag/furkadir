<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="furkadir.opt.login" %>

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
</head>
<body>
    
	
    <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form" runat="server">
					<span class="login100-form-title p-b-43">
						Müşteri Mail Sistemi
					</span>

					
					<div class="wrap-input100 validate-input" data-validate = "Kullanıcı Adı">
						<asp:TextBox ID="kullaniciadi" CssClass="input100" runat="server"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="label-input100">Kullanıcı Adı</span>
					</div>
					
					
					<div class="wrap-input100 validate-input" data-validate="Şifre">
						<asp:TextBox ID="sifre" CssClass="input100" runat="server" TextMode="Password"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="label-input100">Şifre</span>
					</div>

					<div class="flex-sb-m w-full p-t-3 p-b-32">
						<div class="contact100-form-checkbox">
							<asp:CheckBox ID="CheckBox1" runat="server"  Text="Beni Hatırla" />
						</div>

						<div>
							<a href="#" class="txt1">
								<asp:Label ID="Label1" ForeColor="Red" runat="server" Text=""></asp:Label>
							</a>
						</div>

						<div>
							<a href="sifremiunuttum.aspx" class="txt1">
								Şifremi Unuttum
							</a>
						</div>
					</div>
			

					<div class="container-login100-form-btn">
						<asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass="login100-form-btn" OnClick="Button1_Click" />
					</div>
					
						


				</form>

				<div class="login100-more" style="background-image: url('/images/logos.png');">
				</div>
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



	

</body>
</html>
