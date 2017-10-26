<#import "/spring.ftl" as spring/>

<head lang="en">
    <title>User Page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/style.css">
</head>
<body>
<#include "/userPageNavBar.ftl">

<#if name??>
<h1> Welcome, ${user.firstName} ${user.lastName}</h1>

<div class="container">
	<div class="row">
		<div class="span5">
            <table class="table table-striped table-condensed">
              <thead>
               <tr>
                  <th>Date</th>
                  <th>Description</th>
                  <th>Service Status</th>
                  <th>Service Type</th>
                  <th>Cost</th>
               </tr>
              </thead>
              <tbody>
              <#list repairs as repair>
              <tr>
                <td>${repair.dayOfRepair}</td>
                <td>${repair.description}</td>
                <#if repair.repairStatus == "Done">
                    <td><span class="label label-success">${repair.repairStatus}</span></td>
                <#elseif repair.repairStatus == "InProgress">
                    <td><span class="label label-warning">${repair.repairStatus}</span></td>
                <#else>
                    <td><span class="label label-info">${repair.repairStatus}</span></td>
                </#if>
                <#if repair.repairType == "Small">
                   <td><span class="label label-success">${repair.repairType}</span></td>
                <#else>
                   <td><span class="label label-danger">${repair.repairType}</span></td>
                </#if>
                <td>${repair.serviceCost} &euro;</td>

              <tr>
              </#list>
              </tbody>
            </table>
            </div>
	</div>
</div>


<#else>
<h1>How you came here</h1>
<p>
</#if>

</body>

