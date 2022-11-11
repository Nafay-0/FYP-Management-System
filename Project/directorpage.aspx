<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="directorpage.aspx.cs" Inherits="Director" %>

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
                            <h4 class="font-weight-bold card-title">Generate Admin/Finance/FYP Officer Accounts</h4>
                            <p class="card-text">Allocate accounts to new admins, finance officers and fyp officers that have recently joined&nbsp;<br><br></p><a href="generateaccount.aspx" class="btn btn-primary border rounded-pill" data-bss-hover-animate="bounce" type="button" style="text-align: center;padding-top:12px">Continue</a>
                        </div>
                    </div>
                </div>
                <div class="col mb-6">
                    <div class="card">
                        <div class="card-body p-4">
                            <div class="bs-icon-md bs-icon-rounded bs-icon-primary d-flex justify-content-center align-items-center d-inline-block mb-3 bs-icon"></div>
                            <h4 class="font-weight-bold card-title">Track Degree Issuance Forms</h4>
                            <p class="card-text">Track all pending and processed requests for Degree Issuance Forms and Progress of Different Departments&nbsp;<br><br></p><a href="trackdegree.aspx" class="btn btn-primary border rounded-pill" data-bss-hover-animate="bounce" type="button" style="text-align: center;padding-top:12px">Continue</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mb-5">
                <div class="col mb-6">
                    <div class="card">
                        <div class="card-body p-4">
                            <div class="bs-icon-md bs-icon-rounded bs-icon-primary d-flex justify-content-center align-items-center d-inline-block mb-3 bs-icon"></div>
                            <h4 class="font-weight-bold card-title">Track Complaint Forms</h4>
                            <p class="card-text">Track all pending and processed requests for Complaint Forms&nbsp;<br><br></p><a href="trackcomplaints.aspx" class="btn btn-primary border rounded-pill" data-bss-hover-animate="bounce" type="button" style="text-align: center;padding-top:12px">Continue</a>
                        </div>
                    </div>
                </div>
                <div class="col mb-6">
                    <div class="card">
                        <div class="card-body p-4">
                            <div class="bs-icon-md bs-icon-rounded bs-icon-primary d-flex justify-content-center align-items-center d-inline-block mb-3 bs-icon"></div>
                            <h4 class="font-weight-bold card-title">View Audit Trail</h4>
                            <p class="card-text">Track all activity that has occured in the website to take appropriate actions&nbsp;<br><br></p><a href="audittrail.aspx" class="btn btn-primary border rounded-pill" data-bss-hover-animate="bounce" type="button" style="text-align: center;padding-top:12px">Continue</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

