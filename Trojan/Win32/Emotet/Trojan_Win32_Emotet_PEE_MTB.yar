
rule Trojan_Win32_Emotet_PEE_MTB{
	meta:
		description = "Trojan:Win32/Emotet.PEE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_02_0 = {0f b6 d1 03 c2 99 b9 ?? ?? ?? ?? f7 f9 8b 44 24 ?? 8a 5c 14 ?? 8b 54 24 ?? 32 1c 02 } //1
		$a_02_1 = {0f b6 44 04 ?? 03 c1 b9 ?? ?? ?? ?? 99 f7 f9 8b 44 24 ?? 8a 4c 14 ?? 30 08 } //1
		$a_81_2 = {53 64 78 4f 4a 67 70 65 4d 35 6b 70 35 71 74 33 76 35 32 4c 63 38 72 54 7a 4a 67 6f 67 74 6a 7a 79 44 44 } //1 SdxOJgpeM5kp5qt3v52Lc8rTzJgogtjzyDD
		$a_81_3 = {69 72 6f 30 68 33 5a 75 49 41 23 6a 51 21 26 37 63 48 71 41 78 23 21 25 55 34 43 4b 67 65 6a 4b 67 72 7a 79 } //1 iro0h3ZuIA#jQ!&7cHqAx#!%U4CKgejKgrzy
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1) >=1
 
}