
rule Trojan_Win32_Vidar_MBEV_MTB{
	meta:
		description = "Trojan:Win32/Vidar.MBEV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {8b 55 fc 83 c2 01 89 55 fc 8b 45 fc 3b 45 0c 73 36 8b 4d f4 03 4d fc 8b 55 08 03 55 f8 8a 02 88 01 8b 4d f8 83 c1 01 89 4d f8 8b 45 fc 33 d2 f7 35 ?? ?? ?? ?? 85 d2 } //1
		$a_03_1 = {40 8b 55 10 03 95 ?? ?? ?? ?? 0f b6 0a 33 8c 85 ?? ?? ?? ?? 8b 55 10 03 95 ?? ?? ?? ?? 88 0a } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}