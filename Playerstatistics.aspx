<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Playerstatistics.aspx.cs" Inherits="Sports_Management_System.Playerstatistics" %>
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
                           <h4>Statistics Update</h4>
                        </center>
                     </div>
                  </div>
                <hr />
                  
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                    
                            <div class="row">
                     <div class="col">
                        <div class="form-group">
                           <asp:Button class="btn btn-primary btn-block btn-sm" ID="Button1" runat="server" Text="Get Applications" OnClick="Button1_Click" />
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="name" runat="server" placeholder="Full Name" ReadOnly="true" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Registration Number</label>
                        <div class="input-group">
                               <asp:TextBox CssClass="form-control" ID="reg" runat="server" placeholder="Reg No" ></asp:TextBox>
                        
                           <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" ><i class="fas fa-check-circle"></i></asp:LinkButton>
                        </div>
                     </div>
                  </div>
                      <div class="row">
                     <div class="col-md-4">
                        <label>Gender</label>
                        <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="gen" runat="server"  ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                           <div class="col-md-4">
                        <label>Department</label>
                        <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="dept" runat="server" ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Team</label>
                         <div class="form-group">
                              <asp:TextBox CssClass="form-control" ID="team" runat="server"  ></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Total Matches</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="tot" runat="server"  ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Role</label>
                         <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                              <asp:ListItem Text="Select" Value="Select" />
                              <asp:ListItem Text="Right Hand Bat" Value="Right Hand Bat" />
                              <asp:ListItem Text="Left Arm break" Value="Left Arm break" />
                              <asp:ListItem Text="Right arm break" Value="Right arm break" />
                              <asp:ListItem Text="Right Medium" Value="Right Medium" />
                              <asp:ListItem Text="Left Medium" Value="Left Medium" />
                             <asp:ListItem Text="Right Arm Fast" Value="Right Arm Fast" />
                             <asp:ListItem Text="Left Arm Fast" Value="Left Arm Fast" />
                             <asp:ListItem Text="Left Medium" Value="Left Medium" />
                             <asp:ListItem Text="Right Medium" Value="Right Medium" />
                             <asp:ListItem Text="Left Hand Bat" Value="Left Hand Bat" />
                             <asp:ListItem Text="Left Medium" Value="Left Medium" />

                              <asp:ListItem Text="Raider" Value="Raider" />
                              <asp:ListItem Text="Right Corner" Value="Right Corner" />
                              <asp:ListItem Text="Left Corner" Value="Left Corner" />
                              <asp:ListItem Text="Right Medium" Value="Right Medium" />
                              <asp:ListItem Text="Left Medium" Value="Left Medium" />
                             <asp:ListItem Text="Right Arm Fast" Value="ThrowBall" />
                             <asp:ListItem Text="Left Arm Fast" Value="ThrowBall" />

                               </asp:DropDownList>
                     </div>
                  </div>
                   <div class="row">
                       <div class="col-md-6">
                            <label>Rating out of 10</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="rating" runat="server"  ></asp:TextBox>
                        </div>
                       </div>
                       <div class="col-md-6">
                            <label>Image Link</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="img" runat="server" ReadOnly="true"></asp:TextBox>
                        </div>
                       </div>
                   </div>
                   <hr />
                   <div class="row">
                     <div class="col-md-4">
                        <label id="Label0" runat="server" >Innings</label>
                        <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="inn" runat="server"></asp:TextBox>
                        </div>
                     </div>
                           <div class="col-md-4">
                     <label id="Label1" runat="server">Runs</label>
                        <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="runs" runat="server" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                       <label id="Label2" runat="server">Wickets</label>
                         <div class="form-group">
                              <asp:TextBox CssClass="form-control" ID="wik" runat="server" ></asp:TextBox>
                        </div>
                     </div>
                       
                  </div>

                   <div class="row">
                     <div class="col-md-4">
                       <label id="Label3" runat="server">Strike Rate</label>
                        <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="strike" runat="server"></asp:TextBox>
                        </div>
                     </div>
                           <div class="col-md-4">
                    <label id="Label4" runat="server">Catches</label>
                        <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="catchs" runat="server" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                <label id="Label5" runat="server">Avg. Batting</label>
                         <div class="form-group">
                              <asp:TextBox CssClass="form-control" ID="avgbat" runat="server" ></asp:TextBox>
                        </div>
                     </div>
                       
                  </div>

                   <div class="row">
                     <div class="col-md-4">
              <label id="Label6" runat="server">Best Batting</label>
                        <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="bestbat" runat="server" ></asp:TextBox>
                        </div>
                     </div>
                           <div class="col-md-4">
          <label id="Label7" runat="server">Best Bowling</label>
                        <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="bstbowl" runat="server" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
            <label id="Label8" runat="server">Fifer</label>
                         <div class="form-group">
                              <asp:TextBox CssClass="form-control" ID="fifer" runat="server" ></asp:TextBox>
                        </div>
                     </div>
                       
                  </div>


                   <div class="row">
                     <div class="col-md-4">
             <label id="Label9" runat="server">Most 4's - 6's</label>
                        <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="four" runat="server" ></asp:TextBox>
                        </div>
                     </div>
                           <div class="col-md-4">
                      <label id="Label10" runat="server">Most 50's - 100's</label>
                        <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="fifty" runat="server" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
               <label id="Label11" runat="server">Man of the Match</label>
                         <div class="form-group">
                              <asp:TextBox CssClass="form-control" ID="mom" runat="server" ></asp:TextBox>
                        </div>
                     </div>
                       
                  </div>
                  



                     <div class="row">
                     <div class="col-md-4">
                      <label id="Label12" runat="server">Tot. Raid Points</label>
                        <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="raids" runat="server"  ></asp:TextBox>
                        </div>
                     </div>
                           <div class="col-md-4">
                       <label id="Label13" runat="server">Tot. Tackle Points</label>
                        <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="tackles" runat="server" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                       <label id="Label14" runat="server">Avg. Raid Points</label>
                         <div class="form-group">
                              <asp:TextBox CssClass="form-control" ID="avgraid" runat="server" ></asp:TextBox>
                        </div>
                     </div>
                       
                  </div>

                   <div class="row">
                     <div class="col-md-4">
                        <label id="Label15" runat="server">Avg. Tackle Points</label>
                        <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="avgtackle" runat="server" ></asp:TextBox>
                        </div>
                     </div>
                           <div class="col-md-4">
                       <label id="Label16" runat="server">Tot. Super Raids</label>
                        <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="superraids" runat="server" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label id="Label17" runat="server">Tot. Super Tackles</label>
                         <div class="form-group">
                              <asp:TextBox CssClass="form-control" ID="supertack" runat="server" ></asp:TextBox>
                        </div>
                     </div>
                       
                  </div>

                   <hr />
                   <div class="row">
                     <div class="col-md-3">
                        <label id="Label18" runat="server">Most Goals</label>
                        <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="mostgoal" runat="server"  ></asp:TextBox>
                        </div>
                     </div>
                        <div class="col-md-3">
                         <label id="Label19" runat="server">Assists</label>
                        <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="assist" runat="server"  ></asp:TextBox>
                        </div>
                     </div>
                           <div class="col-md-3">
                         <label id="Label20" runat="server">Clearings</label>
                        <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="clearing" runat="server" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-3">
                         <label id="Label21" runat="server">Clean sheets</label>
                         <div class="form-group">
                              <asp:TextBox CssClass="form-control" ID="cleansheet" runat="server" ></asp:TextBox>
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
                           <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button3"  runat="server" Text="Update"  />
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
                         <div class="container p-2">
                              <div class="row">
                              <div class="col-md">
                                  <div class="card" style="height:700px">
                                      <div class="card-body" >
                                          <center>
                                              <h5>Players List</h5>
                                          </center>
                                          <hr />
                                            <div class="row">
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sportsdbConnectionString %>" SelectCommand="SELECT [full_name], [reg_no], [total_matches], [rating], [best_bat], [avg_bat], [best_bowl], [img] FROM [Cricket]">
                                                </asp:SqlDataSource>
                     <div class="col-8">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="805px" CellPadding="4" DataKeyNames="reg_no" ForeColor="#333333" GridLines="None" >
                            <AlternatingRowStyle BackColor="White" />
                           <Columns>
                              <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name" />
                              <asp:BoundField DataField="reg_no" HeaderText="reg_no" SortExpression="reg_no" ReadOnly="True" />
                              <asp:BoundField DataField="total_matches" HeaderText="total_matches" SortExpression="total_matches" />
                               <asp:BoundField DataField="rating" HeaderText="rating" SortExpression="rating" />
                               <asp:BoundField DataField="best_bat" HeaderText="best_bat" SortExpression="best_bat" />
                               <asp:BoundField DataField="avg_bat" HeaderText="avg_bat" SortExpression="avg_bat" />
                               <asp:BoundField DataField="best_bowl" HeaderText="best_bowl" SortExpression="best_bowl" />
                               <asp:BoundField DataField="img" HeaderText="img" SortExpression="img" />
                           </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
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


        <div class="row">
            <div class="col">
                <div class="row">
                    <div class="col-md-6">
                      
                                  <div class="card" style="height:700px">
                                      <div class="card-body" >
                                          <center>
                                              <h5>Players List</h5>
                                          </center>
                                          <hr />
                                            <div class="row">
                     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sportsdbConnectionString %>" SelectCommand="SELECT [full_name], [reg_no], [total_matches], [rating], [role], [avg_bat], [best_bat], [img] FROM [Cricket]">
                                                </asp:SqlDataSource>
                     <div class="col-8">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="745px" DataKeyNames="reg_no" >
                           <Columns>
                              <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name" />
                              <asp:BoundField DataField="reg_no" HeaderText="reg_no" SortExpression="reg_no" ReadOnly="True" />
                              <asp:BoundField DataField="total_matches" HeaderText="total_matches" SortExpression="total_matches" />
                               <asp:BoundField DataField="rating" HeaderText="rating" SortExpression="rating" />
                               <asp:BoundField DataField="best_bat" HeaderText="best_bat" SortExpression="best_bat" />
                               <asp:BoundField DataField="avg_bat" HeaderText="avg_bat" SortExpression="avg_bat" />
                               <asp:BoundField DataField="best_bowl" HeaderText="best_bowl" SortExpression="best_bowl" />
                               <asp:HyperLinkField DataNavigateUrlFields="img" DataTextField="img" DataTextFormatString="Click here" HeaderText="Image" NavigateUrl="click here" SortExpression="img" Text="Click here" />
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
     
</asp:Content>
