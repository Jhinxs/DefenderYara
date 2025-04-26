
rule Trojan_BAT_Drokbk_B_dha{
	meta:
		description = "Trojan:BAT/Drokbk.B!dha,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 61 00 70 00 69 00 2e 00 67 00 69 00 74 00 68 00 75 00 62 00 2e 00 63 00 6f 00 6d 00 2f 00 73 00 65 00 61 00 72 00 63 00 68 00 2f 00 72 00 65 00 70 00 6f 00 73 00 69 00 74 00 6f 00 72 00 69 00 65 00 73 00 3f 00 71 00 3d 00 6d 00 61 00 69 00 6e 00 72 00 65 00 70 00 6f 00 73 00 69 00 74 00 6f 00 72 00 79 00 74 00 6f 00 67 00 65 00 74 00 61 00 76 00 61 00 69 00 6c 00 61 00 62 00 6c 00 65 00 63 00 68 00 61 00 6e 00 73 00 65 00 } //1 https://api.github.com/search/repositories?q=mainrepositorytogetavailablechanse
		$a_01_1 = {63 00 3a 00 5c 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 64 00 61 00 74 00 61 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6f 00 70 00 20 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 } //1 c:\programdata\Interop Services
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}