<cfset testSuite = createObject( "component", "mxunit.framework.TestSuite" ).TestSuite() />

<cfset testSuite.addAll( "testcases.RomanNumeralEncoderTest" ) />
<!---
<cfset testSuite.addAll("tests.testcases.components.CountryLocationTest")/>
<cfset testSuite.addAll("tests.testcases.components.CompareView.AttachmentsTest")/>
--->

<cfset results = testSuite.run() />

<cfoutput>
	#results.getHtmlResults( "mxunit/" )#
</cfoutput>