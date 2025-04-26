
rule TrojanDownloader_O97M_TrickBot_SS_MTB{
	meta:
		description = "TrojanDownloader:O97M/TrickBot.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {50 72 69 76 61 74 65 20 44 65 63 6c 61 72 65 20 50 74 72 53 61 66 65 20 46 75 6e 63 74 69 6f 6e 20 53 48 43 72 65 61 74 65 44 69 72 65 63 74 6f 72 79 45 78 20 4c 69 62 20 22 73 68 65 6c 6c 33 32 2e 64 6c 6c 22 20 41 6c 69 61 73 20 22 53 48 43 72 65 61 74 65 44 69 72 65 63 74 6f 72 79 45 78 41 22 20 5f } //1 Private Declare PtrSafe Function SHCreateDirectoryEx Lib "shell32.dll" Alias "SHCreateDirectoryExA" _
		$a_01_1 = {6c 62 78 2e 41 64 64 49 74 65 6d 20 22 41 20 22 20 26 20 73 54 79 70 65 20 26 20 22 20 22 20 26 20 73 53 74 61 74 65 20 26 20 22 20 22 20 26 20 73 61 44 61 74 61 28 69 29 } //1 lbx.AddItem "A " & sType & " " & sState & " " & saData(i)
		$a_01_2 = {73 61 49 53 41 28 31 29 20 3d 20 22 53 75 63 6b 6c 65 73 20 74 68 65 69 72 20 59 6f 75 6e 67 22 } //1 saISA(1) = "Suckles their Young"
		$a_01_3 = {49 66 20 4c 65 6e 28 44 69 72 28 22 43 3a 5c 50 72 69 6e 74 65 72 5c 41 63 74 69 76 65 52 65 70 6f 72 74 73 5c 22 2c 20 76 62 44 69 72 65 63 74 6f 72 79 29 29 20 3d 20 30 20 54 68 65 6e } //1 If Len(Dir("C:\Printer\ActiveReports\", vbDirectory)) = 0 Then
		$a_01_4 = {53 48 43 72 65 61 74 65 44 69 72 65 63 74 6f 72 79 45 78 20 30 2c 20 22 43 3a 5c 50 72 69 6e 74 65 72 5c 41 63 74 69 76 65 52 65 70 6f 72 74 73 5c 22 2c 20 42 79 56 61 6c 20 30 26 } //1 SHCreateDirectoryEx 0, "C:\Printer\ActiveReports\", ByVal 0&
		$a_01_5 = {54 65 73 74 43 65 6e 74 65 72 73 61 6e 64 44 61 74 65 73 2e 63 6d 64 44 6f 67 } //1 TestCentersandDates.cmdDog
		$a_01_6 = {44 69 6d 20 70 74 72 4d 61 6d 6d 61 6c 20 41 73 20 4e 65 77 20 63 4d 61 6d 6d 61 6c } //1 Dim ptrMammal As New cMammal
		$a_01_7 = {43 61 6c 6c 20 49 6e 73 65 72 74 44 61 74 61 28 73 54 79 70 65 2c 20 73 61 48 61 73 41 28 29 2c 20 22 20 68 61 73 20 61 20 22 29 } //1 Call InsertData(sType, saHasA(), " has a ")
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}