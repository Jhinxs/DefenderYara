
rule Trojan_Win32_Emotet_DDT_MTB{
	meta:
		description = "Trojan:Win32/Emotet.DDT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {68 00 30 00 00 50 53 ff 15 ?? ?? ?? ?? 50 ff d5 8b 4c 24 ?? 8b 54 24 ?? 51 8b f0 52 56 e8 ?? ?? ?? ?? 8b 44 24 ?? 8b 4c 24 ?? 83 c4 0c 53 50 68 00 30 00 00 51 53 ff 15 ?? ?? ?? ?? 50 ff d5 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}