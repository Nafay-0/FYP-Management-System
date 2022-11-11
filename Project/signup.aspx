<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="position-relative py-4 py-xl-5">
        <div class="container position-relative">
            <div class="row mb-5">
                <div class="col-md-8 col-xl-6 text-center mx-auto">
                    <h2 class="font-weight-bold">Signup For an Account<br><br></h2>
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
                                    <asp:TextBox ID="name" runat="server" class="border rounded-pill shadow form-control" type="text" name="name" placeholder="Name" required=""/>

                                </div>
                                <div class="mb-3">
                                    <asp:TextBox ID="fname" runat="server" class="border rounded-pill shadow form-control" type="text" name="fathername" placeholder="Father Name" required=""/>

                                </div>

                                <div class="mb-3">
                                    <asp:TextBox ID="CNIC" runat="server" class="border rounded-pill shadow form-control" type="text" name="CNIC" placeholder="CNIC" required=""/>

                                </div>

                                <div class="mb-3">
                                    <asp:TextBox ID="address" runat="server" class="border rounded-pill shadow form-control" type="text" name="address" placeholder="Address" required=""/>

                                </div>

                                <div class="mb-3">
                                    <asp:TextBox ID="email" runat="server" class="border rounded-pill shadow form-control" type="email" data-toggle="tooltip" data-bss-tooltip="" name="email" placeholder="Email" autocomplete="on" required="" title="NUCES ID"/>

                                </div>
                                <div class="mb-3">
                                    <asp:TextBox ID="phone_num" runat="server" class="border rounded-pill shadow form-control" type="text" name="phone_num" placeholder="Phone Number" required=""/>

                                </div>
                                <div class="mb-3">
                                    <asp:TextBox ID="uname" runat="server" class="border rounded-pill shadow form-control" type="text" name="username" placeholder="Username" required=""/>

                                </div>
                                <div class="mb-3">
                                    <asp:TextBox ID="password" runat="server" class="border rounded-pill shadow form-control" type="password" name="password" placeholder="Password" required=""/>
                                </div>

                                <div class="mb-3">
                                    <asp:TextBox ID="batch" runat="server" class="border rounded-pill shadow form-control" type="text" name="batch" placeholder="Batch" required=""/>

                                </div>

                                <div class="mb-3">
                                    <asp:TextBox ID="degree" runat="server" class="border rounded-pill shadow form-control" type="text" name="degree" placeholder="Degree" required=""/>

                                </div>
                                <div class="mb-3">
     
                                      <asp:DropDownList ID="department" runat="server" class="form-select" >

                                          <asp:ListItem Value="">Department</asp:ListItem>
                                          <asp:ListItem Value="1">School of Computing</asp:ListItem>
                                          <asp:ListItem Value="2">School of Management</asp:ListItem>
                                          <asp:ListItem Value="3">School of Electrical Engineering</asp:ListItem>
                                      </asp:DropDownList>
                                </div>
                                <div class="mb-3">
                                    <asp:Button OnClick="Signup_Click" runat="server" class="btn btn-primary border rounded-0 d-block w-100" type="submit" style="padding-left:100px; padding-right:100px" Text="Sign Up"/>

                                </div>
                              
                                <p>Already Have an Account?&nbsp; &nbsp;&nbsp;<a href="login.aspx">Login</a></p>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
</asp:Content>

