
rule Trojan_Win32_Crypt_CJ_MTB{
	meta:
		description = "Trojan:Win32/Crypt.CJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {02 c2 30 01 85 d2 74 0f 01 75 ?? 41 4a 8d 81 [0-04] 3b c7 7c e6 } //1
		$a_01_1 = {8b 75 ec 02 45 f4 30 04 32 8b 75 fc 85 c9 75 32 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}