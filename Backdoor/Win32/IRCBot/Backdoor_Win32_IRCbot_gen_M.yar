
rule Backdoor_Win32_IRCbot_gen_M{
	meta:
		description = "Backdoor:Win32/IRCbot.gen!M,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_03_0 = {6a 05 8b f0 59 8d 7d f8 33 c0 f3 a6 75 07 90 09 1f 00 c6 45 ?? c8 88 5d ?? c6 45 ?? 04 88 5d ?? c6 45 ?? 60 ff 15 ?? ?? ?? ?? 50 ff 15 } //1
		$a_03_1 = {c6 45 f8 c8 88 5d f9 c6 45 fa 04 88 5d fb c6 45 fc 60 ff 15 ?? ?? ?? ?? 50 ff 15 [0-0a] 6a 05 } //1
		$a_03_2 = {6a 05 8d 85 ?? ?? ff ff 50 ff b5 ?? ?? ff ff e8 90 09 40 00 c6 85 ?? ?? ff ff c8 80 a5 ?? ?? ff ff 00 c6 85 ?? ?? ff ff 04 80 a5 ?? ?? ff ff 00 c6 85 ?? ?? ff ff 60 } //1
		$a_03_3 = {6a 05 8d 85 ?? ?? ff ff 50 8b 8d ?? ?? ff ff 51 e8 90 09 40 00 c6 85 ?? ?? ff ff c8 c6 85 ?? ?? ff ff 00 c6 85 ?? ?? ff ff 04 c6 85 ?? ?? ff ff 00 c6 85 ?? ?? ff ff 60 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=1
 
}