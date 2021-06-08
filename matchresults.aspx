<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="matchresults.aspx.cs" Inherits="Sports_Management_System.matchresults" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <script type="text/javascript">
      $(document).ready(function () {
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
      });

      function readURL(input) {
          if (input.files && input.files[0]) {
              var reader = new FileReader();

              reader.onload = function (e) {
                  $('#imgview').attr('src', e.target.result);
              };

              reader.readAsDataURL(input.files[0]);
          }
      }
      </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




     <div class="container-fluid">
        <div class="row">
            <div class="col-md-5  p-2">
                <div class="card">
                    <div class="card-body p-2">
                        <center>
                             <h5>Match Results</h5>
                        </center>
                       
                        <hr />

                        <div class="row">
                         
                             <div class="col-md">
                                <label>Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="check" runat="server" placeholder="Date"  TextMode="Date"></asp:TextBox>
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
                                <label>Team</label>
                         <div class="form-group">
                           <asp:DropDownList class="form-control" ID="Dropteam" runat="server">
                              <asp:ListItem Text="Select" Value="Select" />
                              <asp:ListItem Text="Cricket" Value="Cricket" />
                              <asp:ListItem Text="VolleyBall" Value="VolleyBall" />
                              <asp:ListItem Text="Kabbaddi" Value="Kabbaddi" />
                              <asp:ListItem Text="FootBall" Value="FootBall" />
                              <asp:ListItem Text="ThrowBall" Value="ThrowBall" />
                               </asp:DropDownList>
                        </div>
                           </div>
                        </div>
                        <div class="row">
                           <div class="col-md">
                                <label>Opposition</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="oppo" runat="server" placeholder="Opposition"></asp:TextBox>
                        </div>
                           </div>
                        </div>
                         <div class="row">
                           <div class="col-md">
                                <label>Results</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Select" Value="Select" />
                              <asp:ListItem Text="Win" Value="Win" />
                              <asp:ListItem Text="Lost" Value="Loss" />
                              <asp:ListItem Text="Runner Up" Value="Runner Up" />
                               </asp:DropDownList>
                        </div>
                          
                        </div>
                           <div class="row">
                           <div class="col-md">
                                <label>Remarks</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="remarks" runat="server" placeholder="Remarks"></asp:TextBox>
                        </div>
                           </div>
                        </div>

                        <div class="row pt-3">
                            <div class="col-md">
                                 <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1"  runat="server" Text="Add" OnClick="Button1_Click"  />
                        </div>
                         
                        </div>
                    </div>
            </div>
                  <a href="homepage.aspx"><< Back to Home</a><br><br>
        </div>
          
                </div>







            <div class="col-md-7  p-2">
                <div class="card ">
                    <div class="card-body">
                        <center>
                            <h5>Results</h5>
                        </center>                       
                        <hr />
                         
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sportsdbConnectionString %>" SelectCommand="SELECT * FROM [result_tbl]"></asp:SqlDataSource>
                     
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="827px" >
                           <Columns>
                              <asp:BoundField DataField="date_" HeaderText="Date" SortExpression="date_" />
                              <asp:BoundField DataField="venue" HeaderText="Venue" SortExpression="venue" />
                              <asp:BoundField DataField="team" HeaderText="Team" SortExpression="team" />
                               <asp:BoundField DataField="opposition" HeaderText="Opposition" SortExpression="opposition" />
                               <asp:BoundField DataField="results" HeaderText="Results" SortExpression="results" />
                               <asp:BoundField DataField="remarks" HeaderText="Remarks" SortExpression="remarks" />
                           </Columns>
                        </asp:GridView>

                    </div>
                </div>
            </div>
    </div>
 </div>














</asp:Content>
