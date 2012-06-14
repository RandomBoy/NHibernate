<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="UI.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="margin-left:auto;margin-right:auto;margin-top:200px;">

            <tr>
                <td>
                    <table border="0">
                        <tr style="height: 50px; vertical-align: middle;">
                            <td style="width: 40px">
                                &nbsp;</td>
                            <td style="padding-left: 10px; width: 300px; color:#056589; FONT-FAMILY: '黑体'; font-size:20px;">
                                医 院 门 诊 系 统
                            </td>
                            <td style="text-align:right; font-size:12px;">
                                09软工门诊系统V1.0
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>

            <tr>
                <td style="color:Gray;">
                ———————————————————————————————
                </td>
            </tr>

            <tr>
                <td>
                    <table>
                        <tr style="height:50px;">
                            <td style="text-align:right; padding-right:10px; vertical-align:middle; width:120px;">
                                
                                姓名：</td>
                            <td style="text-align:left; padding-left:10px; vertical-align:middle;">
                            
                                <asp:TextBox ID="Name" runat="server" Height="20px" Width="280px"></asp:TextBox>
                            
                            </td>
                        </tr>
                        <tr style="height:50px;">
                            <td style="text-align:right; padding-right:10px; vertical-align:middle; width:120px;">
                                
                                密码：</td>
                            <td style="text-align:left; padding-left:10px; vertical-align:middle;">
                            
                                <asp:TextBox ID="Pass"  TextMode="Password" runat="server" Height="20px" Width="280px"></asp:TextBox>
                            
                            </td>
                        </tr>
                        <tr style="height:50px;">
                            <td style="text-align:right; padding-right:10px; vertical-align:middle; width:120px;">
                                
                                验证码：</td>
                            <td style="text-align:left; padding-left:10px; vertical-align:middle;">
                            
                                <asp:TextBox ID="Code" runat="server" Width="80px"></asp:TextBox>
                                &nbsp;<img id="imgCode" alt="看不清，请点击我！" onclick="this.src=this.src+'?'" 
                                    src="CheckCode.aspx" style="cursor: hand; width: 76px;
                                        height: 21px" /></td>
                        </tr>
                        <tr style="height:50px;">
                            <td style="text-align:right; padding-right:10px; vertical-align:middle; width:120px;">
                                
                            </td>
                            <td style="text-align:left; padding-left:10px; vertical-align:middle;">
                            
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            
                                <asp:Button ID="Button1" runat="server" Text="登录" onclick="Button1_Click" 
                                    style="text-align: center"/>
&nbsp;&nbsp;&nbsp;
                                                            
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>

        </table>
    
    </div>
    </form>
</body>
</html>
