<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Example.aspx.cs" Inherits="Myshow.Example" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:550px">
        <tr><td>
       <asp:AdRotator ID="MyAdRotator" runat="server" AdvertisementFile="~/adv.xml"  />
       </td></tr>

<tr>
    <td>
        <asp:BulletedList ID="MyBulletedList" runat="server" Height="65px" OnClick="MyBulletedList_Click" ValidateRequestMode="Enabled" Width="100px">
            
        </asp:BulletedList>
                    <asp:TextBox ID="MyTextBox" runat="server" Width="131px" OnTextChanged="MyTextBox_TextChanged"></asp:TextBox>
                    <asp:ImageButton ID="MyImageButton" runat="server" Height="16px" ImageUrl="~/Images/caldr.jpg" OnClick="MyImageButton_Click" Width="19px" />
    </td>
</tr>

   
            <tr>
                
                <td>
                    <asp:Calendar ID="MyCalendar" runat="server" BorderStyle="None" Visible="False" OnSelectionChanged="MyCalendar_SelectionChanged"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBoxList ID="MyCheckBoxList" runat="server" OnSelectedIndexChanged="MyCheckBoxList_SelectedIndexChanged">
                        
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="MyDropDownList" runat="server" Height="15px" OnSelectedIndexChanged="MyDropDownList_SelectedIndexChanged" Width="50px"></asp:DropDownList>
                </td>
            </tr>
            </table>
    </form>
    
</body>
</html>
