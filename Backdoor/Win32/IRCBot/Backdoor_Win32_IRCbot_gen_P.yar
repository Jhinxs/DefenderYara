
rule Backdoor_Win32_IRCbot_gen_P{
	meta:
		description = "Backdoor:Win32/IRCbot.gen!P,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 "
		
	strings :
		$a_01_0 = {ff 55 0c 89 45 00 6a 00 68 00 02 00 00 56 53 ff 55 28 85 c0 74 11 78 1a ff 75 00 50 6a 01 56 ff 55 10 83 c4 10 eb df } //3
		$a_01_1 = {ac 84 c0 74 09 2c 44 34 08 04 11 aa eb f2 aa } //2
		$a_03_2 = {85 c0 74 57 66 c7 85 ?? ?? ?? ?? 2a 08 66 c7 } //1
		$a_03_3 = {19 02 00 00 74 05 e9 ?? ?? 00 00 } //1
		$a_01_4 = {8b 75 08 33 c9 ac 32 c8 c1 c1 05 ac 84 c0 75 f6 } //1
		$a_01_5 = {4e 76 43 70 6c 44 61 65 6d 6f 6e } //1 NvCplDaemon
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*2+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=3
 
}