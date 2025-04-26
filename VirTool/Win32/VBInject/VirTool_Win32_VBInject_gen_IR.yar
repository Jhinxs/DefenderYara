
rule VirTool_Win32_VBInject_gen_IR{
	meta:
		description = "VirTool:Win32/VBInject.gen!IR,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {37 00 37 00 7c 00 39 00 30 00 7c 00 31 00 32 00 38 00 7c 00 30 00 7c 00 31 00 7c 00 30 00 7c 00 30 00 7c 00 30 00 7c 00 } //1 77|90|128|0|1|0|0|0|
		$a_03_1 = {0f bf c0 33 45 ?? 50 e8 ?? ?? ?? ?? 8b d0 8d 4d ?? e8 ?? ?? ?? ?? 50 e8 ?? ?? ?? ?? 8b d0 8d 4d ?? e8 ?? ?? ?? ?? 8d 45 ?? 50 8d 45 ?? 50 6a 02 e8 ?? ?? ?? ?? 83 c4 0c 8d 45 ?? 50 8d 45 ?? 50 6a 02 e8 ?? ?? ?? ?? 83 c4 0c } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}