
rule Trojan_Win64_BazarLoader_MBK_MTB{
	meta:
		description = "Trojan:Win64/BazarLoader.MBK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0f be 0b 8b c2 48 33 c8 48 ff c3 0f b6 c1 8b ca c1 e9 [0-01] 8b 14 84 33 d1 45 03 d8 75 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}