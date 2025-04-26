
rule VirTool_Win32_CeeInject_gen_GC{
	meta:
		description = "VirTool:Win32/CeeInject.gen!GC,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {07 00 01 00 90 09 06 00 c7 05 } //1
		$a_03_1 = {68 00 30 00 00 ff 76 50 [0-10] ff 76 34 } //1
		$a_01_2 = {8b 46 28 05 00 00 40 00 a3 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}