
rule Trojan_O97M_Shepycod_A{
	meta:
		description = "Trojan:O97M/Shepycod.A,SIGNATURE_TYPE_MACROHSTR_EXT,5a 00 5a 00 09 00 00 "
		
	strings :
		$a_01_0 = {50 72 69 76 61 74 65 20 53 75 62 20 57 6f 72 6b 62 6f 6f 6b 5f 4f 70 65 6e 28 29 } //10 Private Sub Workbook_Open()
		$a_01_1 = {44 69 6d 20 77 73 20 41 73 20 57 6f 72 6b 73 68 65 65 74 } //10 Dim ws As Worksheet
		$a_01_2 = {44 69 6d 20 6f 6f 20 41 73 20 4f 4c 45 4f 62 6a 65 63 74 } //10 Dim oo As OLEObject
		$a_01_3 = {53 65 74 20 77 73 20 3d 20 53 68 65 65 74 73 28 22 53 68 65 65 74 33 22 29 } //10 Set ws = Sheets("Sheet3")
		$a_01_4 = {53 65 74 20 6f 6f 20 3d 20 77 73 2e 4f 4c 45 4f 62 6a 65 63 74 73 28 22 4f 62 6a 65 63 74 20 31 22 29 } //10 Set oo = ws.OLEObjects("Object 1")
		$a_01_5 = {53 65 74 20 6d 79 57 53 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 } //10 Set myWS = CreateObject("WScript.Shell")
		$a_01_6 = {6d 79 57 53 2e 52 65 67 57 72 69 74 65 20 22 48 4b 43 55 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 49 6e 74 65 72 6e 65 74 20 53 65 74 74 69 6e 67 73 5c 5a 6f 6e 65 73 5c 33 5c 31 38 30 36 22 2c 20 22 30 22 2c 20 22 52 45 47 5f 44 57 4f 52 44 22 } //10 myWS.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1806", "0", "REG_DWORD"
		$a_01_7 = {6f 6f 2e 56 65 72 62 20 78 6c 56 65 72 62 50 72 69 6d 61 72 79 } //10 oo.Verb xlVerbPrimary
		$a_01_8 = {6d 79 57 53 2e 52 65 67 57 72 69 74 65 20 22 48 4b 43 55 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 49 6e 74 65 72 6e 65 74 20 53 65 74 74 69 6e 67 73 5c 5a 6f 6e 65 73 5c 33 5c 31 38 30 36 22 2c 20 22 31 22 2c 20 22 52 45 47 5f 44 57 4f 52 44 22 } //10 myWS.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1806", "1", "REG_DWORD"
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_01_5  & 1)*10+(#a_01_6  & 1)*10+(#a_01_7  & 1)*10+(#a_01_8  & 1)*10) >=90
 
}