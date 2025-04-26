
rule Trojan_BAT_CryptInject_MBCS_MTB{
	meta:
		description = "Trojan:BAT/CryptInject.MBCS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {09 08 16 08 8e 69 6f ?? 00 00 0a 13 04 11 04 16 31 0c 07 08 16 11 04 6f ?? 00 00 0a 2b e2 } //1
		$a_01_1 = {62 62 62 64 2d 63 34 62 61 62 37 30 32 36 31 38 63 } //1 bbbd-c4bab702618c
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}