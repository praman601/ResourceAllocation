<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="users.aspx.cs" Inherits="gopal.users" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>First Page</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <link href="first.css" rel="stylesheet" />
</head>
<body style="background-color: burlywood">
    <div id="locator">
        <nav class="navbar navbar-fixed-top navbar-dark bg-dark">
            <a class="navbar-brand" href="#">Welcome to the Resource Allocation!!
            </a>
            <div class="form-group row">
                <input type="text" name="session_key" class="login-email form-control" tabindex="1" id="login-email" placeholder="Email" autofocus="autofocus">
                <input type="password" name="session_password" class="login-password form-control" id="login-password" aria-required="true" tabindex="1" placeholder="Password">

                <input tabindex="1" id="login-submit" class="login form-control submit-button" type="submit" value="Sign in" disabled="">
            </div>
        </nav>


        <form id="form1" runat="server">

            <div class="container" style="background-color: darkgray; color: black; height: 580px">
                <div class="row">
                    <div class="col-md-9 col-form-label-lg offset-3">



                        <div class="form-group">
                            <label>User Name</label>
                            <asp:TextBox CssClass="form-control" placeholder="Enter User Name" ID="txtUser" runat="server" Width="480px"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <label style="margin-left: 12px;">User Type</label>

                                <div style="margin-left: 20px;">
                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="type1" Selected="true" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="type2" Value="2"></asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>

                        </div>


                        <div class="form-group">
                            <label>User Cred</label>
                            <asp:TextBox CssClass="form-control" placeholder="Enter User Cred" ID="txtUserCred" runat="server" Width="480px"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>User Weight</label>
                            <asp:TextBox CssClass="form-control" ID="txtUserWeight" placeholder="Enter User Weight" runat="server" Width="480px"></asp:TextBox>
                        </div>



                        <div class="form-group row">
                            <label style="margin-left: 12px;">User Preemption</label>

                            <div style="margin-left: 20px;">
                                <asp:RadioButtonList ID="radioUserPreemption" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Text="radio1" Value="1" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="radio2" Value="2" Selected="False"></asp:ListItem>

                                </asp:RadioButtonList>
                            </div>

                        </div>
                        <%--<div class="form-group">
                            <div class="row">
                                <label style="margin-left: 12px;">Task Code</label>

                                <div style="margin-left: 20px;">
                                    <asp:DropDownList ID="dropdownlistTaskCode" runat="server">
                                        <asp:ListItem Text="dropdownlist1" Selected="true" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="dropdownlist2" Value="2"></asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>

                        </div>--%>


                        <asp:Button ID="btnPrevious" CssClass="btn btn-dark btn-lg float-left" runat="server" Text="Previous" />
                        <asp:Button ID="btnSubmit" CssClass="btn btn-dark btn-lg  float-left" Style="margin-left: 100px;" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                        <asp:Button ID="Button1" CssClass="btn btn-dark btn-lg" Style="margin-left: 100px;" runat="server" Text="Next" />



                    </div>
                </div>
            </div>

        </form>
    </div>
</body>
</html>
