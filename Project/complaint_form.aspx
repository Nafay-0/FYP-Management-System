<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="complaint_form.aspx.cs" Inherits="Complaint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="contact-clean">
        <div class="row mb-5">
                <div class="col-md-8 col-xl-6 text-center mx-auto">
                    <h1 class="font-weight-bold">Submit a Complaint<br><br></h1>
                </div>
       </div>
        <div class="row d-flex justify-content-center">
            <div class="col-md-6 col-xl-4">
                <div class="card">
                     <div class="card-body text-center d-flex flex-column align-items-center">
                            <div class="bs-icon-xl bs-icon-circle bs-icon-primary bs-icon my-4">
                                <img src="images/complainticon.png" class="img-fluid"/>
                            </div>
                            
                            <div class="col-md-8 form-group mb-5">
                              <label for="" class="col-form-label">Subject *</label>
                              <asp:TextBox runat="server" required="" type="text" class="form-control fc" name="subject" id="subject" />
                            </div>
                            <div class="col-md-8 form-group mb-5">
                              <label for="message" class="col-form-label">Complaint *</label>
                              <asp:TextBox runat="server" requires="" TextMode="MultiLine" class="form-control fc" Height="100" name="complaint" id="complaint"   placeholder="Write your complaint"/>
                            </div>

                            <div class="col-md-12 form-group fg2">
                              <asp:Button runat="server" onclick="Complaint_Click" type="submit" Text="Submit Complaint" class="btn btn-primary rounded-0 py-2 px-4"/>
                              <span class="submitting"></span>
                            </div>
                          
                     </div>
                </div>
            </div>
         </div>
    </section>
</asp:Content>

