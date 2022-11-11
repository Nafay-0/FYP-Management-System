<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="studentforms.aspx.cs" Inherits="StudentForms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section>

        <div class="container">
            <div class="row mb-5">
                <div class="col-md-8 col-xl-6 text-center mx-auto">
                    <h2 class="font-weight-bold">Your Degree Issuance Form</h2>
                </div>
            </div>
 
            <div class="row mb-5">
                <div class="col-md-8 col-xl-7 text-center mx-auto">
                    <asp:GridView runat="server" ID="GridView1" AutoGenerateColumns="False" DataKeyNames="ID" GridLines="Both" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="8" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound" >

                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField DataField="Date Submitted" HeaderText="Date Submitted" InsertVisible="False" ReadOnly="True" SortExpression="Date Submitted" />
                            <asp:BoundField DataField="Token No" HeaderText="Token No" InsertVisible="False" ReadOnly="True" SortExpression="Token No" />
                            <asp:BoundField DataField="Fee Status" HeaderText="Fee Status" InsertVisible="False" ReadOnly="True" SortExpression="Fee Status" />
                         
                            <asp:BoundField DataField="Decision by FYP" HeaderText="Decision by FYP" InsertVisible="False" ReadOnly="True" SortExpression="Decision by FYP" />
                            <asp:BoundField DataField="Comments by FYP" HeaderText="Comments by FYP" InsertVisible="False" ReadOnly="True" SortExpression="Comments by FYP" />
                            <asp:BoundField DataField="Decision by Finance" HeaderText="Decision by Finance" InsertVisible="False" ReadOnly="True" SortExpression="Decision by Finance" />
                            <asp:BoundField DataField="Comments by Finance" HeaderText="Comments by Finance" InsertVisible="False" ReadOnly="True" SortExpression="Comments by Finance" />
                            <asp:BoundField DataField="Status" HeaderText="Status" InsertVisible="False" ReadOnly="True" SortExpression="Status" />

                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button BackColor="Green" cssClass="btn btn-primary border rounded-0 d-block w-100" ID="Fee" runat="server" CausesValidation="false" CommandName="Fee"
                                        Text="Pay Fees" CommandArgument='<%# Eval("ID")%>' />
                                </ItemTemplate>
                            </asp:TemplateField>

                       </Columns>

                        <RowStyle BackColor="#ffffff" ForeColor="#000000" Font-Size="13px"/>
                        <HeaderStyle BackColor="#007bff" ForeColor="#ffffff" Font-Size="16px" />
                        <AlternatingRowStyle BackColor="#99caff" ForeColor="#000000" Font-Size="13px" />
        
                    </asp:GridView>
                </div>
            </div>

            <div class="row mb-5">
                <div class="col-md-8 col-xl-6 text-center mx-auto">
                    <h2 class="font-weight-bold">Your Complaint Forms</h2>
                </div>
            </div>

            <div class="row mb-5">
                <div class="col-md-8 col-xl-4 text-center mx-auto">
                    <asp:GridView runat="server" ID="GridView2" AutoGenerateColumns="False" DataKeyNames="ID" GridLines="Both" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="8"  >

                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField DataField="Date Submitted" HeaderText="Date Submitted" InsertVisible="False" ReadOnly="True" SortExpression="Date Submitted" />
                           <asp:BoundField DataField="Subject" HeaderText="Subject" InsertVisible="False" ReadOnly="True" SortExpression="Subject" /> 
                            <asp:BoundField DataField="Complaint" HeaderText="Complaint" InsertVisible="False" ReadOnly="True" SortExpression="Complaint" />
                            <asp:BoundField DataField="Status" HeaderText="Status" InsertVisible="False" ReadOnly="True" SortExpression="Status" />

                       </Columns>

                        <RowStyle BackColor="#ffffff" ForeColor="#000000" Font-Size="13px"/>
                        <HeaderStyle BackColor="#007bff" ForeColor="#ffffff" Font-Size="16px" />
                        <AlternatingRowStyle BackColor="#99caff" ForeColor="#000000" Font-Size="13px" />
        
                    </asp:GridView>
                </div>
            </div>
        </div>
    </section>


    
    

</asp:Content>

