
rule Trojan_Win32_Startpage_KD{
	meta:
		description = "Trojan:Win32/Startpage.KD,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {52 45 47 20 41 44 44 20 22 48 4b 43 55 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 53 65 61 72 63 68 53 63 6f 70 65 73 5c 7b 41 33 34 35 38 37 32 33 34 2d 41 57 45 52 2d 33 32 35 36 2d 35 54 59 36 2d 31 32 45 44 45 52 47 54 59 35 36 38 7d 22 20 2f 56 20 22 55 52 4c 22 20 2f 54 20 52 45 47 5f 53 5a 20 2f 44 20 68 74 74 70 3a 2f 2f 77 77 77 2e 6d 62 75 73 63 61 73 2e 63 6f 6d 2f 73 65 61 72 63 68 2e 70 68 70 3f 71 3d 7b 73 65 61 72 63 68 54 65 72 6d 73 7d 26 70 61 67 69 6e 61 3d 31 26 72 78 70 3d 32 30 20 2f 46 } //1 REG ADD "HKCU\Software\Microsoft\Internet Explorer\SearchScopes\{A34587234-AWER-3256-5TY6-12EDERGTY568}" /V "URL" /T REG_SZ /D http://www.mbuscas.com/search.php?q={searchTerms}&pagina=1&rxp=20 /F
		$a_01_1 = {55 6e 68 6f 6f 6b 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 } //1 UnhookWindowsHookEx
		$a_01_2 = {47 65 74 43 6c 69 70 62 6f 61 72 64 44 61 74 61 } //1 GetClipboardData
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}