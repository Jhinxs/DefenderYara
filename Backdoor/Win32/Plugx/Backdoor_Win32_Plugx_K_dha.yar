
rule Backdoor_Win32_Plugx_K_dha{
	meta:
		description = "Backdoor:Win32/Plugx.K!dha,SIGNATURE_TYPE_PEHSTR_EXT,78 00 78 00 03 00 00 "
		
	strings :
		$a_00_0 = {8b 45 f8 35 09 06 86 19 50 } //100
		$a_01_1 = {43 00 6f 00 6e 00 66 00 69 00 67 00 2e 00 77 00 61 00 76 00 } //10 Config.wav
		$a_01_2 = {7b 42 32 38 45 30 45 37 38 2d 38 38 32 44 2d 34 30 33 63 2d 41 46 34 45 2d 42 44 45 43 39 43 38 46 41 33 37 42 7d } //10 {B28E0E78-882D-403c-AF4E-BDEC9C8FA37B}
	condition:
		((#a_00_0  & 1)*100+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10) >=120
 
}
rule Backdoor_Win32_Plugx_K_dha_2{
	meta:
		description = "Backdoor:Win32/Plugx.K!dha,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {43 61 6e 27 74 20 66 69 6e 64 20 46 75 6e 63 20 30 78 25 78 20 69 6e 20 25 73 21 } //1 Can't find Func 0x%x in %s!
		$a_01_1 = {00 53 76 63 4d 61 69 6e 00 } //1
		$a_03_2 = {68 8b c4 5d 63 56 a3 ?? ?? ?? ?? e8 ?? ?? ff ff 68 b2 bb 55 3a 56 a3 ?? ?? ?? ?? e8 ?? ?? ff ff 68 5a 6e db db 56 a3 ?? ?? ?? ?? e8 ?? ?? ff ff } //1
		$a_03_3 = {8a 4f 01 47 84 c9 75 f8 8b c8 c1 e9 02 8b f2 f3 a5 8b c8 83 e1 03 8d 85 ?? ?? ?? ?? f3 a4 8d 48 01 8a 10 40 84 d2 75 ?? 2b c1 80 ?? ?? ?? ?? ?? ff 5c } //1
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}