
rule Trojan_Win32_Formbook_SIBB1_MTB{
	meta:
		description = "Trojan:Win32/Formbook.SIBB1!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {31 c0 80 34 06 ?? [0-50] 8b 4d ?? 80 34 01 ?? [0-50] 8b 4d 90 1b 02 80 04 01 ?? [0-50] 8b 4d 90 1b 02 fe 0c 01 [0-50] 8b 4d 90 1b 02 fe 04 01 [0-50] 39 c3 74 ?? 8b 75 90 1b 02 40 eb ?? 8b 45 90 1b 02 ff e0 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}