
rule VirTool_WinNT_Koutodoor_C{
	meta:
		description = "VirTool:WinNT/Koutodoor.C,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {2d 04 20 22 00 0f 84 ?? ?? ?? ?? 2d ff c0 00 00 74 ?? 83 e8 3d 74 } //1
		$a_00_1 = {5c 41 70 73 58 38 35 2e 70 64 62 } //1 \ApsX85.pdb
	condition:
		((#a_03_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}