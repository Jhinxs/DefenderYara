
rule Trojan_Win32_Glupteba_JFU_MTB{
	meta:
		description = "Trojan:Win32/Glupteba.JFU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {33 c1 2b f8 89 7c 24 ?? 89 5c 24 ?? 81 f3 07 eb dd 13 81 6c 24 ?? 52 ef 6f 62 b8 41 e5 64 03 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}