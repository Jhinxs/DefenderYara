
rule Trojan_Win32_Glupteba_ASC_MTB{
	meta:
		description = "Trojan:Win32/Glupteba.ASC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {8b d7 d3 ea 8d 04 3b 89 45 f0 c7 05 ?? ?? ?? ?? ee 3d ea f4 03 55 d8 8b 45 f0 31 45 fc 33 55 fc 81 3d ?? ?? ?? ?? 13 02 00 00 89 55 f0 75 } //1
		$a_01_1 = {81 7c 24 14 d5 74 50 78 75 09 43 81 fb 1b 1c 00 00 7c } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}