
rule TrojanDownloader_O97M_Obfuse_PHI_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PHI!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {53 6f 75 72 63 65 20 68 74 74 60 70 3a 2f 2f 31 38 2e 31 39 35 2e 31 34 33 2e 31 38 33 2f [0-1e] 2e 65 60 78 65 } //1
		$a_03_1 = {2d 44 65 73 74 69 6e 61 74 69 6f 6e 20 43 3a 5c 55 73 65 72 73 5c 50 75 62 6c 69 63 5c 44 6f 63 75 6d 65 6e 74 73 5c [0-14] 2e 65 60 78 65 } //1
		$a_01_2 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 } //1 = CreateObject
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule TrojanDownloader_O97M_Obfuse_PHI_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PHI!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,0c 00 0c 00 0c 00 00 "
		
	strings :
		$a_01_0 = {70 6f 77 65 72 73 68 65 6c 6c 20 2d 45 78 65 63 20 62 79 70 61 73 73 20 2d 4e 6f 6e 49 20 2d 57 20 48 69 64 64 65 6e 20 28 28 27 26 20 28 28 47 65 54 22 } //1 powershell -Exec bypass -NonI -W Hidden (('& ((GeT"
		$a_01_1 = {2d 56 41 52 49 41 62 6c 65 20 53 58 42 2a 4d 44 72 2a 53 58 42 29 2e 6e 61 4d 65 5b 33 2c 31 31 2c 32 5d 2d 6a 6f 69 4e 53 58 42 53 58 42 29 28 20 28 22 } //1 -VARIAble SXB*MDr*SXB).naMe[3,11,2]-joiNSXBSXB)( ("
		$a_01_2 = {6d 41 4e 41 67 65 6d 65 6e 74 2e 41 75 54 6f 4d 61 54 49 4f 4e 2e 50 73 43 72 27 2b 27 45 44 65 4e 54 22 } //1 mANAgement.AuToMaTION.PsCr'+'EDeNT"
		$a_01_3 = {49 61 4c 20 53 58 42 20 53 58 42 2c 28 20 53 58 42 37 36 34 39 32 64 31 31 31 36 37 34 33 66 30 34 32 33 34 31 33 62 31 36 30 35 30 61 35 33 34 35 4d 22 } //1 IaL SXB SXB,( SXB76492d1116743f0423413b16050a5345M"
		$a_01_4 = {4f 51 41 31 41 44 45 41 4d 41 41 35 41 47 49 41 4e 51 41 78 41 44 41 41 4e 77 41 35 41 44 67 41 5a 27 2b 27 67 42 6b 41 44 55 41 5a 41 41 34 41 44 41 22 } //1 OQA1ADEAMAA5AGIANQAxADAANwA5ADgAZ'+'gBkADUAZAA4ADA"
		$a_01_5 = {41 44 41 41 59 77 42 69 41 44 49 41 4e 51 41 7a 41 44 6b 41 4d 41 41 79 41 44 6b 41 59 67 42 6c 41 44 4d 41 4e 77 41 78 41 44 55 41 4f 51 41 79 41 47 22 } //1 ADAAYwBiADIANQAzADkAMAAyADkAYgBlADMANwAxADUAOQAyAG"
		$a_01_6 = {49 41 4d 77 41 32 41 47 55 41 59 51 41 31 41 47 4d 41 4d 41 41 32 41 44 63 41 27 2b 27 4e 41 41 7a 41 44 67 41 59 51 42 6c 41 44 55 41 4e 67 41 78 41 22 } //1 IAMwA2AGUAYQA1AGMAMAA2ADcA'+'NAAzADgAYQBlADUANgAxA"
		$a_01_7 = {43 75 52 45 73 74 72 49 4e 47 20 2d 6b 20 20 28 32 27 2b 27 32 37 2e 2e 32 34 32 29 20 29 20 27 2b 27 29 2e 67 65 74 4e 45 54 77 6f 72 6b 43 72 65 64 22 } //1 CuREstrING -k  (2'+'27..242) ) '+').getNETworkCred"
		$a_01_8 = {45 4e 74 49 61 6c 28 29 2e 50 61 53 53 77 6f 72 64 29 27 29 20 2d 72 65 50 4c 61 43 65 20 20 28 5b 43 48 61 52 5d 39 37 2b 5b 43 48 61 52 5d 35 36 2b 22 } //1 ENtIal().PaSSword)') -rePLaCe  ([CHaR]97+[CHaR]56+"
		$a_01_9 = {43 48 61 52 5d 36 36 29 2c 5b 43 48 61 52 5d 33 39 29 20 7c 20 26 20 28 20 24 73 68 45 4c 6c 69 44 5b 31 5d 2b 24 73 48 45 4c 4c 49 44 5b 31 33 5d 2b 22 } //1 CHaR]66),[CHaR]39) | & ( $shELliD[1]+$sHELLID[13]+"
		$a_01_10 = {53 74 72 20 3d 20 53 74 72 20 2b 20 22 27 58 27 29 22 } //1 Str = Str + "'X')"
		$a_01_11 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 73 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 2e 52 75 6e 20 53 74 72 } //1 CreateObject("Wscript.Shell").Run Str
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1) >=12
 
}