
rule TrojanDownloader_Win32_Thoper_C{
	meta:
		description = "TrojanDownloader:Win32/Thoper.C,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {8b 45 10 03 c6 8a 08 2a 4d 0c 32 4d 0c 02 4d 0c 88 08 } //1
		$a_01_1 = {48 54 3a 20 73 65 6e 64 28 25 64 29 } //1 HT: send(%d)
		$a_01_2 = {50 4f 53 54 20 68 74 74 70 3a 2f 2f 25 73 2f 25 64 20 48 54 54 50 2f 31 2e 30 } //1 POST http://%s/%d HTTP/1.0
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}