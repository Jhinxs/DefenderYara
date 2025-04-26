
rule Trojan_Win32_Popureb_B{
	meta:
		description = "Trojan:Win32/Popureb.B,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {6a 78 6a 63 e8 ?? ?? ?? ?? 83 c4 08 50 6a 79 6a 62 e8 ?? ?? ?? ?? 83 c4 08 50 6a 7a 6a 61 } //1
		$a_01_1 = {2b d1 89 55 fc 60 8b 45 fc c1 c8 03 c1 c8 04 89 45 fc 61 8b 45 f4 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}