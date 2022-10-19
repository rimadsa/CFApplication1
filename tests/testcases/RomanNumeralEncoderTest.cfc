<cfcomponent extends="tests.CFApplication.tests.mxunit.framework.TestCase" output="false" hint="I test the Roman Numeral encoder.">
	<cffunction name="testEncode" hint="I test the encode() method.">
		
		<cfset var encoder = createObject( "component", "model.RomanNumeralEncoder" )/>

		<cfset var act = encoder.encode("1")>
		
		<cfset assertEquals( "I", act, "Encoding 1 Failed" ) />
		<cfset assertEquals( "II", encoder.encode( "2" ), "Encoding 2 Failed" ) />
		<cfset assertEquals( "III", encoder.encode( "3" ), "Encoding 3 Failed" ) />
		<cfset assertEquals( "IV", encoder.encode( "4" ), "Encoding 4 Failed" ) />
		<cfset assertEquals( "V", encoder.encode( "5" ), "Encoding 5 Failed" ) />
		<cfset assertEquals( "VI", encoder.encode( "6" ), "Encoding 6 Failed" ) />
		<cfset assertEquals( "VII", encoder.encode( "7" ), "Encoding 7 Failed" ) />
		<cfset assertEquals( "VIII", encoder.encode( "8" ), "Encoding 8 Failed" ) />
		<cfset assertEquals( "IX", encoder.encode( "9" ), "Encoding 9 Failed" ) />
		<cfset assertEquals( "X", encoder.encode( "10" ), "Encoding 10 Failed" ) />
	</cffunction>

	<cffunction name="testDecode" hint="I test the decode() method.">

		<cfset var encoder = createObject( "component", "model.RomanNumeralEncoder" ) />

		<cfset var act = encoder.decode("I")>

		<cfset assertEquals( "1", act, "Decoding I Failed" ) />
		<cfset assertEquals( "2", encoder.decode( "II" ), "Decoding II Failed" ) />
		<cfset assertEquals( "3", encoder.decode( "III" ), "Decoding III Failed" ) />
		<cfset assertEquals( "4", encoder.decode( "IV" ), "Decoding IV Failed" ) />
		<cfset assertEquals( "5", encoder.decode( "V" ), "Decoding V Failed" ) />
		<cfset assertEquals( "6", encoder.decode( "VI" ), "Decoding VI Failed" ) />
		<cfset assertEquals( "7", encoder.decode( "VII" ), "Decoding VII Failed" ) />
		<cfset assertEquals( "8", encoder.decode( "VIII" ), "Decoding VIII Failed" ) />
		<cfset assertEquals( "9", encoder.decode( "IX" ), "Decoding IX Failed" ) />
		<cfset assertEquals( "10", encoder.decode( "X" ), "Decoding X Failed" ) />
	</cffunction>
</cfcomponent>