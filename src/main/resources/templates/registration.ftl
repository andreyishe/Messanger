<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <div class="mb-1">Add new user
    <#if message??>
        ${message}  <!-- Когда message не null -->
    <#else>
        <!-- Когда message равно null -->
    </#if>
    <@l.login "/registration" true/>
</@c.page>