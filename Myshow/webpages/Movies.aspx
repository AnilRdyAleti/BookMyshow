<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Movies.aspx.cs" Inherits="Myshow.Movies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
        
#a1{    
     background-color: rgba(0,0,0,0.75);
    margin:0px;position:fixed;top:0px;height:30px;width:100%;
  }
.a1{
    font-size:12px;color:white;text-decoration:none;padding:3px;
}
        .a1:hover {
            color:darkolivegreen;
        }
        #a2{ background-color:rgba(0,0,0,0.75);height:70px;position:fixed;opacity:0.5;
             float:left;width:100%;margin-top:21px;margin-left:0px;
        }
        .a2{color:white;text-decoration:none;float:left;padding-top:20px;

        }
        #a3{
             width:750px;text-align:center;height:350px;margin-left:200px;
        }
        .a3{
            width:240px;height:150px;margin-left:10px;margin-top:15px;
        }
        .a3:hover{
            opacity:.5;
        }  
  .overlay {
  position:absolute;
  top: 0px;
  bottom: 0px;
  left: 0px;
  right: 0;
  background: rgba(0, 0, 0, 0.7);
  transition: opacity 500ms;
  visibility: hidden;
  opacity: 0;
}
.overlay:target {
  visibility: visible;
  opacity: 1;
}
.popup {
  margin: 70px auto;
  padding: 20px;
  background: #fff;
  border-radius: 5px;
  width: 50%;height :50%;
  position: relative;
  transition: all 5s ease-in-out;
}

.popup h2 {
  margin-top: 0;
  color: #333;
  font-family: Tahoma, Arial, sans-serif;
}
.popup .close {
  position: absolute;
  top: 20px;
  right: 20px;
  transition: all 200ms;
  font-size: 28px;
  font-weight: bold;
  text-decoration: none;
  color: #333;
}
.popup .close:hover {
  color: red;background-color:black;
}
.popup .content {
  max-height: 50%;
  overflow: auto;
}
         </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="a1"><a href="#" class="a1">
        <img src="../Images/home.png" width="25" height="25" /></a>
        <a href="#" class="a1">EXPERIENCES</a>
        <a href="#" class="a1">MOVIES</a>
        <a href="#" class="a1">EVENTS</a>
        <a href="#" class="a1">PLAYS</a>
        <a href="#" class="a1">SPORTS</a>
        <a href="#" class="a1">TRAILERS&VIDEOS</a>

        <a href="#" class="a1"  style="margin-left:100px;font-size:9px;
        background-color:orangered;border-radius:8px;">WE'RE HIRING</a>
        <a href="#" class="a1"> OFFERS</a>
        <a href="#" class="a1">GIFTCARDS</a>
        <a href="#" class="a1">SUPPORT</a>
        <a class="a1" href="#popup1" >
            <asp:LinkButton ID="LinkButton1" runat="server">SIGN IN</asp:LinkButton></a></div>
        <div id="popup1" class="overlay">
        <div class="popup">
           
            <a id="aa" class="close" href="#" style="float:right;">×</a>
            <div class="content">
            <h1 style="text-align:center;background-color:dimgray;color:white;margin:0px;">SIGN IN</h1>
              <label typeof="label "style="width:50px;height:50px;float:left;margin:20px"><a href="https://en-gb.facebook.com/login/" style="text-decoration:none;">Facebook</a></label>
<label typeof="label" style="width:50px;height:50px;float:right;margin:20px"><a style="text-decoration:none;" href="https://accounts.google.com/ServiceLogin?service=mail&passive=true&rm=false&continue=https://mail.google.com/mail/&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1">Gmail</a>
                  </label>
                </div>
                 </div>
        </div>
    </div>
        <div id="a2"><a href="#" class="a2">BOOKMYSHOW</a></div>
         <div><img src="../Images/images%20(1).jpg" id="a3" onclick="changeImage()" /></div>
    </form>
</body>
</html>
