
rule Backdoor_Win32_Rbot_PN{
	meta:
		description = "Backdoor:Win32/Rbot.PN,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {eb 0f 8b 85 ?? fe ff ff 83 c0 01 89 85 ?? fe ff ff 81 bd ?? fe ff ff ?? ?? ?? ?? 7d 20 6a 00 6a 00 6a 00 6a 00 6a 00 } //1
		$a_01_1 = {58 73 6a 75 66 51 73 70 64 66 74 74 4e 66 6e 70 73 7a 00 00 48 66 75 55 69 73 66 62 65 44 70 6f 75 66 79 75 } //1
		$a_00_2 = {5a 00 65 00 62 00 72 00 61 00 30 00 } //1 Zebra0
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_00_2  & 1)*1) >=3
 
}