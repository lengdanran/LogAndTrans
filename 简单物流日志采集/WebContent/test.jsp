<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
 
  <!DOCTYPE>
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title>百度地图</title>
<script src="http://api.map.baidu.com/api?v=1.4" type="text/javascript"></script>
</head>
<body>


<div id="allmap"></div>

<script type="text/javascript">
if(navigator.geolocation) {
    var id = navigator.geolocation.watchPosition(function(position){
    	console.log("纬度" + position.coords.latitude + "经度" + position.coords.longitude)
    }, function(err){
        switch(err.code) {
            case err.PERMISSION_DENIED: return "PERMISSION_DENIED";
            case err.POSITION_UNAVAILABLE: return "POSITION_UNAVAILABLE";
            case err.TIMEOUT: return "TIMEOUT";
            default: return "UNKNOWN_ERROR";
        }
    })
    // navigator.geolocation.clearWatch(id); 停止监视
}else {
    alert("你的浏览器不支持geolocation");
};
</script>




</body>


</html>