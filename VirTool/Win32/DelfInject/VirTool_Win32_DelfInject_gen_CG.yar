
rule VirTool_Win32_DelfInject_gen_CG{
	meta:
		description = "VirTool:Win32/DelfInject.gen!CG,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {3c fb 75 03 b0 01 c3 3c fd 75 04 b0 03 eb 17 3c ff 75 04 b0 05 eb 0f 33 d2 8a d0 83 e2 01 83 fa 01 75 03 83 c0 06 c3 } //1
		$a_03_1 = {8d 53 04 8b ce 2b ca 8b 15 ?? ?? 00 01 88 04 0a 46 4f 75 df eb } //1
		$a_01_2 = {8d 7d dd a5 a5 a5 66 a5 a4 b8 01 00 00 00 33 d2 8a 55 dd 42 88 55 dd 48 } //2
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*2) >=3
 
}