
rule Trojan_Win32_Zenpak_QQ_MTB{
	meta:
		description = "Trojan:Win32/Zenpak.QQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8a 45 0c 8a 4d 08 30 c8 8b 15 ?? ?? ?? ?? 81 c2 ?? ?? ?? ?? 89 15 ?? ?? ?? ?? 0f b6 c0 5d } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}