
rule Trojan_Win32_CryptInj_BA_MTB{
	meta:
		description = "Trojan:Win32/CryptInj.BA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_02_0 = {8b f7 c1 e6 04 03 f2 33 d2 3d df 03 00 00 0f 44 ca 8b d7 c1 ea 05 03 95 ?? ?? ?? ?? 89 0d ?? ?? ?? ?? 8b 8d ?? ?? ?? ?? 03 cf 33 d1 33 d6 2b da 8b fb c1 e7 04 3d 93 04 00 00 75 } //1
		$a_02_1 = {83 c7 08 4e 75 90 09 09 00 8b d3 8b cf 90 13 55 8b [0-d0] 20 00 00 00 8b 0d [0-07] c1 e6 04 [0-20] c1 ea 05 03 95 ?? ?? ?? ?? 89 0d [0-20] c1 e7 04 3d ?? ?? ?? ?? 75 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=1
 
}