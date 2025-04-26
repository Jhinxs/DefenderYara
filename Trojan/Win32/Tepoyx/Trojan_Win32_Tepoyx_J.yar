
rule Trojan_Win32_Tepoyx_J{
	meta:
		description = "Trojan:Win32/Tepoyx.J,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 "
		
	strings :
		$a_03_0 = {68 3a 04 00 00 6a 0b 6a 49 6a 46 6a 41 6a 6e 8b 4c 24 ?? 8b d3 8b c6 e8 ?? ?? ?? ?? a3 } //2
		$a_03_1 = {68 1d 06 00 00 6a 10 6a 12 6a 4e 6a 65 6a 42 8b 4c 24 ?? 8b d3 8b c6 e8 ?? ?? ?? ?? a3 } //2
		$a_00_2 = {26 00 76 00 65 00 72 00 3d 00 30 00 30 00 30 00 30 00 30 00 34 00 38 00 } //1 &ver=0000048
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_00_2  & 1)*1) >=5
 
}