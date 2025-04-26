
rule TrojanDownloader_O97M_Donoff_DRD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Donoff.DRD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_01_0 = {77 69 6e 6d 67 6d 74 73 3a 5c 5c 22 20 26 20 6d 61 6d 61 6d 6d 61 6b 64 6b 64 20 26 20 22 5c 72 6f 6f 74 5c 64 65 66 61 75 6c 74 3a 53 74 64 52 65 67 50 72 6f 76 } //1 winmgmts:\\" & mamammakdkd & "\root\default:StdRegProv
		$a_03_1 = {77 77 77 2e 62 69 74 6c 79 2e 63 6f 6d 2f 68 61 69 61 73 64 6a 61 69 73 64 6a 73 77 64 68 61 69 61 64 6b 90 0a 2b 00 68 74 74 70 73 3a 2f 2f } //1
		$a_03_2 = {77 77 77 2e 62 69 74 6c 79 2e 63 6f 6d 2f 68 61 69 61 6a 64 77 64 69 6a 77 77 64 68 77 69 64 64 77 69 6a 77 69 6a 90 0a 2e 00 68 74 74 70 73 3a 2f 2f } //1
		$a_01_3 = {53 74 72 52 65 76 65 72 73 65 28 22 22 22 22 29 } //1 StrReverse("""")
		$a_01_4 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_01_5 = {6b 61 6f 73 64 6b 71 6f 77 6b 64 6f 6b 2e 53 65 74 53 74 72 69 6e 67 56 61 6c 75 65 } //1 kaosdkqowkdok.SetStringValue
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=5
 
}