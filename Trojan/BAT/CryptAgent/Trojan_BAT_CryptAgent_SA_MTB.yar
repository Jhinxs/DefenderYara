
rule Trojan_BAT_CryptAgent_SA_MTB{
	meta:
		description = "Trojan:BAT/CryptAgent.SA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_81_0 = {43 3a 5c 6d 79 61 70 70 2e 65 78 65 } //1 C:\myapp.exe
		$a_81_1 = {47 65 74 45 78 65 63 75 74 69 6e 67 41 73 73 65 6d 62 6c 79 } //1 GetExecutingAssembly
		$a_81_2 = {6f 70 5f 45 71 75 61 6c 69 74 79 } //1 op_Equality
		$a_81_3 = {6f 70 5f 49 6e 65 71 75 61 6c 69 74 79 } //1 op_Inequality
		$a_81_4 = {5c 4d 79 41 70 70 2e 6c 6f 67 } //1 \MyApp.log
		$a_81_5 = {54 69 6d 65 4c 6f 67 67 65 72 28 } //1 TimeLogger(
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1) >=6
 
}