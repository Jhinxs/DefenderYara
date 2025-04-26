
rule Trojan_BAT_Remcos_ABN_MTB{
	meta:
		description = "Trojan:BAT/Remcos.ABN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 05 00 00 "
		
	strings :
		$a_01_0 = {57 15 a2 09 09 1f 00 00 00 fa 01 33 00 16 00 00 01 00 00 00 a3 00 00 00 14 00 00 00 a6 00 00 00 71 01 00 00 cf 00 00 00 } //4
		$a_01_1 = {67 65 74 5f 6c 6e 6b 50 61 73 73 77 6f 72 64 } //1 get_lnkPassword
		$a_01_2 = {67 65 74 5f 57 65 62 53 65 72 76 69 63 65 73 } //1 get_WebServices
		$a_01_3 = {55 00 73 00 65 00 72 00 20 00 49 00 44 00 20 00 6f 00 72 00 20 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 20 00 64 00 6f 00 65 00 73 00 20 00 6e 00 6f 00 74 00 20 00 6d 00 61 00 74 00 63 00 68 00 } //1 User ID or Password does not match
		$a_01_4 = {67 00 72 00 70 00 4c 00 6f 00 67 00 69 00 6e 00 } //1 grpLogin
	condition:
		((#a_01_0  & 1)*4+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=8
 
}