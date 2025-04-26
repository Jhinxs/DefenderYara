
rule VirTool_Win32_Vbicry_A{
	meta:
		description = "VirTool:Win32/Vbicry.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {03 45 e4 0f b6 00 89 45 e0 81 7d e0 00 01 00 00 73 06 83 65 b8 00 eb 08 e8 ?? ?? ff ff 89 45 b8 8b 45 e0 c1 e0 08 8b 4d dc 03 c8 a1 ?? ?? ?? ?? 66 0f b6 04 08 66 a3 ?? ?? ?? ?? 0f bf 05 ?? ?? ?? ?? 89 45 e4 81 7d e4 00 01 00 00 73 06 83 65 b4 00 eb 08 } //1
		$a_00_1 = {44 00 6f 00 4e 00 6f 00 74 00 41 00 6c 00 6c 00 6f 00 77 00 45 00 78 00 63 00 65 00 70 00 74 00 69 00 6f 00 6e 00 73 00 22 00 20 00 2f 00 74 00 20 00 52 00 45 00 47 00 5f 00 44 00 57 00 4f 00 52 00 44 00 20 00 2f 00 64 00 20 00 22 00 30 00 22 00 20 00 2f 00 66 00 } //1 DoNotAllowExceptions" /t REG_DWORD /d "0" /f
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}