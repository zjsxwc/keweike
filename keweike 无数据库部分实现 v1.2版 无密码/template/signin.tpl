<!DOCTYPE html>


<html>

     <head>
			<title>柯桥威客网</title>
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<meta http-equiv="Content-Type" contect="text/html";charset=utf-8">
			<link href = "static/css/bootstrap.min.css" rel = "stylesheet">
			<link href = "static/css/styles.css" rel = "stylesheet">
			<link href="static/css/signin.css" rel="stylesheet">
                         
     </head>

     <body>
 
 
			<div class="container">

				<form action="signin" method="post" class="form-signin" role="form">
					<h2 class="form-signin-heading">登录柯威网</h2>
					<div><input name="phone_no" id="phone_no" tips="您输入的手机号码不正确！" type="text" class="form-control" placeholder="您的手机号" required autofocus></div>
					<div><input name="password" id="pwd_input" type="password" class="form-control" placeholder="密码" required></div>
					<label class="checkbox">
						<input name="remember" type="checkbox" value="remember-me"> Remember me
					</label>
					<button class="btn btn-lg btn-primary btn-block" type="submit" onclick="isPhoneno();">登录</button>
					<!--button class="btn btn-lg btn-primary btn-block"  type="submit">登录</button-->
				</form>
<a id="example" href="#" rel="tooltip" title="first tooltip">hover over me</a>
			</div> <!-- /container -->
 
 
 
	 <script src = "static/js/jquery.min.js"></script>
     <script src = "static/js/bootstrap.min.js"></script>
	

			<script>
			var showtips=0;
			function is_phone_no()
			{
				if (showtips==1) return false;
				var str=$(".form-control").val();
				var reg=/[^0-9]/g
				var len=str.length
				if (len!=11){
					$(this).parent().append('<span class="tips">' + $(this).attr('tips') + '</span>');
					showtips=1;
					
					//alert("您输入的手机号码位数不正确！");
					form1.phone.focus();
					return false;
				}
				else if(str.substring(0,2)!="13"){
					$(this).parent().append('<span class="tips">' + $(this).attr('tips') + '</span>');
					showtips=1;
					form1.phone.focus();
					return false;
				}
				if (reg.test(str)){
					$(this).parent().append('<span class="tips">' + $(this).attr('tips') + '</span>');
					showtips=1;
					form1.phone.select();
					return false;
				}
				else{
					return true;
				}
			}
			
			function hide(){
			
				if (showtips==1) {
					$(this).parent().find('.tips').detach();
					showtips=0;
				}
				return true;
			
			}
			$("#phone_no").blur(is_phone_no);
			$("#phone_no").focus(hide);
			
			
			$('#example').tooltip('show');
			</script>
			
     </body>




</html>


