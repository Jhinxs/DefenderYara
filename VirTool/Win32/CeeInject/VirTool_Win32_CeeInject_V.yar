
rule VirTool_Win32_CeeInject_V{
	meta:
		description = "VirTool:Win32/CeeInject.V,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {6a 40 68 00 30 00 00 ff 70 50 ff 70 34 } //1
		$a_02_1 = {8d 0c 06 e8 ?? ?? ?? ?? 30 01 83 c4 04 46 3b ?? 7c e9 } //2
		$a_00_2 = {c6 00 e9 ff 06 8b 06 2b f8 } //1
		$a_02_3 = {f7 75 14 8b 45 0c 8b ?? 89 bc bd ?? ?? ff ff 0f b6 04 ?? 03 ?? 03 ?? 99 f7 f9 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*2+(#a_00_2  & 1)*1+(#a_02_3  & 1)*1) >=4
 
}