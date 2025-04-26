
rule Trojan_Win32_Ursnif_F_MTB{
	meta:
		description = "Trojan:Win32/Ursnif.F!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {8b 04 24 89 c3 03 5c 24 ?? 89 5c 24 ?? 8b 74 24 ?? 8b 6c 24 ?? 8a 26 8a 6d ?? 30 ec 88 26 ff 44 24 ?? 8b 5c 24 ?? 3b 5c 24 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}