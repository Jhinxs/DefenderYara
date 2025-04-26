
rule Trojan_Win32_Redline_UW_MTB{
	meta:
		description = "Trojan:Win32/Redline.UW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {53 8b 5d 08 8b 56 04 0f b6 0c 18 88 0c 10 8b c8 8b 56 04 83 e1 ?? 0f b6 89 ?? ?? ?? ?? 30 0c 02 40 3b c7 72 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}