<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>物流数据采集界面</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script src="${pageContext.request.contextPath }/js/jquery-3.4.1.min.js"></script>
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css"  rel="stylesheet">
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>	
</head>
<body>
	<div class="container">
	<h2 >物流数据采集</h2>
	
	
	<form class="form-horizontal" action="GatherTransServlet" method="post">
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">物流ID</label>
    <div class="col-sm-10">
      <input type="text" name="TransID" class="form-control" id="inputEmail3"  style="width:300px" placeholder="ID">
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">目的地</label>
    <div class="col-sm-10">
      <input type="text" name="Destination" class="form-control" id="inputPassword3" style="width:300px" placeholder="目的地">
    </div>
  </div>
  
  <div class="form-group">
    <label for="Address" class="col-sm-2 control-label">经手人</label>
    <div class="col-sm-10">
      <input type="text" name="Handler" class="form-control" id="Address" style="width:300px" placeholder="经手人">
    </div>
  </div>
  
  <div class="form-group">
    <label for="Address1" class="col-sm-2 control-label">收货人</label>
    <div class="col-sm-10">
      <input type="text" name="Receiver" class="form-control" id="Address1" style="width:300px" placeholder="收货人">
    </div>
  </div>
  
  <div class="form-group">
  	<label for="typw" class="col-sm-2 control-label">物流状态</label>
  		<div class="radio">
  			<label class="radio-inline"><input type="radio" name="type" id="inlineRadio1" value="1">发货中</label>
  			<label class="radio-inline"><input type="radio" name="type" id="inlineRadio2" value="2">送货中</label>
  			<label class="radio-inline"><input type="radio" name="type" id="inlineRadio3" value="3">已签收</label>
  		</div>
  </div>
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">确认提交</button>
      <button type="reset" class="btn btn-default">重置数据</button>
      <button onclick="" class="btn btn-default">返回</button>
    </div>
  </div>
</form>



</div>
</body>
</html>