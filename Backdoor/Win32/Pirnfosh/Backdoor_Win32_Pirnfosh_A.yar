
rule Backdoor_Win32_Pirnfosh_A{
	meta:
		description = "Backdoor:Win32/Pirnfosh.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {ff ff 42 0f 84 16 02 00 00 57 ff 15 f0 10 40 00 83 e8 00 74 43 48 74 39 48 74 2f 48 74 25 48 74 1b 48 74 11 48 74 07 } //1
		$a_03_1 = {8b f8 c1 e7 0c e8 ?? ?? 00 00 33 f8 c1 e7 08 e8 ?? ?? 00 00 25 ff 00 00 00 6a 04 33 f8 8d 45 fc 50 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}