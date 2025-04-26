
rule Backdoor_Win32_IRCbot_GS{
	meta:
		description = "Backdoor:Win32/IRCbot.GS,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {3a 00 44 00 44 00 4f 00 53 00 20 00 50 00 65 00 6e 00 67 00 67 00 75 00 6e 00 61 00 61 00 6e 00 3a 00 20 00 21 00 64 00 64 00 6f 00 73 00 2e 00 73 00 74 00 61 00 72 00 74 00 20 00 69 00 70 00 20 00 70 00 6f 00 72 00 74 00 } //1 :DDOS Penggunaan: !ddos.start ip port
		$a_01_1 = {6d 6f 64 62 75 6b 61 73 69 74 75 73 } //1 modbukasitus
		$a_01_2 = {64 00 64 00 6f 00 73 00 2e 00 73 00 74 00 61 00 74 00 75 00 73 00 } //1 ddos.status
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}