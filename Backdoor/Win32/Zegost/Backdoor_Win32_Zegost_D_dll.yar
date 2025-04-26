
rule Backdoor_Win32_Zegost_D_dll{
	meta:
		description = "Backdoor:Win32/Zegost.D!dll,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {6a 64 ff d6 a1 ?? ?? ?? 10 83 f8 03 74 05 83 f8 01 75 } //1
		$a_03_1 = {8b 45 04 3d 0f 01 00 00 74 0b 3d 02 01 00 00 0f 85 ?? ?? 00 00 } //1
		$a_01_2 = {8a 1c 11 80 f3 19 88 1c 11 41 3b c8 7c } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}