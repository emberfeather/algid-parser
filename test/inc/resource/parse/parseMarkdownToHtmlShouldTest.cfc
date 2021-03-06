component extends="mxunit.framework.TestCase" {
	public function setup() {
		variables.parser = createObject('component', 'plugins.parser.inc.resource.parse.parseMarkdown').init();
	}
	
	/**
	 * Test the ability to convert a title
	 */
	public void function testReturnHtmlFromSimpleHeader() {
		assertEquals('<h1>Testing</h1>', trim(variables.parser.toHtml('## Testing')));
	}
}
