
rule Trojan_Win32_Trickbot_D_MTB{
	meta:
		description = "Trojan:Win32/Trickbot.D!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {80 f2 01 20 d4 08 e0 88 ca 80 f2 ff 88 c4 20 d4 88 c2 80 f2 ff 88 ce 20 d6 08 f4 88 ca 80 f2 ff 88 c6 80 f6 ff 88 eb 80 f3 00 88 d7 80 e7 00 20 d9 88 76 37 } //1
		$a_81_1 = {4c 6f 70 65 72 4e 75 74 57 } //1 LoperNutW
	condition:
		((#a_01_0  & 1)*1+(#a_81_1  & 1)*1) >=2
 
}
rule Trojan_Win32_Trickbot_D_MTB_2{
	meta:
		description = "Trojan:Win32/Trickbot.D!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {55 8b ec a1 ?? ?? ?? 00 03 05 ?? ?? ?? 00 0f b6 08 8b 15 ?? ?? ?? 00 03 15 ?? ?? ?? 00 0f b6 02 03 c1 8b 0d ?? ?? ?? 00 03 0d ?? ?? ?? 00 88 01 5d c3 } //1
		$a_02_1 = {55 8b ec 8b 45 08 0f af 45 08 2d ?? ?? ?? ?? 5d c3 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}