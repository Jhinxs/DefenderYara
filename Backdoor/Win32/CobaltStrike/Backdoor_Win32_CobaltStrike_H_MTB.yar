
rule Backdoor_Win32_CobaltStrike_H_MTB{
	meta:
		description = "Backdoor:Win32/CobaltStrike.H!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_01_0 = {68 0a 30 03 00 6a 40 ff 15 10 c0 40 00 8b f0 33 d2 } //1
		$a_03_1 = {8a 0c 55 c8 09 41 00 c0 e1 [0-01] 02 0c 55 c9 09 41 00 88 0c 32 42 81 fa [0-04] 72 e3 } //2
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*2) >=3
 
}