
rule Trojan_Win32_CoinMiner_ASC_MTB{
	meta:
		description = "Trojan:Win32/CoinMiner.ASC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {66 6b 45 57 56 77 55 63 68 4b 53 55 70 67 6d 4e 69 77 69 4f 4d 51 4e 69 73 4b 63 46 46 55 79 51 50 7a 74 6b 6c 4b 52 54 61 6d 74 51 47 44 67 6f 68 69 6d 42 42 } //1 fkEWVwUchKSUpgmNiwiOMQNisKcFFUyQPztklKRTamtQGDgohimBB
		$a_01_1 = {52 63 53 53 54 79 53 69 65 4d 49 66 49 45 5a 4e 63 6f 43 6a 46 74 74 75 56 74 68 71 65 79 6e 7a 78 41 72 41 54 55 51 65 42 75 75 4f 44 67 } //1 RcSSTySieMIfIEZNcoCjFttuVthqeynzxArATUQeBuuODg
		$a_01_2 = {55 77 47 6e 67 4b 58 54 64 41 70 72 52 63 4c 77 59 71 44 48 56 66 48 53 67 55 7a 59 62 6c 48 58 57 4b 79 56 6a 4f 50 } //1 UwGngKXTdAprRcLwYqDHVfHSgUzYblHXWKyVjOP
		$a_01_3 = {51 62 46 64 65 69 69 65 7a 4b 61 42 71 56 77 55 49 62 45 58 47 68 42 70 41 4a 52 6d 54 52 44 4c 56 6f 74 4f 71 6d 5a 45 6c 61 68 51 } //1 QbFdeiiezKaBqVwUIbEXGhBpAJRmTRDLVotOqmZElahQ
		$a_01_4 = {46 61 51 75 4d 41 51 69 79 78 79 51 67 50 72 41 43 74 43 52 47 76 4a 51 4a 53 74 65 63 4f 75 48 53 42 50 6a 6d 68 65 77 } //1 FaQuMAQiyxyQgPrACtCRGvJQJStecOuHSBPjmhew
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}