
rule Trojan_Win32_IRCBot_EN_MTB{
	meta:
		description = "Trojan:Win32/IRCBot.EN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {4d 79 44 6f 6f 6d 20 49 6e 66 65 63 74 61 74 } //1 MyDoom Infectat
		$a_01_1 = {6e 65 74 62 69 6f 73 5f 69 6e 66 65 63 74 65 64 } //1 netbios_infected
		$a_01_2 = {66 75 63 6b 32 31 } //1 fuck21
		$a_01_3 = {53 74 61 72 74 20 4d 65 6e 75 5c 50 72 6f 67 72 61 6d 73 5c 53 74 61 72 74 75 70 } //1 Start Menu\Programs\Startup
		$a_01_4 = {75 73 2e 75 6e 64 65 72 6e 65 74 2e 6f 72 67 } //1 us.undernet.org
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}