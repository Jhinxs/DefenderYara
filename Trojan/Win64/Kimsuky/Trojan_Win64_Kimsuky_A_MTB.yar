
rule Trojan_Win64_Kimsuky_A_MTB{
	meta:
		description = "Trojan:Win64/Kimsuky.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {44 8b c2 80 ea ?? 41 8b c0 83 c8 20 80 fa ?? 41 0f 47 c0 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}