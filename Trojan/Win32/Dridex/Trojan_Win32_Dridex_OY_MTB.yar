
rule Trojan_Win32_Dridex_OY_MTB{
	meta:
		description = "Trojan:Win32/Dridex.OY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_81_0 = {45 53 20 41 50 50 20 45 5f } //1 ES APP E_
		$a_81_1 = {65 6c 66 20 45 58 } //1 elf EX
		$a_81_2 = {43 72 79 70 74 49 6d 70 6f 72 74 50 75 62 6c 69 63 4b 65 79 49 6e 66 6f } //1 CryptImportPublicKeyInfo
		$a_81_3 = {53 68 6f 77 4f 77 6e 65 64 50 6f 70 75 70 73 } //1 ShowOwnedPopups
		$a_81_4 = {57 69 6e 53 43 61 72 64 2e 64 6c 6c } //1 WinSCard.dll
		$a_81_5 = {53 45 54 55 50 41 50 49 2e 64 6c 6c } //1 SETUPAPI.dll
		$a_81_6 = {49 49 44 46 72 6f 6d 53 74 72 69 6e 67 } //1 IIDFromString
		$a_81_7 = {55 72 6c 43 61 6e 6f 6e 69 63 61 6c 69 7a 65 41 } //1 UrlCanonicalizeA
		$a_81_8 = {63 55 79 47 6f 6f 67 6c 65 } //1 cUyGoogle
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1) >=9
 
}