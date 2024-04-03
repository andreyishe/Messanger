<#assign know = Session.SPRING_SECURITY_CONTEXT??>
<#if know>
    <#assign user = Session.SPRING_SECURITY_CONTEXT.authentication.principal
    name = user.username
    isAdmin = user.admin
    >
<#else>
    <#assign name = "unknown"
    isAdmin = false
    >
</#if>


