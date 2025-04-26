
rule Trojan_Win32_CryptInject_DS_MTB{
	meta:
		description = "Trojan:Win32/CryptInject.DS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 "
		
	strings :
		$a_03_0 = {01 45 fc 8b 45 fc 8a 04 38 8b 0d [0-04] 88 04 0f 83 3d [0-04] 44 75 0f } //2
		$a_03_1 = {81 ff 0e 77 00 00 75 05 e8 [0-04] 47 81 ff 7d b9 86 02 7c e3 } //2
		$a_01_2 = {66 69 77 65 7a 65 6a 69 63 65 74 69 7a 75 63 6f 76 65 64 61 6b 65 77 61 } //1 fiwezejicetizucovedakewa
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_01_2  & 1)*1) >=5
 
}