
rule Trojan_Win64_Bumblebee_DIU_MTB{
	meta:
		description = "Trojan:Win64/Bumblebee.DIU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 02 00 00 "
		
	strings :
		$a_01_0 = {f1 d5 00 fa 4c 62 cc f4 0f 0b } //1
		$a_01_1 = {42 0f b6 04 01 c1 e0 18 89 f2 21 c2 31 c6 09 f2 48 8b 4c 24 30 8b 44 24 24 41 89 c0 42 89 14 81 } //10
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*10) >=11
 
}