
rule Trojan_Win32_IStartSurf_GM_MTB{
	meta:
		description = "Trojan:Win32/IStartSurf.GM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_02_0 = {8b 45 dc 8b 4d cc 3b 48 04 0f 83 [0-20] 03 c9 } //1
		$a_02_1 = {8b 45 94 03 45 cc 8a 00 88 45 d7 [0-30] 0f af } //1
		$a_02_2 = {33 c8 8b 45 c8 03 45 cc 88 08 [0-30] 03 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1) >=3
 
}