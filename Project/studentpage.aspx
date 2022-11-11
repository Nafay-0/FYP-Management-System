<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="studentpage.aspx.cs" Inherits="Student" %>

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
                <div class="card">
                        <div class="card-body p-4">
                            <div class="bs-icon-md bs-icon-rounded bs-icon-primary d-flex justify-content-center align-items-center d-inline-block mb-3 bs-icon"></div>
                            <h4 class="font-weight-bold card-title">Submit Degree Issuance Forms</h4>
                            <p class="card-text">Fill form for degree issuance. You will be notified after approval from Finance Department/FYP Department and One Stop&nbsp;<br><br></p><a  href="degreeissuance.aspx" class="btn btn-primary border rounded-pill" data-bss-hover-animate="bounce" type="button" style="text-align: center;padding-top:12px">Continue</a>
                        </div>
                  </div>
            </div>
            <div class="row mb-5">
                <div class="card">
                        <div class="card-body p-4">
                            <div class="bs-icon-md bs-icon-rounded bs-icon-primary d-flex justify-content-center align-items-center d-inline-block mb-3 bs-icon"></div>
                            <h4 class="font-weight-bold card-title">Submit Complaint Forms</h4>
                            <p class="card-text">Fill form for any mistake in degree issuance form. You will be notified when one stop updates your information&nbsp;<br><br></p><a href="complaint_form.aspx" class="btn btn-primary border rounded-pill" data-bss-hover-animate="bounce" type="button" style="text-align: center;padding-top:12px">Continue</a>
                        </div>
                  </div>
            </div>
            <div class="row mb-5">
                <div class="card">
                        <div class="card-body p-4">
                            <div class="bs-icon-md bs-icon-rounded bs-icon-primary d-flex justify-content-center align-items-center d-inline-block mb-3 bs-icon"></div>
                            <h4 class="font-weight-bold card-title">Check Status for Forms</h4>
                            <p class="card-text">You can check the status for pending forms and recieve approval or objection&nbsp;<br><br></p><a href="studentforms.aspx" class="btn btn-primary border rounded-pill" data-bss-hover-animate="bounce" type="button" style="text-align: center;padding-top:12px">Continue</a>
                        </div>
                  </div>
            </div>

            <div class="row mb-5">
                <div class="card">
                        <div class="card-body p-4">
                            <div class="bs-icon-md bs-icon-rounded bs-icon-primary d-flex justify-content-center align-items-center d-inline-block mb-3 bs-icon"></div>
                            <h4 class="font-weight-bold card-title">Submit Tution Fees</h4>
                            <p class="card-text">You can submit your tution fees for all semesters here&nbsp;<br><br></p><a href="feesubmit.aspx" class="btn btn-primary border rounded-pill" data-bss-hover-animate="bounce" type="button" style="text-align: center;padding-top:12px">Continue</a>
                        </div>
                  </div>
            </div>

        </div>
    </section>
</asp:Content>

