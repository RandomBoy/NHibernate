<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="Web.view" %>

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
        <div>
        姓名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="搜索" onclick="Button1_Click" />
        </div>
    <div style=" clear:both;"></div>
    <table style="text-align:center; width:100%; border-collapse:collapse;  text-align:center;">
        <tr class="td"; style="font-size:1.2em; height:30px; padding-top:5px; padding-bottom:4px; background-color:#5ea2c8; color:#ffffff; ">
            <td style=" width:100px;">姓名</td><td style=" width:50px;">年龄</td><td style=" width:150px;">联系方式</td><td style=" width:100px;">病历</td><td style=" width:150px;">填写病历</td><td style=" width:150px;">出院登记</td>
        </tr>
        
        <asp:Repeater ID="Repeater1" runat="server">
        <HeaderTemplate><h3></h3></HeaderTemplate>
        <ItemTemplate>
            <tr class="td"; style="height:30px; font-size:1em;padding-top:5px; padding-bottom:4px;background-color:#c0dff1;color:#000000; ">
                <td><%#DataBinder.Eval(Container.DataItem, "Name")%></td>
                <td><%#DataBinder.Eval(Container.DataItem, "Age")%></td>
                <td><%#DataBinder.Eval(Container.DataItem, "Contact")%></td>
                <td><a href="record.aspx?id=<%#DataBinder.Eval(Container.DataItem, "Id")%>">查看病历</a></td>
                <td><a href="newrecord.aspx?id=<%#DataBinder.Eval(Container.DataItem, "Id")%>&name=<%#DataBinder.Eval(Container.DataItem, "Name")%>">填写</a></td>
                <td><a href="checkout.aspx?id=<%#DataBinder.Eval(Container.DataItem, "Id")%>">出院</a></td>
            </tr>
            
        </ItemTemplate>
        <FooterTemplate><h3></h3></FooterTemplate>
        </asp:Repeater>
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
