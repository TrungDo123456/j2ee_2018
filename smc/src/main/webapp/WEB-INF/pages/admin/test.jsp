<%@ page contentType="text/html; charset=UTF-8"%><%@ taglib prefix="s"  
    uri="/struts-tags"%>  
<html>  
    <head>  
        <title>Success: Upload User Image</title>  
    </head>  
    <body>  
        <h2>  
            Struts2 File Upload Example  
        </h2>  
        User Image: <s:property value="userImage" /><br/>  
        Content Type:<s:property value="userImageContentType" /><br/>  
        File Name:  <s:property value="userImageFileName" /><br/>  
        Uploaded Image: <img src="../sources/images/<s:property value="userImageFileName"/>"  width="400" height="400" />  
                            
    </body>  
</html>  