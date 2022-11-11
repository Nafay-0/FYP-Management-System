<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact_us.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section>
        <div class="body2">
            <div class="content">
                <div class="container">
                  <div class="row align-items-stretch no-gutters contact-wrap">
                    <div class="col-md-8">
                      <div class="form h-100">
                        <h3 style="padding-top:30px">Send us a message</h3>
                        <div id="contactForm" name="contactForm">
                          <div class="row">
                            <div class="col-md-6 form-group mb-5">
                              <label for="" class="col-form-label">Name *</label>
                              <asp:TextBox runat="server" type="text" class="form-control fc" name="name_contact" id="name" placeholder="Your name"/>
                            </div>
                            <div class="col-md-6 form-group mb-5">
                              <label for="" class="col-form-label">Email *</label>
                              <asp:TextBox runat="server" type="text" class="form-control fc" name="email_contact" id="email"  placeholder="Your email"/>
                            </div>
                          </div>

                          <div class="row">
                            <div class="col-md-6 form-group mb-5">
                              <label for="" class="col-form-label">Phone</label>
                              <asp:TextBox runat="server" type="number" class="form-control fc" name="r_no" id="r_no"  placeholder="Roll No"/>
                            </div>
                            <div class="col-md-6 form-group mb-5">
                              <label for="" class="col-form-label">Subject</label>
                              <asp:TextBox runat="server" type="text" class="form-control fc" name="subject" id="subject"  placeholder="Subject"/>
                            </div>
                          </div>

                          <div class="row">
                            <div class="col-md-12 form-group mb-5">
                              <label for="message" class="col-form-label">Message *</label>
                              <asp:TextBox runat="server" TextMode="MultiLine" class="form-control fc" name="message" id="message" cols="30" rows="4"  placeholder="Write your message"/>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-md-12 form-group fg2">
                              <asp:Button runat="server" onclick="SendMessage_Click" type="submit" Text="Send Message" class="btn btn-primary rounded-0 py-2 px-4"/>
                              <span class="submitting"></span>
                            </div>
                          </div>
                        </div>

                        <div id="form-message-warning mt-4"></div> 
                        <div id="form-message-success">
                          Your message was sent, thank you!
                        </div>

                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="contact-info h-100">
                        <h3>Contact Information</h3>
                        <p class="mb-5">If you are in a trouble, we are just a message away!!!</p>
                        <ul class="list-unstyled">
                          <li class="d-flex">
                            <span class="wrap-icon icon-room  mr-3"></span>
                            <span class="text">&nbsp;&nbsp;A.K. Brohi Road, H11/4, Islamabad</span>
                          </li>
                          <li class="d-flex">
                            <span class="wrap-icon icon-phone mr-3"></span>
                            <span class="text"> &nbsp;&nbsp;&nbsp;111 128 128</span>
                          </li>
                          <li class="d-flex">
                            <span class="wrap-icon icon-envelope mr-3"></span>
                            <span class="text">&nbsp;&nbsp;&nbsp;<a style="color:rgba(255, 255, 255, 0.5)" href="http://isb.nu.edu.pk">http://isb.nu.edu.pk</a></span>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>

              </div>
       </div>

    </section>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/main.js"></script>
</asp:Content>

