
rule TrojanDownloader_O97M_PowDow_YA_MTB{
	meta:
		description = "TrojanDownloader:O97M/PowDow.YA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {41 43 41 41 61 51 42 6c 41 48 67 41 4b 41 41 6b } //1 ACAAaQBlAHgAKAAk
		$a_01_1 = {52 41 42 76 41 48 63 41 62 67 42 73 41 47 38 41 59 51 42 6b 41 46 4d 41 64 41 42 79 41 47 6b 41 62 67 42 6e 41 43 67 41 } //1 RABvAHcAbgBsAG8AYQBkAFMAdAByAGkAbgBnACgA
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
rule TrojanDownloader_O97M_PowDow_YA_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/PowDow.YA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {6f 75 74 70 75 74 20 25 55 53 45 52 50 52 4f 46 49 4c 45 25 5c 44 65 73 6b 74 6f 70 5c 49 6e 73 74 61 6c 6c 2e 74 78 74 } //1 output %USERPROFILE%\Desktop\Install.txt
		$a_00_1 = {63 6d 64 20 2f 63 20 22 22 63 65 72 74 75 74 69 6c 2e 65 78 65 20 2d 64 65 63 23 23 6f 64 65 20 25 55 53 45 52 50 52 4f 46 49 4c 45 25 5c 44 3f 3f 3f 3f 65 73 6b 74 6f 70 5c 49 6e 3f 3f 3f 3f 3f 73 74 61 6c 6c 2e 74 78 74 } //1 cmd /c ""certutil.exe -dec##ode %USERPROFILE%\D????esktop\In?????stall.txt
		$a_00_2 = {49 5e 6e 5e 73 5e 74 5e 61 5e 6c 5e 6c 2e 74 78 74 26 26 63 61 6c 6c 20 25 76 61 72 31 25 25 76 61 72 32 25 25 76 61 72 33 } //1 I^n^s^t^a^l^l.txt&&call %var1%%var2%%var3
		$a_00_3 = {70 6f 77 65 72 73 68 65 6c 6c 2e 65 78 65 20 49 45 58 20 24 65 6e 76 3a 55 53 45 52 50 52 4f 46 49 4c 45 5c 44 65 73 6b 74 6f 70 5c 49 6e 73 74 61 6c 6c 2e 65 78 65 } //1 powershell.exe IEX $env:USERPROFILE\Desktop\Install.exe
		$a_00_4 = {53 68 65 6c 6c 20 28 71 77 65 72 74 29 } //1 Shell (qwert)
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}
rule TrojanDownloader_O97M_PowDow_YA_MTB_3{
	meta:
		description = "TrojanDownloader:O97M/PowDow.YA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 06 00 00 "
		
	strings :
		$a_00_0 = {73 74 72 54 65 6d 70 20 3d 20 43 68 72 28 56 61 6c 28 22 26 48 22 20 2b 20 4d 69 64 28 73 74 72 46 69 6c 65 2c 20 69 2c 20 32 29 29 29 } //1 strTemp = Chr(Val("&H" + Mid(strFile, i, 2)))
		$a_00_1 = {43 75 72 46 6f 6c 64 65 72 20 3d 20 22 43 3a 5c 44 61 74 61 62 61 73 65 } //1 CurFolder = "C:\Database
		$a_00_2 = {53 65 74 20 70 72 6f 63 65 73 73 20 3d 20 47 65 74 4f 62 6a 65 63 74 28 43 68 72 57 28 31 31 39 29 20 26 20 43 68 72 57 28 31 30 35 29 20 26 20 43 68 72 57 28 31 31 30 29 20 26 20 43 68 72 57 28 31 30 39 29 } //1 Set process = GetObject(ChrW(119) & ChrW(105) & ChrW(110) & ChrW(109)
		$a_00_3 = {70 72 6f 63 65 73 73 2e 63 72 65 61 74 65 20 22 52 75 6e 64 6c 6c 33 32 20 22 20 26 20 50 61 72 61 6d 65 6e 74 72 73 20 26 20 22 2c 45 6e 61 62 6c 65 41 74 74 72 22 } //1 process.create "Rundll32 " & Paramentrs & ",EnableAttr"
		$a_00_4 = {64 20 3d 20 43 75 72 46 6f 6c 64 65 72 20 26 20 22 5c 22 20 26 20 22 50 75 74 74 79 54 65 6c 2e 65 78 65 22 } //1 d = CurFolder & "\" & "PuttyTel.exe"
		$a_00_5 = {73 74 72 54 65 6d 70 20 3d 20 43 68 72 28 56 61 6c 28 22 26 48 22 20 2b 20 4d 69 64 28 68 65 78 74 6f 73 74 72 2c 20 69 2c 20 32 29 29 29 } //1 strTemp = Chr(Val("&H" + Mid(hextostr, i, 2)))
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=4
 
}