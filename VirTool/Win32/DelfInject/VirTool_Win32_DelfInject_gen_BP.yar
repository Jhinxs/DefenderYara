
rule VirTool_Win32_DelfInject_gen_BP{
	meta:
		description = "VirTool:Win32/DelfInject.gen!BP,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {30 04 3a 47 4b 0f 85 ?? ?? ?? ?? 8b 45 fc e8 ?? ?? ?? ?? 8b d8 4b 85 db 7c 29 } //1
		$a_03_1 = {81 c7 f8 00 00 00 0f b7 9d ?? ?? ff ff 4b 85 db 0f 8c } //1
		$a_01_2 = {8b 45 f0 03 85 d8 fe ff ff 89 85 18 fe ff ff } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}