
rule VirTool_Win32_Injector_gen_BO{
	meta:
		description = "VirTool:Win32/Injector.gen!BO,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 03 00 00 "
		
	strings :
		$a_03_0 = {5c 74 63 72 79 70 74 5c 52 65 6c 65 61 73 65 5c 73 5f 6c 6f 77 2e 70 64 62 90 09 0a 00 3a 5c 70 72 6f 6a 65 63 74 73 } //1
		$a_03_1 = {3a 5c 73 72 63 5c 74 63 72 79 70 74 5c 52 65 6c 65 61 73 65 5c 73 5f (6c 6f 77|68 69 67 68) 2e 70 64 62 } //1
		$a_03_2 = {3a 5c 70 72 6f 6a 65 63 74 73 5c 74 63 72 79 70 74 5f 63 6c 32 5c 74 63 72 79 70 74 5f 63 6c 32 5c 52 65 6c 65 61 73 65 5c 73 5f (6c 6f 77|68 69 67 68) 2e 70 64 62 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=1
 
}