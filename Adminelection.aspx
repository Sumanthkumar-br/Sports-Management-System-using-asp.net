<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminelection.aspx.cs" Inherits="Sports_Management_System.Adminelection" %>
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
                    <div class="col-md-4">
                        <div class="container p-2">
      <div class="row">
         <div class="col-md ">
            <div class="card">
               <div class="card-body">
                     <div class="row">
                     <div class="col">
                        <center>
                           <h4>Application Form</h4>
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
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="name" runat="server" placeholder="Full Name" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Registration Number</label>
                        <div class="input-group">
                           <asp:TextBox CssClass="form-control" ID="reg" runat="server" placeholder="Registration Number" ></asp:TextBox>
                           <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
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
                        <label>Semister</label>
                        <div class="form-group">
                             <asp:TextBox CssClass="form-control" ID="sem" runat="server" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Department</label>
                         <div class="form-group">
                              <asp:TextBox CssClass="form-control" ID="dept" runat="server" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="contact" runat="server"  TextMode="Phone" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="mail" runat="server"  TextMode="Email" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col">
                        <label>Team</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="team" runat="server"  ReadOnly="True"></asp:TextBox>
                     </div>
                       </div>
                        </div>
                  <div class="row">
                     <div class="col">
                        <label>Describe Your Skills</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="skill" runat="server" placeholder="Your strength, keyb[points, skills etc, Should be more than 25 words" TextMode="MultiLine" Rows="4" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                 <div class="row">
                       <div class="col">
                           <label>Decision</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox10" runat="server" placeholder="Decision" ReadOnly="True"></asp:TextBox>
                              <asp:LinkButton class="btn btn-success mr-1" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" ><i class="fas fa-check-circle"></i></asp:LinkButton>
                              <asp:LinkButton class="btn btn-warning mr-1" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"><i class="far fa-pause-circle"></i></asp:LinkButton>
                              <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"><i class="fas fa-times-circle"></i></asp:LinkButton>
                           </div>
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
                    <div class="col-md-8">
                         <div class="container p-2">
                              <div class="row">
                              <div class="col-md">
                                  <div class="card">
                                      <div class="card-body">
                                          <center>
                                              <h5>Applications List</h5>
                                          </center>
                                          <hr />
                                              <div class="row">
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sportsdbConnectionString %>" SelectCommand="SELECT * FROM [app_tbl]">
                                                  </asp:SqlDataSource>
                     <div class="col-8">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="914px" DataKeyNames="reg_no" >
                           <Columns>
                              <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name" />
                              <asp:BoundField DataField="reg_no" HeaderText="reg_no" SortExpression="reg_no" ReadOnly="True" />
                              <asp:BoundField DataField="semister" HeaderText="semister" SortExpression="semister" />
                               <asp:BoundField DataField="dept" HeaderText="dept" SortExpression="dept" />
                               <asp:BoundField DataField="team" HeaderText="team" SortExpression="team" />
                               <asp:BoundField DataField="skills" HeaderText="skills" SortExpression="skills" />
                               <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                               <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                               <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
                               <asp:HyperLinkField DataNavigateUrlFields="profile" DataTextField="profile" DataTextFormatString="Click here" HeaderText="Image" NavigateUrl="profile" SortExpression="profile" Text="Click here" />
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
