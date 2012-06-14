<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="Web.checkout" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

   
.td
  {   
      text-align:center; 
  border:1px solid #3f7b9c;   
  padding:3px 7px 2px 7px;   
  }   
   

</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
    <table style="text-align:center; width:100%; border-collapse:collapse;  text-align:center;">
        <tr class="td"; style="height:30px; font-size:1.3em;padding-top:5px; padding-bottom:4px;background-color:#c0dff1;color:#000000; "><td colspan="3">出院对账单</td></tr>
        <tr class="td"; style="font-size:1.2em; height:30px; padding-top:5px; padding-bottom:4px; background-color:#5ea2c8; color:#ffffff; ">
            <td>开单人员</td><td>项目</td><td>费用</td>
        </tr>
        
        <asp:Repeater ID="Repeater1" runat="server">
        <HeaderTemplate><h3></h3></HeaderTemplate>
        <ItemTemplate>
            <tr class="td"; style="height:30px; font-size:1em;padding-top:5px; padding-bottom:4px;background-color:#c0dff1;color:#000000; ">
                <td><%#DataBinder.Eval(Container.DataItem, "Doctor")%></td>
                <td><%#DataBinder.Eval(Container.DataItem, "Item")%></td>
                <td><%#DataBinder.Eval(Container.DataItem, "Fee")%></td>
            </tr>
            
        </ItemTemplate>
        <FooterTemplate><h3></h3></FooterTemplate>
        </asp:Repeater>

        <tr class="td"; style="font-size:1.2em; height:30px; padding-top:5px; padding-bottom:4px; background-color:#5ea2c8; color:#ffffff; ">
            <td colspan="2">合计</td>
            <td><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr class="td"; style="height:30px; font-size:1em;padding-top:5px; padding-bottom:4px;background-color:#c0dff1;color:#000000; "><td colspan="3">
            付费并出院&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" Text="确定" OnClientClick="return confirm('确定付费并出院？');"
                onclick="Button1_Click" /></td></tr>
                <tr height="20"><td colspan="4"></td></tr>
    </table>
        <div style="font-size:12px; float:right; margin-right:20px;">
            <asp:label ID="lblCurrentPage" runat="server"></asp:label></td>
            <asp:HyperLink id="lnkPrev" runat="server">上一页</asp:HyperLink>
            <asp:HyperLink id="lnkNext" runat="server">下一页</asp:HyperLink>
        </div>
    
    </div>
    </form>
</body>
</html>
