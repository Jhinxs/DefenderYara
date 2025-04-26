
rule Backdoor_Win32_Nethief_AA{
	meta:
		description = "Backdoor:Win32/Nethief.AA,SIGNATURE_TYPE_PEHSTR_EXT,15 00 14 00 05 00 00 "
		
	strings :
		$a_02_0 = {83 c9 ff 33 c0 83 c4 08 f2 ae f7 d1 2b f9 6a 00 8b c1 8b f7 8b fa 68 80 00 00 00 c1 e9 02 f3 a5 8b c8 6a 03 83 e1 03 6a 00 f3 a4 6a 01 8d 8c 24 8c ?? ?? ?? 68 00 00 00 80 51 } //10
		$a_00_1 = {4d 61 6b 65 2e 63 66 67 } //5 Make.cfg
		$a_00_2 = {52 65 6d 6f 74 65 43 6f 6d 70 75 74 65 72 2e 65 78 65 } //5 RemoteComputer.exe
		$a_00_3 = {37 38 37 45 46 46 46 35 2d 45 39 30 44 2d 34 35 62 36 2d 42 39 43 46 2d 42 37 35 31 46 45 36 45 38 32 35 32 } //1 787EFFF5-E90D-45b6-B9CF-B751FE6E8252
		$a_00_4 = {36 46 39 38 35 32 45 36 2d 44 35 30 31 2d 34 66 66 65 2d 42 30 36 35 2d 46 35 37 43 33 46 37 42 39 38 37 30 } //1 6F9852E6-D501-4ffe-B065-F57C3F7B9870
	condition:
		((#a_02_0  & 1)*10+(#a_00_1  & 1)*5+(#a_00_2  & 1)*5+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=20
 
}