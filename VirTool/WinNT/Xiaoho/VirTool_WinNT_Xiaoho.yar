
rule VirTool_WinNT_Xiaoho{
	meta:
		description = "VirTool:WinNT/Xiaoho,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 "
		
	strings :
		$a_00_0 = {5c 44 6f 73 44 65 76 69 63 65 73 5c 4b 50 44 72 76 4c 4e 31 } //1 \DosDevices\KPDrvLN1
		$a_00_1 = {48 41 4c 2e 64 6c 6c } //1 HAL.dll
		$a_02_2 = {83 ec 40 56 57 c7 ?? ?? 10 00 00 c0 [0-40] 81 ?? ?? c0 20 22 00 74 05 e9 b1 00 00 00 } //1
		$a_02_3 = {56 64 a1 24 c7 45 ?? 01 00 00 8b c7 45 ?? 74 24 08 3b } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1) >=2
 
}