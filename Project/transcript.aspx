<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="transcript.aspx.cs" Inherits="Transcript" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section>

        <div class="container">
            <div class="row mb-5">
                <div class="col-md-8 col-xl-6 text-center mx-auto">
                    <h2 class="font-weight-bold">Issue Transcript</h2>
                </div>
            </div>
 
            <div class="row mb-5">
                <div class="col-md-8 col-xl-8 text-center mx-auto">
                    <asp:GridView runat="server" ID="GridView1" AutoGenerateColumns="False" DataKeyNames="student_id" GridLines="Both" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="8" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound">
                        <Columns>
                            <asp:BoundField DataField="date_issued" HeaderText="Issuance Date" InsertVisible="False" ReadOnly="True" SortExpression="date_issued" />
                            <asp:BoundField DataField="student_id" HeaderText="Student ID" InsertVisible="False" ReadOnly="True" SortExpression="student_id" />
                            <asp:BoundField DataField="name" HeaderText="Student Name" InsertVisible="False" ReadOnly="True" SortExpression="name" />
                            <asp:BoundField DataField="cgpa" HeaderText="CGPA" InsertVisible="False" ReadOnly="True" SortExpression="cgpa" />
                            <asp:BoundField DataField="Department" HeaderText="Department" InsertVisible="False" ReadOnly="True" SortExpression="Department" />
                            <asp:BoundField DataField="degree" HeaderText="Degree" InsertVisible="False" ReadOnly="True" SortExpression="degree" />
                            <asp:BoundField DataField="batch" HeaderText="Batch" InsertVisible="False" ReadOnly="True" SortExpression="batch" />
                            <asp:BoundField DataField="status" HeaderText="Status" InsertVisible="False" ReadOnly="True" SortExpression="status" />
                            
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button BackColor="Green" cssClass="btn btn-primary border rounded-0 d-block w-100" ID="transcript" runat="server" CausesValidation="false" CommandName="transcript"
                                        Text="Issue Transcript" CommandArgument='<%# Eval("student_id")%>' />
                                </ItemTemplate>
                            </asp:TemplateField>

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

