
rule VirTool_WinNT_Popureb_A{
	meta:
		description = "VirTool:WinNT/Popureb.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {48 6f 6f 6b 41 74 61 70 69 53 74 61 72 74 49 4f 2c 20 4e 55 4c 4c 20 3d 3d 20 52 65 61 6c 44 69 73 6b } //1 HookAtapiStartIO, NULL == RealDisk
		$a_01_1 = {81 ba f8 01 00 00 aa 55 00 00 75 0e 8b 45 a0 83 b8 fc 01 00 00 00 75 02 } //2
		$a_03_2 = {01 00 00 0f 83 ?? ?? ?? ?? 68 00 02 00 00 90 09 04 00 81 7d ?? 90 90 } //1
		$a_03_3 = {83 fa 2a 75 10 8b 45 ?? c7 40 0c 40 00 00 00 8b 4d ?? c6 01 28 } //2
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*2+(#a_03_2  & 1)*1+(#a_03_3  & 1)*2) >=3
 
}