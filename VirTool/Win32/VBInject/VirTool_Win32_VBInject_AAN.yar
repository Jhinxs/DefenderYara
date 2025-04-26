
rule VirTool_Win32_VBInject_AAN{
	meta:
		description = "VirTool:Win32/VBInject.AAN,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 05 00 00 "
		
	strings :
		$a_01_0 = {68 d0 37 10 f2 } //5
		$a_01_1 = {68 88 fe b3 16 } //5
		$a_01_2 = {68 c2 8c 10 c5 } //5
		$a_03_3 = {68 86 00 00 00 c7 85 4c f7 ff ff 0d 00 00 00 ff 75 b4 89 b5 44 f7 ff ff 8d 9d 44 f7 ff ff e8 ?? ?? ff ff 8b c8 8b d3 e8 ?? ?? ff ff 68 87 00 00 00 } //1
		$a_03_4 = {68 a0 00 00 00 ff b5 c0 fe ff ff e8 ?? ?? ?? ?? 8b c8 8b d6 e8 ?? ?? ?? ?? c7 85 a8 f4 ff ff 8b 00 00 00 c7 85 a0 f4 ff ff 02 00 00 00 8d b5 a0 f4 ff ff 68 a1 00 00 00 } //1
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*5+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=16
 
}