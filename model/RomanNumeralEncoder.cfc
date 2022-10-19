<cfcomponent displayname="RomanNumeralEncoder" hint="RomanNumeralEncoder">
	<cffunction name="encode" output="true" access="public" returntype="string" hint="I encode the roman numeral">
		<cfargument name="number" type="string" required="yes" hint="number">

        <cfscript>
            value="";
            switch(number) {
                case "1":
                    value="I";
                    break; 
                case "2":
                    value="II";
                    break; 
                case "3":
                    value="III";
                    break;
                case "4":
                    value="IV";
                    break; 
                case "5":
                    value="V";
                    break; 
                case "6":
                    value="VI";
                    break;
                case "7":
                    value="VII";
                    break;
                case "8":
                    value="VIII";
                    break; 
                case "9":
                    value="IX";
                    break; 
                case "10":
                    value="X";
                    break; 
                default: 
                    value="Invalid";
                    break; 
            }
        </cfscript>
        <cfreturn value> 
	</cffunction>

    <cffunction name="decode" output="true" access="public" returntype="boolean" hint="I decode the roman numeral">
		<cfargument name="numeral" type="string" required="yes" hint="number">
        
        <cfscript>
            value="";
            switch(numeral) {
                case "I":
                    value="1";
                    break; 
                case "II":
                    value="2";
                    break; 
                case "III":
                    value="3";
                    break;
                case "IV":
                    value="4";
                    break; 
                case "V":
                    value="5";
                    break; 
                case "VI":
                    value="6";
                    break;
                case "VII":
                    value="7";
                    break;
                case "VIII":
                    value="8";
                    break; 
                case "IX":
                    value="9";
                    break; 
                case "X":
                    value="10";
                    break; 
                default: 
                    value="Invalid";
                    break; 
            }
        </cfscript>
        <cfreturn value> 
	</cffunction>
</cfcomponent>