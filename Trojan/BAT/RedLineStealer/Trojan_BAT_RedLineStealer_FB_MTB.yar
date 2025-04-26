
rule Trojan_BAT_RedLineStealer_FB_MTB{
	meta:
		description = "Trojan:BAT/RedLineStealer.FB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 07 00 00 "
		
	strings :
		$a_81_0 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //3 DebuggerNonUserCodeAttribute
		$a_81_1 = {48 65 6c 70 4b 65 79 77 6f 72 64 41 74 74 72 69 62 75 74 65 } //3 HelpKeywordAttribute
		$a_81_2 = {56 49 52 55 53 5f 44 4f 57 4e 4c 4f 41 44 45 44 5f 41 53 5f 53 54 52 49 4e 47 } //3 VIRUS_DOWNLOADED_AS_STRING
		$a_81_3 = {57 45 42 43 4c 49 45 4e 54 5f 54 4f 5f 44 4f 57 4e 4c 4f 41 44 5f 56 49 52 55 53 } //3 WEBCLIENT_TO_DOWNLOAD_VIRUS
		$a_81_4 = {4c 6f 63 61 6c 5f 53 54 4f 52 45 44 5f 56 49 52 55 53 } //3 Local_STORED_VIRUS
		$a_81_5 = {53 79 73 74 65 6d 2e 53 65 63 75 72 69 74 79 2e 43 72 79 70 74 6f 67 72 61 70 68 79 } //3 System.Security.Cryptography
		$a_81_6 = {53 74 6f 6e 65 20 51 75 61 72 72 79 20 48 69 6c 6c 20 41 72 74 70 61 72 6b } //3 Stone Quarry Hill Artpark
	condition:
		((#a_81_0  & 1)*3+(#a_81_1  & 1)*3+(#a_81_2  & 1)*3+(#a_81_3  & 1)*3+(#a_81_4  & 1)*3+(#a_81_5  & 1)*3+(#a_81_6  & 1)*3) >=21
 
}