
rule Trojan_Win32_Redline_SHL_MTB{
	meta:
		description = "Trojan:Win32/Redline.SHL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {40 89 85 48 ?? ?? ?? 8b 85 58 ?? ?? ?? 8b 8d 48 ?? ?? ?? 3b 48 02 73 1c 8b 45 f0 03 85 48 ?? ?? ?? 8b 8d 58 ?? ?? ?? 03 8d 48 ?? ?? ?? 8a 49 3a 88 08 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}