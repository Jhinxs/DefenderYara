
rule TrojanDownloader_Win32_Small_AHZ{
	meta:
		description = "TrojanDownloader:Win32/Small.AHZ,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {61 57 35 6d 62 33 4e 68 63 47 6b 75 5a 47 78 73 } //1 aW5mb3NhcGkuZGxs
		$a_01_1 = {55 48 4a 76 5a 33 4a 68 62 55 5a 70 62 47 56 7a } //1 UHJvZ3JhbUZpbGVz
		$a_01_2 = {53 57 35 30 5a 58 4a 75 5a 58 51 67 52 58 68 77 62 47 39 79 5a 58 4a 2c } //1 SW50ZXJuZXQgRXhwbG9yZXJ,
		$a_01_3 = {49 69 42 48 54 31 52 50 49 45 52 46 54 45 46 51 55 43 42 46 54 46 4e 46 49 45 64 50 56 45 38 67 52 45 56 4d 51 6b 46 55 } //1 IiBHT1RPIERFTEFQUCBFTFNFIEdPVE8gREVMQkFU
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule TrojanDownloader_Win32_Small_AHZ_2{
	meta:
		description = "TrojanDownloader:Win32/Small.AHZ,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {54 00 63 00 77 00 6e 00 46 00 41 00 32 00 58 00 6a 00 6c 00 57 00 67 00 55 00 6f 00 38 00 56 00 } //1 TcwnFA2XjlWgUo8V
		$a_01_1 = {66 00 62 00 49 00 6e 00 42 00 65 00 31 00 32 00 2f 00 46 00 46 00 79 00 2f 00 68 00 4b 00 38 00 77 00 4c 00 6f 00 45 00 74 00 4a 00 49 00 55 00 57 00 52 00 64 00 31 00 57 00 46 00 58 00 6c 00 65 00 6c 00 47 00 72 00 70 00 57 00 62 00 59 00 6a 00 50 00 41 00 7a 00 76 00 2b 00 41 00 31 00 74 00 43 00 } //1 fbInBe12/FFy/hK8wLoEtJIUWRd1WFXlelGrpWbYjPAzv+A1tC
		$a_01_2 = {2b 00 39 00 62 00 2f 00 66 00 42 00 73 00 78 00 6e 00 56 00 4b 00 64 00 33 00 70 00 71 00 4c 00 } //1 +9b/fBsxnVKd3pqL
		$a_01_3 = {6a 00 49 00 6e 00 44 00 62 00 2f 00 59 00 54 00 46 00 66 00 6f 00 46 00 71 00 31 00 62 00 68 00 58 00 64 00 46 00 50 00 68 00 4c 00 64 00 57 00 30 00 59 00 4b 00 4f 00 65 00 46 00 30 00 4b 00 31 00 6f 00 30 00 58 00 6e 00 78 00 38 00 4e 00 4b 00 5a 00 33 00 42 00 4f 00 51 00 4a 00 46 00 } //1 jInDb/YTFfoFq1bhXdFPhLdW0YKOeF0K1o0Xnx8NKZ3BOQJF
		$a_01_4 = {2e 00 66 00 6f 00 74 00 6f 00 66 00 6f 00 6c 00 69 00 61 00 30 00 31 00 2e 00 6e 00 65 00 74 00 2f 00 66 00 69 00 6c 00 65 00 2e 00 61 00 73 00 70 00 78 00 3f 00 66 00 69 00 6c 00 65 00 3d 00 } //1 .fotofolia01.net/file.aspx?file=
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}