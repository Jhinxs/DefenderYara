
rule VirTool_Win64_Swedrimesz_A_MTB{
	meta:
		description = "VirTool:Win64/Swedrimesz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {4c 89 ac 24 f0 00 00 00 48 8d ?? ?? ?? ?? ?? e8 08 ?? ?? ?? 0f 10 45 a7 0f 10 4d b7 0f 11 03 0f 10 45 c7 0f 11 4b 10 0f 10 4d d7 0f 11 43 20 0f 10 45 e7 0f 11 4b 30 0f 10 4d f7 0f 11 43 40 0f 10 45 97 0f 11 4b 50 0f 10 4d 07 0f 11 43 60 0f 11 4b 70 66 89 b3 80 00 00 00 33 } //1
		$a_03_1 = {4c 8b c3 33 d2 89 74 24 20 33 c9 ff 15 ?? ?? ?? ?? 48 8b c8 48 8b d8 ff 15 ?? ?? ?? ?? 8b d0 48 8d ?? ?? ?? ?? ?? e8 f0 ?? ?? ?? 48 85 } //1
		$a_03_2 = {4c 8b c6 49 8b d6 48 8b cb e8 ?? ?? ?? ?? 4c 8b c6 33 d2 49 8b ce e8 ?? ?? ?? ?? 44 8b } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}