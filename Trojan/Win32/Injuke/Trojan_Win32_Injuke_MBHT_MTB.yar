
rule Trojan_Win32_Injuke_MBHT_MTB{
	meta:
		description = "Trojan:Win32/Injuke.MBHT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {39 f6 74 01 ea ?? ?? ?? ?? ?? ?? 81 c3 04 00 00 00 39 d3 75 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}