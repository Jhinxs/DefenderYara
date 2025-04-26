
rule TrojanDownloader_PowerShell_Sekit_C{
	meta:
		description = "TrojanDownloader:PowerShell/Sekit.C,SIGNATURE_TYPE_CMDHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {5c 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 } //1 \powershell.exe
		$a_00_1 = {69 00 65 00 78 00 28 00 24 00 65 00 6e 00 76 00 3a 00 } //1 iex($env:
		$a_00_2 = {3d 00 24 00 65 00 6e 00 76 00 3a 00 74 00 65 00 6d 00 70 00 2b 00 27 00 5c 00 } //1 =$env:temp+'\
		$a_00_3 = {2e 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 46 00 69 00 6c 00 65 00 28 00 27 00 68 00 74 00 74 00 70 00 } //1 .DownloadFile('http
		$a_00_4 = {49 00 6e 00 76 00 6f 00 6b 00 65 00 2d 00 49 00 74 00 65 00 6d 00 20 00 24 00 } //1 Invoke-Item $
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}