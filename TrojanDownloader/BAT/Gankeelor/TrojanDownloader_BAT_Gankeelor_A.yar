
rule TrojanDownloader_BAT_Gankeelor_A{
	meta:
		description = "TrojanDownloader:BAT/Gankeelor.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 "
		
	strings :
		$a_01_0 = {77 00 2e 00 77 00 65 00 65 00 62 00 6c 00 79 00 2e 00 63 00 6f 00 6d 00 2f 00 75 00 70 00 6c 00 6f 00 61 00 64 00 73 00 2f 00 33 00 2f 00 37 00 2f 00 34 00 2f 00 30 00 2f 00 33 00 37 00 34 00 30 00 35 00 34 00 32 00 37 00 2f 00 64 00 61 00 74 00 61 00 2e 00 64 00 6c 00 6c 00 } //4 w.weebly.com/uploads/3/7/4/0/37405427/data.dll
		$a_01_1 = {47 41 4e 4b 4c 52 5c 44 65 73 6b 74 6f 70 } //1 GANKLR\Desktop
		$a_01_2 = {49 6e 74 65 72 6e 65 74 5f 45 78 70 6c 6f 72 65 72 2e 4d 79 00 4d 79 43 6f 6d 70 75 74 65 72 } //1
		$a_01_3 = {61 64 64 5f 53 68 75 74 64 6f 77 6e } //1 add_Shutdown
	condition:
		((#a_01_0  & 1)*4+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=6
 
}