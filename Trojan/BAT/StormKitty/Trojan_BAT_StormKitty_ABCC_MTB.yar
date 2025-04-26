
rule Trojan_BAT_StormKitty_ABCC_MTB{
	meta:
		description = "Trojan:BAT/StormKitty.ABCC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 06 00 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_01_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_01_2 = {47 65 74 4d 61 6e 69 66 65 73 74 52 65 73 6f 75 72 63 65 53 74 72 65 61 6d } //1 GetManifestResourceStream
		$a_01_3 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //1 TransformFinalBlock
		$a_01_4 = {56 00 32 00 6c 00 75 00 5a 00 47 00 39 00 33 00 63 00 79 00 42 00 45 00 5a 00 57 00 5a 00 6c 00 62 00 6d 00 52 00 6c 00 63 00 69 00 42 00 54 00 5a 00 57 00 4e 00 31 00 63 00 6d 00 6c 00 30 00 65 00 53 00 51 00 3d 00 } //3 V2luZG93cyBEZWZlbmRlciBTZWN1cml0eSQ=
		$a_01_5 = {57 69 6e 64 6f 77 73 20 44 65 66 65 6e 64 65 72 20 53 65 63 75 72 69 74 79 26 } //3 Windows Defender Security&
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*3+(#a_01_5  & 1)*3) >=10
 
}