
rule Worm_Win32_Prolaco_gen_E{
	meta:
		description = "Worm:Win32/Prolaco.gen!E,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {6a 44 6a 00 50 e8 ?? ?? ?? ?? 83 c4 10 c7 85 ?? ?? ?? ?? 07 00 01 00 66 81 3f 4d 5a } //2
		$a_03_1 = {31 d2 83 c4 10 8d 4b 01 eb 0e 8a 85 ?? ?? ?? ?? 32 44 32 ff 88 44 3a ff 42 39 ca 75 ed } //1
		$a_02_2 = {83 c4 0c 6a 40 68 00 30 00 00 ff 70 50 ff 70 34 ff ?? ?? ff 95 ?? ?? ?? ?? a1 ?? ?? ?? ?? 6a 00 ff 70 54 57 ff 70 34 ff ?? ?? ff 95 } //1
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*1+(#a_02_2  & 1)*1) >=3
 
}