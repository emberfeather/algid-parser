<!---
	Uses the markdownj library to convert markdown into html.
	
	To use the markdownj library needs to be in your classpath.
	
	@see http://markdownj.org/
--->
<cfcomponent extends="plugins.parser.inc.resource.parse.parse" output="false">
<cfscript>
	public component function init() {
		super.init();
		
		variables.parser = createObject('java', 'com.petebevin.markdown.MarkdownProcessor', '/plugins/parser/inc/lib/markdownj.jar').init();
		
		return this;
	}
	
	/**
	 * Converst the given raw source into HTML.
	 */
	public string function toHtml( required string raw ) {
		return variables.parser.markdown(raw);
	}
</cfscript>
</cfcomponent>
