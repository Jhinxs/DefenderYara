
rule Trojan_Win32_Manuscrypt_RJ_MTB{
	meta:
		description = "Trojan:Win32/Manuscrypt.RJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {78 00 76 00 c7 44 24 ?? 2e 00 79 00 c7 44 24 ?? 78 00 7a 00 c7 44 24 ?? 67 00 61 00 c7 44 24 ?? 6d 00 65 00 c7 44 24 ?? 6e 00 2e 00 c7 44 24 ?? 63 00 6f 00 c7 44 24 ?? 6d 00 2f 00 c7 44 24 ?? 25 00 64 00 c7 44 24 ?? 2e 00 68 00 c7 44 24 ?? 74 00 6d 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}