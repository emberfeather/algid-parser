<cfcomponent extends="plugins.parser.inc.resource.parse.parseWikiText" output="false">
<cfscript>
	public component function init() {
		super.init();
		
		variables.language = createObject('java', 'org.eclipse.mylyn.wikitext.tracwiki.core.TracWikiLanguage', '/plugins/parser/inc/lib/org.eclipse.mylyn.wikitext.core.jar,/plugins/parser/inc/lib/org.eclipse.mylyn.wikitext.tracwiki.core.jar').init();
		
		return this;
	}
</cfscript>
</cfcomponent>
