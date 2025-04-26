
rule TrojanDownloader_Win32_Dowexef_B{
	meta:
		description = "TrojanDownloader:Win32/Dowexef.B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {0f be c2 83 ea 20 80 fa 5a 8d 69 01 0f 86 ?? ?? 00 00 83 f8 39 0f 8f ?? ?? 00 00 83 fe 03 0f 87 ?? ?? 00 00 83 f8 2f 0f 8e ?? ?? 00 00 85 f6 0f 84 ?? ?? 00 00 83 fe 02 } //1
		$a_00_1 = {2e 44 6f 77 6e 6c 6f 61 64 46 69 6c 65 28 27 25 73 27 2c 27 25 73 27 29 3b 20 53 74 61 72 74 2d 50 72 6f 63 65 73 73 20 27 25 73 } //1 .DownloadFile('%s','%s'); Start-Process '%s
		$a_00_2 = {70 64 66 2e 64 6c 6c 2c 20 65 72 72 6f 72 20 63 6f 64 65 20 31 32 36 } //1 pdf.dll, error code 126
		$a_00_3 = {40 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 } //1 @powershell.exe
	condition:
		((#a_03_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}