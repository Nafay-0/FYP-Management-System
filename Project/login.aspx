<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="position-relative py-4 py-xl-5">
        <div class="container position-relative">
            <div class="row mb-5">
                <div class="col-md-8 col-xl-6 text-center mx-auto">
                    <h2 class="font-weight-bold">Login To Your Account<br><br></h2>
                </div>
            </div>
            <div class="row d-flex justify-content-center">
                <div class="col-md-6 col-xl-4">
                    <div class="card">
                        <div class="card-body text-center d-flex flex-column align-items-center">
                            <div class="bs-icon-xl bs-icon-circle bs-icon-primary bs-icon my-4">
                                <img src="images/loginicon.png" class="img-fluid"/>
                            </div>
                            
                                <div class="mb-3">
                                    <asp:TextBox runat="server" id="username" class="border rounded-pill shadow form-control" type="text" name="username" placeholder="Username"/>

                                </div>
                                <div class="mb-3">
                                    <asp:TextBox runat="server" id="password" class="border rounded-pill shadow form-control" type="password" name="password" placeholder="Password"/>

                                </div>
                                
                                <div class="mb-3 " >
                                    <asp:DropDownList runat="server" class="form-select text-center border rounded-pill" id="role" style="background-color:#0d6efd; color:white">
                                        <asp:ListItem Value="">Role</asp:ListItem>
                                        <asp:ListItem Value="1">Student</asp:ListItem>
                                        <asp:ListItem Value="2">Finance Officer</asp:ListItem>
                                        <asp:ListItem Value="3">FYP Department Officer</asp:ListItem>
                                        <asp:ListItem Value="4">One Stop Admin</asp:ListItem>
                                        <asp:ListItem Value="5">Director</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="mb-3">
                                    <asp:Button onclick="Login_Click" runat="server" class="btn btn-primary border rounded-0 d-block w-100" type="submit" style="padding-left:100px; padding-right:100px" Text="Log in"/>

                                </div>
                                <p class="text-muted">Forgot your password?&nbsp; &nbsp;&nbsp;<a href="#">Reset Password</a></p>
                                <a href="signup.aspx">Signup</a>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
</asp:Content>

