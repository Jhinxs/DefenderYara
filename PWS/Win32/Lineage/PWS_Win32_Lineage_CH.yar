
rule PWS_Win32_Lineage_CH{
	meta:
		description = "PWS:Win32/Lineage.CH,SIGNATURE_TYPE_PEHSTR_EXT,07 00 05 00 04 00 00 "
		
	strings :
		$a_03_0 = {7e 2e c7 45 f8 01 00 00 00 8b 45 fc 8b 55 f8 8a 5c 10 ff 80 c3 80 8d 45 f4 8b d3 e8 ?? ?? ?? ?? 8b 55 f4 8b c7 e8 ?? ?? ?? ?? ff 45 f8 4e 75 d9 } //4
		$a_03_1 = {7f 11 8b 55 ?? b8 ?? ?? ?? ?? e8 ?? ?? ?? ?? 85 c0 7e 3c 8d 45 ?? e8 ?? ?? ?? ?? 50 8b 45 ?? 50 8b 00 ff 50 48 } //3
		$a_03_2 = {0f 84 2d 01 00 00 6a 00 53 e8 ?? ?? ff ff 8b f0 81 fe 00 00 00 01 0f 83 11 01 00 00 3b 35 ?? ?? ?? ?? 7c 34 } //-1
		$a_03_3 = {8b 55 fc e8 ?? ?? ff ff 8b 85 ?? ?? ff ff e8 ?? ?? ff ff 56 57 e8 ?? ?? ff ff 85 c0 75 84 57 e8 ?? ?? ff ff c7 06 16 00 00 00 } //-1
	condition:
		((#a_03_0  & 1)*4+(#a_03_1  & 1)*3+(#a_03_2  & 1)*-1+(#a_03_3  & 1)*-1) >=5
 
}