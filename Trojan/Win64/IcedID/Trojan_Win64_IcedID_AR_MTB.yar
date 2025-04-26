
rule Trojan_Win64_IcedID_AR_MTB{
	meta:
		description = "Trojan:Win64/IcedID.AR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 10 00 00 "
		
	strings :
		$a_01_0 = {56 79 67 68 64 73 68 75 79 67 74 66 79 47 48 6a 73 64 62 66 6b 62 68 73 67 75 61 73 6a 73 } //1 VyghdshuygtfyGHjsdbfkbhsguasjs
		$a_01_1 = {41 63 49 67 65 70 67 38 70 47 53 42 39 33 63 50 61 6c 37 79 } //1 AcIgepg8pGSB93cPal7y
		$a_01_2 = {4b 54 76 39 48 4c 6f 6d 58 57 6e 4c 64 4e 70 43 72 41 75 6b 79 48 50 75 52 64 63 41 5a 70 } //1 KTv9HLomXWnLdNpCrAukyHPuRdcAZp
		$a_01_3 = {4b 63 63 73 41 4a 4a 67 41 7a 62 36 57 4a 77 31 50 71 55 42 } //1 KccsAJJgAzb6WJw1PqUB
		$a_01_4 = {4e 58 36 75 42 47 4c 38 69 58 6b 59 6c 76 44 56 6f 33 6b 44 79 70 67 46 74 5a 71 66 66 72 34 } //1 NX6uBGL8iXkYlvDVo3kDypgFtZqffr4
		$a_01_5 = {4f 32 68 47 6d 6e 61 58 79 37 35 73 4f 71 68 63 75 53 4e 46 71 43 } //1 O2hGmnaXy75sOqhcuSNFqC
		$a_01_6 = {4f 4d 52 33 34 6f 42 65 52 50 49 41 71 64 4b 48 4d 45 78 52 62 79 45 70 } //1 OMR34oBeRPIAqdKHMExRbyEp
		$a_01_7 = {53 4e 50 4b 38 36 51 76 59 79 73 35 55 68 62 62 62 73 38 66 78 32 } //1 SNPK86QvYys5Uhbbbs8fx2
		$a_01_8 = {56 68 61 73 67 4a 48 41 53 62 68 66 6e 68 62 6a 6b 61 73 6e 62 73 61 62 68 73 } //1 VhasgJHASbhfnhbjkasnbsabhs
		$a_01_9 = {42 77 74 77 38 75 34 6c 4e 43 47 38 63 79 63 6f 77 31 76 31 78 71 45 63 78 39 61 } //1 Bwtw8u4lNCG8cycow1v1xqEcx9a
		$a_01_10 = {43 79 4f 4a 69 4a 41 45 53 63 56 4b 31 70 66 32 6e 70 } //1 CyOJiJAEScVK1pf2np
		$a_01_11 = {44 32 66 76 6d 39 78 75 36 37 39 70 4b 73 63 36 58 } //1 D2fvm9xu679pKsc6X
		$a_01_12 = {45 34 79 36 38 69 52 7a 5a 31 4f 69 32 68 79 64 42 48 5a 78 51 58 51 6c 67 4e 66 73 32 } //1 E4y68iRzZ1Oi2hydBHZxQXQlgNfs2
		$a_01_13 = {46 44 77 73 32 74 6f 73 74 47 6a 5a 45 5a 65 74 47 6d 6e 4d } //1 FDws2tostGjZEZetGmnM
		$a_01_14 = {4e 57 43 53 6e 34 51 39 55 4c 35 65 61 75 48 71 39 47 78 4e 79 35 } //1 NWCSn4Q9UL5eauHq9GxNy5
		$a_01_15 = {57 59 6b 39 46 58 5a 4a 31 48 78 76 34 34 61 6a 52 33 30 65 50 73 32 53 52 6a 51 65 56 } //1 WYk9FXZJ1Hxv44ajR30ePs2SRjQeV
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1) >=8
 
}