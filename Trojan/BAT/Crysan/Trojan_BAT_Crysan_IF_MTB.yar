
rule Trojan_BAT_Crysan_IF_MTB{
	meta:
		description = "Trojan:BAT/Crysan.IF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {58 00 52 00 61 00 76 00 4e 00 62 00 64 00 6b 00 4d 00 54 00 70 00 49 00 46 00 20 00 43 00 6f 00 70 00 79 00 72 00 69 00 67 00 68 00 74 00 } //1 XRavNbdkMTpIF Copyright
		$a_81_1 = {24 38 41 36 43 30 38 43 44 2d 36 41 36 41 2d 37 36 33 36 2d 34 35 44 41 2d 45 32 46 41 36 44 41 46 33 31 45 36 } //1 $8A6C08CD-6A6A-7636-45DA-E2FA6DAF31E6
		$a_01_2 = {55 00 45 00 46 00 48 00 53 00 45 00 35 00 44 00 55 00 69 00 51 00 3d 00 } //1 UEFHSE5DUiQ=
		$a_81_3 = {44 63 52 61 74 5c 42 69 6e 61 72 69 65 73 5c 52 65 6c 65 61 73 65 5c 43 72 79 70 74 6f 4f 62 66 75 73 63 61 74 6f 72 5f 4f 75 74 70 75 74 5c 50 41 47 48 4e 43 52 2e 70 64 62 } //1 DcRat\Binaries\Release\CryptoObfuscator_Output\PAGHNCR.pdb
		$a_81_4 = {7a 77 6d 48 53 54 45 42 79 4d 6e 48 75 } //1 zwmHSTEByMnHu
		$a_81_5 = {61 4e 51 4d 42 4f 47 6b 6e 73 4d 43 62 } //1 aNQMBOGknsMCb
		$a_81_6 = {6d 44 58 66 73 55 41 70 51 62 63 62 6f } //1 mDXfsUApQbcbo
	condition:
		((#a_01_0  & 1)*1+(#a_81_1  & 1)*1+(#a_01_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=7
 
}