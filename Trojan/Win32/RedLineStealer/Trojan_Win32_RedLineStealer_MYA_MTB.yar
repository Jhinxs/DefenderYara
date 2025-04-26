
rule Trojan_Win32_RedLineStealer_MYA_MTB{
	meta:
		description = "Trojan:Win32/RedLineStealer.MYA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {8b 45 f0 8b 4d f4 83 c0 ?? 89 45 f0 83 d1 ?? 89 4d f4 8b 45 08 89 45 f0 8b 45 0c 89 45 f4 8b 4d f0 8b 45 f4 0b c8 74 } //1
		$a_01_1 = {49 73 50 72 6f 63 65 73 73 6f 72 46 65 61 74 75 72 65 50 72 65 73 65 6e 74 } //1 IsProcessorFeaturePresent
		$a_01_2 = {53 6c 65 65 70 } //1 Sleep
		$a_01_3 = {46 69 6e 64 46 69 72 73 74 46 69 6c 65 45 78 57 } //1 FindFirstFileExW
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}