<%-- 
    Document   : newjsp
    Created on : 2020-6-25, 16:45:05
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>  

    </head>
    <script type="text/javascript">
//视频
			function fileSelected(file, type) {
	            var name = file.name;
	            console.log(name);
	
	            var path;
	            
	            if(type == "video") {
	                path = URL.createObjectURL(file);
	                // Todo:视频插件创建错误
	                document.getElementById("video1").src = path;
	
	                var myVideo = document.getElementById("video1");
	                //音量为20%
	                myVideo.volume = 0.2;
	            }
	        }
	        function choiceMusicAndVideo(e) {
	            fileSelected(e.files[0], "video");
	        }


</script>
   <body>
      
  <h2>将图片或者视频导入到项目文件夹目录的images文件下</h2>
       <form name="upform" action="../../NewServlet" method="POST" enctype="multipart/form-data">      
            <input type ="file" name="file1" id="file1"/><br/> 
            <img src="" id="img0" style="width: 10rem;height: 10rem;"/><br/>
            <input type="file" width="100px" onchange="choiceMusicAndVideo(this)" value="选择音视频" /><br/>
            <video width="200" height="170" id="video1" controls="controls" src=""> </video><br/>
            <input type="submit" value="提交" />
            <input type="reset"  />
            <input type="button" name="Submit2" value="返回上一页" class="button" onclick="window.history.go(-1);"/>
        <script>   
        $("#file1").change(function(){  
                         var objUrl = getObjectURL(this.files[0]) ;//获取文件信息  
                         console.log("objUrl = "+objUrl);  
                          if (objUrl) {  
                          $("#img0").attr("src", objUrl);  
                         }   
        }) ;  
        function getObjectURL(file) {  
                         var url = null;   
                         if (window.createObjectURL!=undefined) {  
                          url = window.createObjectURL(file) ;  
                         } else if (window.URL!=undefined) { // mozilla(firefox)  
                          url = window.URL.createObjectURL(file) ;  
                         } else if (window.webkitURL!=undefined) { // webkit or chrome  
                          url = window.webkitURL.createObjectURL(file) ;  
                         }  
                         return url ;  
                        }  
        </script> 

         </form>  
  </body>
</html>
