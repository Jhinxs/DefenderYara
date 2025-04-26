
rule Trojan_Win32_Ekstak_ASEF_MTB{
	meta:
		description = "Trojan:Win32/Ekstak.ASEF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 "
		
	strings :
		$a_03_0 = {72 44 6c 50 74 53 cd e6 d7 7b 0b 2a 01 00 00 00 ?? ?? ?? 00 ?? ?? ?? 00 00 c0 0a 00 03 8d 58 } //5
		$a_03_1 = {72 44 6c 50 74 53 cd e6 d7 7b 0b 2a 01 00 00 00 ?? ?? 61 00 ?? ?? 5e 00 00 c0 0a 00 0d 15 b6 76 } //5
		$a_03_2 = {72 44 6c 50 74 53 cd e6 d7 7b 0b 2a 01 00 00 00 [0-07] 00 00 c0 0a 00 0d 15 b6 76 } //5
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*5+(#a_03_2  & 1)*5) >=5
 
}