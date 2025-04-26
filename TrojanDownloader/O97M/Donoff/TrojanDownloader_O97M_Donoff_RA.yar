
rule TrojanDownloader_O97M_Donoff_RA{
	meta:
		description = "TrojanDownloader:O97M/Donoff.RA,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 05 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 66 61 76 31 2e 72 75 2f 66 61 72 2e 6d 73 69 } //1 http://fav1.ru/far.msi
		$a_01_1 = {68 74 74 70 3a 2f 2f 66 65 72 31 2e 72 75 2f 66 66 2e 6d 73 69 } //1 http://fer1.ru/ff.msi
		$a_01_2 = {68 74 74 70 3a 2f 2f 74 6f 76 31 2e 72 75 2f 74 6f 79 2e 6d 73 69 } //1 http://tov1.ru/toy.msi
		$a_01_3 = {68 74 74 70 3a 2f 2f 65 6a 76 31 2e 72 75 2f 31 32 33 2e 6d 73 69 } //1 http://ejv1.ru/123.msi
		$a_01_4 = {68 74 74 70 3a 2f 2f 66 66 67 68 2e 72 75 2f 6a 6a 2e 6d 73 69 } //1 http://ffgh.ru/jj.msi
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=1
 
}
rule TrojanDownloader_O97M_Donoff_RA_2{
	meta:
		description = "TrojanDownloader:O97M/Donoff.RA,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 04 00 00 "
		
	strings :
		$a_01_0 = {53 74 72 20 3d 20 53 74 72 20 2b 20 22 5a 67 42 31 41 47 34 41 59 77 42 30 41 47 6b 41 62 77 42 75 41 43 41 41 53 51 42 75 41 48 59 41 62 77 42 72 41 47 55 41 4c 51 42 51 41 47 38 41 64 77 42 6c 41 48 49 41 55 77 42 6f 41 47 55 41 62 41 42 73 41 46 51 41 59 77 42 22 } //1 Str = Str + "ZgB1AG4AYwB0AGkAbwBuACAASQBuAHYAbwBrAGUALQBQAG8AdwBlAHIAUwBoAGUAbABsAFQAYwB"
		$a_01_1 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 73 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 2e 52 75 6e 20 53 74 72 } //1 CreateObject("Wscript.Shell").Run Str
		$a_03_2 = {53 74 72 20 3d 20 53 74 72 20 2b 20 22 [0-3f] 3d 22 } //1
		$a_03_3 = {53 74 72 20 3d 20 53 74 72 20 2b 20 22 [0-5f] 22 } //5
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*5) >=8
 
}