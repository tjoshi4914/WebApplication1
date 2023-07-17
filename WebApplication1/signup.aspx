<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="WebApplication1.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>sign up</title>
     <style type="text/css">
        .box {
            width: 60%;
            padding: 10px;
            border-radius: 5px;
            margin-left: 15%;
        }

        .l {
            color: ActiveBorder;
            margin-left: 35%;
            color: navy;
            font-size: 20px;
        }

        .btn {
            padding: 10px;
            margin-left: 65%;
        }

        h1{
            color: lightblue;
            margin-left: 45%
        }
        body {
            /*background-image:url('Images/a.png');*/
            background-repeat: repeat;
            background-attachment: scroll;
        }
        h3{
            color: lightblue;
            margin-left: 43%;
        }
       
         </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Sing up</h1>
            <div>
                <h3><b>New user registration</b></h3>
                <div>
                    <table class="l">
            <tr>
                <td>
                    <asp:Label ID="email" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="temail" runat="server" CssClass="box"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="cemail" runat="server" Text="Confrim Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tcemail" runat="server" CssClass="box"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="password" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tpass" runat="server" CssClass="box"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="cpass" runat="server" Text="Confirm Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tcpass" runat="server" CssClass="box"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="onsubmit" runat="server" Text="Submit" OnClick="onsubmit_Click" CssClass="btn" />
                </td>
            </tr>
        </table>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
