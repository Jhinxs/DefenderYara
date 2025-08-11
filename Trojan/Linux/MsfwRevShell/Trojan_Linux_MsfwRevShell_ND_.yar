
rule Trojan_Linux_MsfwRevShell_ND_{
	meta:
		description = "Trojan:Linux/MsfwRevShell.ND!!MsfwRevShell.gen!ND,SIGNATURE_TYPE_ARHSTR_EXT,01 00 01 00 03 00 00 "
		
	strings :
		$a_01_0 = {48 bb 2f 62 69 6e 2f 73 68 00 53 48 89 e7 52 57 48 89 e6 0f 05 } //1
		$a_01_1 = {6a 3c 58 6a 01 5f 0f 05 5e 6a 26 5a 0f 05 48 85 c0 78 ed ff e6 } //1
		$a_01_2 = {0f 05 48 96 6a 2b 58 0f 05 50 56 5f 6a 09 58 99 b6 10 48 89 d6 4d 31 c9 6a 22 41 5a b2 07 0f 05 48 96 48 97 5f 0f 05 ff e6 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=1
 
}