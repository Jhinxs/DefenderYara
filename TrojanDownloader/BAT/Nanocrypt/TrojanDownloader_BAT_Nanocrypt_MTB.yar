
rule TrojanDownloader_BAT_Nanocrypt_MTB{
	meta:
		description = "TrojanDownloader:BAT/Nanocrypt!MTB,SIGNATURE_TYPE_PEHSTR_EXT,23 00 23 00 0a 00 00 "
		
	strings :
		$a_01_0 = {50 72 6f 63 65 73 73 } //1 Process
		$a_01_1 = {50 72 6f 63 65 73 73 53 74 61 72 74 49 6e 66 6f } //1 ProcessStartInfo
		$a_01_2 = {73 65 74 5f 57 69 6e 64 6f 77 53 74 79 6c 65 } //1 set_WindowStyle
		$a_01_3 = {50 72 6f 63 65 73 73 57 69 6e 64 6f 77 53 74 79 6c 65 } //1 ProcessWindowStyle
		$a_01_4 = {73 65 74 5f 46 69 6c 65 4e 61 6d 65 } //1 set_FileName
		$a_01_5 = {73 65 74 5f 41 72 67 75 6d 65 6e 74 73 } //1 set_Arguments
		$a_01_6 = {73 65 74 5f 53 74 61 72 74 49 6e 66 6f } //1 set_StartInfo
		$a_01_7 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 } //10 powershell.exe
		$a_01_8 = {2f 00 63 00 20 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //10 /c powershell
		$a_01_9 = {2d 00 6e 00 6f 00 65 00 78 00 69 00 74 00 20 00 2d 00 65 00 78 00 65 00 63 00 20 00 62 00 79 00 70 00 61 00 73 00 73 00 20 00 2d 00 77 00 69 00 6e 00 64 00 6f 00 77 00 20 00 31 00 20 00 2d 00 65 00 6e 00 63 00 } //10 -noexit -exec bypass -window 1 -enc
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*10+(#a_01_8  & 1)*10+(#a_01_9  & 1)*10) >=35
 
}