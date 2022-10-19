<cfcomponent output="false" hint="I define the unit-testing application settings.">

	<cfset this.name = hash( getCurrentTemplatePath() ) />
	<cfset this.applicationTimeout = createTimeSpan( 0, 0, 5, 0 ) />
	<cfset this.sessionManagement = false />
	<cfset this.directory = getDirectoryFromPath( getCurrentTemplatePath() ) />
	<cfset this.mxunitDirectory = (this.directory & "mxunit/") />
	<cfset this.appDirectory = (this.directory & "../") />
	<cfset this.mappings[ "/mxunit" ] = this.mxunitDirectory />
	<cfset this.mappings[ "/testcases" ] = (this.directory & "testcases/") />
	<cfset this.mappings[ "/model" ] = (this.appDirectory & "model/") />
</cfcomponent>

