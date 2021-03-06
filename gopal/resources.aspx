﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="resources.aspx.cs" Inherits="gopal.resources" %>


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
        <nav class="navbar navbar-fixed-top h-25 navbar-dark bg-dark">
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
                            <label> Resorce ID</label>
                            <asp:TextBox CssClass="form-control" placeholder="Enter Resource ID" ID="txtResourceId" runat="server" Width="480px"></asp:TextBox>
                        </div>


                        <div class="form-group">
                            <label> Resorce Name</label>
                            <asp:TextBox CssClass="form-control" placeholder="Enter Resource Name" ID="txtResourceName" runat="server" Width="480px"></asp:TextBox>
                        </div>

                     


                        <div class="form-group">
                            <label>Resource Cred</label>
                            <asp:TextBox CssClass="form-control" placeholder="Enter Resource Cred" ID="txtResourceCred" runat="server" Width="480px"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Resource Weight</label>
                            <asp:TextBox CssClass="form-control" ID="txtResourceWeight" placeholder="Enter Resource Weight" runat="server" Width="480px"></asp:TextBox>
                        </div>



                     


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
