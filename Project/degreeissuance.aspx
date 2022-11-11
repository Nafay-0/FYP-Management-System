<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="degreeissuance.aspx.cs" Inherits="Degree" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="contact-clean">
        <div class="row mb-5">
                <div class="col-md-8 col-xl-6 text-center mx-auto">
                    <h1 class="font-weight-bold">Degree Issuance Form<br><br></h1>
                </div>
        </div>
        <div class="row d-flex justify-content-center">
            <div class="col-md-8 col-xl-6">
                <div class="card">
                     <div class="card-body text-center d-flex flex-column align-items-center">
                         <div class="bs-icon-xl bs-icon-circle bs-icon-primary bs-icon my-4">
                                <img src="images/degreelogo.png" class="img-fluid"/>
                            </div>
                         <div class="row">
                             <div class="col-md-6 form-group mb-5">
                                  <label for="" class="col-form-label">Name *</label>
                                  <asp:TextBox readOnly="true" value='<%# Session["name"].ToString() %>' runat="server" required="" type="text" class="form-control fc" name="name" id="name"/>
                             </div>
                             <div class="col-md-6 form-group mb-5">
                                  <label for="" class="col-form-label">Father Name *</label>
                                  <asp:TextBox readOnly="true" value='<%# Session["Father_name"].ToString() %>' runat="server" required="" type="text" class="form-control fc" name="fname" id="fname" />
                             </div>
                         </div>
                         <div class="row">
                             <div class="col-md-6 form-group mb-5">
                                  <label for="" class="col-form-label">Email *</label>
                                  <asp:TextBox readOnly="true" value='<%# Session["email"].ToString() %>' runat="server" required="" type="email" class="form-control fc" name="email" id="email"/>
                             </div>
                             <div class="col-md-6 form-group mb-5">
                                  <label for="" class="col-form-label">CNIC *</label>
                                  <asp:TextBox readOnly="true" value='<%# Session["CNIC"].ToString() %>' runat="server" required="" type="text" class="form-control fc" name="CNIC" id="CNIC" />
                             </div>
                         </div>
                         <div class="row">
                             <div class="col-md-6 form-group mb-5">
                                  <label for="" class="col-form-label">Degree *</label>
                                  <asp:TextBox readOnly="true" value='<%# Session["degree"].ToString() %>' runat="server" required="" type="text" class="form-control fc" name="degree" id="degree" />
                             </div>
                             <div class="col-md-6 form-group mb-5">
                                  <label for="" class="col-form-label">Department *</label>
                                  <asp:TextBox readOnly="true" value='<%# Session["department"].ToString() %>' runat="server" required="" type="text" class="form-control fc" name="department" id="department" />
                             </div>
                         </div>
                         <div class="row">
                             
                             <div class="col-md-6 form-group mb-5">
                                  <label for="" class="col-form-label">Batch *</label>
                                  <asp:TextBox readOnly="true" value='<%# Session["batch"].ToString() %>' runat="server" required="" type="text" class="form-control fc" name="batch" id="batch"/>
                             </div>
                             <div class="col-md-6 form-group mb-5">
                                  <label for="" class="col-form-label">CGPA *</label>
                                  <asp:TextBox  runat="server" required="" type="text"  class="form-control fc" name="CGPA" id="CGPA"/>
                             </div>
                             
                             
                         </div>

                         <br />
                         <br />
                         <div class="row">
                            <div class="col-md-12 form-group fg2">
                              <asp:Button runat="server" OnClick="Degree_Click"  type="submit" Text="Submit" class="btn btn-primary rounded-0 py-2 px-4"/>
                              <span class="submitting"></span>
                            </div>
                         </div>
                     </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

