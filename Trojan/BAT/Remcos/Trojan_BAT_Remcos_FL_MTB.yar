
rule Trojan_BAT_Remcos_FL_MTB{
	meta:
		description = "Trojan:BAT/Remcos.FL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_81_0 = {24 32 34 32 31 64 65 39 62 2d 30 30 32 62 2d 34 63 36 34 2d 38 38 62 36 2d 62 36 32 64 30 66 30 64 31 39 38 31 } //1 $2421de9b-002b-4c64-88b6-b62d0f0d1981
		$a_81_1 = {46 61 73 74 46 69 6e 64 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //1 FastFind.Properties.Resources
		$a_81_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_81_3 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //1 IsDebuggerPresent
		$a_81_4 = {49 73 4c 6f 67 67 69 6e 67 } //1 IsLogging
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=5
 
}