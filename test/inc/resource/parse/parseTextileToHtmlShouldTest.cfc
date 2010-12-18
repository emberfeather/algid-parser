component extends="mxunit.framework.TestCase" {
	public function setup() {
		variables.parser = createObject('component', 'plugins.parser.inc.resource.parse.parseTextile').init();
	}
	
	/**
	 * Test the ability to convert a title
	 */
	public void function testReturnHtmlFromSimpleHeader() {
		assertEquals('<h1 id="testing">Testing</h1>', trim(variables.parser.toHtml('h1(##testing). Testing')));
	}
}
