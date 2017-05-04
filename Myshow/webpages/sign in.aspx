<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign in.aspx.cs" Inherits="Myshow.sign_in" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        table{
            width:100%;
        }
         #img{margin-top:0px;
             float:left;background-color:gainsboro;width:100%;height:60px;opacity:.9;
         }
         #a1{
        float:right;margin-right:30px;margin-top:0px;padding-bottom:30px;
         }
         .a2{
             margin:75px;
         }
         
         #a2{
             text-align:center;font-family:Calibri;font-size:30px;
         }
         #a3{
             margin:100px;float:left;width:50%;
         }
        #div{
             border-color:black;background-color:silver;float:right;margin-right:100px;
             width:350px;border:1px solid gray;margin-bottom:400px;padding-top:15px;padding-bottom:15px;
         }
        #div1{
            float:left;margin-left:100px;margin:50px;
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table>
      
         <tr id="img">
               <td> 
               <img src="/Images/bookmyshow.png" width="150" height="30" style="margin-left:20px;margin-top:15px;" />
               <input type="button" value="signin" style="text-align:center;background-color:blue;border-color:black;margin-left:800px;margin-bottom:50px;" />
               </td> 

         </tr>

           <tr style="margin:150px;">
               <td>
                   <div  id="a2" class="a2">
                   Create Book My Show Account
               </div></td>
           </tr>
<tr>
    <td> 
        
      <div id="div1">One account all you need <br /><br />
      One free account gets you into everything bookmyshow<br />
    <img src="/Images/bookmyshow.png" width="150" height="30" style="margin:20px"/></div>


    <div id="div">
        FirstName<br /><asp:TextBox ID="TextBox_Fn" runat="server">Fname</asp:TextBox> <asp:TextBox ID="TextBox_Ln" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator_Fn" runat="server" ErrorMessage="* Required" ControlToValidate="TextBox_Fn" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator_Ln" runat="server" ErrorMessage="* Required" ControlToValidate="TextBox_Ln" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        User Name<br /><asp:TextBox ID="TextBox_Un" runat="server" OnTextChanged="TextBox_Un_TextChanged" Width="200px"></asp:TextBox>@gmail.com
        <asp:RegularExpressionValidator ID="RegularExpressionValidator_Un" runat="server" ErrorMessage="Invalid Email" ControlToValidate="TextBox_Un" Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        Password<br /><asp:TextBox ID="TextBox_Pwd" runat="server" TextMode="Password"></asp:TextBox><br />
        Confirm Pwd<br /><asp:TextBox ID="TextBox_Cpwd" runat="server" TextMode="Password"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="* Pwd and Cpwd wrong" ControlToCompare="TextBox_Pwd" ControlToValidate="TextBox_Cpwd" Font-Bold="True" ForeColor="Red"></asp:CompareValidator>
        <br /><br />   
        <asp:Button ID="Create_Username" runat="server" Text="Create" OnClick="Create_Username_Click" />
    </div>
    </td>
</tr>

      
    </table>
    </form>
</body>
</html>
