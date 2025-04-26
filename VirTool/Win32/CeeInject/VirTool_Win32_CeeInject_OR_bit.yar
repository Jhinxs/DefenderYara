
rule VirTool_Win32_CeeInject_OR_bit{
	meta:
		description = "VirTool:Win32/CeeInject.OR!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {2b f2 33 ce 03 c1 8b 0d ?? ?? ?? ?? 03 8d ?? ?? ?? ?? 88 01 } //1
		$a_03_1 = {85 c9 8b 0d ?? ?? ?? ?? 0b fb 2b fe 87 d9 8b fb ff d7 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}