<html>
<head>
	<meta name='layout' content='main'/>
	<title><g:message code="springSecurity.login.title"/></title>
	
</head>

<body>
		<div class='container'>
                
                <div class="signin-row row">
                    <div class="span4"></div>
	                    <div class="span8">
	                        <div class="container-signin">
	                            <legend><g:message code="springSecurity.login.header"/></legend>
	                            <g:if test='${flash.message}'>
									<div class='login_message'>${flash.message}</div>
								</g:if>

	                            <form form action='${postUrl}' id='loginForm' method='POST' class='form-signin' autocomplete='off'>
	                                <div class="form-inner">
	                                    <div class="input-prepend">
	                                        
	                                        <span class="add-on" rel="tooltip" title="<g:message code="springSecurity.login.username.label"/>" data-placement="top"><i class="icon-envelope"></i></span>
	                                        <input type='text' class='span4' id='username' name='j_username'/>
	                                    </div>

	                                    <div class="input-prepend">
	                                        
	                                        <span class="add-on"><i class="icon-key"></i></span>
	                                        <input type='password' class='span4' name='j_password' id='password'/>
	                                    </div>
	                                    <label class="checkbox" for='remember_me'><g:message code="springSecurity.login.remember.me.label"/>
	                                        <input type='checkbox' id='remember_me' name='${rememberMeParameter}' <g:if test='${hasCookie}'>checked='checked'</g:if> />
	                                    </label>
	                                </div>
	                                <footer class="signin-actions">
	                                    <input class="btn btn-primary" type='submit' id="submit" value='${message(code: "springSecurity.login.button")}'/>
	                                </footer>
	                            </form>
	                        </div>
	                    </div>
	                    <div class="span3"></div>
                	</div>

                <div class="signin-row row">
                    <div class="span4"></div>
                    <div class="span8">
                        <div class="well well-small well-shadow">
                            <legend class="lead">Additional Content</legend>
                            Add additional content here.
                        </div>
                    </div>
                    <div class="span8"></div>
                </div>
            <!--<div class="span4">

                </div>-->
            </div>
    

            </div>

        <div id="spinner" class="spinner" style="display:none;">
            Loading&hellip;
        </div>
        <script type="text/javascript">
            $(function(){
                document.forms['loginForm'].elements['j_username'].focus();
                $("[rel=tooltip]").tooltip();
            });
        </script>
</body>
</html>
