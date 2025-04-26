
rule VirTool_Win32_CeeInject_UQ_bit{
	meta:
		description = "VirTool:Win32/CeeInject.UQ!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {8b c1 c1 e0 04 03 c2 8b d1 03 4c 24 ?? c1 ea 05 03 54 24 ?? 33 c2 33 c1 } //1
		$a_03_1 = {8b cf 53 e8 ?? ?? ?? ?? 8b 54 24 ?? 2b f0 53 ff 74 24 ?? 8b ce e8 ?? ?? ?? ?? 2b f8 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}