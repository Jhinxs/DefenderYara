
rule Trojan_BAT_ZgRAT_RDA_MTB{
	meta:
		description = "Trojan:BAT/ZgRAT.RDA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_01_0 = {32 37 61 33 64 34 63 32 2d 66 65 34 35 2d 34 34 35 35 2d 62 35 32 65 2d 37 62 36 62 61 34 30 32 65 37 32 33 } //1 27a3d4c2-fe45-4455-b52e-7b6ba402e723
		$a_01_1 = {6b 65 72 6e 65 6c 33 32 } //1 kernel32
		$a_01_2 = {4c 6f 61 64 4c 69 62 72 61 72 79 } //1 LoadLibrary
		$a_01_3 = {47 65 74 50 72 6f 63 41 64 64 72 65 73 73 } //1 GetProcAddress
		$a_01_4 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_5 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_01_6 = {47 5a 69 70 53 74 72 65 61 6d } //1 GZipStream
		$a_01_7 = {42 69 6d 7a 6a 6e } //1 Bimzjn
		$a_01_8 = {49 4f 37 63 4e 51 74 66 6c 74 4b 54 41 35 76 78 4e 61 } //1 IO7cNQtfltKTA5vxNa
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=9
 
}