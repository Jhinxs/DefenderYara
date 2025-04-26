
rule Trojan_Win64_Emotetcrypt_LO_MTB{
	meta:
		description = "Trojan:Win64/Emotetcrypt.LO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b c2 c1 e8 ?? 03 d0 6b d2 ?? 41 8b c5 2b c2 48 63 c8 48 8b 05 ?? ?? ?? ?? 0f b6 0c 01 32 0c 33 88 0e } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}