<!DOCTYPE html>


<html>
			
     <head>
          <title>柯桥威客网</title>
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <meta http-equiv="Content-Type" contect="text/html";charset=utf-8">
                    <link href = "static/css/bootstrap.min.css" rel = "stylesheet">
                    <link href = "static/css/styles.css" rel = "stylesheet">
                         
     </head>

     <body>
	 <script src = "static/js/jquery.min.js"></script>
     <script src = "static/js/bootstrap.min.js"></script>
     <!--navbar-inverse 与navbar-default-->
     <!--navbar-static-top 与navbar-fixed-top-->
          <div class="navbar navbar-inverse navbar-static-top">
               <div class="container">
                    <a href="#" class="navbar-brand">柯威客</a>
                    
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navHeaderCollapse">
                         <span class="icon-bar"> </span>
                         <span class="icon-bar"> </span>
                         <span class="icon-bar"> </span>
                    </button>
                    
                    <div class ="collapse navbar-collapse navHeaderCollapse">
                         <ul class="nav navbar-nav navbar-right">
                              <li class = "active"><a href = "#">首页</a></li>
                                                <li><a href = "#">我的信息</a></li>
                                                <li class = "dropdown">
                                                       
                                                        <a href = "#" class = "dropdown-toggle" data-toggle = "dropdown">功能 <b class = "caret"></b></a>
                                                        <ul class = "dropdown-menu">
                                                                <li><a href = "#">我发布的任务</a></li>
                                                                <li><a href = "#">我接取的任务</a></li>
                                                                <li><a href = "#">收发消息</a></li>
                                                                <li><a href = "#">求助于我的任务</a></li>
                                                                
                                                        </ul>
                                               
                                                </li>
                                                <li><a href = "#">About</a></li>
                                                <li><a href = "#id_contact" data-toggle="modal">联系站长</a></li>
                         
                         
                         </ul>
                    </div>
               </div>
               
               
          </div>
     
     
     
	 
	 

 <div class = "container">
           
            <div class = "row" id="iterms">
               
                
               
         
               
            </div>
           
        </div>


	 
	 
	 
	 
	 
	 
	 
     
	
	
		<div class="navbar navbar-default navbar-fixed-bottom ">
		
			<p class="navbar-right navbar-text">•   本站由<b>王超</b>创建，仅用于学习交流之用！  © 2014 王超   •</p>
			<p href ="#" class="navbar-btn btn-danger btn pull-left"><a href ="./signin" >登录 </a> </p>
			<a href ="./reg" class="navbar-btn  btn pull-left">注册 </a>
			<p href ="#" class="navbar-btn btn-default btn pull-right" onclick="insertHTML()">显示更多 </p>
		</div>
	
	
	
	
	
	
	
	
                <div class = "modal fade" id = "id_contact" role = "dialog">
                    <div class = "modal-dialog">
                        <div class = "modal-content">
                            <div class = "modal-header">
                                <h4>联系站长</h4>
                            </div>
                            <div class = "modal-body">
                                <p>亲，请发送邮件到 zjsxwc@qq.com。</p>
                            </div>
                            <div class = "modal-footer">
                            
                                <a class = "btn btn-primary" data-dismiss = "modal">Close</a>
                            </div>
                        </div>
                    </div>
                </div>
                
	
	
	
	
	
	
	
	
	
		<script>  
    function insertHTML(){  
    var str="aaaaa"+"<script defer> alert('终于能运行JS了，靠！'); </script" + ">";  
    //document.getElementById("test").insertAdjacentHTML("afterBegin",   str);  
	
	
	var newdiv="<div class = \"col-md-3\"><h3><a href = \"#\">$500 Gaming PC Build</a></h3><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. </p><a href = \"#\" class = \"btn btn-default \" >Read More</a></div>";
    document.getElementById("iterms").insertAdjacentHTML("afterend",   newdiv);  
    }  
    </script>  
	

			
     </body>




</html>


