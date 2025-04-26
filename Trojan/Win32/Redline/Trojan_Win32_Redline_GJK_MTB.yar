
rule Trojan_Win32_Redline_GJK_MTB{
	meta:
		description = "Trojan:Win32/Redline.GJK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {01 d0 0f b6 00 0f be c0 69 c8 ?? ?? ?? ?? ba ?? ?? ?? ?? 89 c8 f7 ea c1 fa ?? 89 c8 c1 f8 ?? 29 c2 89 d0 89 c2 89 d0 c1 e0 ?? 01 d0 01 c0 01 d0 89 c1 8b 55 f0 8b 45 0c 01 d0 31 cb 89 da 88 10 83 45 f0 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}