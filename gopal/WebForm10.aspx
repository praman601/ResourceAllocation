<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm10.aspx.cs" Inherits="gopal.WebForm10" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Fourth Page</title>
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

                        <div class="form-group row">
                            <label style="margin-left: 12px;">Requested Resources</label>

                            <div style="margin-left: 20px;">
                                <label class="checkbox-inline">
                                    <input type="checkbox" value="option1">Option1
                                </label>
                                <label style="margin-left: 10px;" class="checkbox-inline">
                                    <input type="checkbox" value="option2">Option2
                                </label>
                                <label style="margin-left: 10px;" class="checkbox-inline">
                                    <input type="checkbox" value="option3">Option3
                                </label>
                            </div>
                        </div>


                        <div class="form-group">
                            <div class="row">
                                <label style="margin-left: 12px;">Resource Type</label>

                                <div style="margin-left: 20px;">
                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="dropdownlist1" Selected="true" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="dropdownlist2" Value="2"></asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>

                        </div>

                        <div class="form-group">
                            <label>Resource Procedure</label>
                            <asp:TextBox CssClass="form-control" ID="txtResourceProc" runat="server" Width="490px"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>Resource Cost</label>
                            <asp:TextBox CssClass="form-control" ID="txtResourceCost" runat="server" Width="490px"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>Resource Time</label>
                            <asp:TextBox CssClass="form-control" ID="txtResourceTime" runat="server" Width="491px"></asp:TextBox>
                        </div>

                        <asp:Button ID="btnPrevious" CssClass="btn btn-dark btn-lg float-left" runat="server" Text="Previous" />
                         <asp:Button ID="Button1" CssClass="btn btn-dark btn-lg" style="margin-left: 260px;" runat="server" Text="Next" />
                       
                    </div>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
