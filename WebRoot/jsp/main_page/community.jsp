<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Practical CSS3 tables with rounded corners - demo</title>
<style>
body {
	width: 600px;
	margin: 40px auto;
	font-family: 'trebuchet MS', 'Lucida sans', Arial;
	font-size: 14px;
	color: #444;
}

table {
	*border-collapse: collapse; /* IE7 and lower */
	border-spacing: 0;
	width: 100%;
}

.bordered {
	border: solid #ccc 1px;
	-moz-border-radius: 6px;
	-webkit-border-radius: 6px;
	border-radius: 6px;
	-webkit-box-shadow: 0 1px 1px #ccc;
	-moz-box-shadow: 0 1px 1px #ccc;
	box-shadow: 0 1px 1px #ccc;
}

.bordered tr:hover {
	background: #fbf8e9;
	-o-transition: all 0.1s ease-in-out;
	-webkit-transition: all 0.1s ease-in-out;
	-moz-transition: all 0.1s ease-in-out;
	-ms-transition: all 0.1s ease-in-out;
	transition: all 0.1s ease-in-out;
}

.bordered td, .bordered th {
	border-left: 1px solid #ccc;
	border-top: 1px solid #ccc;
	padding: 10px;
	text-align: left;
}

.bordered th {
	background-color: #dce9f9;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#ebf3fc),
		to(#dce9f9));
	background-image: -webkit-linear-gradient(top, #ebf3fc, #dce9f9);
	background-image: -moz-linear-gradient(top, #ebf3fc, #dce9f9);
	background-image: -ms-linear-gradient(top, #ebf3fc, #dce9f9);
	background-image: -o-linear-gradient(top, #ebf3fc, #dce9f9);
	background-image: linear-gradient(top, #ebf3fc, #dce9f9);
	-webkit-box-shadow: 0 1px 0 rgba(255, 255, 255, .8) inset;
	-moz-box-shadow: 0 1px 0 rgba(255, 255, 255, .8) inset;
	box-shadow: 0 1px 0 rgba(255, 255, 255, .8) inset;
	border-top: none;
	text-shadow: 0 1px 0 rgba(255, 255, 255, .5);
}

.bordered td:first-child, .bordered th:first-child {
	border-left: none;
}

.bordered th:first-child {
	-moz-border-radius: 6px 0 0 0;
	-webkit-border-radius: 6px 0 0 0;
	border-radius: 6px 0 0 0;
}

.bordered th:last-child {
	-moz-border-radius: 0 6px 0 0;
	-webkit-border-radius: 0 6px 0 0;
	border-radius: 0 6px 0 0;
}

.bordered th:only-child {
	-moz-border-radius: 6px 6px 0 0;
	-webkit-border-radius: 6px 6px 0 0;
	border-radius: 6px 6px 0 0;
}

.bordered tr:last-child td:first-child {
	-moz-border-radius: 0 0 0 6px;
	-webkit-border-radius: 0 0 0 6px;
	border-radius: 0 0 0 6px;
}

.bordered tr:last-child td:last-child {
	-moz-border-radius: 0 0 6px 0;
	-webkit-border-radius: 0 0 6px 0;
	border-radius: 0 0 6px 0;
}

/*----------------------*/
.zebra td, .zebra th {
	padding: 10px;
	border-bottom: 1px solid #f2f2f2;
}

.zebra tbody tr:nth-child(even) {
	background: #f5f5f5;
	-webkit-box-shadow: 0 1px 0 rgba(255, 255, 255, .8) inset;
	-moz-box-shadow: 0 1px 0 rgba(255, 255, 255, .8) inset;
	box-shadow: 0 1px 0 rgba(255, 255, 255, .8) inset;
}

.zebra th {
	text-align: left;
	text-shadow: 0 1px 0 rgba(255, 255, 255, .5);
	border-bottom: 1px solid #ccc;
	background-color: #eee;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#f5f5f5),
		to(#eee));
	background-image: -webkit-linear-gradient(top, #f5f5f5, #eee);
	background-image: -moz-linear-gradient(top, #f5f5f5, #eee);
	background-image: -ms-linear-gradient(top, #f5f5f5, #eee);
	background-image: -o-linear-gradient(top, #f5f5f5, #eee);
	background-image: linear-gradient(top, #f5f5f5, #eee);
}

.zebra th:first-child {
	-moz-border-radius: 6px 0 0 0;
	-webkit-border-radius: 6px 0 0 0;
	border-radius: 6px 0 0 0;
}

.zebra th:last-child {
	-moz-border-radius: 0 6px 0 0;
	-webkit-border-radius: 0 6px 0 0;
	border-radius: 0 6px 0 0;
}

.zebra th:only-child {
	-moz-border-radius: 6px 6px 0 0;
	-webkit-border-radius: 6px 6px 0 0;
	border-radius: 6px 6px 0 0;
}

.zebra tfoot td {
	border-bottom: 0;
	border-top: 1px solid #fff;
	background-color: #f1f1f1;
}

.zebra tfoot td:first-child {
	-moz-border-radius: 0 0 0 6px;
	-webkit-border-radius: 0 0 0 6px;
	border-radius: 0 0 0 6px;
}

.zebra tfoot td:last-child {
	-moz-border-radius: 0 0 6px 0;
	-webkit-border-radius: 0 0 6px 0;
	border-radius: 0 0 6px 0;
}

.zebra tfoot td:only-child {
	-moz-border-radius: 0 0 6px 6px;
	-webkit-border-radius: 0 0 6px 6px border-radius: 0 0 6px 6px
}
</style>
</head>

<body>

	<h2>所有社团</h2>
	<table class="bordered">
		<thead>

			<tr>
				<th nowrap="nowrap">申请加入</th>
				<th nowrap="nowrap">社团编号</th>
				<th nowrap="nowrap">社团名称</th>
				<th nowrap="nowrap">社团简介</th>
				<th nowrap="nowrap">活动查询</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="community" items="${communityList}" varStatus="vss">
				<tr target="pid" rel="${community.id}" >
					<td>
						<a href="member!application_community.action?uid=${community.id}">申请加入</a>
					</td> 
					<td>
						${community.id}
					</td>
					<td>
						${community.community_name}
					</td>
					<td>
						${community.community_introduction}
					</td>
					<td>
						<a href="activity!list_activity_by_id.action?uid=${community.id}&community_name=${community.community_name}">点击查询</a>
					</td> 
					
				</tr>
			</c:forEach>
		</tbody>

	</table>
</body>
</html>
