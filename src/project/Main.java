package project;
import java.sql.*;
import project.ConnectionProvider;
import java.io.*;
public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub A8L1016BA3
		 String a="<div class='tableauPlaceholder' id='viz1633098602085' style='position: relative'><noscript><a href='#'><img alt='Sheet 23 ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;20&#47;2008_Vishakhapatnam&#47;Sheet23&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='2008_Vishakhapatnam&#47;Sheet23' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;20&#47;2008_Vishakhapatnam&#47;Sheet23&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1633098602085');                    var vizElement = divElement.getElementsByTagName('object')[0];                    vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';                    var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>";
	        String src_url="a",static_url="name='static_image' value='",name,id="";
	       /* s=a.substring(a.indexOf("src=")+5,a.indexOf("'",a.indexOf("src=")+5));
	        s="'"+s+"'";
	       // System.out.println(st.length()); 
	        System.out.println(s);
	        st=a.substring(a.indexOf("name='static_image' value='")+27,a.indexOf("'",a.indexOf("name='static_image' value='")+27));
	       st="'"+st+"'";
	        System.out.println(st); */
	        id=a.substring(a.indexOf("id=")+3,a.indexOf("'",a.indexOf("id=")+4)+1);
	       // id="'"+id+"'";
	        System.out.println("id="+id);
	        
	try  
	    {  
	    File file=new File("C:\\Users\\HP\\eclipse-workspace\\Crinalytics\\src\\project\\demo.txt");    //creates a new file instance  
	    FileReader fr=new FileReader(file);   //reads the file  
	    BufferedReader br=new BufferedReader(fr);  //creates a buffering character input stream  
	    StringBuffer sb=new StringBuffer();    //constructs a string buffer with no characters  
	    //String line; 
	    //{"Arson","Attempt_to_murder",
	   // 		"Burglary","Cheating","Counterfeiting","Causing_Death_By_Negligence","Criminal_Breach_of_Trust","Crulty_by_Husband","Dacoity","Dowry_Deaths",
	   // 		"Hurt","Kidnapping","Molestation","Murder","Other_IPC_Crimes","Rape","Riots","Robbery","Sexual_Harassment","Theft","Total_Crimes"};
	    String c[] =new String[]{"Murder", "Attempt to Commit Murder", "Rape - Total", "Kidnapping", "Dacoity", "Preparation & Assembly for Dacoity", "Robbery", "Burglary", "Theft - Total", "Riots", "Criminal Breach of Trust", "Cheating", "Counterfeiting", "Arson", "Hurt", "Dowry Deaths", "Molestation", "Sexual Harassment", "Cruelty by Husband and Relatives", "Importation of Girls", "Causing Death by Negligence", "Other IPC Crimes", "Total Cognizable Crimes Under IPC"};
	    int i=0;
	    while((a=br.readLine())!=null)  
	    {  
	    	System.out.print("c[i]="+c[i]);
	    	id=a.substring(a.indexOf("id=")+4,a.indexOf("'",a.indexOf("id=")+4));
		       // id="'"+id+"'";
		        System.out.print(" id="+id);
	     src_url=a.substring(a.indexOf("src=")+5,a.indexOf("'",a.indexOf("src=")+5));
	       // src_url="'"+src_url+"'";
	       // System.out.println(st.length()); 
	        System.out.print(" src_url="+src_url);
	        static_url=a.substring(a.indexOf("name='static_image' value='")+27,a.indexOf("'",a.indexOf("name='static_image' value='")+27));
	       //static_url="'"+static_url+"'";
	        System.out.print(" static_url="+static_url); 
	        name=a.substring(a.indexOf("name='name' value='")+19,a.indexOf("'",a.indexOf("name='name' value='")+20));
	       // name="'"+name+"'";
	        System.out.println(" name="+name);    //line feed   
	        Connection con=ConnectionProvider.getCon();
	   	 PreparedStatement p=con.prepareStatement("insert into 2008_crimewise_analysis values(?,?,?,?,?,?)");
	   	 p.setString(1,"2008" );
	   	 p.setString(2,c[i++] );
	   	 p.setString(3,id );
	   	 p.setString(4,src_url );
	   	 p.setString(5,name );
	   	 p.setString(6, static_url);
	   	 //p.setString(7,description );
	   	
	   	 p.executeUpdate();
	   	System.out.println(" Done");
	    }  
	    fr.close();    //closes the stream and release the resources  
	   // System.out.println("Contents of File: ");  
	  //  System.out.println(sb.toString());   //returns a string that textually represents the object  
	}  
	    catch(Exception e)  
	    {  
	    e.printStackTrace();  
	    }
	  

	}

}
