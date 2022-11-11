<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <section>
        <div class = "main-heading" >
	        <img class = "os-logo" src="./images/oslogo.png" style= "width:20%">
	        <h1 style="color:white"> Welcome to One Stop Student Service Center  </h1>
            <h2 style="color:white">
                    One Stop for all student services
            </h2>
        </div> 
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h2>Select Your Service</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                   <asp:HyperLink ID="degreelink" NavigateUrl="#" runat="server"><img src="images/degreelogo.png" width="200" height="200" /></asp:HyperLink>
                    <h2>Degree Issuance</h2>
                    <p>Students can fill the degree issuance form which will be approved by finance department, FYP department and admin</p>

                </div>
                <div class="col-md-6">
                     <asp:HyperLink ID="transcriptlink" NavigateUrl="#" runat="server"><img src="images/transcripticon.jpg" width="200" height="200" /></asp:HyperLink>
                    <h2>Transcript Issuance</h2>
                    <p>Students whose degree issuance form has been approved will be issued transcript by onestop admin</p>
                </div>
                
            </div>
            <div class="row">
                
                <div class="col-md-6">
                     <asp:HyperLink ID="correctionlink" NavigateUrl="#" runat="server"><img src="images/correctionicon.png" width="200" height="200" /></asp:HyperLink>
                    <h2>Correction Form</h2>
                    <p>You can submit any complaint or correction in your previously submitted forms here. It will be rectified after aprroval from admin</p>

                </div>
                <div class="col-md-6">
                    <asp:HyperLink ID="feelink" NavigateUrl="#" runat="server"><img src="images/feeicon.jpg" width="200" height="200" /></asp:HyperLink>
                    <h2>Check Fees Records</h2>
                    <p>Submit tution fees, degree issuance fees and check your fees record</p>
                </div>
                
            </div>
        </div>
    </section>
</asp:Content>

