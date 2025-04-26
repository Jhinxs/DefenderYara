
rule Trojan_Win32_StealC_TRW_MTB{
	meta:
		description = "Trojan:Win32/StealC.TRW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {d3 ee 89 45 f0 c7 05 ?? ?? ?? ?? ee 3d ea f4 03 75 e4 8b 45 f0 31 45 fc 33 75 fc 81 3d ?? ?? ?? ?? 13 02 00 00 89 75 f0 75 } //1
		$a_03_1 = {c1 e0 04 89 45 fc 8b 45 dc 01 45 fc 8b 75 f4 8b 4d f8 8d 04 33 31 45 fc d3 ee 03 75 e0 81 3d ?? ?? ?? ?? 21 01 00 00 75 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}