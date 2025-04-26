
rule Trojan_BAT_ShellCodeRunner_CXF_MTB{
	meta:
		description = "Trojan:BAT/ShellCodeRunner.CXF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {11 09 11 10 11 08 11 10 9a 1f 10 28 ?? ?? ?? ?? 9c 00 11 10 17 58 13 10 11 10 11 08 8e 69 fe 04 13 11 11 11 2d d9 } //1
		$a_01_1 = {7a 68 77 67 50 48 51 45 78 6c 6f 61 61 44 } //1 zhwgPHQExloaaD
		$a_01_2 = {78 71 4d 76 53 6b 75 69 45 } //1 xqMvSkuiE
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}