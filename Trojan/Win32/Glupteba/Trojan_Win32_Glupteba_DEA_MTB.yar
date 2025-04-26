
rule Trojan_Win32_Glupteba_DEA_MTB{
	meta:
		description = "Trojan:Win32/Glupteba.DEA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {8b d6 d3 e2 8b ce c1 e9 05 03 8d ?? fb ff ff 03 95 ?? fb ff ff 33 c0 33 d1 8b 8d ?? fb ff ff 03 ce 33 d1 a3 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}