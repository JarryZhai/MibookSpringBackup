<%@page import="pack.DbConnector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Turnip List</title>
<meta name="keywords" content="travel website, free CSS, web templates" />
<meta name="description" content="Travel Site - free website template from templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>

</head>
<body>
<body>
<div id="templatemo_container">
	<div id="templatemo_menu">
    	<ul>
            <li><a href="index.jsp" class="current">Home</a></li>
            <li><a href="adminlog.jsp">Admin Login</a></li>
            <li><a href="userlog.jsp">Customer Login</a></li>
           
        </ul>
    </div>

	<div id="templatemo_banner">
    	
        <div id="site_title">
        	<h1>
        	 <center><img class="image_noborder" src="https://upload.wikimedia.org/wikipedia/en/9/9e/Animal_Crossing_Logo.png" width="250" height="172"  /> 
      		</center>
        	</h1>
            <h1>
      			<!--  Travel Site  <span>free css template</span>  -->
            	<br>
            	<center>Exchange Everything</center>
                <!--<img src="images/templatemo_logo.png" alt="free css template" /><span>free css template</span>-->
            </h1>
        </div>
        
        
    
    </div> <!-- templatemo_banner -->
    
    <div class="fw_section blue_section">
    	
        <div class="fw_section_content">
    
            <h2>Turnips</h2>
            <p> Turnips, turnips! Watch'em rise! Try to earn a nice surprise!</p>
            <div class="button_01"><a href="addturnip.jsp" target="_parent">I have price</a></div>
            <div class="button_01"><a href="turniplist.jsp" target="_parent">I have turnips</a></div>
            <div class="button_01"><a href="https://ac-turnip.com/" target="_parent">predict price</a></div>
	  </div>
            
    </div> <!-- end of blue section -->
    
     <div id="templatemo_content">
    	
        <div id="side_column">
        	
            <div class="section_w280">
            
            	<h3>Promotions</h3>
                
              <div class="news_section">
                    	<img class="image_wrapper" src="images/templatemo_image_02.jpg" alt="image" />
                          </div>
                    
                    <div class="news_section">
                    	<img class="image_wrapper" src="images/templatemo_image_03.jpg" alt="image" />
                       </div>
                    
                <div class="button_01"><a href="index.jsp">Read All</a></div> 

            </div>
        
        </div>
        
        
        
        
        
                <div id="main_column">
        
            <div class="section_w560"><div style="position: absolute; left:470px; top:450px;">
                    <h3>Turnip List..!</h3><BR>
				          <table border="2" style="width: 550px; alignment-adjust: central; ">
                
                <tr style="color: red; background-color: steelblue; alignment-adjust:auto; font-family: fantasy; font-size: 18px;">
                   <td><font size="3">Island Name</font></td>
                   <td align="center"><font size="3">Turnip Price</font></td>
                   <td align="center"><font size="3">DODO Code</font></td>
                   <td align="center"><font size="3">Entry Fee</font></td>
                   <td align="center"><font size="3">Max Capacity</font></td>   
                   <td align="center"><font size="3">Action</font></td>      
               </tr>
<%               
    
        String  islandname=null,price=null,code=null,entry=null,maxi=null;
        


Connection conn=null;     
Statement st1=null;    
ResultSet rs1=null;

	Class.forName("com.mysql.jdbc.Driver");	
	conn=DbConnector.getConnection();
	st1 = conn.createStatement();
	rs1 = st1.executeQuery("select * from  turnipisland ");
	
	if(rs1.next()){
		islandname=rs1.getString("islandname");
		price=rs1.getString("price");
		code=rs1.getString("code");
		entry=rs1.getString("entry");
		maxi=rs1.getString("maxi");
		
	}
	else{
		out.print("error");
	}





       %>   
       <tr style="color: #0000cc; background-color: wheat">
          <form name="ff" action="turnipdelete.jsp" method="get"  onsubmit="return check()" >
               <%-- <input type="hidden" value="<%=key%>" name="key"/>  --%>
              	<td align="center"><%=islandname%></td>
             	<td align="center"><%=price%></td>
       			<td align="center"> <%=code%></td>
      			<td align="center"> <%=entry%></td>
       			<td align="center"> <%=maxi%></td>
   				<td align="center"><a href="turnipdelete.jsp?<%=key%>">Delete</a></td> --%>
          

</tr>
                                          </table><BR></BR>
               
                </div>

                <div class="cleaner"></div>
        	</div>
            
       
            
            <div class="cleaner"></div>
        </div>
       
        <div class="cleaner">
              
            
        </div>
    </div>
        
        
        
        
        
        
        <center><h3> <font color="blue">Tourist Vs Traveller</font></h3><p><h4><font color="yellow">Trip notes, transparent journalism and time travel ? by Fiona Cullinan.</font></h4></p></center>
    
        
        
         <div class="fw_section green_section">
    
    	<div class="fw_section_content">
    
            <h2>Exchange</h2>
            <p>Find everything you need!</p>
            <div class="button_01"><a href="http://www.templatemo.com" target="_parent">Add request</a></div>
            <div class="button_01"><a href="http://www.templatemo.com" target="_parent">Check the list</a></div>
            
	  </div>
    
    </div> <!-- end of green section -->
    
    
    <div id="templatemo_footer">

        
    
        Copyright � 2014 <a href="index.jsp">JP Info Tech</a> | 
        
        
    
    </div> <!-- end of footer -->
    
</div> <!-- end of container -->
</body>
</html>