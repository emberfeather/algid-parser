<cfcomponent extends="cf-compendium.inc.resource.base.base" output="false">
<cfscript>
	public component function init() {
		super.init();
		
		return this;
	}
	
	public string function toHtml( required string raw ) {
		throw('notImplemented', 'The toHtml is not implemented', 'The toHtml functionality is not implemented for this parser');
	}
	
	public any function toPdf( required string raw ) {
		throw('notImplemented', 'The toPdf is not implemented', 'The toPdf functionality is not implemented for this parser');
	}
</cfscript>
</cfcomponent>
