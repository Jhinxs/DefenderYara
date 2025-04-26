
rule Trojan_Win32_VBKrypt_AJ_MTB{
	meta:
		description = "Trojan:Win32/VBKrypt.AJ!MTB,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {76 00 4d 00 42 00 46 00 7a 00 78 00 4d 00 38 00 78 00 52 00 73 00 6d 00 6d 00 39 00 41 00 6a 00 46 00 51 00 4f 00 54 00 71 00 71 00 4f 00 51 00 51 00 75 00 54 00 38 00 47 00 37 00 4c 00 6e 00 43 00 43 00 47 00 45 00 58 00 69 00 34 00 } //1 vMBFzxM8xRsmm9AjFQOTqqOQQuT8G7LnCCGEXi4
		$a_01_1 = {6f 00 44 00 35 00 52 00 34 00 59 00 39 00 42 00 6c 00 31 00 47 00 6a 00 75 00 5a 00 4a 00 73 00 71 00 63 00 67 00 46 00 45 00 66 00 65 00 45 00 6a 00 48 00 4f 00 70 00 48 00 4f 00 58 00 4a 00 4b 00 4b 00 34 00 53 00 36 00 4c 00 31 00 32 00 37 00 } //1 oD5R4Y9Bl1GjuZJsqcgFEfeEjHOpHOXJKK4S6L127
		$a_01_2 = {43 6f 6e 63 65 6c 65 62 72 61 74 69 6f 6e 73 } //1 Concelebrations
		$a_01_3 = {70 72 6f 67 72 61 6d 61 66 72 65 67 6e 69 6e 67 } //1 programafregning
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}