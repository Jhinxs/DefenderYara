
rule Trojan_Win64_Gomal_RF_MTB{
	meta:
		description = "Trojan:Win64/Gomal.RF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_01_0 = {47 6f 20 62 75 69 6c 64 20 49 44 3a 20 22 55 4d 41 31 77 4d 5f 57 64 6a 33 41 39 66 4b 57 65 52 36 5a 2f 34 62 57 44 33 4c 6e 36 61 64 54 76 48 46 54 6c 47 35 56 77 2f 6c 4c 6b 42 4a 69 44 44 78 7a 74 76 44 42 39 63 6b 66 55 41 2f 52 34 35 72 44 6b 38 74 54 44 5a 64 30 62 53 6f 4c 31 68 6f } //1 Go build ID: "UMA1wM_Wdj3A9fKWeR6Z/4bWD3Ln6adTvHFTlG5Vw/lLkBJiDDxztvDB9ckfUA/R45rDk8tTDZd0bSoL1ho
		$a_01_1 = {47 6f 20 62 75 69 6c 64 20 49 44 3a 20 22 44 47 4f 46 5f 55 30 2d 4b 41 31 33 44 6b 4b 5f 6b 2d 62 67 2f 65 42 36 67 77 62 33 44 66 54 68 42 79 34 53 63 64 38 5a 50 2f 63 33 74 77 2d 53 6f 7a 4a 69 35 4c 33 76 55 5f 59 30 6a 74 2f 66 46 55 50 6f 58 77 61 63 52 51 5a 41 74 32 4f 6f 47 36 5a } //1 Go build ID: "DGOF_U0-KA13DkK_k-bg/eB6gwb3DfThBy4Scd8ZP/c3tw-SozJi5L3vU_Y0jt/fFUPoXwacRQZAt2OoG6Z
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=1
 
}