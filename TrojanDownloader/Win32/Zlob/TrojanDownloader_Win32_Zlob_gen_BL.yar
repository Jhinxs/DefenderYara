
rule TrojanDownloader_Win32_Zlob_gen_BL{
	meta:
		description = "TrojanDownloader:Win32/Zlob.gen!BL,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 "
		
	strings :
		$a_01_0 = {74 69 2d 53 70 79 } //2 ti-Spy
		$a_01_1 = {53 6f 66 74 77 61 72 65 5c 57 65 62 20 54 65 63 68 6e 6f 6c 6f 67 69 65 73 } //1 Software\Web Technologies
		$a_01_2 = {53 6f 66 74 77 61 72 65 5c 41 70 70 6c 69 63 61 74 69 6f 6e 73 } //1 Software\Applications
		$a_00_3 = {44 41 45 44 39 32 36 36 2d 38 43 32 38 2d 34 43 31 43 2d 38 42 35 38 2d 35 43 36 36 45 46 46 31 44 33 30 32 } //1 DAED9266-8C28-4C1C-8B58-5C66EFF1D302
		$a_00_4 = {39 30 33 34 41 35 32 33 2d 44 30 36 38 2d 34 42 45 38 2d 41 32 38 34 2d 39 44 46 32 37 38 42 45 37 37 36 45 } //1 9034A523-D068-4BE8-A284-9DF278BE776E
		$a_00_5 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 53 65 61 72 63 68 53 63 6f 70 65 73 } //1 Software\Microsoft\Internet Explorer\SearchScopes
		$a_00_6 = {65 63 74 2e 70 68 70 } //1 ect.php
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=6
 
}
rule TrojanDownloader_Win32_Zlob_gen_BL_2{
	meta:
		description = "TrojanDownloader:Win32/Zlob.gen!BL,SIGNATURE_TYPE_PEHSTR,15 00 15 00 08 00 00 "
		
	strings :
		$a_01_0 = {53 6f 66 74 77 61 72 65 5c 57 65 62 20 54 65 63 68 6e 6f 6c 6f 67 69 65 73 } //10 Software\Web Technologies
		$a_01_1 = {7b 45 32 30 39 30 36 37 33 2d 32 35 36 42 2d 34 36 33 32 2d 39 34 45 45 2d 46 45 43 37 46 35 35 31 35 34 33 43 7d } //5 {E2090673-256B-4632-94EE-FEC7F551543C}
		$a_01_2 = {7b 44 41 45 44 39 32 36 36 2d 38 43 32 38 2d 34 43 31 43 2d 38 42 35 38 2d 35 43 36 36 45 46 46 31 44 33 30 32 7d } //5 {DAED9266-8C28-4C1C-8B58-5C66EFF1D302}
		$a_01_3 = {39 30 33 34 41 35 32 33 2d 44 30 36 38 2d 34 42 45 38 2d 41 32 38 34 2d 39 44 46 32 37 38 42 45 37 37 36 45 } //2 9034A523-D068-4BE8-A284-9DF278BE776E
		$a_01_4 = {74 6f 6f 6c 66 6f 72 73 65 61 72 63 68 2e 63 6f 6d 2f 69 6e 64 65 78 } //2 toolforsearch.com/index
		$a_01_5 = {49 45 20 41 6e 74 69 2d 53 70 79 77 61 72 65 } //2 IE Anti-Spyware
		$a_01_6 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 53 65 61 72 63 68 53 63 6f 70 65 73 } //1 Software\Microsoft\Internet Explorer\SearchScopes
		$a_01_7 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 70 6f 6c 69 63 69 65 73 5c 65 78 70 6c 6f 72 65 72 5c 72 75 6e } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\policies\explorer\run
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*5+(#a_01_2  & 1)*5+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=21
 
}