
rule Trojan_Win32_Redline_AMMI_MTB{
	meta:
		description = "Trojan:Win32/Redline.AMMI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0f b6 44 2c ?? 03 c6 0f b6 c0 0f b6 44 04 ?? 30 04 3a 8b 54 24 ?? 85 d2 74 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}