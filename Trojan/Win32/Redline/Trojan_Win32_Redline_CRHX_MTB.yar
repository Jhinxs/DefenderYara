
rule Trojan_Win32_Redline_CRHX_MTB{
	meta:
		description = "Trojan:Win32/Redline.CRHX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {88 45 d3 0f b6 4d d3 51 8d 4d e4 e8 ?? ?? ?? ?? 0f b6 10 8b 45 08 03 45 d4 0f b6 08 33 ca 8b 55 08 03 55 d4 88 0a e9 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}