
rule VirTool_Win32_CeeInject_gen_BD{
	meta:
		description = "VirTool:Win32/CeeInject.gen!BD,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_03_0 = {6a 10 8d 54 24 ?? 88 44 24 ?? 52 8d 44 24 ?? 50 c6 44 24 ?? 30 c6 44 24 ?? 78 88 4c 24 ?? c6 44 24 ?? 00 e8 } //1
		$a_01_1 = {b8 68 58 4d 56 } //1
		$a_01_2 = {00 64 62 67 68 65 6c 70 2e 64 6c 6c 00 53 62 69 65 44 6c 6c 2e 64 6c 6c 00 } //1
		$a_01_3 = {00 25 73 25 73 25 73 25 73 5b 25 73 5d 7b 7d 25 73 7b 7d } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}