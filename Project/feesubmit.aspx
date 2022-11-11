<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feesubmit.aspx.cs" Inherits="Fee_Submit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">
            <div class="row mb-5">
                <div class="col-md-8 col-xl-6 text-center mx-auto">
                    <h2 class="font-weight-bold">Submit Fees Here</h2>
                </div>
            </div>
            <div class="row d-flex justify-content-center">
                <div class="col-md-6 col-xl-4">

                    <div class="card">
                         <div class="card-body text-center d-flex flex-column align-items-center">
                            
                             <div class="bs-icon-xl bs-icon-circle bs-icon-primary bs-icon my-4">
                                <img src="images/feeicon.jpg" class="img-fluid"/>
                            </div>

                             <div class="mb-3">
                                   <asp:TextBox ID="amount" runat="server" class="border shadow form-control" type="number" name="amount" placeholder="Amount" required=""/>
                            </div>
                             
                             <div class="mb-3">
                                 <asp:DropDownList ID="semester" runat="server" class="form-select" >

                                      <asp:ListItem Value="">Select Semester</asp:ListItem>
                                      <asp:ListItem Value="1">Semester 1</asp:ListItem>
                                      <asp:ListItem Value="2">Semester 2</asp:ListItem>
                                      <asp:ListItem Value="3">Semester 3</asp:ListItem>
                                      <asp:ListItem Value="4">Semester 4</asp:ListItem>
                                      <asp:ListItem Value="5">Semester 5</asp:ListItem>
                                      <asp:ListItem Value="6">Semester 6</asp:ListItem>
                                      <asp:ListItem Value="7">Semester 7</asp:ListItem>
                                      <asp:ListItem Value="8">Semester 8</asp:ListItem>
                                 </asp:DropDownList>
                             </div>

                             <div class="mb-3">
                                    <asp:Button OnClick="Submit_Click" runat="server" class="btn btn-primary border rounded-0 d-block w-100" type="submit" style="padding-left:100px; padding-right:100px" Text="Submit Fees"/>
                              </div>

                        </div>
                    </div>
                    <br />
                    <br />
                </div>
            </div>
    </div>


</asp:Content>

