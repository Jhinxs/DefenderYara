
rule VirTool_Win32_CeeInject_gen_JG{
	meta:
		description = "VirTool:Win32/CeeInject.gen!JG,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {8b 4d f8 0f be 11 52 e8 ?? ?? ?? 00 83 c4 04 8b 45 f8 83 c0 01 89 45 f8 8b 4d f8 0f be 11 83 fa 21 74 ?? eb } //2
		$a_01_1 = {48 65 6c 6c 6f 2c 20 57 6f 72 6c 64 21 } //1 Hello, World!
		$a_01_2 = {54 6f 74 61 6c 3a 20 25 64 00 } //1 潔慴㩬┠d
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}