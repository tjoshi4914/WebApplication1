<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forget.aspx.cs" Inherits="WebApplication1.forget" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server" style="margin:150px 35%">
        <h1 style="color:chocolate"><stong>Forget Password?</stong></h1>
        <asp:Label ID="email" runat="server" Text="Enter the Registered email" Font-Size="Medium"></asp:Label>
        <br/>
        <div><asp:Button ID="Button1" runat="server" Text="Submit" CssClass=""/></div>
    </form>
</body>
</html>
