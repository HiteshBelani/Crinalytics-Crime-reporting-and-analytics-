 <%@ page import="java.sql.*,
 project.ConnectionProvider,java.io.*" %>

<%  

        String a="<div class='tableauPlaceholder' id='viz1633098602085' style='position: relative'><noscript><a href='#'><img alt='Sheet 23 ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;20&#47;2008_Vishakhapatnam&#47;Sheet23&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='2008_Vishakhapatnam&#47;Sheet23' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;20&#47;2008_Vishakhapatnam&#47;Sheet23&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1633098602085');                    var vizElement = divElement.getElementsByTagName('object')[0];                    vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';                    var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>";
        String s="a",st="name='static_image' value='",n;
       /* s=a.substring(a.indexOf("src=")+5,a.indexOf("'",a.indexOf("src=")+5));
        s="'"+s+"'";
       // System.out.println(st.length()); 
        System.out.println(s);
        st=a.substring(a.indexOf("name='static_image' value='")+27,a.indexOf("'",a.indexOf("name='static_image' value='")+27));
       st="'"+st+"'";
        System.out.println(st); 
        n=a.substring(a.indexOf("name='name' value='")+19,a.indexOf("'",a.indexOf("name='name' value='")+20));
        n="'"+n+"'";
        System.out.println(n); */
try  
    {  
    File file=new File("demo.txt");    //creates a new file instance  
    FileReader fr=new FileReader(file);   //reads the file  
    BufferedReader br=new BufferedReader(fr);  //creates a buffering character input stream  
    StringBuffer sb=new StringBuffer();    //constructs a string buffer with no characters  
    String line;  
    while((a=br.readLine())!=null)  
    {  
     s=a.substring(a.indexOf("src=")+5,a.indexOf("'",a.indexOf("src=")+5));
        s="'"+s+"'";
       // System.out.println(st.length()); 
        System.out.println(s);
        st=a.substring(a.indexOf("name='static_image' value='")+27,a.indexOf("'",a.indexOf("name='static_image' value='")+27));
       st="'"+st+"'";
        System.out.println(st); 
        n=a.substring(a.indexOf("name='name' value='")+19,a.indexOf("'",a.indexOf("name='name' value='")+20));
        n="'"+n+"'";
        System.out.println(n);    //line feed   
    }  
    fr.close();    //closes the stream and release the resources  
   // System.out.println("Contents of File: ");  
  //  System.out.println(sb.toString());   //returns a string that textually represents the object  
}  
    catch(IOException e)  
    {  
    e.printStackTrace();  
    }
  
%>
