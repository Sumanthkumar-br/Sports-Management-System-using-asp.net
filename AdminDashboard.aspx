<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="Sports_Management_System.AdminDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid p-3 pl-2 pr-2" >
        <div class="row ">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-3">
                        <div class="card p-3" style="width:100%; height:750px;">
                            <div class="card-body">
                                <div class="row">
                                <div class="col-md">
                                      <center>
                                       <h5 style="background-color:darkblue; color:white;" class="p-2">Live Score</h5>
                                  </center>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="card p-3" style="width:100%; height:750px;">
               <div class="card-body p-2" >
            
                    <div class="col-md-12">
                
                        <div class="row text-center">
                    <div class="col-md-4">
                        <center>
                               <img width="150" height="150" src="imgs/teamselect.png" /><br />
                              <a href="#" style="font-size:18px; font-weight:bold;"><i>Select Players</i></a>
                           </center>
                    </div>
                     <div class="col-md-4">
                          <center>
                               <img width="150" height="150" src="imgs/host.png" /><br />
                               <a href="#" style="font-size:18px; font-weight:bold;"><i>Host Sports Events</i></a>
                           </center>
                    </div>
                     <div class="col-md-4">
                         <center>
                          
                              <img width="150" height="150" src="imgs/host.png" /><br />
                               <a href="#" style="font-size:18px; font-weight:bold;"><i>Player Statistics</i></a>
                           </center>
                    </div>
                </div><br />


                        <div class="row text-center pt-5">
                    <div class="col-md-4">
                        <center>
                              <img width="150" height="150" src="imgs/schedule.png" /><br />
                               <a href="#" style="font-size:18px; font-weight:bold;"><i>Schedules</i></a>
                           </center>
                    </div>
                     <div class="col-md-4">
                          <center>
                              <img width="150" height="150" src="imgs/notify.png" /><br />
                               <a href="#" style="font-size:18px; font-weight:bold;"><i>Add Notifications</i></a>
                           </center>
                    </div>
                     <div class="col-md-4">
                         <center>
                               <img width="150" height="150"  src="imgs/Teamstat.png" /><br />
                               <a href="#" style="font-size:18px; font-weight:bold;"><i>Team Statistics</i></a>


                        
            </div>
               </div>
                        <div class="row text-center pt-5">
                    <div class="col-md-4">
                        <center>
                                <img width="150" height="150" src="imgs/result.jpg" /><br />
                               <a href="#" style="font-size:18px; font-weight:bold;"><i>Match results</i></a>
                           </center>
                    </div>
                     <div class="col-md-4">
                          <center>
                               <img width="150" height="150" src="imgs/score.png" /><br />
                               <a href="#" style="font-size:18px; font-weight:bold;"><i>Update Score</i></a>
                           </center>
                    </div>
                     <div class="col-md-4">
                         <center>
                               <img width="150" height="150" src="imgs/fame.png" /><br />
                               <a href="#" style="font-size:18px; font-weight:bold;"><i>Hall of Fame</i></a>
                           </center>
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
