
rule VirTool_Win32_Injector_CB{
	meta:
		description = "VirTool:Win32/Injector.CB,SIGNATURE_TYPE_PEHSTR_EXT,64 00 15 00 05 00 00 "
		
	strings :
		$a_01_0 = {c7 44 24 68 58 59 59 59 68 04 00 00 00 8d 44 24 6c 50 ff 74 24 60 } //10
		$a_03_1 = {31 c9 8b 74 24 04 8b 7c 24 0c 8b 54 24 08 8b 6c 24 10 01 f5 8a ?? 8a 3f 30 ?? 88 ?? 41 46 47 39 ee 7d 0c 39 d1 7d 02 eb eb 31 c9 29 d7 eb e5 31 c0 c2 10 00 } //10
		$a_03_2 = {07 00 01 00 90 09 07 00 c7 84 24 } //1
		$a_01_3 = {c7 45 00 07 00 01 00 } //1
		$a_03_4 = {83 fb 2e 0f 85 ?? ?? ?? ?? ff 44 24 0c 8b 6c 24 0c 0f b6 5d 00 83 fb 64 74 0f 8b 6c 24 0c 0f b6 5d 00 83 fb 65 74 02 eb 07 b8 01 00 00 00 eb 02 } //1
	condition:
		((#a_01_0  & 1)*10+(#a_03_1  & 1)*10+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1) >=21
 
}