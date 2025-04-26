
rule TrojanDownloader_Win32_Delf_RAP{
	meta:
		description = "TrojanDownloader:Win32/Delf.RAP,SIGNATURE_TYPE_PEHSTR_EXT,28 00 28 00 06 00 00 "
		
	strings :
		$a_02_0 = {63 3a 5c 77 69 6e 64 6f 77 73 5c 73 79 73 74 65 6d 33 32 5c [0-08] 2e 6a 70 67 } //10
		$a_02_1 = {63 3a 5c 77 69 6e 64 6f 77 73 5c 6a 61 76 61 5c [0-08] 2e 65 78 65 } //10
		$a_00_2 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //10 URLDownloadToFileA
		$a_00_3 = {2e 63 6f 6d 2f 4f 72 6b 75 74 } //5 .com/Orkut
		$a_00_4 = {63 3a 5c 77 69 6e 64 6f 77 73 5c 73 79 73 74 65 6d 33 32 5c 6f 72 6b 2e 65 78 65 } //5 c:\windows\system32\ork.exe
		$a_00_5 = {63 3a 5c 77 69 6e 64 6f 77 73 5c 73 79 73 74 65 6d 33 32 5c 77 69 6e 64 6f 77 73 75 70 64 61 74 65 2e 73 63 72 } //5 c:\windows\system32\windowsupdate.scr
	condition:
		((#a_02_0  & 1)*10+(#a_02_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*5+(#a_00_4  & 1)*5+(#a_00_5  & 1)*5) >=40
 
}
rule TrojanDownloader_Win32_Delf_RAP_2{
	meta:
		description = "TrojanDownloader:Win32/Delf.RAP,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {4d 61 6e 61 67 65 73 20 74 68 65 20 73 79 73 74 65 6d 20 43 6f 6d 70 6f 6e 65 6e 74 20 4f 62 6a 65 63 74 20 4d 6f 64 65 6c 20 28 43 4f 4d 29 2e 20 49 66 20 74 68 65 20 73 65 72 76 69 63 65 20 69 73 20 73 74 6f 70 70 65 64 2c 20 6d 6f 73 74 20 73 79 73 74 65 6d 20 63 6f 6d 70 6f 6e 65 6e 74 73 20 77 69 6c 6c 20 6e 6f 74 20 66 75 6e 63 74 69 6f 6e 20 70 72 6f 70 65 72 6c 79 2e 20 49 66 20 74 68 69 73 20 73 65 72 76 69 63 65 20 69 73 20 64 69 73 61 62 6c 65 64 2c 20 61 6e 79 20 73 65 72 76 69 63 65 73 20 74 68 61 74 20 65 78 70 6c 69 63 69 74 6c 79 20 64 65 70 65 6e 64 20 6f 6e 20 69 74 20 77 69 6c 6c 20 66 61 69 6c 20 74 6f 20 73 74 61 72 74 } //1 Manages the system Component Object Model (COM). If the service is stopped, most system components will not function properly. If this service is disabled, any services that explicitly depend on it will fail to start
		$a_01_1 = {26 52 4b 69 74 56 65 72 3d 00 00 00 ff ff ff ff 09 00 00 00 26 52 4b 69 74 52 75 6e 3d 00 00 00 ff ff ff ff 0a 00 00 00 26 56 42 72 6f 77 73 65 72 3d 00 00 ff ff ff ff 09 00 00 00 26 46 69 78 65 64 49 50 3d 00 00 00 ff ff ff ff 06 00 00 00 26 50 6f 72 74 3d } //1
		$a_01_2 = {7c 44 6f 77 6e 6c 6f 61 64 44 69 72 7c 00 00 00 ff ff ff ff 0a 00 00 00 7c 53 65 74 75 70 44 69 72 7c 00 00 ff ff ff ff 09 00 00 00 7c 52 4b 69 74 44 69 72 7c } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}