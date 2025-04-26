
rule Ransom_MSIL_Filecoder_ABL_MTB{
	meta:
		description = "Ransom:MSIL/Filecoder.ABL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0b 00 00 "
		
	strings :
		$a_01_0 = {11 05 11 08 09 06 11 08 58 93 11 06 11 08 07 58 11 07 5d 93 61 d1 9d 17 11 08 58 13 08 00 11 08 08 fe 04 2d da } //5
		$a_01_1 = {43 72 79 70 74 6f 53 74 72 65 61 6d 4d 6f 64 65 } //1 CryptoStreamMode
		$a_01_2 = {57 72 69 74 65 41 6c 6c 42 79 74 65 73 } //1 WriteAllBytes
		$a_01_3 = {47 65 74 46 6f 6c 64 65 72 50 61 74 68 } //1 GetFolderPath
		$a_01_4 = {43 72 65 61 74 65 45 6e 63 72 79 70 74 6f 72 } //1 CreateEncryptor
		$a_01_5 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //1 MemoryStream
		$a_01_6 = {42 69 74 6d 61 70 } //1 Bitmap
		$a_01_7 = {44 65 66 6c 61 74 65 53 74 72 65 61 6d } //1 DeflateStream
		$a_01_8 = {47 65 74 46 69 6c 65 73 } //1 GetFiles
		$a_01_9 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_10 = {52 65 61 64 41 6c 6c 42 79 74 65 73 } //1 ReadAllBytes
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=15
 
}