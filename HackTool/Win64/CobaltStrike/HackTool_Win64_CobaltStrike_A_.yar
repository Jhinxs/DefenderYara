
rule HackTool_Win64_CobaltStrike_A_{
	meta:
		description = "HackTool:Win64/CobaltStrike.A!!CobaltStrike.A64,SIGNATURE_TYPE_ARHSTR_EXT,1f 00 1f 00 07 00 00 "
		
	strings :
		$a_03_0 = {00 01 00 01 00 02 ?? ?? 00 02 00 01 00 02 } //1
		$a_03_1 = {69 68 69 68 69 6b ?? ?? 69 6b 69 68 69 6b } //1
		$a_03_2 = {2e 2f 2e 2f 2e 2c ?? ?? 2e 2c 2e 2f 2e 2c } //1
		$a_01_3 = {4c 63 c2 4d 03 c0 42 0f 10 04 c0 48 8b c1 f3 0f 7f 01 c3 } //1
		$a_03_4 = {48 ff c0 48 3d 00 10 00 00 7c f1 90 09 04 00 80 ?? ?? (2e|69) 48 } //10
		$a_01_5 = {0f af d1 44 8b c8 b8 1f 85 eb 51 f7 e2 41 8b c1 44 8b c2 33 d2 41 c1 e8 05 41 f7 f0 } //10
		$a_03_6 = {b9 00 00 10 00 e8 [0-3c] ba 7f 66 04 40 8b c8 48 8b [0-08] 89 08 48 8b 4b 20 } //10
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*10+(#a_01_5  & 1)*10+(#a_03_6  & 1)*10) >=31
 
}