
rule Trojan_BAT_Redline_NEBA_MTB{
	meta:
		description = "Trojan:BAT/Redline.NEBA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 04 00 00 "
		
	strings :
		$a_03_0 = {16 2d 93 11 05 18 6f ?? 00 00 0a 1c 2c f2 11 05 18 6f ?? 00 00 0a 11 05 6f ?? 00 00 0a 13 06 11 06 07 16 07 8e 69 6f ?? 00 00 0a 13 07 } //10
		$a_01_1 = {53 6d 61 72 74 41 73 73 65 6d 62 6c 79 2e 48 6f 75 73 65 4f 66 43 61 72 64 73 } //1 SmartAssembly.HouseOfCards
		$a_01_2 = {47 65 74 50 68 79 73 66 61 69 63 61 66 73 66 61 6c 6c 79 49 6e 73 74 61 6c 6c 65 64 53 79 73 74 65 6d 4d 65 6d 6f 72 79 } //1 GetPhysfaicafsfallyInstalledSystemMemory
		$a_01_3 = {44 45 53 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //1 DESCryptoServiceProvider
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=13
 
}