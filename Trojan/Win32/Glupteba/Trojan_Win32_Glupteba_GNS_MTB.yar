
rule Trojan_Win32_Glupteba_GNS_MTB{
	meta:
		description = "Trojan:Win32/Glupteba.GNS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {21 c2 21 d0 31 37 81 c7 ?? ?? ?? ?? 81 c2 ?? ?? ?? ?? 81 ea ?? ?? ?? ?? 39 df } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}