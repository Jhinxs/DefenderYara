
rule Trojan_Win32_Dridex_PR_MTB{
	meta:
		description = "Trojan:Win32/Dridex.PR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {8b c1 31 05 [0-04] c7 05 [0-08] 8b 15 [0-04] 01 15 [0-04] a1 [0-04] 8b 0d [0-04] 89 08 8b e5 5d c3 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}