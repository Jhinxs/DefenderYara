
rule Trojan_Win32_Startpage_HN{
	meta:
		description = "Trojan:Win32/Startpage.HN,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {53 74 61 72 74 20 50 61 67 65 00 00 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 4d 61 69 6e } //1
		$a_01_1 = {41 63 63 65 70 74 2d 4c 61 6e 67 75 61 67 65 3a 7a 68 2d 63 6e } //1 Accept-Language:zh-cn
		$a_01_2 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 50 6f 6c 69 63 69 65 73 5c 45 78 70 6c 6f 72 65 72 } //1 Software\Microsoft\Windows\CurrentVersion\Policies\Explorer
		$a_01_3 = {52 65 73 74 72 69 63 74 52 75 6e } //1 RestrictRun
		$a_01_4 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 73 65 72 76 69 63 65 33 2e 69 6e 69 } //1 C:\WINDOWS\system32\drivers\etc\service3.ini
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}