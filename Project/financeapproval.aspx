<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="financeapproval.aspx.cs" Inherits="Finance_Approval" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section>

        <div class="container">
            <div class="row mb-5">
                <div class="col-md-8 col-xl-6 text-center mx-auto">
                    <h2 class="font-weight-bold">Pending Approvals</h2>
                </div>
            </div>
 
            <div class="row mb-5">
                <div class="col-md-8 col-xl-7 text-center mx-auto">
                    <asp:GridView runat="server" ID="GridView1" AutoGenerateColumns="False" DataKeyNames="ID" GridLines="Both" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="8" OnRowCommand="GridView1_RowCommand" >
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField DataField="Date Submitted" HeaderText="Date Submitted" InsertVisible="False" ReadOnly="True" SortExpression="Date Submitted" />
                            <asp:BoundField DataField="Student Name" HeaderText="Student Name" InsertVisible="False" ReadOnly="True" SortExpression="Student Name" />
                            <asp:BoundField DataField="Student ID" HeaderText="Student ID" InsertVisible="False" ReadOnly="True" SortExpression="Student ID" />
                            <asp:BoundField DataField="Fee Status" HeaderText="Fee Status" InsertVisible="False" ReadOnly="True" SortExpression="Fee Status" />
                           
                            <asp:TemplateField HeaderText="Comments">
                                <ItemTemplate>
                                    <asp:TextBox runat="server" ID="comment" TextMode="MultiLine" Height="80" Width="200" placeholder="Comment"  />

                                </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:Button BackColor="Green" cssClass="btn btn-primary border rounded-0 d-block w-100" ID="Accept" runat="server" CausesValidation="false" CommandName="Accept"
                                        Text="Accept" CommandArgument='<%# Eval("ID")%>' />
                                </ItemTemplate>
         
                            </asp:TemplateField>

                            

                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button  BackColor="Red" cssClass="btn btn-primary border rounded-0 d-block w-100" ID="Reject" runat="server" CausesValidation="false" CommandName="Reject"
                                        Text="Reject" CommandArgument='<%# Eval("ID") %>' />
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

