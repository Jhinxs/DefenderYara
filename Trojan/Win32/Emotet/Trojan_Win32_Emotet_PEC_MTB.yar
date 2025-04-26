
rule Trojan_Win32_Emotet_PEC_MTB{
	meta:
		description = "Trojan:Win32/Emotet.PEC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 03 00 00 "
		
	strings :
		$a_02_0 = {0f b6 cb 03 c1 8b ce 99 f7 f9 8b 45 ?? 8a 9c 15 ?? ?? ?? ?? 32 18 } //1
		$a_02_1 = {81 e1 ff 00 00 00 03 c1 b9 ?? ?? ?? ?? 99 f7 f9 8a 4d 00 8a 5c 14 ?? 32 d9 90 09 04 00 8a 44 34 } //1
		$a_81_2 = {5a 48 51 58 43 62 78 79 44 46 59 35 6a 45 50 44 39 79 39 57 51 41 67 76 42 69 7a 41 68 53 5a 69 52 32 53 31 72 } //1 ZHQXCbxyDFY5jEPD9y9WQAgvBizAhSZiR2S1r
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_81_2  & 1)*1) >=1
 
}