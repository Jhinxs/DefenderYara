
rule VirTool_Win32_Gatvm{
	meta:
		description = "VirTool:Win32/Gatvm,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 74 24 28 fc 90 09 07 00 9c 60 68 ?? ?? ?? ?? ?? ?? ?? ?? ?? bf ?? ?? ?? ?? 03 34 24 8a 90 04 01 02 0e 06 0f b6 90 04 01 02 c1 c0 (8d 76 01|46) ff 34 85 ?? ?? ?? ?? c3 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}