
rule VirTool_Win32_DelfInject_gen_CJ{
	meta:
		description = "VirTool:Win32/DelfInject.gen!CJ,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {02 00 01 00 90 09 06 00 c7 05 } //1
		$a_03_1 = {6a 40 68 00 30 00 00 a1 ?? ?? ?? ?? 8b 40 50 50 a1 ?? ?? ?? ?? 8b 40 34 } //1
		$a_03_2 = {8b 40 28 03 05 ?? ?? ?? ?? a3 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}