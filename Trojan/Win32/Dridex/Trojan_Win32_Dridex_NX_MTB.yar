
rule Trojan_Win32_Dridex_NX_MTB{
	meta:
		description = "Trojan:Win32/Dridex.NX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {eb 00 eb 00 8b [0-05] 90 18 33 ?? 8b ?? a3 [0-04] a1 [0-04] 8b [0-05] 89 08 5d c3 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}