<%-- 
    Document   : index
    Created on : 2020-6-25, 9:20:11
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>流浪猫狗救助平台</title>
    <link rel="stylesheet" type="text/css" href="css/css.css"  /> 
    </head>
    <body>
   
        <div class="wrap clearfix">
            <!-- left nav start -->
            <div class="index_left fl">
                <div class="logo"><img src="images/logo.jpg"  /></div>
                <div class="nav">
                    <ul>
                        <li id="nav_01"><a href="index.aspx" >网站首页</a></li>
                        <li><a href="index.aspx#aboutus" >关于我们</a></li>
                        <li><a href="index.aspx#picturewall" >照片墙</a></li>
                        <li><a href="index.aspx#ourwork" >我们的工作</a></li>
                        <li><a href="show.aspx" >动物帖子</a></li>
                        <li><a href="contact.aspx" >联系我们</a></li>
                    </ul>
                </div>
            </div>
            <!-- left nav end-->
            <div class="input_right_top" >
    	        <div align="right">
    		        <button class="button" ><a href="register.aspx" >注册</a></button>
    		        <button class="button"><a href="login.aspx" >登录</a></button>
	            </div>
    	     </div>
             <div class="index_right fr">
                <div class="banner"><img src="images/a.jpg" /></div>
                <div class="main">
                    <!--关于我们 start-->
                    <div class="index_about" id="aboutus">
                      <div class="title" >关于我们 / About Us</div>
                      <div class="index_about_con">
       	                 现今随着宠物猫狗的普及以及数量的增多，随之而来的流浪猫狗问题以及领养送养问题也变得日趋严重。许多宠物因为各种原因在短暂的被宠爱后被永久的丢弃，或者因为主人不知晓或者不完全了解怎样照顾的情况下逃离或者死亡，成为了流浪猫狗。它们无家可归，终日过着犹如逃亡般的生活。本平台的目的在于流浪猫狗救助、领养、文明宣传，在遵守宪法、法律、法规和国家政策的前提下，尊重生命、保护动物、维护动物的生存权利，保障它们的健康与福利，减少杀戮、虐待、残害、遗弃动物的行为，并通过教育引导正确科学对待伴侣动物的观念，达到人与动物和谐共处的愿景。
                      </div>
                    </div>
                    <!--照片墙 start-->
                    <div class="index_show">
                      <div class="title" id="picturewall">照片墙 / Picture Wall</div>
                      <div class="projects-holder clearfix">
                          <div class="col-md-4 col-sm-6 fl">
                              <div class="project-item">
                                  <img src="images/cat1.jpg"  height="218">
                                  <div class="project-hover">
                                      <div class="inside">
                                          <h5><a href="#">白点儿</a></h5>
                                          <p>白点儿是一只住在故宫的橘猫，性格温和。</p>
                                      </div>
                                  </div>
                              </div>
                          </div>
          
                          <div class="col-md-4 col-sm-6 fl">
                              <div class="project-item">
                                  <img src="images/cat2.jpg"  height="218">
                                  <div class="project-hover">
                                      <div class="inside">
                                          <h5><a href="#">鳌拜</a></h5>
                                          <p>鳌拜也是一只住在故宫的猫，今年已经三岁了。</p>
                                      </div>
                                  </div>
                              </div>
                          </div>
          
                          <div class="col-md-4 col-sm-6 fl">
                              <div class="project-item">
                                  <img src="images/cat3.jpg"  height="218">
                                  <div class="project-hover">
                                      <div class="inside">
                                          <h5><a href="#">鳌拜</a></h5>
                                          <p>鳌拜也是一只住在故宫的猫，今年已经三岁了。</p>
                                      </div>
                                  </div>
                              </div>
                          </div>
          
          
                          <div class="col-md-4 col-sm-6 fl">
                              <div class="project-item">
                                  <img src="images/cat4.jpg"  height="218">
                                  <div class="project-hover">
                                      <div class="inside">
                                          <h5><a href="#">鳌拜</a></h5>
                                          <p>鳌拜也是一只住在故宫的猫，今年已经三岁了。</p>
                                      </div>
                                  </div>
                              </div>
                          </div>
          
          
                          <div class="col-md-4 col-sm-6 fl">
                              <div class="project-item">
                                  <img src="images/dog1.jpg"  height="218">
                                  <div class="project-hover">
                                      <div class="inside">
                                          <h5><a href="#">鳌拜</a></h5>
                                          <p>鳌拜也是一只住在故宫的猫，今年已经三岁了。</p>
                                      </div>
                                  </div>
                              </div>
                          </div>
          
          
                          <div class="col-md-4 col-sm-6 fl">
                              <div class="project-item">
                                  <img src="images/dog2.jpg"  height="218">
                                  <div class="project-hover">
                                      <div class="inside">
                                          <h5><a href="#">鳌拜</a></h5>
                                          <p>鳌拜也是一只住在故宫的猫，今年已经三岁了。</p>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
      
                    </div>
                    <!--照片墙 end-->
     
                    <!--我们的工作  start-->
                    <div class="index_news">
                      <div class="title" id="ourwork">我们的工作  / Our Work</div>
                      <ul>
                        <li class="clearfix mar_b">
                          <div class="index_news_img fl"><img src="images/ourwork.png"  height="270"/></div>
                          <div class="index_news_list fr">
                            <h4>收养流浪猫狗</h4>
                            <div class="news_desc">我们的工作人员会定时去各个地方查看流浪猫狗的存在，只要我们发现了都会带回到我们的协会中心收养。</div>
                            <ul>
                              <li><a href="about.aspx">猫咪狗狗有些小病小痛第一时间该怎么办</a></li>
                              <li><a href="">关于狗狗的常见病</a></li>
                              <li><a href="">如何帮助猫狗养成良好的生活习惯</a></li>
                            </ul>
                          </div>
                        </li> 
        
        <li class="clearfix mar_b">
          <div class="index_news_list fl">
            <h4>健康的保障</h4>
            <div class="news_desc">收养进来的流浪猫狗，我们会先帮助它们基本的驱虫，然后为它们检查是否有疾病，并保障它们良好的身体健康。</div>
            <ul>
             <li><a href="about.html">猫咪狗狗有些小病小痛第一时间该怎么办</a></li>
              <li><a href="">关于狗狗的常见病</a></li>
              <li><a href="">如何帮助猫狗养成良好的生活习惯</a></li>
            </ul>
          </div>
          
          <div class="index_news_img fr"><img src="images/ourwork2.png"  height="270"/></div>
        </li>
        
        <li class="clearfix mar_b">
          <div class="index_news_img fl"><img src="images/ourwork3.png"  height="270"/></div>
          <div class="index_news_list fr">
            <h4>照顾和帮助找新家</h4>
            <div class="news_desc">我们会给健康的流浪猫狗，找到适合它们的新家庭，领养人我们会经过严格的筛选，达到我们的条件才能成功的领养。</div>
            <ul>
             <li><a href="about.aspx">猫咪狗狗有些小病小痛第一时间该怎么办</a></li>
              <li><a href="">关于狗狗的常见病</a></li>
              <li><a href="">如何帮助猫狗养成良好的生活习惯</a></li>
            </ul>
          </div>
        </li>
      </ul>
    </div>
    <!--我们的工作 end-->
    
    <!--footer start-->
   
    <div class="footer">
      <div class="footer01">流浪猫狗救助平台</div>
      <div class="footerwby">
      </div>
    </div>
    <!--footer end-->
  </div>  

</div>  
  
</div>
   
    </body>
</html>
