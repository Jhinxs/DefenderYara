
rule TrojanDropper_Win32_IRCbot_B{
	meta:
		description = "TrojanDropper:Win32/IRCbot.B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {01 3e 8b 06 c6 00 e9 83 c4 0c ff 06 8b 06 2b d8 8d 4c 3b fc 89 08 83 c8 ff 2b c7 01 06 } //2
		$a_00_1 = {73 6b 6f 70 66 6b 77 6f 70 74 65 72 74 65 72 70 6f 74 65 72 69 6f } //1 skopfkwopterterpoterio
		$a_03_2 = {8b 44 24 0c 56 8d 0c 06 e8 ?? ff ff ff 30 01 83 c4 04 46 3b f7 7c e9 } //1
	condition:
		((#a_01_0  & 1)*2+(#a_00_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}