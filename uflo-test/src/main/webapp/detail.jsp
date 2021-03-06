<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootbox.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<title>明细</title>
<style type="text/css">
	body{
		margin: 10px;
	}
</style>
</head>
<body>
<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">
           	质检结论：
        </h3>
    </div>
    <div class="panel-body">
        <input type="radio" id="no_error">无差错
    </div>
</div>
<div class="panel panel-default">
    <div class="panel-body">
    	<div>
	       	<label class="checkbox-inline" style="margin-right: 10px">
				<input type="checkbox" id="first_approve_check" value="first_approve"> 初审
			</label>	
	       	<label class="checkbox-inline">
				<input type="radio" name="first_approve_radio" value="error"> 重大差错
			</label>
			<label class="checkbox-inline">
				<input type="radio" name="first_approve_radio" value="problem"> 一般差错
			</label>
			<label class="checkbox-inline">
				<input type="radio" name="first_approve_radio" value="warn"> 预警
			</label>
			<label class="checkbox-inline">
				<input type="radio" name="first_approve_radio" value="proposal"> 建议
			</label>
	    	<div style="margin-top:5px">
	    		差错代码：
	    		<select class="form-control" id="first_code"  style="display:inline-block;width:150px">
	    			<option value="C21">C21重大差错</option>
	    			<option value="B21">B21一般差错</option>
	    			<option value="B11">B11预警</option>
	    			<option value="A11">A11建议</option>
	    		</select>
	    	</div>
    	</div>
    	
    	<div style="margin-top:20px;">
	       	<label class="checkbox-inline" style="margin-right: 10px">
				<input type="checkbox" id="last_approve_check" value="last_approve"> 终审
			</label>	
	       	<label class="checkbox-inline">
				<input type="radio" name="last_approve_radio" value="error"> 重大差错
			</label>
			<label class="checkbox-inline">
				<input type="radio" name="last_approve_radio" value="problem"> 一般差错
			</label>
			<label class="checkbox-inline">
				<input type="radio" name="last_approve_radio" value="warn"> 预警
			</label>
			<label class="checkbox-inline">
				<input type="radio" name="last_approve_radio" value="proposal"> 建议
			</label>
	    	<div style="margin-top:5px">
	    		差错代码：
	    		<select class="form-control"  id="last_code"  style="display:inline-block;width:150px">
	    			<option value="C21">C21重大差错</option>
	    			<option value="B21">B21一般差错</option>
	    			<option value="B11">B11预警</option>
	    			<option value="A11">A11建议</option>
	    		</select>
	    	</div>
    	</div>
    	
    	<div style="margin-top:20px;">
	       	<label class="checkbox-inline" style="margin-right: 10px">
				<input type="checkbox" id="assit_approve_check" value="first_approve"> 协审
			</label>	
	       	<label class="checkbox-inline">
				<input type="radio" name="assit_approve_radio" value="error"> 重大差错
			</label>
			<label class="checkbox-inline">
				<input type="radio" name="assit_approve_radio" value="problem"> 一般差错
			</label>
			<label class="checkbox-inline">
				<input type="radio" name="assit_approve_radio" value="warn"> 预警
			</label>
			<label class="checkbox-inline">
				<input type="radio" name="assit_approve_radio" value="proposal"> 建议
			</label>
	    	<div style="margin-top:5px">
	    		差错代码：
	    		<select class="form-control"  id="assit_code"  style="display:inline-block;width:150px">
	    			<option value="C21">C21重大差错</option>
	    			<option value="B21">B21一般差错</option>
	    			<option value="B11">B11预警</option>
	    			<option value="A11">A11建议</option>
	    		</select>
	    	</div>
    	</div>
    	
    	<div style="margin-top:20px;">
	       	<label class="checkbox-inline" style="margin-right: 10px">
				<input type="checkbox" id="leader_approve_check" value="first_approve"> 组长/经理/主管：
				<input type="text" class="form-control" id="leader_opinion" style="display:inline-block;width:300px">
			</label>	
	       	<label class="checkbox-inline">
				<input type="radio" name="leader_approve_radio" value="error"> 重大差错
			</label>
			<label class="checkbox-inline">
				<input type="radio" name="leader_approve_radio" value="problem"> 一般差错
			</label>
			<label class="checkbox-inline">
				<input type="radio" name="leader_approve_radio" value="warn"> 预警
			</label>
			<label class="checkbox-inline">
				<input type="radio" name="leader_approve_radio" value="proposal"> 建议
			</label>
	    	<div style="margin-top:5px">
	    		差错代码：
	    		<select class="form-control"  id="leader_code"  style="display:inline-block;width:150px">
	    			<option value="C21">C21重大差错</option>
	    			<option value="B21">B21一般差错</option>
	    			<option value="B11">B11预警</option>
	    			<option value="A11">A11建议</option>
	    		</select>
	    	</div>
    	</div>
    </div>
</div>
	<div class="panel panel-default">
	    <div class="panel-heading">
	        <h3 class="panel-title">
	           	反馈结果：
	        </h3>
	    </div>
	    <div class="panel-body">
	    	<table class="table table-bordered" id="feedbackTable">
	    		<thead>
	    			<tr>
	    				<td style="width:120px">反馈人</td>
	    				<td style="width:100px">反馈结果</td>
	    				<td>描述</td>
	    			</tr>
	    		</thead>
	    		<tbody>
	    		</tbody>
	    	</table>
	    </div>
	</div>
	<script type="text/javascript">
		var businessId="<%=request.getParameter("businessId")%>";
		$.ajax({
			type:'POST',
			url:'poc?method=loadOpinions',
			data:{itemId:businessId},
			success:function(opinions){
				var body=$("#feedbackTable").find("tbody");
				for(var i=0;i<opinions.length;i++){
					var op=opinions[i];
					var tr=$("<tr></tr>");
					body.append(tr);
					tr.append("<td>"+op.user+"</td>");
					tr.append("<td>"+(op.feedbackType==='confirm' ? '确认' : '争议')+"</td>");
					tr.append("<td>"+op.desc+"</td>");
				}
			}
		});
	</script>
</body>
</html>