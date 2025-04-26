
rule TrojanDownloader_Win32_Harnig_AB{
	meta:
		description = "TrojanDownloader:Win32/Harnig.AB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {77 00 69 00 6e 00 69 00 6e 00 65 00 74 00 2e 00 64 00 6c 00 6c 00 } //1 wininet.dll
		$a_00_1 = {40 00 70 00 73 00 61 00 70 00 69 00 2e 00 64 00 6c 00 6c 00 } //1 @psapi.dll
		$a_00_2 = {65 78 70 6c 6f 72 65 72 2e 65 78 65 } //1 explorer.exe
		$a_02_3 = {68 74 74 70 3a 2f 2f ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 2e [0-03] 2f 70 72 6f 67 73 2f [0-0a] 2f [0-08] 2e 70 68 70 } //1
		$a_02_4 = {6a 08 59 6a 0c be ?? ?? ?? ?? 33 c0 56 8d 7d c8 68 ?? ?? ?? ?? f3 ab e8 ?? ?? ?? ff 83 c4 0c 56 8d 45 c8 50 ff 15 ?? ?? 40 00 8d 45 c8 50 e8 ?? ?? ?? ff } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_02_3  & 1)*1+(#a_02_4  & 1)*1) >=5
 
}