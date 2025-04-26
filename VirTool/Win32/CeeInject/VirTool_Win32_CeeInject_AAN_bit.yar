
rule VirTool_Win32_CeeInject_AAN_bit{
	meta:
		description = "VirTool:Win32/CeeInject.AAN!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {46 03 d9 03 c8 8a 1c 03 88 1c 39 8b 0d ?? ?? ?? ?? 03 c8 03 cf 8a 19 32 da 40 3d da 04 00 00 88 19 90 09 0d 00 8b 0d ?? ?? ?? ?? 8a 16 bb } //1
		$a_01_1 = {3d 4e e6 40 bb } //1
		$a_01_2 = {53 55 55 53 } //1 SUUS
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}