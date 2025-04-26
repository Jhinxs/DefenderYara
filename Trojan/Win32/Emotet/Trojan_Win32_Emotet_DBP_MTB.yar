
rule Trojan_Win32_Emotet_DBP_MTB{
	meta:
		description = "Trojan:Win32/Emotet.DBP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {6a 00 ff d6 8a 1f 8b 4c 24 ?? 8b c3 81 e1 ff 00 00 00 25 ff 00 00 00 03 c1 b9 ?? ?? ?? ?? 99 f7 f9 8b 44 24 ?? 8a 08 8a 54 14 ?? 32 ca 88 08 40 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}