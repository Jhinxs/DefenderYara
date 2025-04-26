
rule TrojanDownloader_Win32_Agent{
	meta:
		description = "TrojanDownloader:Win32/Agent,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {63 3a 5c 6a 64 69 6f 6a 2e 74 78 74 } //1 c:\jdioj.txt
		$a_02_1 = {ff ff ff ff 08 00 00 00 90 04 04 0a 30 31 32 33 34 35 36 37 38 39 2e 63 6f 6d } //1
		$a_02_2 = {ff ff ff ff 07 00 00 00 90 04 04 0a 30 31 32 33 34 35 36 37 38 39 2e 63 6e } //1
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1) >=3
 
}
rule TrojanDownloader_Win32_Agent_2{
	meta:
		description = "TrojanDownloader:Win32/Agent,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {33 c0 83 e1 03 f3 a4 bf 0c 52 40 00 83 c9 ff f2 ae f7 d1 2b f9 8b f7 8b d9 8b fa 83 c9 ff f2 ae } //1
		$a_00_1 = {68 74 74 70 3a 2f 2f 6b 65 65 70 70 75 72 65 2e 63 6e 2f 74 6f 6f 6c 2f 78 78 7a 2e 65 78 65 } //1 http://keeppure.cn/tool/xxz.exe
		$a_00_2 = {73 79 73 61 76 65 2e 65 78 65 } //1 sysave.exe
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1) >=3
 
}
rule TrojanDownloader_Win32_Agent_3{
	meta:
		description = "TrojanDownloader:Win32/Agent,SIGNATURE_TYPE_PEHSTR_EXT,ffffff82 00 ffffff82 00 05 00 00 "
		
	strings :
		$a_01_0 = {5c 75 72 6c 6d 31 30 6e 2e 64 6c 6c } //10 \urlm10n.dll
		$a_01_1 = {5c 75 72 6c 6d 6f 6e 2e 64 6c 6c } //10 \urlmon.dll
		$a_01_2 = {5c 69 6e 64 65 78 31 2e 64 61 74 } //10 \index1.dat
		$a_01_3 = {5c 49 6e 66 6f 31 2e 69 6e 69 } //10 \Info1.ini
		$a_01_4 = {68 74 74 70 3a 2f 2f 77 77 77 2e 32 38 32 38 68 66 64 79 2e 63 6f 6d 2f 62 61 6b 2e 74 78 74 } //100 http://www.2828hfdy.com/bak.txt
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*100) >=130
 
}
rule TrojanDownloader_Win32_Agent_4{
	meta:
		description = "TrojanDownloader:Win32/Agent,SIGNATURE_TYPE_PEHSTR,01 00 01 00 02 00 00 "
		
	strings :
		$a_01_0 = {84 12 14 00 28 12 14 00 68 74 74 70 3a 2f 2f 67 65 74 79 6f 75 6e 65 65 64 2e 63 6f 6d 2f 72 2e 70 68 70 3f 77 6d 3d 35 } //1
		$a_01_1 = {f0 fa 12 00 11 26 40 00 1c fa 12 00 60 fa 12 00 00 00 00 00 00 00 00 00 68 74 74 70 3a 2f 2f 67 65 74 79 6f 75 6e 65 65 64 2e 63 6f } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=1
 
}
rule TrojanDownloader_Win32_Agent_5{
	meta:
		description = "TrojanDownloader:Win32/Agent,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 77 77 77 2e 73 68 61 64 6f 77 6d 70 33 2e 63 6f 6d } //1 http://www.shadowmp3.com
		$a_01_1 = {5c 4e 65 74 47 75 79 5f 45 78 70 6c 6f 72 65 72 5c 52 65 6c 65 61 73 65 5c 4e 65 74 47 75 79 5f 45 78 70 6c 6f 72 65 72 2e 70 64 62 } //1 \NetGuy_Explorer\Release\NetGuy_Explorer.pdb
		$a_01_2 = {42 72 6f 77 73 65 72 20 48 65 6c 70 65 72 20 4f 62 6a 65 63 74 73 5c 7b 43 45 37 43 33 43 46 30 2d 32 35 46 43 2d 31 31 44 31 2d 41 42 45 44 2d 37 38 34 42 37 44 36 42 45 30 42 33 7d } //1 Browser Helper Objects\{CE7C3CF0-25FC-11D1-ABED-784B7D6BE0B3}
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule TrojanDownloader_Win32_Agent_6{
	meta:
		description = "TrojanDownloader:Win32/Agent,SIGNATURE_TYPE_PEHSTR,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {4d 69 63 72 6f 73 6f 66 74 20 56 69 73 75 61 6c 20 43 2b 2b 20 52 75 6e 74 69 6d 65 20 4c 69 62 72 61 72 79 } //1 Microsoft Visual C++ Runtime Library
		$a_01_1 = {77 69 6e 66 65 72 6e 6f 2e 63 6f 6d 2f 63 2f 34 30 37 2f 66 72 65 65 7a 65 5f 72 70 63 36 62 75 6e 64 6c 65 5f 75 73 2f 52 45 47 49 53 54 52 59 46 49 58 } //1 winferno.com/c/407/freeze_rpc6bundle_us/REGISTRYFIX
		$a_01_2 = {72 75 6e 64 6c 6c 33 32 2e 65 78 65 20 22 25 73 22 2c 52 50 43 49 6e 73 74 61 6c 6c } //1 rundll32.exe "%s",RPCInstall
		$a_01_3 = {52 50 43 49 6e 73 74 61 6c 6c 2e 64 6c 6c } //1 RPCInstall.dll
		$a_01_4 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 4f 6e 63 65 } //1 Software\Microsoft\Windows\CurrentVersion\RunOnce
		$a_01_5 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //1 URLDownloadToFileA
		$a_01_6 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //1 VirtualProtect
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}
rule TrojanDownloader_Win32_Agent_7{
	meta:
		description = "TrojanDownloader:Win32/Agent,SIGNATURE_TYPE_PEHSTR,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {4d 69 63 72 6f 73 6f 66 74 20 56 69 73 75 61 6c 20 43 2b 2b 20 52 75 6e 74 69 6d 65 20 4c 69 62 72 61 72 79 } //1 Microsoft Visual C++ Runtime Library
		$a_01_1 = {69 65 6f 70 65 6e 2e 79 68 67 61 6d 65 73 2e 63 6f 6d 2f 69 65 64 6f 77 6e 2f 6a 64 75 70 64 61 74 65 2e 74 78 74 } //1 ieopen.yhgames.com/iedown/jdupdate.txt
		$a_01_2 = {45 42 33 38 33 43 36 45 2d 39 39 31 32 2d 34 38 35 30 2d 42 43 45 35 2d 41 35 41 38 37 37 39 44 33 32 31 41 } //1 EB383C6E-9912-4850-BCE5-A5A8779D321A
		$a_01_3 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 5c } //1 SYSTEM\CurrentControlSet\Services\
		$a_01_4 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 53 68 65 6c 6c 20 46 6f 6c 64 65 72 73 } //1 Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders
		$a_01_5 = {43 72 65 61 74 65 4d 75 74 65 78 41 } //1 CreateMutexA
		$a_01_6 = {43 72 65 61 74 65 53 65 72 76 69 63 65 41 } //1 CreateServiceA
		$a_01_7 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //1 InternetOpenUrlA
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}
rule TrojanDownloader_Win32_Agent_8{
	meta:
		description = "TrojanDownloader:Win32/Agent,SIGNATURE_TYPE_PEHSTR,0b 00 0b 00 0b 00 00 "
		
	strings :
		$a_01_0 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 42 72 6f 77 73 65 72 20 48 65 6c 70 65 72 20 4f 62 6a 65 63 74 73 5c 7b 42 44 34 39 41 33 45 44 2d 39 36 34 35 2d 34 46 30 36 2d 41 43 33 42 2d 30 39 32 33 31 43 41 44 37 34 38 43 7d } //1 Software\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects\{BD49A3ED-9645-4F06-AC3B-09231CAD748C}
		$a_01_1 = {78 73 74 73 2e 65 78 65 } //1 xsts.exe
		$a_01_2 = {64 6c 73 74 73 2e 64 6c 6c } //1 dlsts.dll
		$a_01_3 = {50 48 61 63 6b 65 72 5f 43 2e 64 6c 6c } //1 PHacker_C.dll
		$a_01_4 = {50 48 61 63 6b 65 72 2e 69 6e 69 } //1 PHacker.ini
		$a_01_5 = {6c 65 63 2e 6e 65 76 79 73 65 61 72 63 68 2e 63 6f 6d } //1 lec.nevysearch.com
		$a_01_6 = {75 70 64 61 74 65 31 2e 75 70 6d 61 63 68 69 6e 65 73 2e 63 6f 6d } //1 update1.upmachines.com
		$a_01_7 = {43 72 65 61 74 65 44 69 72 65 63 74 6f 72 79 41 } //1 CreateDirectoryA
		$a_01_8 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //1 DllRegisterServer
		$a_01_9 = {47 65 74 57 69 6e 64 6f 77 73 44 69 72 65 63 74 6f 72 79 41 } //1 GetWindowsDirectoryA
		$a_01_10 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //1 URLDownloadToFileA
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=11
 
}
rule TrojanDownloader_Win32_Agent_9{
	meta:
		description = "TrojanDownloader:Win32/Agent,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_01_0 = {4d 69 63 72 6f 73 6f 66 74 20 56 69 73 75 61 6c 20 43 2b 2b 20 52 75 6e 74 69 6d 65 20 4c 69 62 72 61 72 79 } //1 Microsoft Visual C++ Runtime Library
		$a_01_1 = {37 00 34 00 32 00 38 00 46 00 39 00 34 00 33 00 2d 00 42 00 43 00 34 00 46 00 2d 00 34 00 41 00 33 00 39 00 2d 00 33 00 42 00 34 00 33 00 2d 00 41 00 42 00 34 00 33 00 33 00 43 00 35 00 32 00 33 00 42 00 33 00 34 00 } //1 7428F943-BC4F-4A39-3B43-AB433C523B34
		$a_01_2 = {25 00 73 00 2f 00 63 00 6f 00 75 00 6e 00 74 00 2e 00 70 00 68 00 70 00 3f 00 69 00 64 00 3d 00 25 00 69 00 26 00 75 00 3d 00 25 00 73 00 26 00 76 00 3d 00 25 00 69 00 26 00 74 00 3d 00 25 00 69 00 26 00 74 00 6d 00 3d 00 25 00 69 00 26 00 63 00 3d 00 25 00 64 00 26 00 70 00 3d 00 25 00 69 00 26 00 61 00 64 00 3d 00 25 00 33 00 2e 00 33 00 66 00 } //1 %s/count.php?id=%i&u=%s&v=%i&t=%i&tm=%i&c=%d&p=%i&ad=%3.3f
		$a_01_3 = {6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 2e 00 63 00 6f 00 6d 00 } //1 microsoft.com
		$a_01_4 = {6f 00 6d 00 65 00 67 00 61 00 73 00 68 00 69 00 70 00 70 00 69 00 6e 00 67 00 63 00 6f 00 72 00 70 00 } //1 omegashippingcorp
		$a_01_5 = {70 00 75 00 72 00 70 00 6c 00 65 00 73 00 72 00 6f 00 61 00 64 00 } //1 purplesroad
		$a_01_6 = {76 00 69 00 6f 00 6c 00 65 00 74 00 62 00 72 00 69 00 64 00 67 00 65 00 } //1 violetbridge
		$a_01_7 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 42 00 72 00 6f 00 77 00 73 00 65 00 72 00 20 00 48 00 65 00 6c 00 70 00 65 00 72 00 20 00 4f 00 62 00 6a 00 65 00 63 00 74 00 73 00 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects
		$a_01_8 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //1 DllRegisterServer
		$a_01_9 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //1 VirtualProtect
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=10
 
}