
rule Trojan_Win32_Redline_KAC_MTB{
	meta:
		description = "Trojan:Win32/Redline.KAC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b c2 d3 e8 8b 4d ?? 03 45 ?? 33 45 ?? 33 c8 8d 45 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}