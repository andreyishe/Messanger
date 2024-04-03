<#import "parts/common.ftl" as c>
<@c.page>
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-6">
                <form method="get" action="/main" class="form-inline">
                    <div class="form-group">
                        <input type="text" name="filter" value="${filter?ifExists}" class="form-control mr-2" placeholder="Введите фильтр">
                    </div>
                    <button type="submit" class="btn btn-primary">Найти</button>
                </form>
            </div>
        </div>
        <div class="row mt-4">
            <div class="col-md-6">
                <form method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <input type="text" name="text" class="form-control" placeholder="Введите сообщение">
                    </div>
                    <div class="form-group">
                        <input type="text" name="tag" class="form-control" placeholder="Тэг">
                    </div>
                    <div class="form-group">
                        <input type="file" name="file" class="form-control-file">
                    </div>
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <button type="submit" class="btn btn-success">Добавить</button>
                </form>
            </div>
        </div>
        <div class="row mt-4">
            <div class="col-md-6">
                <#list messages as message>
                    <div class="card mb-3">
                        <div class="card-body">
                            <h5 class="card-title">${message.id}</h5>
                            <p class="card-text">${message.text}</p>
                            <p class="card-text"><small class="text-muted">${message.tag}</small></p>
                            <p class="card-text"><strong>${message.authorName}</strong></p>
                            <div>
                                <#if message.fileName??>
                                    <img src="/img/${message.fileName}" class="img-fluid">
                                </#if>
                            </div>
                        </div>
                    </div>
                </#list>
            </div>
        </div>
    </div>
</@c.page>
