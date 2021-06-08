<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Selectionapplication.aspx.cs" Inherits="Sports_Management_System.Selectionapplication" %>
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

     <div class="container p-2">
      <div class="row">
         <div class="col-md-8 mx-auto">
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
                          <img id="imgview" style=" border-radius:50%;" Height="150px" Width="150px" src="slide/myeve.png" />
                        </center>
                     </div>
                  </div>
                   
                  <div class="row">
                     <div class="col">
                          <label>Upload Your Image</label>
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
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="name" runat="server" placeholder="Full Name"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Registration Number</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="reg" runat="server" placeholder="Registration Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                      <div class="row">
                     <div class="col-md-4">
                        <label>Gender</label>
                        <div class="form-group">
                             <asp:DropDownList class="form-control" ID="Dropgen" runat="server">
                              <asp:ListItem Text="Select" Value="Select" />
                              <asp:ListItem Text="Male" Value="Male" />
                              <asp:ListItem Text="Female" Value="Female" />
                               </asp:DropDownList>
                        </div>
                     </div>
                           <div class="col-md-4">
                        <label>Semister</label>
                        <div class="form-group">
                             <asp:DropDownList class="form-control" ID="Dropsem" runat="server">
                              <asp:ListItem Text="Select" Value="Select" />
                              <asp:ListItem Text="I" Value="I" />
                               <asp:ListItem Text="II" Value="II" />
                                  <asp:ListItem Text="III" Value="III" />
                                  <asp:ListItem Text="IV" Value="IV" />
                                  <asp:ListItem Text="V" Value="V" />
                                  <asp:ListItem Text="VI" Value="VI" />
                               </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Department</label>
                         <div class="form-group">
                             <asp:DropDownList class="form-control" ID="Dropdep" runat="server">
                              <asp:ListItem Text="Select" Value="Select" />
                              <asp:ListItem Text="BCA" Value="BCA" />
                              <asp:ListItem Text="B Com" Value="B Com" />
                                 <asp:ListItem Text="BBA" Value="BBA" />
                              <asp:ListItem Text="B Sc" Value="B Sc" />
                               </asp:DropDownList>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="contact" runat="server" placeholder="Contact No" TextMode="Phone"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="email" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col">
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
                     <div class="col">
                        <label>Describe Your Skills</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="skill" runat="server" placeholder="Your strength, keyb[points, skills etc, Should be more than 25 words" TextMode="MultiLine" Rows="4"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                 <div class="row">
                     <div class="col">
                          <label>Upload Your Certificates, If Any</label>
                        <asp:FileUpload onchange="readURL(this);" class="form-control" ID="FileUpload2" runat="server" AllowMultiple="true"/>
                          
                     </div>
                  </div>

                    <div class="row pt-5">
                     <div class="col">
                        <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" style=" border-radius: 25px; color:white; background:linear-gradient(to bottom, #3333cc 0%, #cc00ff 100%);" runat="server" Text="Submit"  />
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br><br>
         </div>
      </div>
   </div>

</asp:Content>
