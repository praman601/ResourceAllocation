<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="resourcealloc.aspx.cs" Inherits="gopal.WebForm9" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Third Page</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="bootstrap/css/bootstrap-grid.min.css" rel="stylesheet" />

    <script src="bootstrap/js/bootstrap.min.js"></script>
    <link href="first.css" rel="stylesheet" />
</head>
<body style="background-color:burlywood">



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
            <div class="container" style="background-color:darkgray;color:black;height:580px">
                <h1 class="text-lg-center " style="display: block; color: black;"><i>Fill in the Credentials!! </i></h1>
                <div class="row">
                    <div class="col-md-6 offset-3 col-form-label-lg">

                        <div class="form-group row">
                            <label style="margin-left: 12px;">Consumed Resources</label>

                            <div style="margin-left: 20px;">






                                <label class="CHECKBOX-INLINE">
                                    <input type="CHECKBOX" value="OPTION1">option1
                                </label>
                                <label style="margin-left: 10px;" class="checkbox-inline">
                                    <input type="checkbox" value="option2">Option2
                                </label>
                                <label style="margin-left: 10px;" class="checkbox-inline">
                                    <input type="checkbox" value="option3">Option3
                                </label>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label style="margin-left: 10px;">Remaining Resources</label>

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

                        <div class="form-group row">
                            <label style="margin-left:10px">Execution Time</label>
                            <asp:TextBox style="margin-left:15px;height:30px" CssClass="form-control" ID="txtUserCred" placeholder="Enter Execution Time" runat="server" Width="354px" ></asp:TextBox>
                        <asp:Button ID="btnPrevious" CssClass="btn btn-dark btn-lg float-left" runat="server" Text="Previous" />
                         <asp:Button ID="Button1" CssClass="btn btn-dark btn-lg" style="margin-left: 320px;" runat="server" Text="Next" />
                       
                    </div>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
