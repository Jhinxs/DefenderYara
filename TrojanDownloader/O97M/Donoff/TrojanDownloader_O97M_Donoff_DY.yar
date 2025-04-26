
rule TrojanDownloader_O97M_Donoff_DY{
	meta:
		description = "TrojanDownloader:O97M/Donoff.DY,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {53 68 65 6c 6c 20 28 48 65 78 32 53 74 72 28 45 6e 44 65 63 72 79 70 74 4d 55 52 } //1 Shell (Hex2Str(EnDecryptMUR
		$a_01_1 = {43 72 79 70 74 53 74 72 69 6e 67 20 3d 20 43 72 79 70 74 53 74 72 69 6e 67 20 26 20 43 68 72 24 28 56 61 6c 28 45 6e 44 65 63 72 79 70 74 4d 55 52 28 } //1 CryptString = CryptString & Chr$(Val(EnDecryptMUR(
		$a_01_2 = {45 6e 44 65 63 72 79 70 74 4d 55 52 20 3d 20 45 6e 44 65 63 72 79 70 74 4d 55 52 20 26 20 43 68 72 24 28 41 73 63 28 4d 69 64 24 28 73 53 74 72 69 6e 67 2c 20 49 2c 20 31 29 29 20 58 6f 72 20 69 4c 6e 67 29 } //1 EnDecryptMUR = EnDecryptMUR & Chr$(Asc(Mid$(sString, I, 1)) Xor iLng)
		$a_01_3 = {69 4c 6e 67 20 3d 20 41 73 63 28 4d 69 64 24 28 73 50 61 73 73 2c 20 28 28 49 20 4d 6f 64 20 4c 65 6e 28 73 50 61 73 73 29 29 20 2b 20 31 29 2c 20 31 29 29 } //1 iLng = Asc(Mid$(sPass, ((I Mod Len(sPass)) + 1), 1))
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}