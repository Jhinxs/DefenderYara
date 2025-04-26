
rule Trojan_Win32_Formbook_PG_MTB{
	meta:
		description = "Trojan:Win32/Formbook.PG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {8a 04 28 88 44 24 ?? 8b c1 0f af c6 0f af c7 8b d8 89 44 24 ?? 2b da 0f af d9 0f af df e8 ?? ?? ?? ?? 0b c2 59 74 08 ff 05 ?? ?? ?? 00 eb 06 ff 05 ?? ?? ?? 00 30 5c 24 } //1
		$a_02_1 = {85 ff 0f b6 44 24 ?? 8b f3 0f b6 ca 0f 45 c8 8b 44 24 ?? 0f af c7 88 0c 2a } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}