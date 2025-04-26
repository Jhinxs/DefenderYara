
rule Trojan_Win64_HuiLoader_A_MTB{
	meta:
		description = "Trojan:Win64/HuiLoader.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_03_0 = {48 ff c3 41 f7 e9 c1 fa ?? 8b c2 c1 e8 1f 03 d0 41 8b c1 41 ff c1 } //2
		$a_01_1 = {2b c2 48 63 c8 0f } //2
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*2) >=4
 
}