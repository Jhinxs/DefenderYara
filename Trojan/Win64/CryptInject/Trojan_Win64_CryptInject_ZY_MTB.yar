
rule Trojan_Win64_CryptInject_ZY_MTB{
	meta:
		description = "Trojan:Win64/CryptInject.ZY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {49 8b 06 49 01 07 48 89 e8 89 f9 48 83 c3 ?? 48 d3 f8 83 e0 ?? 30 06 48 8d 05 ?? ?? ?? ?? 48 39 d8 0f 85 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}