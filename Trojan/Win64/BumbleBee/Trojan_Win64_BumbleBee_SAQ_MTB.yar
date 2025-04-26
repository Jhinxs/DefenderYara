
rule Trojan_Win64_BumbleBee_SAQ_MTB{
	meta:
		description = "Trojan:Win64/BumbleBee.SAQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {03 c6 44 33 e0 69 c5 ?? ?? ?? ?? 48 ?? ?? 41 ?? ?? 33 43 ?? 48 ?? ?? ?? 2b e8 8b 43 } //1
		$a_03_1 = {8b cf 0f af 83 ?? ?? ?? ?? 33 cd 23 4b ?? 41 ?? ?? ?? 4c } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}