
rule Backdoor_Win32_IRCbot_FH{
	meta:
		description = "Backdoor:Win32/IRCbot.FH,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 "
		
	strings :
		$a_03_0 = {eb ee fe 45 ?? 80 7d ?? 5b 0f 85 } //1
		$a_03_1 = {6a 05 8d 44 24 04 50 6a 5a 68 00 04 00 00 e8 ?? ?? ?? ?? 83 f8 03 } //1
		$a_03_2 = {83 c3 04 4e 75 d7 8b 90 09 23 00 6a 00 6a 01 6a 02 } //1
		$a_01_3 = {8a 54 1a ff 80 f2 bc 88 54 18 ff 43 4e 75 e6 } //1
		$a_01_4 = {50 72 6f 66 69 6c 65 30 00 00 00 00 ff ff ff ff 0d 00 00 00 5c 73 69 67 6e 6f 6e 73 33 2e 74 78 } //1
		$a_01_5 = {73 68 65 6c 6c 3d 76 65 72 62 } //1 shell=verb
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=4
 
}