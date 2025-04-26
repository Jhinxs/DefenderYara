
rule TrojanDownloader_Win32_Delf_RAE{
	meta:
		description = "TrojanDownloader:Win32/Delf.RAE,SIGNATURE_TYPE_PEHSTR,1a 00 1a 00 1a 00 00 "
		
	strings :
		$a_01_0 = {72 61 6d 33 32 78 70 2e 69 6e 66 } //1 ram32xp.inf
		$a_01_1 = {72 61 6d 36 34 78 70 2e 69 6e 66 } //1 ram64xp.inf
		$a_01_2 = {5c 69 6e 66 5c } //1 \inf\
		$a_01_3 = {69 6e 73 74 61 6c 6c 2e 65 78 65 } //1 install.exe
		$a_01_4 = {63 73 72 73 73 2e 65 78 65 } //1 csrss.exe
		$a_01_5 = {73 76 63 68 6f 73 74 2e 65 78 65 } //1 svchost.exe
		$a_01_6 = {65 78 70 6c 6f 72 65 72 2e 65 78 65 } //1 explorer.exe
		$a_01_7 = {74 6d 70 64 6f 77 6e 33 32 2e 64 6c 6c } //1 tmpdown32.dll
		$a_01_8 = {74 6d 70 64 6f 77 6e 33 33 2e 64 6c 6c } //1 tmpdown33.dll
		$a_01_9 = {74 6d 70 64 6f 77 6e 33 34 2e 64 6c 6c } //1 tmpdown34.dll
		$a_01_10 = {65 76 6f 5f 70 66 5f 33 64 } //1 evo_pf_3d
		$a_01_11 = {65 76 6f 5f 70 66 5f 62 6f 61 } //1 evo_pf_boa
		$a_01_12 = {65 76 6f 5f 70 66 5f 65 62 61 79 } //1 evo_pf_ebay
		$a_01_13 = {75 6b 69 74 2e 7a 69 70 2e 64 61 74 } //1 ukit.zip.dat
		$a_01_14 = {75 6b 69 74 2e 64 61 74 2e 7a 69 70 } //1 ukit.dat.zip
		$a_01_15 = {57 69 6e 64 6f 77 73 20 4d 61 6e 61 67 65 6d 65 6e 74 20 4c 69 63 65 6e 63 65 20 53 65 72 76 69 63 65 } //1 Windows Management Licence Service
		$a_01_16 = {52 45 47 20 44 45 4c 45 54 45 20 22 48 4b 45 59 5f 43 55 52 52 45 4e 54 5f 55 53 45 52 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 49 6e 74 65 6c 6c 69 46 6f 72 6d 73 5c 53 50 57 22 20 2f 66 } //1 REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\IntelliForms\SPW" /f
		$a_01_17 = {52 45 47 20 41 44 44 20 22 48 4b 45 59 5f 43 55 52 52 45 4e 54 5f 55 53 45 52 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 41 75 74 6f 43 6f 6d 70 6c 65 74 65 22 20 2f 76 20 22 41 75 74 6f 43 6f 6d 70 6c 65 74 65 22 20 2f 74 20 52 45 47 5f 44 57 4f 52 44 20 2f 66 20 2f 64 20 22 31 22 } //1 REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoComplete" /v "AutoComplete" /t REG_DWORD /f /d "1"
		$a_01_18 = {52 45 47 20 41 44 44 20 22 48 4b 45 59 5f 43 55 52 52 45 4e 54 5f 55 53 45 52 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 41 75 74 6f 43 6f 6d 70 6c 65 74 65 22 20 2f 76 20 22 41 70 70 65 6e 64 20 43 6f 6d 70 6c 65 74 69 6f 6e 22 20 2f 74 20 52 45 47 5f 53 5a 20 2f 66 20 2f 64 20 22 79 65 73 22 } //1 REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoComplete" /v "Append Completion" /t REG_SZ /f /d "yes"
		$a_01_19 = {52 45 47 20 41 44 44 20 22 48 4b 45 59 5f 43 55 52 52 45 4e 54 5f 55 53 45 52 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 41 75 74 6f 43 6f 6d 70 6c 65 74 65 22 20 2f 76 20 22 41 70 70 65 6e 64 20 43 6f 6d 70 6c 65 74 69 6f 6e 20 53 74 72 69 6e 67 22 20 2f 74 20 52 45 47 5f 53 5a 20 2f 66 20 2f 64 20 22 79 65 73 22 } //1 REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\AutoComplete" /v "Append Completion String" /t REG_SZ /f /d "yes"
		$a_01_20 = {52 45 47 20 41 44 44 20 22 48 4b 45 59 5f 43 55 52 52 45 4e 54 5f 55 53 45 52 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 4d 61 69 6e 22 20 2f 76 20 22 46 6f 72 6d 53 75 67 67 65 73 74 20 50 57 20 41 73 6b 22 20 2f 74 20 52 45 47 5f 53 5a 20 2f 66 20 2f 64 20 22 6e 6f 22 } //1 REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "FormSuggest PW Ask" /t REG_SZ /f /d "no"
		$a_01_21 = {52 45 47 20 41 44 44 20 22 48 4b 45 59 5f 43 55 52 52 45 4e 54 5f 55 53 45 52 5c 53 6f 66 74 77 61 72 65 5c 50 6f 6c 69 63 69 65 73 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 43 6f 6e 74 72 6f 6c 20 50 61 6e 65 6c 22 20 2f 76 20 22 46 6f 72 6d 53 75 67 67 65 73 74 20 50 61 73 73 77 6f 72 64 73 22 20 2f 74 20 52 45 47 5f 44 57 4f 52 44 20 2f 66 20 2f 64 20 22 31 22 } //1 REG ADD "HKEY_CURRENT_USER\Software\Policies\Microsoft\Internet Explorer\Control Panel" /v "FormSuggest Passwords" /t REG_DWORD /f /d "1"
		$a_01_22 = {52 45 47 20 41 44 44 20 22 48 4b 45 59 5f 43 55 52 52 45 4e 54 5f 55 53 45 52 5c 53 6f 66 74 77 61 72 65 5c 50 6f 6c 69 63 69 65 73 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 43 6f 6e 74 72 6f 6c 20 50 61 6e 65 6c 22 20 2f 76 20 22 46 6f 72 6d 53 75 67 67 65 73 74 22 20 2f 74 20 52 45 47 5f 44 57 4f 52 44 20 2f 66 20 2f 64 20 22 31 22 } //1 REG ADD "HKEY_CURRENT_USER\Software\Policies\Microsoft\Internet Explorer\Control Panel" /v "FormSuggest" /t REG_DWORD /f /d "1"
		$a_01_23 = {52 45 47 20 41 44 44 20 22 48 4b 45 59 5f 43 55 52 52 45 4e 54 5f 55 53 45 52 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 4d 61 69 6e 22 20 2f 76 20 22 55 73 65 20 46 6f 72 6d 53 75 67 67 65 73 74 22 20 2f 74 20 52 45 47 5f 53 5a 20 2f 66 20 2f 64 20 22 6e 6f 22 } //1 REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Use FormSuggest" /t REG_SZ /f /d "no"
		$a_01_24 = {68 74 74 70 3a 2f 2f 72 6f 6d 69 63 61 2d 70 75 63 65 61 6e 75 2e 63 6f 6d } //1 http://romica-puceanu.com
		$a_01_25 = {68 74 74 70 3a 2f 2f 72 6f 2d 6d 65 6d 62 65 72 31 2e 63 6f 6d } //1 http://ro-member1.com
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1+(#a_01_18  & 1)*1+(#a_01_19  & 1)*1+(#a_01_20  & 1)*1+(#a_01_21  & 1)*1+(#a_01_22  & 1)*1+(#a_01_23  & 1)*1+(#a_01_24  & 1)*1+(#a_01_25  & 1)*1) >=26
 
}