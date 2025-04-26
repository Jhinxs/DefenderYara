
rule Trojan_Win32_CatRat_A_MTB{
	meta:
		description = "Trojan:Win32/CatRat.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {33 c0 8a 0c 85 ?? ?? ?? ?? 8b 54 24 04 80 e9 ?? 88 0c 10 40 3d ?? ?? 00 00 7c e7 c3 } //1
		$a_01_1 = {8b 45 fc 99 f7 7d dc 8b 45 88 0f be 0c 10 8b 55 d8 03 55 fc 0f be 02 33 c1 8b 4d d8 03 4d fc 88 01 eb c9 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}