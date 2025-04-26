
rule Trojan_Win32_Glupteba_GNW_MTB{
	meta:
		description = "Trojan:Win32/Glupteba.GNW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {31 08 81 c6 ?? ?? ?? ?? 81 c0 04 00 00 00 89 da 01 d6 39 f8 ?? ?? 29 f6 c3 31 30 b9 ?? ?? ?? ?? 81 c0 04 00 00 00 39 d8 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}