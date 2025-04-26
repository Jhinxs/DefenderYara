
rule Trojan_BAT_RedLine_RDDY_MTB{
	meta:
		description = "Trojan:BAT/RedLine.RDDY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {4d 79 48 65 61 6c 74 68 4c 6f 61 64 65 72 } //1 MyHealthLoader
		$a_01_1 = {58 59 5a 20 48 65 61 6c 74 68 63 61 72 65 20 53 6f 6c 75 74 69 6f 6e 73 } //1 XYZ Healthcare Solutions
		$a_01_2 = {43 68 65 63 6b 4d 79 52 65 67 } //1 CheckMyReg
		$a_01_3 = {4d 79 4e 65 74 77 6f 72 6b 41 70 69 } //1 MyNetworkApi
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}