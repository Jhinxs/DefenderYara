
rule Trojan_Win32_REntS_SIBT13_MTB{
	meta:
		description = "Trojan:Win32/REntS.SIBT13!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {8a 08 80 e9 ?? 8b 55 ?? 03 55 ?? 88 0a } //1
		$a_03_1 = {88 0a 8b 45 ?? 03 45 ?? 0f b6 08 81 f1 ?? ?? ?? ?? 8b 55 90 1b 00 03 55 90 1b 01 88 0a } //1
		$a_03_2 = {88 0a 8b 45 ?? 03 45 ?? 8a 08 80 c1 ?? 8b 55 90 1b 00 03 55 90 1b 01 88 0a } //1
		$a_03_3 = {8b c8 8d 52 01 c1 e0 ?? 03 c1 0f be cb 8a 1a 03 c1 84 db 75 ?? 8b 4d 08 3b 45 0c 74 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}