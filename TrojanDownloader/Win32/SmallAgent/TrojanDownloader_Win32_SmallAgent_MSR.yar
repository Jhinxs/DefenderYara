
rule TrojanDownloader_Win32_SmallAgent_MSR{
	meta:
		description = "TrojanDownloader:Win32/SmallAgent!MSR,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 7a 00 61 00 78 00 61 00 72 00 73 00 74 00 6f 00 72 00 65 00 32 00 2e 00 63 00 6f 00 6d 00 2f 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 2e 00 70 00 68 00 70 00 } //2 http://zaxarstore2.com/download.php
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 6f 00 6e 00 6c 00 69 00 6e 00 65 00 2d 00 67 00 61 00 6d 00 65 00 2d 00 67 00 72 00 6f 00 75 00 70 00 2e 00 72 00 75 00 2f 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 2e 00 70 00 68 00 70 00 } //2 http://online-game-group.ru/download.php
		$a_01_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 70 00 69 00 6c 00 69 00 6e 00 6e 00 6f 00 2e 00 69 00 6e 00 66 00 6f 00 2f 00 63 00 70 00 69 00 2f 00 70 00 72 00 6f 00 6d 00 6f 00 2e 00 65 00 78 00 65 00 } //2 http://pilinno.info/cpi/promo.exe
		$a_01_3 = {74 65 6d 70 5f 64 69 72 65 63 74 6f 72 79 5f 70 61 74 68 } //1 temp_directory_path
		$a_01_4 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 } //1 URLDownloadToFile
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}
rule TrojanDownloader_Win32_SmallAgent_MSR_2{
	meta:
		description = "TrojanDownloader:Win32/SmallAgent!MSR,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 06 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 32 31 37 2e 38 2e 31 31 37 } //5 http://217.8.117
		$a_01_1 = {53 00 59 00 53 00 54 00 45 00 4d 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 53 00 65 00 74 00 5c 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 5c 00 53 00 68 00 61 00 72 00 65 00 64 00 41 00 63 00 63 00 65 00 73 00 73 00 5c 00 50 00 61 00 72 00 61 00 6d 00 65 00 74 00 65 00 72 00 73 00 5c 00 46 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 50 00 6f 00 6c 00 69 00 63 00 79 00 5c 00 53 00 74 00 61 00 6e 00 64 00 61 00 72 00 64 00 50 00 72 00 6f 00 66 00 69 00 6c 00 65 00 5c 00 41 00 75 00 74 00 68 00 6f 00 72 00 69 00 7a 00 65 00 64 00 41 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 73 00 5c 00 4c 00 69 00 73 00 74 00 } //1 SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\AuthorizedApplications\List
		$a_01_2 = {41 00 6e 00 74 00 69 00 56 00 69 00 72 00 75 00 73 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 } //1 AntiVirusDisable
		$a_01_3 = {46 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 } //1 FirewallDisable
		$a_01_4 = {25 00 6c 00 73 00 3a 00 2a 00 3a 00 45 00 6e 00 61 00 62 00 6c 00 65 00 64 00 3a 00 25 00 6c 00 73 00 } //1 %ls:*:Enabled:%ls
		$a_01_5 = {69 6e 66 65 63 74 65 64 } //1 infected
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=8
 
}