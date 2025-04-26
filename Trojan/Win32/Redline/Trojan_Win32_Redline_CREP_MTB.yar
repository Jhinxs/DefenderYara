
rule Trojan_Win32_Redline_CREP_MTB{
	meta:
		description = "Trojan:Win32/Redline.CREP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {f7 f9 8b 45 08 0f be 0c 10 69 c9 ?? ?? ?? ?? 83 e1 ?? 8b 55 0c 03 55 fc 0f b6 02 33 c1 8b 4d 0c 03 4d fc 88 01 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}