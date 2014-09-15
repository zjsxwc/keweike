<!DOCTYPE html>


<html>

     <head>
			<title>注册柯桥威客网</title>
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<meta http-equiv="Content-Type" contect="text/html";charset=utf-8">
			<link href = "static/css/bootstrap.min.css" rel = "stylesheet">
			<!--link href = "static/css/styles.css" rel = "stylesheet"-->
                         
     </head>

     <body>
			
 
			<div class="container">

				<form id="form_reg" action="reg" method="post" class="form-signin" role="form" >
				 <h2 class="form-signin-heading">注册柯威网</h2>
					<ul>
						<li>
							<label for="phone">移动手机号：</label>
							<input type="text" name="phone" class="form-control" placeholder="您的手机号" autofocus/>
							<span class="err">务必确认为移动手机号</span>
						</li>
						<li>
							<label for="nicname">昵称：</label>
							<input type="text" name="nicname" class="form-control" placeholder="输入您的昵称"  />
							<span class="err">务必确认为移动手机号</span>
						</li>
						
						<li>
							<label for="password">密码   ：</label>
							<input type="password" name="password" class="form-control" placeholder="密码"  />
							<span class="err">至少6位数字字母组合</span>
						</li>						
						<li>
							<label for="password2">再次确认密码：</label>
							<input type="password" name="password2" class="form-control" placeholder="" />
							<span class="err"></span>
						</li>						
						<li>
							<label for="VC">输入短信验证码：</label>
							<input type="text" name="VC" class="form-control" placeholder="短信验证码" />						
							<input type='button' onclick=' get_vc_code(); return false;' value='获取短信验证码' />
							<span class="err"></span>
						</li>
						<li>
						 <input type="submit" value="注册" />
						</li>
					</ul>
				</form>

			</div> <!-- /container -->
 
 
 
			<style>
			form .err {
				display: inline-block;
				line-height: 22px;
				padding-left: 8px;
				color: #C00;
			}
			</style>
 
			
			<script src = "static/js/jquery.min.js"></script>
			<!--script src = "http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script-->
			<script src = "static/js/bootstrap.js"></script>
			<script>
				function get_vc_code(){
					//alert("sd");
					 $.ajax({
						type: 'POST',
						url: "vc_gen",
						data: $("#form_reg").serialize(),//这里也可以直接由js构造字符串比如data:"name=xx&starte=ddd&gt=uu",
						dataType:"json",
						success: function(data) {

						if (data.done==="true"){
							alert("已经发送验证码请注意查收手机哦");
						}
						else alert("请等待60秒后再点击请求发送验证码");
							
							//alert(data.55);
						//	$.each(data, function(i, item){ //在这里就报错：length为空或不是对象
						//		alert(i);
						//		alert(item);
              
						//	});
						}
					});
				}
			</script>
     </body>




</html>


