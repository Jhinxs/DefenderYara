
rule Trojan_Win32_Ejik_C{
	meta:
		description = "Trojan:Win32/Ejik.C,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {54 49 64 43 6f 6f 6b 69 65 4d 61 6e 61 67 65 72 } //1 TIdCookieManager
		$a_00_1 = {41 4c 4c 3a 21 41 44 48 3a 52 43 34 2b 52 53 41 3a 2b 48 49 47 48 3a 2b 4d 45 44 49 55 4d 3a 2b 4c 4f 57 3a 2b 53 53 4c 76 32 3a 2b 45 58 50 } //1 ALL:!ADH:RC4+RSA:+HIGH:+MEDIUM:+LOW:+SSLv2:+EXP
		$a_02_2 = {45 58 45 46 49 4c 45 90 05 04 01 00 ff ff ff ff 15 00 00 00 73 65 74 75 70 6f 6c 5f 90 0f 04 00 5f 90 0f 04 00 2e 65 78 65 00 } //1
		$a_02_3 = {2e 63 6e 2f 64 61 74 61 5f 61 64 64 2e 61 73 70 78 3f 66 69 6c 65 6e 61 6d 65 3d 73 65 74 75 70 6f 6c 5f 90 0f 04 00 5f 90 0f 04 00 2e 65 78 65 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1) >=4
 
}