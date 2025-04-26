
rule VirTool_BAT_Subti_I{
	meta:
		description = "VirTool:BAT/Subti.I,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {25 00 44 00 4f 00 57 00 4e 00 4c 00 4f 00 41 00 44 00 45 00 52 00 4f 00 4e 00 25 00 } //1 %DOWNLOADERON%
		$a_01_1 = {25 00 53 00 54 00 41 00 52 00 54 00 55 00 50 00 4f 00 4e 00 25 00 } //1 %STARTUPON%
		$a_01_2 = {25 00 50 00 45 00 52 00 53 00 49 00 53 00 54 00 41 00 4e 00 43 00 45 00 4f 00 4e 00 25 00 } //1 %PERSISTANCEON%
		$a_01_3 = {25 00 49 00 54 00 53 00 45 00 4c 00 46 00 49 00 4e 00 4a 00 45 00 43 00 54 00 49 00 4f 00 4e 00 25 00 } //1 %ITSELFINJECTION%
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}