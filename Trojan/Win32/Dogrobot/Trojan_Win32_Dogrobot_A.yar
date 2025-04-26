
rule Trojan_Win32_Dogrobot_A{
	meta:
		description = "Trojan:Win32/Dogrobot.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {89 4c 82 fc 8b 0d ?? ?? ?? ?? 3b c1 7c e2 a1 ?? ?? ?? ?? 0f 22 c0 fb c3 } //2
		$a_01_1 = {66 c7 45 fc e3 03 66 89 45 f8 66 89 45 fa ff 5d f8 8b c4 8b 64 24 04 } //2
		$a_03_2 = {6a 08 52 6a 26 ff 15 ?? ?? ?? ?? 85 c0 7c 16 e8 ?? ?? 00 00 85 c0 74 0d 68 ?? ?? ?? ?? e8 ?? 00 00 00 } //2
		$a_00_3 = {00 74 61 73 6b 6b 69 6c 6c 00 } //1 琀獡歫汩l
		$a_00_4 = {2f 66 20 2f 69 6d 20 61 76 70 2e 65 78 65 } //1 /f /im avp.exe
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*2+(#a_03_2  & 1)*2+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}