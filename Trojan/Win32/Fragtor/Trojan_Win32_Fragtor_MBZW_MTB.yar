
rule Trojan_Win32_Fragtor_MBZW_MTB{
	meta:
		description = "Trojan:Win32/Fragtor.MBZW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {0f b7 c0 29 05 ?? ?? ?? ?? 30 5c 24 ?? 8d 04 2a 89 44 24 ?? 8b c7 2b c2 0f af 44 24 } //1
		$a_01_1 = {83 3d dc 23 42 00 00 8a 91 f8 53 41 00 75 08 a1 f4 27 42 00 88 14 01 41 3b cf } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}