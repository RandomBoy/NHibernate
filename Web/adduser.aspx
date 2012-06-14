<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adduser.aspx.cs" Inherits="Web.adduser" %>

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
                                
                                密码：</td>
                            <td style="text-align:left; padding-left:10px; vertical-align:middle;">
                            
                                <asp:TextBox ID="Pass"  TextMode="Password" runat="server" Height="20px" Width="280px"></asp:TextBox>
                            
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  type="hidden"
                                    ControlToValidate="Pass" ErrorMessage="请输入密码" ForeColor="Red"></asp:RequiredFieldValidator>
                            
                            </td>
                        </tr>
                        <tr style="height:50px;">
                            <td style="text-align:right; padding-right:10px; vertical-align:middle; width:120px;">
                                
                                再输一次密码：</td>
                            <td style="text-align:left; padding-left:10px; vertical-align:middle;">
                            
                                <asp:TextBox ID="Pass2" TextMode="Password" runat="server" Height="20px" Width="280px"></asp:TextBox>
                            
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                    ControlToCompare="Pass2" ControlToValidate="pass" 
                                    ErrorMessage="两次输入的密码不同" ForeColor="Red"></asp:CompareValidator>
                            
                            </td>
                        </tr>
                        <tr style="height:50px;">
                            <td style="text-align:right; padding-right:10px; vertical-align:middle; width:120px;">
                                身份：</td>
                            <td style="text-align:left; padding-left:10px; vertical-align:middle;">
                            
                                <asp:DropDownList ID="DropDownList1" runat="server" Width="150px">
                                    <asp:ListItem Selected="True">职工</asp:ListItem>
                                    <asp:ListItem>医生</asp:ListItem>
                                    <asp:ListItem>管理员</asp:ListItem>
                                </asp:DropDownList>
                            
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
