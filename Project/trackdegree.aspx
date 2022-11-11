<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="trackdegree.aspx.cs" Inherits="Track_Degree" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section>

        <div class="container">
            <div class="row mb-5">
                <div class="col-md-8 col-xl-6 text-center mx-auto">
                    <h2 class="font-weight-bold">Track Degree Issuance Forms</h2>
                </div>
            </div>
 
            <div class="row mb-5">
                <div class="col-md-8 col-xl-7 text-center mx-auto">
                    <asp:GridView runat="server" ID="GridView1" AutoGenerateColumns="False" DataKeyNames="Form ID" GridLines="Both" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="8" >
                        <Columns>
                            <asp:BoundField DataField="Form ID" HeaderText="Form ID" InsertVisible="False" ReadOnly="True" SortExpression="Form ID" />
                            <asp:BoundField DataField="Date Submitted" HeaderText="Date Submitted" InsertVisible="False" ReadOnly="True" SortExpression="Date Submitted" />
                            <asp:BoundField DataField="Token No" HeaderText="Token No" InsertVisible="False" ReadOnly="True" SortExpression="Token No" />
                            <asp:BoundField DataField="Student Name" HeaderText="Student Name" InsertVisible="False" ReadOnly="True" SortExpression="Student Name" />
                            <asp:BoundField DataField="Student ID" HeaderText="Student ID" InsertVisible="False" ReadOnly="True" SortExpression="Student ID" />
                            <asp:BoundField DataField="Finance Officer ID" HeaderText="Finance Officer ID" InsertVisible="False" ReadOnly="True" SortExpression="Finance Officer ID" />
                            <asp:BoundField DataField="Decision BY Finance" HeaderText="Decision by Finance" InsertVisible="False" ReadOnly="True" SortExpression="DECISION BY FINANCE" />
                            <asp:BoundField DataField="FYP Officer ID" HeaderText="FYP Officer ID" InsertVisible="False" ReadOnly="True" SortExpression="FYP Officer ID" />
                            <asp:BoundField DataField="Decision BY FYP" HeaderText="Decision by FYP" InsertVisible="False" ReadOnly="True" SortExpression="DECISION BY FYP" />
                            <asp:BoundField DataField="Admin ID" HeaderText="Admin ID" InsertVisible="False" ReadOnly="True" SortExpression="Admin ID" />
                            <asp:BoundField DataField="Status" HeaderText="Status" InsertVisible="False" ReadOnly="True" SortExpression="Status" />
                            
                       </Columns>

                        <RowStyle BackColor="#ffffff" ForeColor="#000000" Font-Size="13px"/>
                        <HeaderStyle BackColor="#007bff" ForeColor="#ffffff" Font-Size="16px" />
                        <AlternatingRowStyle BackColor="#99caff" ForeColor="#000000" Font-Size="13px" />
        
                    </asp:GridView>

                    <br />
                    <br />
                    <div class="row mb-5">
                        <div class="col-md-8 col-xl-7 text-center mx-auto">
                            <h2 class="font-weight-bold">Time Taken By Each Department</h2>
                        </div>
                    </div>

                    <div class="row mb-5">
                        <div class="col-md-8 col-xl-12 text-center mx-auto">
                            <asp:GridView runat="server" ID="GridView2" AutoGenerateColumns="False" DataKeyNames="Form ID" GridLines="Both" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="8" >
                                <Columns>
                                    <asp:BoundField DataField="Form ID" HeaderText="Form ID" InsertVisible="False" ReadOnly="True" SortExpression="Form ID" />
                                    <asp:BoundField ItemStyle-Wrap="false" DataField="FIN_Processing_Time" HeaderText="Time Taken by by Finance" InsertVisible="False" ReadOnly="True" SortExpression="FIN_Processing_Time" />
                                    <asp:BoundField ItemStyle-Wrap="false" DataField="FYP_Processing_Time" HeaderText="Time Taken by FYP" InsertVisible="False" ReadOnly="True" SortExpression="FYP_Processing_Time" /> 
                                    <asp:BoundField ItemStyle-Wrap="false" DataField="Admin_Processing_Time" HeaderText="Time Taken by Onestop" InsertVisible="False" ReadOnly="True" SortExpression="Admin_Processing_Time" />
                               </Columns>

                                <RowStyle BackColor="#ffffff" ForeColor="#000000" Font-Size="13px"/>
                                <HeaderStyle BackColor="#007bff" ForeColor="#ffffff" Font-Size="16px" />
                                <AlternatingRowStyle BackColor="#99caff" ForeColor="#000000" Font-Size="13px" />
        
                            </asp:GridView>
                        </div>
                    </div>

                    
                </div>
            </div>
        </div>
    </section>
</asp:Content>

