
rule TrojanDownloader_O97M_EncDoc_RP_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.RP!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {2d 77 20 68 69 20 73 6c 65 5e 65 5e 70 20 2d 53 65 20 33 31 3b 53 74 61 72 74 2d 42 69 74 73 54 72 61 6e 73 66 65 72 20 2d 53 6f 75 72 63 65 20 68 74 74 60 70 3a 2f 2f [0-2f] 2f 72 65 6d 69 74 2e 65 60 78 65 } //1
		$a_03_1 = {73 68 65 65 65 20 3d 20 22 73 68 65 6c 22 0d 0a 6f 62 68 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 73 68 65 65 65 20 26 20 22 6c 2e 61 70 70 6c 69 63 61 74 69 6f 6e 22 29 2e 4f 70 65 6e 28 [0-1f] 29 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}
rule TrojanDownloader_O97M_EncDoc_RP_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.RP!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 03 00 00 "
		
	strings :
		$a_01_0 = {22 68 22 26 22 74 74 70 22 26 22 73 3a 2f 2f 61 6c 65 61 69 72 79 61 70 70 73 2e 63 6f 6d 2f 6e 31 77 55 49 4d 53 7a 2f 62 67 2e 70 22 26 22 6e 22 26 22 67 22 } //1 "h"&"ttp"&"s://aleairyapps.com/n1wUIMSz/bg.p"&"n"&"g"
		$a_01_1 = {22 68 74 22 26 22 74 70 73 3a 2f 2f 62 61 6e 64 61 72 69 65 78 70 65 64 69 74 69 6f 6e 73 2e 63 6f 6d 2f 48 72 49 57 72 43 47 37 4e 6f 2f 62 67 2e 70 22 26 22 6e 22 26 22 67 22 } //1 "ht"&"tps://bandariexpeditions.com/HrIWrCG7No/bg.p"&"n"&"g"
		$a_01_2 = {22 68 74 74 22 26 22 70 73 3a 2f 2f 65 66 65 6e 64 72 69 2e 6e 65 74 2f 7a 63 6a 37 56 70 41 39 38 50 2f 62 67 2e 70 22 26 22 6e 22 26 22 67 22 } //1 "htt"&"ps://efendri.net/zcj7VpA98P/bg.p"&"n"&"g"
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=1
 
}
rule TrojanDownloader_O97M_EncDoc_RP_MTB_3{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.RP!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {28 22 36 38 37 34 37 34 37 30 37 33 33 61 32 66 32 66 22 29 20 26 20 [0-1f] 28 22 36 35 37 32 37 32 36 66 37 32 32 64 36 63 36 39 36 65 36 62 32 65 36 38 36 35 37 32 36 66 36 62 37 35 36 31 37 30 37 30 32 65 36 33 36 66 36 64 32 66 36 34 36 66 37 37 36 65 36 63 36 66 36 31 36 34 22 29 } //1
		$a_03_1 = {28 22 37 30 37 35 37 34 37 34 37 39 32 65 36 35 37 38 22 29 20 26 20 [0-1f] 28 22 36 35 22 29 0d 0a [0-1f] 20 3d 20 45 6e 76 69 72 6f 6e 28 22 54 45 4d 50 22 29 20 26 20 22 5c 22 20 26 20 90 1b 01 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}
rule TrojanDownloader_O97M_EncDoc_RP_MTB_4{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.RP!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {44 65 62 75 67 2e 50 72 69 6e 74 20 4d 73 67 42 6f 78 28 53 74 72 52 65 76 65 72 73 65 28 [0-1f] 2c 20 22 [0-1f] 22 29 29 2c 20 76 62 4f 4b 43 61 6e 63 65 6c 29 3b 20 72 65 74 75 72 6e 73 3b 20 31 } //1
		$a_01_1 = {52 28 69 29 20 3d 20 52 28 69 29 20 58 6f 72 20 28 73 28 28 73 28 28 42 20 2b 20 31 29 20 4d 6f 64 20 32 35 36 29 20 2b 20 73 28 43 29 29 20 4d 6f 64 20 32 35 36 29 29 } //1 R(i) = R(i) Xor (s((s((B + 1) Mod 256) + s(C)) Mod 256))
		$a_01_2 = {3d 20 53 74 72 43 6f 6e 76 28 52 28 29 2c 20 76 62 55 6e 69 63 6f 64 65 29 } //1 = StrConv(R(), vbUnicode)
		$a_01_3 = {44 65 62 75 67 2e 41 73 73 65 72 74 20 28 56 42 41 2e 53 68 65 6c 6c 28 6b 69 6e 67 64 6f 6d 29 29 } //1 Debug.Assert (VBA.Shell(kingdom))
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule TrojanDownloader_O97M_EncDoc_RP_MTB_5{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.RP!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {5c 73 79 73 77 6f 77 36 34 5c 77 69 6e 64 6f 77 73 70 6f 77 65 72 73 68 65 6c 6c 5c 76 31 2e 30 5c 70 6f 77 65 72 73 68 65 6c 6c 2e 65 78 65 22 } //1 \syswow64\windowspowershell\v1.0\powershell.exe"
		$a_03_1 = {20 2b 20 22 64 65 72 20 28 24 28 4e 65 77 2d 4f 62 6a 65 63 74 20 49 4f 2e 43 6f 6d 70 72 65 73 73 69 6f 6e 2e 44 65 66 6c 61 74 65 53 74 72 65 61 6d 20 28 22 0d 0a [0-05] 20 3d 20 90 1b 00 20 2b 20 22 24 28 4e 65 77 2d 4f 62 6a 65 63 74 20 49 4f 2e 4d 65 6d 6f 72 79 53 74 72 65 61 6d 20 28 2c 24 28 5b 43 6f 6e 76 65 72 74 5d 3a 3a 46 72 6f 6d 22 0d 0a 90 1b 00 20 3d 20 90 1b 00 20 2b 20 22 42 61 73 65 36 34 53 74 72 69 6e 67 28 [0-1f] 29 29 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}