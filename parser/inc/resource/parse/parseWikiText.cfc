<!---
	Uses the Mylyn standalone WikiText library to convert various markup into html.
	
	To use the Mylyn WikiText Standalone library needs to be in your classpath.
	
	@see http://www.eclipse.org/mylyn/downloads/
--->
<cfcomponent extends="plugins.parser.inc.resource.parse.parse" output="false">
<cfscript>
	/**
	 * Convert the given raw source into HTML using the WikiText MarkupParser.
	 */
	public string function toHtml( required string raw ) {
		var writer = '';
		var builder = '';
		var parser = '';
		
		// Do some extra work to stop the parser from doing the entire html document.
		writer = createObject('java', 'java.io.StringWriter').init();
		builder = createObject('java', 'org.eclipse.mylyn.wikitext.core.parser.builder.HtmlDocumentBuilder', '/plugins/parser/inc/lib/org.eclipse.mylyn.wikitext.core.jar').init(writer);
		builder.setEmitAsDocument(false);
		
		// Create the parser and parse the raw string
		parser = createObject('java', 'org.eclipse.mylyn.wikitext.core.parser.MarkupParser', '/plugins/parser/inc/lib/org.eclipse.mylyn.wikitext.core.jar').init(language);
		parser.setBuilder(builder);
		parser.parse(arguments.raw);
		
		return writer.toString();
	}
</cfscript>
</cfcomponent>
