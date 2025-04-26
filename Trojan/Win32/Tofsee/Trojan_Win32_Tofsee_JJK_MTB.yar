
rule Trojan_Win32_Tofsee_JJK_MTB{
	meta:
		description = "Trojan:Win32/Tofsee.JJK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {03 d0 8b 44 24 14 c1 e8 05 89 44 24 10 8b 44 24 10 03 44 24 34 33 ca 33 c1 81 3d ?? ?? ?? ?? 13 02 00 00 c7 05 ?? ?? ?? ?? ee 3d ea f4 89 44 24 10 0f 85 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}