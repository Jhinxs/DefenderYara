
rule VirTool_WinNT_Rootkitdrv_KT{
	meta:
		description = "VirTool:WinNT/Rootkitdrv.KT,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 54 00 63 00 70 00 } //1 \Device\Tcp
		$a_03_1 = {0f b7 4c 0a 14 81 e1 00 ff 00 00 c1 f9 08 03 c1 [0-05] 75 ?? 8b 55 ?? 69 d2 } //1
		$a_03_2 = {8b 4d 10 81 79 04 02 01 00 00 75 ?? 8b 55 0c 8b 42 1c 33 d2 b9 18 00 00 00 f7 f1 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}