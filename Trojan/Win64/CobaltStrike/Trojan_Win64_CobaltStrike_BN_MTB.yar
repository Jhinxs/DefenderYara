
rule Trojan_Win64_CobaltStrike_BN_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.BN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {48 8b 55 c0 8b 85 [0-04] 48 98 48 01 d0 44 0f b6 00 8b 85 [0-04] 48 98 0f b6 4c 05 ca 48 8b 55 c0 8b 85 [0-04] 48 98 48 01 d0 44 89 c2 31 ca 88 10 83 85 [0-04] 01 83 85 [0-04] 01 eb } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}
rule Trojan_Win64_CobaltStrike_BN_MTB_2{
	meta:
		description = "Trojan:Win64/CobaltStrike.BN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 45 fc 3b 45 ?? 7d ?? 8b 45 ?? 48 63 d0 48 ?? ?? ?? 48 01 d0 44 0f b6 00 0f b6 4d ?? 8b 45 ?? 48 63 d0 48 ?? ?? ?? 48 01 d0 44 89 c2 31 ca 88 10 83 45 ?? ?? eb } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win64_CobaltStrike_BN_MTB_3{
	meta:
		description = "Trojan:Win64/CobaltStrike.BN!MTB,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {0f b6 44 1d 3b 8b 4d 37 02 cb 32 c8 88 4c 1d 3b 48 ff c3 48 83 fb 0b 72 e7 } //1
		$a_01_1 = {77 69 6e 64 6f 77 73 2e 69 6e 69 } //1 windows.ini
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}