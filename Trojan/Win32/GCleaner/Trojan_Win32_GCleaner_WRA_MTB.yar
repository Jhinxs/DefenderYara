
rule Trojan_Win32_GCleaner_WRA_MTB{
	meta:
		description = "Trojan:Win32/GCleaner.WRA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {8d 14 03 8b 45 f0 c1 e8 05 89 45 f8 8b 45 f8 03 45 d8 33 ca 33 c1 81 3d ?? ?? ?? ?? 13 02 00 00 c7 05 ?? ?? ?? ?? ee 3d ea f4 89 45 f8 0f 85 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}