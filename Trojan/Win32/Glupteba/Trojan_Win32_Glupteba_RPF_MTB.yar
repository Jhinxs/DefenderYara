
rule Trojan_Win32_Glupteba_RPF_MTB{
	meta:
		description = "Trojan:Win32/Glupteba.RPF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {39 c9 74 01 ea 31 03 [0-10] 81 c3 04 00 00 00 39 d3 75 e2 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}