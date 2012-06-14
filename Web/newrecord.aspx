<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newrecord.aspx.cs" Inherits="Web.newrecord"  Debug="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script charset="utf-8" src="/editor/kindeditor.js"></script>
<script charset="utf-8" src="/editor/lang/zh_CN.js"></script>
<script>
    var editor;
    KindEditor.ready(function (K) {
        editor = K.create('#editor_id');
    });
    var options = {
        cssPath: '/css/index.css',
        filterMode: true
    };
    var editor = K.create('textarea[name="content"]', options);
    html = editor.html();

    // 同步数据后可以直接取得textarea的value
    editor.sync();
    html = document.getElementById('editor_id').value; // 原生API
    html = K('#editor_id').val(); // KindEditor Node API
    html = $('#editor_id').val(); // jQuery

    // 设置HTML内容
    editor.html('请输入主题内容');
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="vertical-align:middle; margin-top:50px;">
            <tr>
                <td colspan="2" style="color:#3281ae; height:50px; text-align:center;"><strong>
                    为<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>添加病历内容</strong></td>
            </tr>
            <tr>
                <td style="color:#3281ae; height:50px;"><strong>门诊项目：</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="400px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="color:#3281ae; height:50px;"><strong>费用：</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="400px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="color:#3281ae;"><strong>具体内容:</strong></td>
            </tr>
            <tr>
                <td colspan="2" style="color:#3281ae; height:50px;">
                <textarea id="editor_id"  cols="100" rows="8" runat="server" style="width:480px; height:300px;">

                </textarea></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center; height:50px;">
                    
                    <asp:Button ID="Button1" runat="server" Text="确定" onclick="Button1_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="返回" />
                    
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
