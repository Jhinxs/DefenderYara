
rule Trojan_BAT_AgentTesla_NJ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_81_0 = {41 5a 54 46 47 41 34 34 47 47 34 59 38 55 32 34 34 35 47 49 56 35 } //1 AZTFGA44GG4Y8U2445GIV5
		$a_81_1 = {49 74 65 72 61 74 69 6f 6e 43 6f 75 6e 74 } //1 IterationCount
		$a_81_2 = {42 75 6e 69 66 75 5f 54 65 78 74 42 6f 78 } //1 Bunifu_TextBox
		$a_81_3 = {67 65 74 5f 53 79 6e 63 } //1 get_Sync
		$a_81_4 = {41 73 79 6e 63 68 72 6f 6e 6f 75 73 50 72 6f 67 72 61 6d 6d 69 6e 67 } //1 AsynchronousProgramming
		$a_81_5 = {52 65 61 64 46 72 6f 6d 46 69 6c 65 41 73 79 6e 63 } //1 ReadFromFileAsync
		$a_81_6 = {47 65 74 48 74 6d 6c 41 73 79 6e 63 } //1 GetHtmlAsync
		$a_81_7 = {67 65 74 5f 41 63 74 69 6f 6e 32 } //1 get_Action2
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1) >=8
 
}