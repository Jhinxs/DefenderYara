
rule Trojan_Win32_Lokibot_G_MTB{
	meta:
		description = "Trojan:Win32/Lokibot.G!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 "
		
	strings :
		$a_02_0 = {55 8b ec 83 c4 f4 53 6a 40 68 00 30 00 00 68 ?? ?? ?? ?? 6a 00 e8 ?? ?? ?? ff } //1
		$a_02_1 = {55 8b ec 51 53 56 57 6a 40 68 00 30 00 00 68 ?? ?? 00 00 6a 00 e8 ?? ?? ?? ff } //1
		$a_02_2 = {8a 01 88 45 fb 8b 55 fc 8a 45 fb 88 02 b0 ad 30 02 ff 45 fc ff 45 f4 41 81 7d f4 ?? ?? 00 00 75 df 81 c3 ?? ?? 00 00 89 5d f4 ff 75 f4 c3 } //5
		$a_02_3 = {8a 01 34 5c 88 45 fb 8b 55 fc 8a 45 fb 88 02 83 45 fc 01 73 05 e8 ?? ?? ?? ?? ff 45 f4 41 81 7d f4 ?? ?? 00 00 75 d9 81 c3 ?? ?? 00 00 73 05 e8 ?? ?? ?? ?? 89 5d f4 ff 75 f4 c3 } //5
		$a_02_4 = {32 c2 88 01 c3 [0-4f] 8b ce b2 c0 8a 03 e8 ?? ?? ?? ?? 83 c6 01 73 05 e8 ?? ?? ?? ff ff 45 fc 43 81 7d fc ?? ?? 00 00 75 de 81 c7 ?? ?? 00 00 73 05 e8 ?? ?? ?? ff 89 7d fc ff 75 fc c3 } //5
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*5+(#a_02_3  & 1)*5+(#a_02_4  & 1)*5) >=6
 
}