<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Sports_Management_System.Homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="over">
        <div class="row">
        <div class="col-md-12">
            <img src="imgs/01.jpg"  width="100%" style="opacity:45%;"/>
        </div>
    </div>
   </div>





    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-3">
                    <div class="card p-1">
                       <div class="card-body p-2" style="height:490px">
                           <center>
                               <h5 class="p-2" style="background-color:darkgreen; color:white;">Live Score</h5>
                           </center>
                       </div>
                   </div>
                </div>
                <div class="col-md-6">
                    <div class="card p-1">
                    <div class="card-body p-2" style="height:490px">
                        <center>
                        <h5 class="p-2" style="background-color:darkblue; color:white;">Notifications</h5>
                        </center>
                    </div>
                </div>
                </div>
                <div class="col-md-3">
                    <div class="card p-1">
                    <div class="card-body  p-2 pl-4 pr-2" style="height:490px">
                        <center>
                            <h5 class="p-2" style="background-color:darkgreen; color:white;">Student Login</h5>
                            <hr />
                            <br />
                           
                        </center>
                         <div class="row">
                              <div class="col-md">
                                    <label  class="fas fa-user"><b style="font-family:Arial; color:darkslategray; font-weight:300;">   Registration ID</b></label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder=" Registration ID"></asp:TextBox>
                        </div>
                              </div>
                            </div>
                        <div class="row">
                            <div class="col-md">
                                 <label  class="fas fa-key text-right"> <b style="font-family:Arial; color:darkslategray; font-weight:300;">   Password</b></label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                            </div>
                        </div>
                        <div class="row text-right">
                                  <div class="col-md">
                                      <a  href="homepage.aspx">Forgot Password?</a><br /><br />
                                  </div>
                              </div>
                        <div class="row">
                            <div class="col-md">
                                 <div class="form-group">
                           <asp:Button class="btn btn-block btn-lg "  Style=" border-radius: 25px; color:white; background:linear-gradient(to bottom, #3333cc 0%, #cc00ff 100%);" ID="Button1" runat="server" Text="Login"  />
                        </div>
                        <div class="form-group">
                            <asp:Button class="btn btn-block btn-lg" href="usersignup.aspx" style=" border-radius: 25px; color:white; background:linear-gradient(to bottom, #3333cc 0%, #cc00ff 100%);"  ID="Button3" runat="server" Text="SignUp"  />
                         </div>
                            </div>
                        </div>
                        <div class="row text-center">
                       <div class="col-md">
                             <a style="" class="p-1" href="#"><i class="fab fa-2x fa-facebook"></i></a> 
                           <a style="color:red;" class="p-1" href="#"><i class="fab fa-2x fa-google-plus"></i></a> 
                           <a style="" class="p-1" href="#"><i class="fab fa-2x fa-instagram"></i></a> 
                       </div>
                   </div>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>

  
</asp:Content>
