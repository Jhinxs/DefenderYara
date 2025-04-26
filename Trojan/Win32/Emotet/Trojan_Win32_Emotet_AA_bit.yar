
rule Trojan_Win32_Emotet_AA_bit{
	meta:
		description = "Trojan:Win32/Emotet.AA!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {eb 23 8b 45 ?? 8b 4d ?? 01 c8 8b 55 ?? 8b 34 ?? 8b 7c 02 04 8b 5d ?? 01 de 8b 4d ?? 11 cf 89 34 02 89 7c 02 04 } //1
		$a_03_1 = {89 c1 83 e1 1f 8b 15 ?? ?? ?? ?? 8a 1c 0a 8b 4d ?? 8a 3c 01 28 df 88 3c 01 05 ff 00 00 00 8b 55 ?? 39 d0 89 45 ?? 72 } //1
		$a_03_2 = {89 f1 01 c1 83 c1 08 8b 01 8b 4d ?? c6 01 ?? 8b 4d ?? 29 cf 8b 4d ?? 01 f9 01 d9 8b 7d ?? 89 0f } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}