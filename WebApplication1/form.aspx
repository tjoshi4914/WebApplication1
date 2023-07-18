<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>form</title>
    <style type="text/css">
        .box {
            width: 45%;
            padding: 10px;
            border-radius: 5px;
        }

        .l {
            color: ActiveBorder;
            margin-left: 38%;
            color: coral;
            font-size: 20px;
        }

        .click {
            color: palevioletred;
            margin-left: 40%;
        }
        .btn {
            border:solid;
            width:100px;
            padding:10px;
            color:brown;
            margin-left:50%;
        }

        h1 {
            color:lightblue;
            margin-left: 50%
        }

        body {
            background-image:url('Images/a.png');
            background-repeat:no-repeat;
            background-attachment:scroll;
        }
    </style>
</head>
<body>
    <h1>Form</h1>
    <br />
    <div>
        <form id="form1" runat="server">
            <div class="l">
                <asp:Label ID="fname" runat="server" Text="First Name"></asp:Label>
                <div>
                    <asp:TextBox ID="tfname" runat="server" CssClass="box"></asp:TextBox>
                </div>
                <%--<asp:RequiredFieldValidator ID="rvf1" runat="server" ControlToValidate="tfname" Display="Dynamic" ErrorMessage="Enter the First Name" ForeColor="Red"></asp:RequiredFieldValidator>--%>
            </div>
            <br />

            <div class="l">
                <asp:Label ID="lname" runat="server" Text="Last Name"></asp:Label>
                <div>
                    <asp:TextBox ID="tlname" runat="server" CssClass="box"></asp:TextBox>
                </div>
                <%--               <asp:RequiredFieldValidator ID="rvf2" runat="server" ControlToValidate="tlname" Display="Dynamic" ErrorMessage="Enter the Last Name" ForeColor="Red"></asp:RequiredFieldValidator>--%>
            </div>
            <br />


            <div class="l">
                <asp:Label ID="email" runat="server" Text="Email"></asp:Label>
                <div>
                    <asp:TextBox ID="temail" runat="server" CssClass="box"></asp:TextBox>
                </div>
                <%--                <asp:RequiredFieldValidator ID="rvf3" runat="server" ControlToValidate="temail" ErrorMessage="Enter the Email" ForeColor="Red"></asp:RequiredFieldValidator>--%>
            </div>
            <br />

            <div class="l">
                <asp:Label ID="password" runat="server" Text="Password"></asp:Label>
                <div>
                    <asp:TextBox ID="tpass" runat="server" CssClass="box"></asp:TextBox>
                </div>
            </div>
            <br />

            <div class="l">
                <asp:Label ID="cpass" runat="server" Text="Confirm Password"></asp:Label>
                <div>
                    <asp:TextBox ID="tcpass" runat="server" CssClass="box"></asp:TextBox>

                </div>
            </div>

            <br />
            <br />

            <div class="l">
                <asp:Label ID="contact" runat="server" Text="Contact Number"></asp:Label>
                <div>
                    <asp:TextBox ID="tcontact" runat="server" CssClass="box">+91</asp:TextBox>
                </div>
                <%--<asp:RequiredFieldValidator ID="rfv5" runat="server" ControlToValidate="tcontact" Display="Dynamic" ErrorMessage="enter contact number" ForeColor="Red"></asp:RequiredFieldValidator>--%>
            </div>

            <br />

            <div class="l">
                <asp:Label ID="age" runat="server" Text="Age"></asp:Label>
                <div>
                    <asp:TextBox ID="tage" runat="server" CssClass="box"></asp:TextBox>
                    <%--<asp:RangeValidator ID="range1" runat="server"  Display="Dynamic" ControlToValidate="tage" MaximumValue="100" MinimumValue="18" ErrorMessage="Invalid Age"
                     ForeColor="Red" SetFocusOnError="True" Type=" Integer" ></asp:RangeValidator>--%>
                </div>
            </div>
            <br />

            <div class="l">
                <asp:Label ID="gender" runat="server" Text="Select Gender "></asp:Label>
                <div class="box">
                    <%--<asp:RadioButton ID="Male" runat="server" Text="MALE" />
                    <asp:RadioButton ID="Female" runat="server" Text="FEMALE" />--%>
                </div>
                <asp:RadioButtonList ID="L1" runat="server">
                    <asp:ListItem Value="M">Male</asp:ListItem>
                    <asp:ListItem Value="F">Female</asp:ListItem>
                </asp:RadioButtonList>
            </div>
 
    <div class="l">
        <asp:Label ID="city" runat="server" Text="Select Your City "></asp:Label>
        <div class="box">
            <asp:DropDownList ID="citylist" runat="server">
                <asp:ListItem Value="">Please Select</asp:ListItem>
                <asp:ListItem>New Delhi</asp:ListItem>
                <asp:ListItem>kolkata</asp:ListItem>
                <asp:ListItem>Ramnagar</asp:ListItem>
                <asp:ListItem>Haldwani</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>

    <div class="l">
        <asp:Label ID="file" runat="server" Text="upload File"></asp:Label>
        <div class="box">
            <asp:FileUpload ID="tfile" runat="server" />
        </div>
    </div>
    <br />

    <div>
        <asp:Button ID="buttonsubmit" runat="server" Text="Submit" OnClick="buttonsubmit_Click" OnClientClick=" return validation()" CssClass="btn" />
    </div>

    <br />

    <div class="l">
        <asp:HyperLink ID="Link1" runat="server" Text="More" NavigateUrl="https://www.javatpoint.com/" Target="'_blank"></asp:HyperLink></div>

    </form>
    </div>


    <script type="text/javascript">
        function validation() {
            var fname = document.getElementById("tfname").value;
            var lname = document.getElementById("tlname").value;
            var email = document.getElementById("temail").value;
            var pass = document.getElementById("tpass").value;
            var cpass = document.getElementById("tcpass").value;
            var contact = document.getElementById("tcontact").value;
            var age = document.getElementById("tage").value;
            var gender = document.getElementById("L1").value;
            var city = document.getElementById("<%=citylist.ClientID%>").value;

            var regEmail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{ 2,3})+$/;
            var regPhone = /^\d{10}$/;
            var regName = /\d+$/g;

            if (fname == "" || regName.test(fname)) {
                alert("Invalid first Name");
                fname.focus();
                return false;
            }
            if (lname == "" || regName.test(lname)) {
                alert("Invalid Last Name");
                lname.focus();
                return false;
            }
            if (email == "" || regEmail.test(email)) {
                alert("Invalid Email");
                email.focus();
                return false;
            }

            if (pass == "" || pass.length < 6) { 
                alert("Invalid Password");
                email.focus();
                return false;
            }

            if (pass != cpass) {
                alert("Password does not Matched");
                remail.focus();
                return false;
            }
            if (contact == "" || regPhone.test(contact)) {
                alert("Invalid contact number");
                contact.focus();
                return false;
            }
            if (age > 100 || age < 1) {
                alert("Invalid Age");
                age.focus();
                return false;
            }

            if (city == "") {
                alert("Please select a country ");
                city.focus();
                return false;

            }
            return true;
        }


    </script>

</body>
</html>
