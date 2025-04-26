
rule Backdoor_Win32_Jetilms_A{
	meta:
		description = "Backdoor:Win32/Jetilms.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {ec 08 6a 2d 68 ?? ?? 40 00 e8 ?? ?? 00 00 83 c4 10 83 ec 08 } //1
		$a_03_1 = {89 d0 c1 e8 1f 01 d0 d1 f8 3b 45 ?? 7f ?? c7 45 ?? 00 00 00 00 } //1
		$a_03_2 = {3d 00 02 00 00 0f 8f ?? ?? 00 00 8b 4d ?? 8b 45 ?? c1 e0 09 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}