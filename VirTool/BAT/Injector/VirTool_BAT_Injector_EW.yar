
rule VirTool_BAT_Injector_EW{
	meta:
		description = "VirTool:BAT/Injector.EW,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {61 6e 74 69 53 61 6e 64 69 65 00 } //1
		$a_01_1 = {4d 6f 6e 69 74 6f 72 49 6e 6a 65 63 74 69 6f 6e 00 } //1
		$a_01_2 = {56 4d 52 75 6e 6e 69 6e 67 00 } //1 䵖畒湮湩g
		$a_01_3 = {52 75 6e 50 45 00 } //1 畒偮E
		$a_01_4 = {72 65 6d 6f 76 65 5f 50 6f 6e 67 00 } //1 敲潭敶偟湯g
		$a_01_5 = {3a 00 5a 00 6f 00 6e 00 65 00 2e 00 49 00 64 00 65 00 6e 00 74 00 69 00 66 00 69 00 65 00 72 00 } //1 :Zone.Identifier
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}