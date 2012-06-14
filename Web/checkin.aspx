<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkin.aspx.cs" Inherits="Web.checkin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="margin-left:auto;margin-right:auto;margin-top:100px; font-size:16px;">
                        <tr style="height:50px;">
                            <td style="text-align:right; padding-right:10px; vertical-align:middle; width:120px;">
                                
                                姓名：</td>
                            <td style="text-align:left; padding-left:10px; vertical-align:middle;">
                            
                                <asp:TextBox ID="Name" runat="server" Height="20px" Width="280px"></asp:TextBox>
                            
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="Name" ErrorMessage="请填写姓名" ForeColor="Red"></asp:RequiredFieldValidator>
                            
                            </td>
                        </tr>
                        <tr style="height:50px;">
                            <td style="text-align:right; padding-right:10px; vertical-align:middle; width:120px;">
                                
                                联系方式：</td>
                            <td style="text-align:left; padding-left:10px; vertical-align:middle;">
                            
                                <asp:TextBox ID="Contact" runat="server" Height="20px" Width="280px"></asp:TextBox>
                            
                                （手机）<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  type="hidden"
                                    ControlToValidate="Contact" ErrorMessage="请输入手机号码" ForeColor="Red"></asp:RequiredFieldValidator>
                            
                            </td>
                        </tr>
                        <tr style="height:50px;">
                            <td style="text-align:right; padding-right:10px; vertical-align:middle; width:120px;">
                                年龄：</td>
                            <td style="text-align:left; padding-left:10px; vertical-align:middle;">
                            
                                <asp:TextBox ID="Age" runat="server" Height="20px" Width="280px"></asp:TextBox>
                            
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="Age" ErrorMessage="请输入年龄" ForeColor="Red"></asp:RequiredFieldValidator>
                            
                            </td>
                        </tr>
                        <tr style="height:50px;">
                            <td style="text-align:right; padding-right:10px; vertical-align:middle; width:120px;">
                                
                            </td>
                            <td style="text-align:left; padding-left:10px; vertical-align:middle;">
                            
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            
                                <asp:Button ID="Button1" runat="server" Text="确定" onclick="Button1_Click"/>
                                &nbsp;&nbsp;&nbsp;
                                                            
                            </td>
                        </tr>
                    </table>
    
    </div>
    </form>
</body>
</html>
