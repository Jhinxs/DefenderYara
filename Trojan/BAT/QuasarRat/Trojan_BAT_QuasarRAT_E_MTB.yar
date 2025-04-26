
rule Trojan_BAT_QuasarRAT_E_MTB{
	meta:
		description = "Trojan:BAT/QuasarRAT.E!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 05 00 00 "
		
	strings :
		$a_01_0 = {43 6c 69 65 6e 74 2e 54 65 73 74 73 } //2 Client.Tests
		$a_01_1 = {65 73 65 72 2e 43 6c 69 65 6e 74 2e 50 72 6f 70 65 72 74 69 65 73 } //2 eser.Client.Properties
		$a_01_2 = {73 65 74 5f 57 69 6e 64 6f 77 53 74 79 6c 65 } //1 set_WindowStyle
		$a_01_3 = {73 65 74 5f 55 73 65 53 68 65 6c 6c 45 78 65 63 75 74 65 } //1 set_UseShellExecute
		$a_01_4 = {53 00 48 00 41 00 32 00 35 00 36 00 50 00 52 00 4e 00 47 00 } //2 SHA256PRNG
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*2) >=8
 
}