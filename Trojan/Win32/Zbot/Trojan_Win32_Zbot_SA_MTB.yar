
rule Trojan_Win32_Zbot_SA_MTB{
	meta:
		description = "Trojan:Win32/Zbot.SA!MTB,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {61 48 52 30 63 44 6f 76 4c 33 4e 79 64 6a 63 77 4c 6e 42 31 64 47 52 79 61 58 5a 6c 4c 6d 4e 76 62 53 39 77 64 58 52 7a 64 47 39 79 59 57 64 6c 4c 30 52 76 64 32 35 73 62 32 46 6b 52 6d 6c 73 5a 55 68 68 63 } //1 aHR0cDovL3NydjcwLnB1dGRyaXZlLmNvbS9wdXRzdG9yYWdlL0Rvd25sb2FkRmlsZUhhc
		$a_01_1 = {53 45 4c 45 43 54 20 6f 72 69 67 69 6e 5f 75 72 6c 2c 20 75 73 65 72 6e 61 6d 65 5f 76 61 6c 75 65 2c 20 70 61 73 73 77 6f 72 64 5f 76 61 6c 75 65 20 46 52 4f 4d 20 6c 6f 67 69 6e 73 } //1 SELECT origin_url, username_value, password_value FROM logins
		$a_01_2 = {41 00 6d 00 69 00 73 00 68 00 65 00 6c 00 6c 00 74 00 70 00 64 00 6e 00 72 00 63 00 65 00 6b 00 6f 00 62 00 43 00 64 00 47 00 69 00 70 00 4f 00 72 00 54 00 79 00 55 00 69 00 } //1 AmishelltpdnrcekobCdGipOrTyUi
		$a_01_3 = {25 00 63 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 25 00 6c 00 73 00 5c 00 } //1 %c:\Program Files\%ls\
		$a_01_4 = {4d 00 6f 00 6f 00 6e 00 63 00 68 00 69 00 6c 00 64 00 20 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 69 00 6f 00 6e 00 73 00 } //1 Moonchild Productions
		$a_01_5 = {25 00 63 00 3a 00 5c 00 2e 00 52 00 45 00 43 00 59 00 43 00 4c 00 45 00 52 00 5c 00 25 00 6c 00 73 00 2e 00 65 00 78 00 65 00 } //1 %c:\.RECYCLER\%ls.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}