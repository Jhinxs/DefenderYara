
rule Trojan_Win32_Agent_AHC{
	meta:
		description = "Trojan:Win32/Agent.AHC,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 0a 00 00 "
		
	strings :
		$a_01_0 = {47 45 54 20 5e 25 24 25 5e 26 2a 2a 28 2a 28 28 26 26 2a 5e 26 26 25 25 5e 26 2a 28 2a 26 24 25 24 5e 25 24 23 5e 2a 5e 25 24 23 23 24 2e 68 74 6d 47 45 54 20 5e 2a 25 25 52 46 54 47 59 48 4a 49 52 54 47 2a 28 26 5e 25 44 46 47 28 4a 4b 4a 48 4a 25 5e 26 2a 28 29 2a 26 2a 5e 26 25 2e 61 73 70 47 45 54 20 2a 28 26 2a 5e 54 47 48 2a 4a 49 48 47 5e 26 2a 28 26 5e 25 2a 28 2a 29 4f 4b 29 28 2a 26 5e 25 24 45 44 52 47 46 25 26 5e 2e 68 74 6d 6c } //1 GET ^%$%^&**(*((&&*^&&%%^&*(*&$%$^%$#^*^%$##$.htmGET ^*%%RFTGYHJIRTG*(&^%DFG(JKJHJ%^&*()*&*^&%.aspGET *(&*^TGH*JIHG^&*(&^%*(*)OK)(*&^%$EDRGF%&^.html
		$a_01_1 = {52 65 66 65 72 65 72 3a 20 68 74 74 70 3a 2f 2f 77 77 77 2e 67 6f 6f 67 6c 65 2e 63 6f 6d } //1 Referer: http://www.google.com
		$a_01_2 = {52 65 66 65 72 65 72 3a 20 68 74 74 70 3a 2f 2f 77 77 77 2e 62 61 69 64 75 2e 63 6f 6d } //1 Referer: http://www.baidu.com
		$a_01_3 = {43 61 63 68 65 2d 43 6f 6e 74 72 6f 6c 3a 20 6e 6f 2d 63 61 63 68 65 } //1 Cache-Control: no-cache
		$a_01_4 = {5c 73 79 73 74 6f 6d 33 32 5c 73 76 63 68 6f 73 74 2e 65 78 65 } //1 \systom32\svchost.exe
		$a_01_5 = {41 64 6a 75 73 74 54 6f 6b 65 6e 50 72 69 76 69 6c 65 67 65 73 } //1 AdjustTokenPrivileges
		$a_01_6 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //1 URLDownloadToFileA
		$a_01_7 = {53 65 44 65 62 75 67 50 72 69 76 69 6c 65 67 65 } //1 SeDebugPrivilege
		$a_01_8 = {63 3a 5c 70 61 67 65 66 69 6c 65 2e 70 69 66 } //1 c:\pagefile.pif
		$a_01_9 = {5c 63 6d 64 2e 65 78 65 20 2f 63 } //1 \cmd.exe /c
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=7
 
}