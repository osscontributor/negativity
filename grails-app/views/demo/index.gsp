
<html>
    <head>
        <meta name="layout" content="main">
    </head>
    <body>
        <div class="content" role="main">
            <g:hasErrors bean="${widget}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${widget}" var="error">
                        <li><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>
            <g:if test="${widget?.someNumber != null}">
                <div class="message" role="status">Number: ${widget.someNumber}</div>
            </g:if>

Enter a number.

            <g:form url="[action:'index']" >
                <g:textField name="someNumber" value=""/>
                    <fieldset class="buttons">
                        <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                    </fieldset>
            </g:form>
        </div>
    </body>
</html>
