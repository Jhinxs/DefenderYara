
rule TrojanDownloader_Win32_Zlob_gen_GS{
	meta:
		description = "TrojanDownloader:Win32/Zlob.gen!GS,SIGNATURE_TYPE_PEHSTR,0b 00 0b 00 0b 00 00 "
		
	strings :
		$a_01_0 = {55 89 e5 83 ec 14 c7 45 ec 00 00 00 00 c7 45 f0 56 69 72 74 c7 45 f4 75 61 6c 50 c7 45 f8 72 6f 74 65 66 c7 45 fc 63 74 c6 45 fe 00 60 8d 45 ec 50 68 2f 01 ff ff 81 04 24 11 ff 00 00 ff 75 0c ff 75 08 8d 45 f0 e8 58 05 00 00 61 c9 } //1
		$a_01_1 = {52 65 67 69 73 74 65 72 42 69 6e 64 53 74 61 74 75 73 43 61 6c 6c 62 61 63 6b } //1 RegisterBindStatusCallback
		$a_01_2 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 41 } //1 URLDownloadA
		$a_01_3 = {43 6f 6d 70 61 72 65 53 65 63 75 72 69 74 79 49 64 73 } //1 CompareSecurityIds
		$a_01_4 = {44 6c 6c 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 } //1 DllUnregisterServer
		$a_01_5 = {46 69 6e 64 46 69 72 73 74 55 72 6c 43 61 63 68 65 45 6e 74 72 79 57 } //1 FindFirstUrlCacheEntryW
		$a_01_6 = {46 6f 72 63 65 4e 65 78 75 73 4c 6f 6f 6b 75 70 45 78 57 } //1 ForceNexusLookupExW
		$a_01_7 = {46 74 70 52 65 6d 6f 76 65 44 69 72 65 63 74 6f 72 79 41 } //1 FtpRemoveDirectoryA
		$a_01_8 = {43 6f 6d 6d 69 74 55 72 6c 43 61 63 68 65 45 6e 74 72 79 57 } //1 CommitUrlCacheEntryW
		$a_01_9 = {46 74 70 53 65 74 43 75 72 72 65 6e 74 44 69 72 65 63 74 6f 72 79 41 } //1 FtpSetCurrentDirectoryA
		$a_01_10 = {47 65 74 55 72 6c 43 61 63 68 65 45 6e 74 72 79 49 6e 66 6f 57 } //1 GetUrlCacheEntryInfoW
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=11
 
}