
rule Trojan_Win64_IcedId_BP_MTB{
	meta:
		description = "Trojan:Win64/IcedId.BP!MTB,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {48 63 0c 24 48 8b 54 24 30 eb 06 33 c8 8b c1 eb ef } //1
		$a_01_1 = {88 04 0a eb 1d } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}