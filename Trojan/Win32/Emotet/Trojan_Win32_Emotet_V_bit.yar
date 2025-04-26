
rule Trojan_Win32_Emotet_V_bit{
	meta:
		description = "Trojan:Win32/Emotet.V!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {62 6f 6f 6b 00 66 61 63 65 00 6c 75 63 6b 00 25 58 25 50 } //1
		$a_03_1 = {89 c1 83 e1 1f 8b 15 ?? ?? ?? ?? 8a 1c 0a 8b 4d ?? 8a 3c 01 28 df 88 3c 01 05 ff 00 00 00 8b 55 ?? 39 d0 89 45 ?? 72 } //1
		$a_03_2 = {eb 23 8b 45 ?? 8b 4d ?? 01 c8 8b 55 ?? 8b 34 ?? 8b 7c 02 04 8b 5d ?? 01 de 8b 4d ?? 11 cf 89 34 02 89 7c 02 04 } //1
		$a_01_3 = {8b 30 8b 78 04 8b 58 08 8b 68 0c 8b 60 10 8b 40 14 ff e0 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}