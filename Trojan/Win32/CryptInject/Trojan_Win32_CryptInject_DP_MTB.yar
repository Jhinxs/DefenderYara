
rule Trojan_Win32_CryptInject_DP_MTB{
	meta:
		description = "Trojan:Win32/CryptInject.DP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 03 00 00 "
		
	strings :
		$a_03_0 = {8a 8c 30 31 a2 00 00 8b 15 [0-04] 88 0c 32 83 3d [0-04] 33 75 12 } //5
		$a_03_1 = {81 fe ce 0d 26 09 0f 8f [0-04] 46 81 fe 9c b3 61 36 7c af } //2
		$a_01_2 = {53 53 53 ff d7 46 81 fe 74 6c 5f 00 7c d5 } //2
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*2+(#a_01_2  & 1)*2) >=9
 
}