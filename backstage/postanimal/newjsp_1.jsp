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
    
   <body>
      
  <h2>将图片或者视频导入到项目文件夹目录的images文件下</h2>
 
       <form name="upform" action="../../NewServlet" method="POST" enctype="multipart/form-data"> 
            <input type ="file" name="file1" id="file1"/><br/>
            <img src="" id="img0" style="width: 10rem;height: 10rem;"/><br>
            <input type="submit" value="提交" />
            <input type="reset"  />
            <input type="button" name="Submit2" value="返回上一页" class="button" onclick="window.history.go(-1);"/>
        </form>  
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
       
  
  </body>
</html>
