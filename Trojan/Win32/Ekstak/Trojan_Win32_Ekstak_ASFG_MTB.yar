
rule Trojan_Win32_Ekstak_ASFG_MTB{
	meta:
		description = "Trojan:Win32/Ekstak.ASFG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {65 00 ff 15 ?? ?? 65 00 50 ff 15 ?? ?? 65 00 f7 d8 1b c0 f7 d8 c3 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}
rule Trojan_Win32_Ekstak_ASFG_MTB_2{
	meta:
		description = "Trojan:Win32/Ekstak.ASFG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_01_0 = {72 44 6c 50 74 53 cd e6 d7 7b 0b 2a 01 00 00 00 33 17 47 00 6c 74 43 00 00 d2 0a 00 df } //5
	condition:
		((#a_01_0  & 1)*5) >=5
 
}