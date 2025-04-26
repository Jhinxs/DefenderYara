
rule VirTool_Win32_VBInject_LK{
	meta:
		description = "VirTool:Win32/VBInject.LK,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {f5 07 00 01 00 71 ?? ?? ([0-03] f5 00 00 00 00 f5 ?? 00 00 00 04 ?? ?? fe 8e 1e |)} //1
		$a_03_1 = {f5 f8 00 00 00 aa f4 28 6b ?? ?? b1 } //1
		$a_03_2 = {80 0c 00 4a e4 f4 03 fe 6b ?? (fe|ff) ?? ?? 1e } //1
		$a_00_3 = {41 56 45 4e 47 49 4e 60 45 2e 45 58 45 21 03 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}