<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="UI.main" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 21px;
            height: 937px;
        }
    </style>
</head>
<body style="background-color:#eef1f8;">
    <form id="form1" runat="server">
    <div style=" width:100%; background-image:url(images/nav_bg.png); height:35px;">
        <div style="width:1024px; margin-left:auto; margin-right:auto;">
            
            
        </div>
    </div>
    
    <div style="clear:both;"></div> 

    <div style="background-color:White; width: 1024px; margin-right: auto; margin-left: auto; ">
        <table style="width: 1024px; margin-right: auto; margin-left: auto; border:0px;">
            <tr>
                <td style="width:28%; vertical-align:top;">
                    <table>
                        <tr>
                            <td>
                                <table>
                                <tr>
                                    <td><img src="images/logoSchool.jpg" /></td>
                                    <td><div style="margin-top:10px; font-size:18px; color:#056589;">暨南大学医院门诊系统</div></td>
                                </tr>
                                </table>
                            </td>
                        </tr>
                        <tr><td height=10 colspan=2></td></tr>
                        <tr>
                            <td colspan=2>
                                <img style="width:110%;" src="images/shehua_36.gif" />
                            </td>
                        </tr>

                        <!-------------------菜单导航开始---------------------->

                        

                        <tr>
                            <td colspan=2>
                                <img src="images/医护相关.png" />
                            </td>
                        </tr>

                        <tr>
                            <td colspan=2 style="vertical-align:top; width:100%;">
                                <table>
                                    <tr>
                                        <td style="padding-top:20px;"><img src="images/yhgl.png" /></td></tr>
                                        <tr><td style="padding:5px;"><a href="user.aspx" target="mainbox"><img src="images/用户一览.png" /></a></td></tr>
                                        <tr><td style="padding:5px;">
                                            <a href="adduser.aspx" target="mainbox"><img src="images/新增用户.png" /></a></td>
            
                                    </tr>
                                    <tr>
                                        <td style="padding-top:20px;">
                                            <img src="images/mzdj.png" /></td></tr>
                                            <tr><td style="padding:5px;">
                                                <a href="checkin.aspx" target="mainbox"><img src="images/入院登记.png" /></a></td></tr>
                                            <tr><td style="padding:5px;">
                                                <a href="view.aspx" target="mainbox"><img src="images/病人一览.png" /></a></td>
            
                                    </tr>
                                </table>

                            </td>
                        </tr>

                        <tr>
                            <!--
                            <td colspan=2 style="padding-left:30px;">
                                <asp:TreeView ID="TreeView1" runat="server" Width="250px" Font-Names="华文细黑" ForeColor="#000333" Font-Size="16px">
                                    <Nodes>
                                        <asp:TreeNode Expanded="True" ImageUrl="~/images/tree/group.gif" Text="用户管理" 
                                            Value="用户管理">
                                            <asp:TreeNode ImageUrl="~/images/tree/item.gif" Text="用户信息管理" Value="用户信息管理">
                                            </asp:TreeNode>
                                            <asp:TreeNode ImageUrl="~/images/tree/item.gif" Text="权限管理" Value="权限管理">
                                            </asp:TreeNode>
                                        </asp:TreeNode>
                                        <asp:TreeNode ImageUrl="~/images/tree/form.gif" Text="讨论室管理" Value="讨论室管理">
                                            <asp:TreeNode ImageUrl="~/images/tree/item.gif" Text="讨论室信息管理" Value="讨论室信息管理">
                                            </asp:TreeNode>
                                            <asp:TreeNode ImageUrl="~/images/tree/item.gif" Text="讨论室开放审核" Value="讨论室开房审核">
                                            </asp:TreeNode>
                                        </asp:TreeNode>
                                    </Nodes>

                                </asp:TreeView>
                            </td>-->
                            <td colspan="2" style="text-align:center; padding-left:20px; color:#056589; padding-top:10px;">
                                &nbsp;</td>

                            
                        </tr>
                    </table>
                </td>


                <td width="21px">
                    <img class="style1" src="images/shehua_15.gif" /></td>

                <!------------------中部主要内容显示区域---------------------->

                <td width="70%" style="background-color:#def2fe; vertical-align:top; padding-top:80px;">
                    <div>
                        <iframe src="view.aspx" name="mainbox" frameborder="0" scrolling="auto" height="800px;" style="width: 95%; margin-left:20px; top: -20px;" 
                            enableviewstate="true" marginheight="0" marginwidth="0">
                        </iframe>
                    </div>
                </td>
                </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
