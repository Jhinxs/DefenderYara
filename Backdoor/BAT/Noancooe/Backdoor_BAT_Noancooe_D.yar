
rule Backdoor_BAT_Noancooe_D{
	meta:
		description = "Backdoor:BAT/Noancooe.D,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_02_0 = {03 6f 09 00 00 0a 74 01 00 00 1b 0a 16 0b 2b 15 7e [0-04] 06 07 91 1f [0-01] 61 d2 6f 0a 00 00 0a 07 17 58 0b 07 06 8e 69 17 59 32 e3 16 2a } //1
		$a_02_1 = {74 14 00 00 01 6f 2d 00 00 0a [0-01] 9a 6f 2e 00 00 0a [0-01] 9a 0a 06 74 22 00 00 01 14 14 6f 2f 00 00 0a 26 2a } //1
		$a_00_2 = {6f 0b 00 00 0a 28 0c 00 00 0a 28 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_00_2  & 1)*1) >=3
 
}