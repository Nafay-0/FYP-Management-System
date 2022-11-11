<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminpage.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section>
        <div class="container py-4 py-xl-5">
            <div class="row mb-5">
                <div class="col-md-8 col-xl-6 text-center mx-auto">
                    <h3 class="font-weight-bold">Welcome 
                        <span>
                    <asp:Label ID="Label1" runat="server" Text='<%# Session["name"].ToString() %>'></asp:Label>
                       </span>
                            </h3>
                    <p class="w-lg-50"></p>
                </div>
            </div>
            <div class="row mb-5">
                <div class="col mb-6">
                    <div class="card">
                        <div class="card-body p-4">
                            <div class="bs-icon-md bs-icon-rounded bs-icon-primary d-flex justify-content-center align-items-center d-inline-block mb-3 bs-icon"></div>
                            <h4 class="font-weight-bold card-title">Generate Token</h4>
                            <p class="card-text">Generate a token against forms that are pending so they can be processed by other departments&nbsp;<br><br></p><a href="token.aspx" class="btn btn-primary border rounded-pill" data-bss-hover-animate="bounce" type="button" style="text-align: center;padding-top:12px">Continue</a>
                        </div>
                    </div>
                </div>
                <div class="col mb-6">
                    <div class="card">
                        <div class="card-body p-4">
                            <div class="bs-icon-md bs-icon-rounded bs-icon-primary d-flex justify-content-center align-items-center d-inline-block mb-3 bs-icon"></div>
                            <h4 class="font-weight-bold card-title">Process Degree Issuance Forms</h4>
                            <p class="card-text">Process and update status of Degree Issuance Forms that have been assigned token&nbsp;<br><br></p><a href="adminapproval.aspx" class="btn btn-primary border rounded-pill" data-bss-hover-animate="bounce" type="button" style="text-align: center;padding-top:12px">Continue</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mb-5">
                <div class="col mb-6">
                    <div class="card">
                        <div class="card-body p-4">
                            <div class="bs-icon-md bs-icon-rounded bs-icon-primary d-flex justify-content-center align-items-center d-inline-block mb-3 bs-icon"></div>
                            <h4 class="font-weight-bold card-title">Process Complaint Forms</h4>
                            <p class="card-text">Process and update status of Complaint Forms&nbsp;<br><br></p><a href="adminapproval2.aspx" class="btn btn-primary border rounded-pill" data-bss-hover-animate="bounce" type="button" style="text-align: center;padding-top:12px">Continue</a>
                        </div>
                    </div>
                </div>
                <div class="col mb-6">
                    <div class="card">
                        <div class="card-body p-4">
                            <div class="bs-icon-md bs-icon-rounded bs-icon-primary d-flex justify-content-center align-items-center d-inline-block mb-3 bs-icon"></div>
                            <h4 class="font-weight-bold card-title">Transcript Issuance</h4>
                            <p class="card-text">Issue Transcript to Students whose Degree Issuance is Accepted&nbsp;<br><br></p><a href="transcript.aspx" class="btn btn-primary border rounded-pill" data-bss-hover-animate="bounce" type="button" style="text-align: center;padding-top:12px">Continue</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
</asp:Content>

