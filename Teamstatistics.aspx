<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Teamstatistics.aspx.cs" Inherits="Sports_Management_System.Teamstatistics" %>
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
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-5">
                        <div class="container p-2">
      <div class="row">
         <div class="col-md ">
            <div class="card">
               <div class="card-body">
                     <div class="row">
                     <div class="col">
                        <center>
                           <h4>Team</h4>
                        </center>
                     </div>
                  </div>
                <hr />
                  <div class="row">
                     <div class="col">
                        <center>
                          <img id="imgview" style=" border-radius:50%;" Height="150px" Width="150px" src="imgs/teamselect.png" />
                        </center>
                     </div>
                  </div>
                        <div class="row">
                     <div class="col">
                          <label>Upload Team Logo</label>
                        <asp:FileUpload onchange="readURL(this);" class="form-control" ID="FileUpload1" runat="server" />
                          
                     </div>
                  </div>
                  
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Team </label>
                        <div class="form-group">
                          <asp:TextBox CssClass="form-control" ID="team" runat="server"  placeholder="Team "></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Team ID</label>
                        <div class="input-group">
                           <asp:TextBox CssClass="form-control" ID="id" runat="server" placeholder="Team ID" ></asp:TextBox>
                           <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" OnClick="LinkButton4_click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                        </div>
                     </div>
                  </div>
                      <div class="row">
                     <div class="col-md-3">
                        <label>Total Matches</label>
                        <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="total" runat="server" placeholder="Total Matches"></asp:TextBox>
                        </div>
                     </div>
                           <div class="col-md-3">
                        <label>Matches Won</label>
                        <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="won" runat="server" placeholder="Won"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-3">
                        <label>Matches Lost</label>
                         <div class="form-group">
                              <asp:TextBox CssClass="form-control" ID="lost" runat="server" placeholder="Lost"></asp:TextBox>
                        </div>
                     </div>
                            <div class="col-md-3">
                        <label>No Result</label>
                         <div class="form-group">
                              <asp:TextBox CssClass="form-control" ID="nr" runat="server" placeholder="NR"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Captain</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="captain" runat="server"  placeholder="Captain"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Winning Percentage</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="percent" runat="server" placeholder="Winning per."></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <div class="row">
                           <div class="col-md">
                                <label>Titles Won</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="titles" runat="server" placeholder="Titles Won" Rows="3" TextMode="MultiLine"></asp:TextBox>
                        </div>
                           </div>
                        </div>
                   <div class="row">
                            <div class="col-md-6">
                                 <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button2"  runat="server" Text="Add" OnClick="Button2_Click"  />
                        </div>
                            </div>
                            <div class="col-md-6">
                                 <div class="form-group">
                           <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button3"  runat="server" Text="Update" OnClick="Button3_Click"  />
                        </div>
                            </div>
                        </div>
                    
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br><br>
         </div>
      </div>
   </div>
                    </div>
                    <div class="col-md-7">
                         <div class="container p-3">
                              <div class="row">
                              <div class="col-md">
                                  <div class="card">
                                      <div class="card-body">
                                          <center>
                                              <h5>Statistics</h5>
                                          </center>
                                          <hr />
                                           <div class="row">
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sportsdbConnectionString %>" SelectCommand="SELECT * FROM [team_master_tbl]"></asp:SqlDataSource>
                     <div class="col-8">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="team_id" DataSourceID="SqlDataSource1" Width="776px" >
                           <Columns>
                              <asp:BoundField DataField="team_id" HeaderText="ID" SortExpression="team_id" ReadOnly="True" />
                              <asp:BoundField DataField="team" HeaderText="Team" SortExpression="team" />
                              <asp:BoundField DataField="total_matches" HeaderText="Matches" SortExpression="total_matches" />
                              <asp:BoundField DataField="won" HeaderText="Won" SortExpression="won" />
                              <asp:BoundField DataField="lost" HeaderText="Lost" SortExpression="lost" />
                              <asp:BoundField DataField="noresult" HeaderText="NR" SortExpression="noresult" />
                               <asp:BoundField DataField="captain" HeaderText="Captain" SortExpression="captain" />
                               <asp:BoundField DataField="percentage" HeaderText="Win %" SortExpression="percentage" />
                               <asp:BoundField DataField="titles" HeaderText="Titles" SortExpression="titles" />
                           </Columns>
                        </asp:GridView>
                     </div>
                  </div>

                                      </div>
                                  </div>
                              </div>
                          </div>
                         </div>
                    </div>
                </div>
                  
            </div>
        </div>
    </div>
</asp:Content>
