
rule Trojan_MacOS_Tored_A_MTB{
	meta:
		description = "Trojan:MacOS/Tored.A!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {49 6e 66 65 63 74 65 64 20 61 6e 64 20 62 6f 74 65 64 20 62 79 20 4f 53 58 2e 52 61 65 64 62 6f 74 2e 44 } //2 Infected and boted by OSX.Raedbot.D
		$a_00_1 = {73 70 61 6d 2e 74 61 72 67 65 74 73 } //1 spam.targets
		$a_00_2 = {6b 65 79 6c 6f 67 65 72 20 73 74 61 72 74 65 64 } //1 keyloger started
	condition:
		((#a_00_0  & 1)*2+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1) >=3
 
}