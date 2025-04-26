
rule Ransom_Win32_Genasom_AS{
	meta:
		description = "Ransom:Win32/Genasom.AS,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_00_0 = {61 74 74 72 69 62 20 2b 48 20 22 43 3a 5c 44 6f 63 75 6d 65 6e 74 73 20 61 6e 64 20 53 65 74 74 69 6e 67 73 5c 41 6c 6c 20 55 73 65 72 73 5c } //1 attrib +H "C:\Documents and Settings\All Users\
		$a_00_1 = {72 65 67 20 61 64 64 20 22 48 4b 45 59 5f 43 55 52 52 45 4e 54 5f 55 53 45 52 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 72 75 6e 22 20 2f 76 20 53 68 65 6c 6c 20 2f 74 20 52 45 47 5f 53 5a 20 2f 64 } //1 reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\run" /v Shell /t REG_SZ /d
		$a_00_2 = {6d 6f 76 65 72 2e 62 61 74 } //1 mover.bat
		$a_00_3 = {63 6f 6e 66 69 67 2e 62 61 74 } //1 config.bat
		$a_00_4 = {68 69 64 65 2e 62 61 74 } //1 hide.bat
		$a_00_5 = {6d 6f 76 69 6e 67 2e 62 61 74 } //1 moving.bat
		$a_00_6 = {70 72 65 66 65 74 63 68 69 6e 67 2e 74 78 74 } //2 prefetching.txt
		$a_00_7 = {64 65 6c 6f 63 6b 2e 74 78 74 } //2 delock.txt
		$a_00_8 = {70 6f 72 6e 68 75 62 2e 63 6f 6d } //2 pornhub.com
		$a_01_9 = {ff da 00 0c 03 01 00 02 11 03 11 00 3f 00 fb 9b f6 35 fd 8d be 0d eb df b1 b7 c1 dd 47 51 f8 3b f0 97 52 d4 75 2f 01 e8 17 97 97 97 9e 0c d3 2e } //3
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*2+(#a_00_7  & 1)*2+(#a_00_8  & 1)*2+(#a_01_9  & 1)*3) >=10
 
}