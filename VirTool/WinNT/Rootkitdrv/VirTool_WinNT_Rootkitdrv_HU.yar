
rule VirTool_WinNT_Rootkitdrv_HU{
	meta:
		description = "VirTool:WinNT/Rootkitdrv.HU,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {0f 01 4d f8 0f b7 4d fa 0f b7 55 fc c1 e2 10 0b ca } //1
		$a_03_1 = {0f b7 88 88 01 00 00 8b 55 ?? 0f b7 82 8e 01 00 00 c1 e0 10 0b c8 } //1
		$a_03_2 = {3d 9d 00 00 00 74 ?? 0f b6 4d ?? 81 f9 b8 00 00 00 74 ?? 0f b6 55 ?? 83 fa 5b } //1
		$a_00_3 = {3a 5c 52 4f 4f 54 4b 49 54 53 5c 77 73 68 5c 48 49 44 45 4b 45 59 5c } //1 :\ROOTKITS\wsh\HIDEKEY\
		$a_00_4 = {67 6f 74 20 73 63 61 6e 63 6f 64 65 20 25 30 32 58 } //1 got scancode %02X
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=4
 
}