<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Schedule.aspx.cs" Inherits="Sports_Management_System.Schedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 mx-auto p-2">
                <div class="card">
                    <div class="card-body p-2">
                        <center>
                             <h5>Upload Schedules</h5>
                        </center>
                       
                        <hr />

                        <div class="row">
                         
                             <div class="col-md">
                                <label>Date</label>
                        <div class="input-group">
                           <asp:TextBox CssClass="form-control" ID="check" runat="server" placeholder="Date" ></asp:TextBox>
                            <asp:LinkButton class="btn btn-primary" ID="LinkButton1" runat="server" OnClick="LinkButton1_click" ><i class="fas fa-check-circle"></i></asp:LinkButton>
                        </div>
                     </div>
                 </div>
                        <div class="row pt-1">
                           <div class="col-md">
                                <label>Venue</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="venue" runat="server" placeholder="Venue"></asp:TextBox>
                        </div>
                           </div>
                        </div>

                         <div class="row">
                           <div class="col-md">
                                <label>Description</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="decrip" runat="server" placeholder="Description" Rows="3" TextMode="MultiLine"></asp:TextBox>
                        </div>
                           </div>
                        </div>

                            <div class="row">
                     <div class="col">
                          <label>Upload Brouchure/ Banner</label>
                        <asp:FileUpload onchange="readURL(this);" class="form-control" ID="FileUpload1" runat="server" />
                          
                     </div>
                  </div>
                        <div class="row pt-3">
                            <div class="col-md-6">
                                 <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1"  runat="server" Text="Add" OnClick="Button1_Click"  />
                        </div>
                            </div>
                            <div class="col-md-6">
                                 <div class="form-group">
                           <asp:Button class="btn btn-danger btn-block btn-lg" ID="Button2"  runat="server" Text="Delete" OnClick="Button2_Click"  />
                        </div>
                            </div>
                        </div>
                    </div>
            </div>
                  <a href="homepage.aspx"><< Back to Home</a><br><br>
        </div>
            <div class="col-md-7  p-2">
                <div class="card ">
                    <div class="card-body">
                        <center>
                            <h5>Schedule list</h5>
                        </center>                       
                        <hr />
                         <div class="row">
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sportsdbConnectionString %>" SelectCommand="SELECT * FROM [schedule_tbl] ORDER BY [date_] DESC"></asp:SqlDataSource>
                     <div class="col-8">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="962px" >
                           <Columns>
                              <asp:BoundField DataField="date_" HeaderText="Date" SortExpression="date_" />
                              <asp:BoundField DataField="venue" HeaderText="Venue" SortExpression="venue" />
                              <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                               <asp:HyperLinkField DataNavigateUrlFields="brouchure" DataTextField="brouchure" DataTextFormatString="click here" HeaderText="Brouchure" NavigateUrl="brouchure" SortExpression="brouchure" Text="Click here" />
                           </Columns>
                        </asp:GridView>
                     </div>
                  </div>


                    </div>
                </div>
            </div>
    </div>
 </div>


</asp:Content>
