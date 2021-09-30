<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=865bb5e6b5dd1c9aafd66f786f305256"></script>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<div id="map" style="width: 500px; height: 400px;"></div>
</body>
</html>
