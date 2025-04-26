
rule Trojan_Win32_Redline_CGM_MTB{
	meta:
		description = "Trojan:Win32/Redline.CGM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {33 d2 f7 75 ?? 8b 45 ?? 0f be 04 10 6b c0 ?? 6b c0 ?? 99 b9 ?? ?? ?? ?? f7 f9 99 b9 ?? ?? ?? ?? f7 f9 8b 55 ?? 03 55 ?? 0f b6 0a 33 c8 8b 55 ?? 03 55 ?? 88 0a eb } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}