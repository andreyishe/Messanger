<#import "parts/common.ftl" as c>

<@c.page>
    List of User
<table>
    <thead>
    <tr>
        <th>Name</th>
        <th>Role</th>
        <th></th>
    </thead>
    <tbody>
    <#list users as user>
    <tr>
        <td>${user.username}</td>
        <td><#list user.roles as role>${role}<#sep>, </#sep></#list></td>
        <td><a href="/user/${user.id}">edit</a></td>
    </tr>
   </#list>
</tbody>
</table>
</@c.page>