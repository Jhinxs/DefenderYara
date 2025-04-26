
rule Trojan_Win32_Emotet_RU_MSR{
	meta:
		description = "Trojan:Win32/Emotet.RU!MSR,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {8b 5c 24 0c 56 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? e8 dc df ff ff 50 e8 04 df ff ff 8b 44 24 ?? 83 c4 ?? 53 8d 34 07 e8 f2 e0 ff ff 8b c8 33 d2 8b c7 f7 f1 8a 04 53 30 06 47 3b 7c 24 18 75 c7 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}