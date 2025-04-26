
rule VirTool_Win32_VBInject_QM{
	meta:
		description = "VirTool:Win32/VBInject.QM,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {51 6a 01 6a ff 68 20 01 00 00 ff 15 ?? ?? 40 00 8b 55 dc 52 ff 15 ?? ?? 40 00 50 8d 45 bc 50 e9 ?? ?? ff ff } //1
		$a_01_1 = {57 51 53 ff 52 2c 3b c6 db e2 7d } //2
		$a_03_2 = {88 04 3a 8b 45 dc e9 ?? ?? 00 00 } //1
		$a_03_3 = {b9 b8 00 00 00 89 45 ec 89 45 e8 89 45 e4 ff d3 50 e8 ?? ?? 00 00 8b 45 08 } //2
		$a_03_4 = {b9 68 00 00 00 ff 15 ?? ?? 40 00 50 e8 ?? ?? ?? 00 6a 04 ff d7 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*2+(#a_03_2  & 1)*1+(#a_03_3  & 1)*2+(#a_03_4  & 1)*1) >=5
 
}