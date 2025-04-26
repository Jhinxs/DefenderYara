
rule Trojan_BAT_Kryptik_WP_MTB{
	meta:
		description = "Trojan:BAT/Kryptik.WP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 05 00 00 "
		
	strings :
		$a_03_0 = {0a 0b 1e 8d [0-04] 0c 07 28 [0-04] 03 6f [0-09] 0d 09 16 08 16 1e 28 [0-05] 06 08 6f [0-05] 06 18 6f [0-05] 06 6f [0-04] 02 16 02 8e 69 } //10
		$a_80_1 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //TransformFinalBlock  1
		$a_80_2 = {47 65 74 45 78 70 6f 72 74 65 64 54 79 70 65 73 } //GetExportedTypes  1
		$a_80_3 = {43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //CryptoServiceProvider  1
		$a_80_4 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //CreateInstance  1
	condition:
		((#a_03_0  & 1)*10+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1+(#a_80_3  & 1)*1+(#a_80_4  & 1)*1) >=14
 
}