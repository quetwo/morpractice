<cfsavecontent variable="myDump">
    <cfdump var="#form#">
    <cfdump var="#cgi#">
</cfsavecontent>
<cffile action="write" file="dump.html" output="#myDump#">
