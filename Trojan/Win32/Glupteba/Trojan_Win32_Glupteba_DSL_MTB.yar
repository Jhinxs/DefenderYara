
rule Trojan_Win32_Glupteba_DSL_MTB{
	meta:
		description = "Trojan:Win32/Glupteba.DSL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8a da d2 e3 8b 4c 24 ?? 46 46 80 e3 c0 0a d8 8a c2 d2 e0 88 5c 3e fe c0 e2 06 0a 54 24 ?? 24 c0 0a 44 24 ?? 83 c5 04 88 44 3e ff 8b 44 24 ?? 88 14 3e } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}