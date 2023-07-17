<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>login</title>
    <style type="text/css">
        .box {
            width: 45%;
            padding: 10px;
            border-radius: 5px;
            margin-left: 15%;
        }

        .l {
            color: ActiveBorder;
            margin-left: 35%;
            color: navy;
            font-size: 30px;
        }

        .btn {
            padding: 10px;
            margin-left: 65%;
        }

        h1 {
            color: lightblue;
            margin-left: 50%
        }

        .btn2 {
            margin-left: 18%;
            color: black;
            font-size: 18px;
        }

        .btn3 {
            color: black;
            font-size: 18px;
        }

        body {
            /*background-image:url('Images/a.png');*/
            background-repeat: repeat;
            background-attachment: scroll;
        }
    </style>
</head>
<body>
    <h1>LOGIN</h1>
    <form id="form1" runat="server">
        <table class="l">
            <tr>
                <td>
                    <asp:Label ID="uname" runat="server" Text="Username"></asp:Label>
                </td>
                <td class="box">
                    <asp:TextBox ID="tuname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="password" runat="server" Text="PASSWORD"></asp:Label>
                </td>
                <td class="box">
                    <asp:TextBox ID="tpass" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" CssClass="btn" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="signup" runat="server" Text="Sign Up" OnClick="signup_Click" CssClass="btn3" />
                </td>
                <td>
                    <asp:Button ID="forget" runat="server" Text="Forget Password" OnClick="forget_Click" CssClass="btn2" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
