
rule Trojan_Win64_StrelaStealer_GPAF_MTB{
	meta:
		description = "Trojan:Win64/StrelaStealer.GPAF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 02 00 00 "
		
	strings :
		$a_03_0 = {48 29 c4 48 89 e0 48 8b 4d ?? 48 89 45 ?? 48 89 c8 e8 ?? ?? ?? ?? 48 29 c4 48 89 e0 48 8b 4d ?? 48 89 45 ?? 48 89 c8 e8 ?? ?? ?? ?? 48 29 c4 48 89 e0 48 8b 4d } //5
		$a_01_1 = {00 6f 75 74 2e 64 6c 6c 00 } //2
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*2) >=7
 
}