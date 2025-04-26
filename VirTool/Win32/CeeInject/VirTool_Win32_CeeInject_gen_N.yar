
rule VirTool_Win32_CeeInject_gen_N{
	meta:
		description = "VirTool:Win32/CeeInject.gen!N,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {33 c0 8a 88 ?? ?? ?? ?? 30 0c 37 40 83 f8 ?? 72 f1 8a 04 37 56 f6 d0 88 04 37 47 e8 ?? ?? ?? ?? 3b f8 59 72 db } //1
		$a_03_1 = {0f b7 40 06 85 c0 7e ?? 8b 55 ?? 53 57 8b d8 8d 7a 08 8b 37 85 f6 74 ?? 8b c6 33 d2 f7 75 ?? 85 d2 75 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}