<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    
    $("#subb1").click(function(){

        
        var name=$("#name").val();
        var mail=$("#email").val();
        var msg=$("#message").val();
        
        $.post("feedback.jsp",{name:name,mail:mail,msg:msg},function(data){
            
            alert(data);
        });
        
    });
    
});
</script>


<html>
    <head>
        <title>Contact US</title>
           <link type="text/css" rel="stylesheet" href="css.css" media="screen" />
           <style type="text/css">
 #contact-section .form-control {
	display: block;
	width: 100%;
	padding: 6px 12px;
	font-size: 14px;
	line-height: 1.42857143;
	color: #555;
	background-color: #fff;
	background-image: none;
	border: 1px solid #ccc;
	border-radius: 2px;
	-webkit-box-shadow: none;
	box-shadow: none;
	-webkit-transition: none;
	-o-transition: none;
	transition: none;
}
#contact-section .form-control:focus {
	border-color: inherit;
	outline: 0;
	-webkit-box-shadow: transparent;
	box-shadow: transparent;
}
#contact-section .btn {
	background: transparent;
	border: 2px solid darkgreen;
	border-radius: 4px;
	padding: 10px 20px;
	margin-top: 20px;
	color: #000000;
        transition:0.4s;
}
#contact-section .btn:hover, #contact-section .btn:focus {
	background: darkgreen;
	border: 2px solid #0dbf9b;
	color: #fff;
}
#contact-section .text-danger {
	color: #cc3300;
	text-align: left;
}
.btn:active, .btn.active {
	background-image: none;
	outline: 0;
	-webkit-box-shadow: none;
	box-shadow: none;
}
a:focus, .btn:focus, .btn:active:focus, .btn.active:focus, .btn.focus, .btn:active.focus, .btn.active.focus {
	outline: none;
	outline-offset: none;
}

h2
{
color:darkgreen;    
}
           </style>
    </head>
    <body>
        <%@include file="header.jsp"%>
        
    <center>
        <div class="c_content" style="width:60%; margin-top:30px;">
        <div class="contact_info" style="width:50%; float:left;">
            <h2>Contact Info</h2>
            <table style="font-size:18px;">
                <tr><td><pre>Sunny Bhawsar &nbsp;</pre> </td><td><pre>+91 8602135325</pre></td></tr>
            <tr><td><pre>Suraj Verma</pre></td> <td><pre>+91 9165990030</pre></td></tr>
            </table>
        </div>
        
        <div class="email_info" style="width:50%; float:left;">   
        <h2>Email</h2>   
        <pre style="font-size:18px;">help@blooddonors.com</pre>
        </div>
        </div>
        
          <div id="contact-section" class="text-center" style="clear:both; padding-top:50px; width:30%; ">
        <h2>Leave us a Feedback</h2>
	  
  
      <form id="frm" name="frm" method="post">  
      <div class="row">
          <div class="col-md-6">
            <div class="form-group">
              <input type="text" id="name" name="tname" class="form-control" placeholder="Name" required="required">
              <p class="help-block text-danger"></p>
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <input type="email" id="email" name="mail" class="form-control" placeholder="Email" required="required">
              <p class="help-block text-danger"></p>
            </div>
          </div>
        </div>
        <div class="form-group">
          <textarea name="message" id="message" name="msg" class="form-control" rows="4" placeholder="Message" required="required"></textarea>
          <p class="help-block text-danger"></p>
        </div>
        <div id="success"></div>
        <button type="button" id="subb1" class="btn btn-default">Send Feedback</button>
      </form>
          </div>
    </center>
    
        <%@include file="footer.jsp"%>
    </body>
</html>
