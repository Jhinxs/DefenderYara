
rule Trojan_Win32_Graftor_GMH_MTB{
	meta:
		description = "Trojan:Win32/Graftor.GMH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 04 00 00 "
		
	strings :
		$a_03_0 = {8b 45 fc 83 c4 14 48 89 35 ?? f6 60 00 5f 5e } //10
		$a_03_1 = {56 53 ff 15 ?? ?? ?? ?? a1 ?? 49 61 00 89 35 ?? f7 60 00 8b fe 38 18 } //10
		$a_01_2 = {68 6c 61 5a 64 63 69 62 7a } //1 hlaZdcibz
		$a_01_3 = {56 4d 50 72 6f 74 65 63 74 20 65 6e 64 } //1 VMProtect end
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=22
 
}