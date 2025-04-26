
rule Trojan_Win64_Emotetcrypt_LA_MTB{
	meta:
		description = "Trojan:Win64/Emotetcrypt.LA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b cb 48 8d 7f ?? f7 eb 03 d3 ff c3 c1 fa ?? 8b c2 c1 e8 ?? 03 d0 6b c2 ?? 2b c8 48 8b 05 ?? ?? ?? ?? 48 63 d1 0f b6 0c 02 41 32 4c 3e ff 88 4f ff 48 ff ce 75 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}