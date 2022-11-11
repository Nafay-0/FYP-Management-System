<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="trackcomplaints.aspx.cs" Inherits="Track_Complaint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section>

        <div class="container">
            <div class="row mb-5">
                <div class="col-md-8 col-xl-6 text-center mx-auto">
                    <h2 class="font-weight-bold">Track Complaint Forms</h2>
                </div>
            </div>
 
            <div class="row mb-5">
                <div class="col-md-8 col-xl-7 text-center mx-auto">
                    <asp:GridView runat="server" ID="GridView1" AutoGenerateColumns="False" DataKeyNames="Form ID" GridLines="Both" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="8" >
                        <Columns>
                            <asp:BoundField DataField="Form ID" HeaderText="Form ID" InsertVisible="False" ReadOnly="True" SortExpression="Form ID" />
                            <asp:BoundField DataField="Date Submitted" HeaderText="Date Submitted" InsertVisible="False" ReadOnly="True" SortExpression="Date Submitted" />
                            <asp:BoundField DataField="Student Name" HeaderText="Student Name" InsertVisible="False" ReadOnly="True" SortExpression="Student Name" />
                            <asp:BoundField DataField="Student ID" HeaderText="Student ID" InsertVisible="False" ReadOnly="True" SortExpression="Student ID" />
                            <asp:BoundField DataField="Subject" HeaderText="Subject" InsertVisible="False" ReadOnly="True" SortExpression="Subject" />
                            <asp:BoundField DataField="Complaint" HeaderText="Complaint" InsertVisible="False" ReadOnly="True" SortExpression="Complaint" />
                            <asp:BoundField DataField="Admin ID" HeaderText="Admin ID" InsertVisible="False" ReadOnly="True" SortExpression="Admin ID" />
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

