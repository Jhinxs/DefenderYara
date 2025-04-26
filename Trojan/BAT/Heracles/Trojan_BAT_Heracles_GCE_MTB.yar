
rule Trojan_BAT_Heracles_GCE_MTB{
	meta:
		description = "Trojan:BAT/Heracles.GCE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {48 00 57 00 55 00 46 00 50 00 55 00 55 00 46 00 35 00 51 00 55 00 64 00 46 00 51 00 55 00 6c 00 42 00 51 00 58 00 52 00 42 00 } //1 HWUFPUUF5QUdFQUlBQXRB
		$a_01_1 = {56 00 51 00 55 00 39 00 52 00 51 00 58 00 52 00 42 00 52 00 46 00 6c 00 42 00 57 00 6d 00 64 00 42 00 64 00 30 00 46 00 48 00 53 00 55 00 46 00 4f 00 55 00 55 00 46 00 } //1 VQU9RQXRBRFlBWmdBd0FHSUFOUUF
		$a_01_2 = {50 6f 77 65 72 53 68 65 6c 6c } //1 PowerShell
		$a_01_3 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_4 = {52 65 61 64 4b 65 79 5f 42 6f 78 } //1 ReadKey_Box
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}