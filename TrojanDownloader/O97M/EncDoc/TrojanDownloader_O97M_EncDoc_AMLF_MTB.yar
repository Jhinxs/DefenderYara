
rule TrojanDownloader_O97M_EncDoc_AMLF_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.AMLF!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_01_0 = {73 75 62 61 75 74 6f 63 6c 6f 73 65 73 6f 63 69 61 6c 62 6f 74 74 6c 65 6f 6e 65 67 75 79 74 61 67 64 65 62 75 67 70 72 69 6e 74 63 61 6c 6c 76 62 61 73 68 65 6c 6c 73 6f 63 69 61 6c 76 62 6e 6f 72 6d 61 6c 66 6f 63 75 73 65 6e 64 73 75 62 } //1 subautoclosesocialbottleoneguytagdebugprintcallvbashellsocialvbnormalfocusendsub
		$a_01_1 = {73 75 62 61 75 74 6f 63 6c 6f 73 65 79 6f 75 74 75 62 65 68 61 6b 61 6c 6f 6c 63 6f 6e 74 72 6f 6c 74 69 70 74 65 78 74 64 65 62 75 67 70 72 69 6e 74 63 61 6c 6c 76 62 61 73 68 65 6c 6c 79 6f 75 74 75 62 65 76 62 6e 6f 72 6d 61 6c 66 6f 63 75 73 65 6e 64 73 75 62 } //1 subautocloseyoutubehakalolcontroltiptextdebugprintcallvbashellyoutubevbnormalfocusendsub
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=1
 
}
rule TrojanDownloader_O97M_EncDoc_AMLF_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.AMLF!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {25 62 79 26 5e 25 61 73 73 2d 63 28 22 2b 22 69 22 2b 22 27 22 2b 22 77 22 2b 22 27 22 2b 22 72 22 2b 22 28 27 68 74 74 70 73 3a 2f 2f 62 69 74 62 75 63 6b 65 74 2e 6f 72 67 2f 21 61 70 69 2f 32 2e 30 2f 73 6e 69 70 70 65 74 73 2f 6e 65 77 77 6f 72 6b 31 32 33 73 6f 63 69 61 6c 2f [0-0a] 2f [0-30] 2f 66 69 6c 65 73 2f [0-0f] 2e 74 78 74 27 29 } //1
		$a_01_1 = {76 62 61 2e 72 65 70 6c 61 63 65 28 74 6e 74 78 77 71 2c 22 3c 22 2c 22 6e 22 29 65 6e 64 66 75 6e 63 74 69 6f 6e 73 75 62 61 75 74 6f 5f 6f 70 65 6e 28 29 6d 73 67 62 6f 78 22 65 72 72 6f 72 21 22 63 61 6c 6c 73 68 65 6c 6c 40 28 74 6e 74 78 77 71 2c 30 29 65 6e 64 73 75 62 } //1 vba.replace(tntxwq,"<","n")endfunctionsubauto_open()msgbox"error!"callshell@(tntxwq,0)endsub
		$a_01_2 = {74 6e 74 78 77 71 3d 76 62 61 2e 72 65 70 6c 61 63 65 28 74 6e 74 78 77 71 2c 22 26 5e 25 22 2c 22 70 22 29 74 6e 74 78 77 71 3d 76 62 61 2e 72 65 70 6c 61 63 65 28 74 6e 74 78 77 71 2c 22 24 72 67 65 79 74 25 22 2c 22 6f 22 29 } //1 tntxwq=vba.replace(tntxwq,"&^%","p")tntxwq=vba.replace(tntxwq,"$rgeyt%","o")
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule TrojanDownloader_O97M_EncDoc_AMLF_MTB_3{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.AMLF!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {5a 20 3d 20 54 65 78 74 66 69 6c 65 70 61 72 74 2e 6d 6f 73 75 66 31 2e } //1 Z = Textfilepart.mosuf1.
		$a_01_1 = {44 20 3d 20 54 65 78 74 66 69 6c 65 70 61 72 74 2e 4d 75 6c 74 69 50 61 67 65 31 2e 54 61 67 } //1 D = Textfilepart.MultiPage1.Tag
		$a_01_2 = {46 75 6e 63 74 69 6f 6e 20 58 58 58 28 29 20 41 73 20 53 74 72 69 6e 67 } //1 Function XXX() As String
		$a_01_3 = {3d 20 54 65 78 74 66 69 6c 65 70 61 72 74 2e 73 74 75 66 66 2e 54 61 67 } //1 = Textfilepart.stuff.Tag
		$a_01_4 = {50 72 69 76 61 74 65 20 53 75 62 20 57 6f 72 6b 62 6f 6f 6b 5f 42 65 66 6f 72 65 43 6c 6f 73 65 28 43 61 6e 63 65 6c 20 41 73 20 42 6f 6f 6c 65 61 6e 29 } //1 Private Sub Workbook_BeforeClose(Cancel As Boolean)
		$a_01_5 = {53 68 6f 72 20 3d 20 6d 6f 6e 65 79 63 6f 75 6e 74 2e 55 58 20 2b 20 6d 6f 6e 65 79 63 6f 75 6e 74 2e 54 52 20 2b 20 6d 6f 6e 73 74 65 72 63 6f 6d 69 6e 67 2e 5a 20 2b 20 6b 6f 6e 2e 44 20 2b 20 6c 75 6e 2e 6f 70 65 6e 6d 61 72 6b 65 74 31 32 34 35 20 2b 20 6c 75 6e 2e 58 58 58 20 2b 20 73 68 6f 77 6f 66 66 2e 4b 6f 6e 73 61 20 2b 20 73 68 6f 77 6f 66 66 2e 54 } //1 Shor = moneycount.UX + moneycount.TR + monstercoming.Z + kon.D + lun.openmarket1245 + lun.XXX + showoff.Konsa + showoff.T
		$a_01_6 = {4d 73 67 42 6f 78 20 22 4f 66 66 69 63 65 20 45 72 72 6f 72 21 21 21 22 3a } //1 MsgBox "Office Error!!!":
		$a_01_7 = {43 61 6c 6c 20 53 68 65 6c 6c 28 53 68 6f 72 29 } //1 Call Shell(Shor)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}
rule TrojanDownloader_O97M_EncDoc_AMLF_MTB_4{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.AMLF!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_01_0 = {5a 20 3d 20 54 65 78 74 66 69 6c 65 70 61 72 74 2e 6d 6f 73 75 66 31 2e 43 6f 6e 74 72 6f 6c 54 69 70 54 65 78 74 } //1 Z = Textfilepart.mosuf1.ControlTipText
		$a_01_1 = {44 20 3d 20 54 65 78 74 66 69 6c 65 70 61 72 74 2e 4d 75 6c 74 69 50 61 67 65 31 2e 54 61 67 } //1 D = Textfilepart.MultiPage1.Tag
		$a_01_2 = {46 75 6e 63 74 69 6f 6e 20 58 58 58 28 29 20 41 73 20 53 74 72 69 6e 67 } //1 Function XXX() As String
		$a_01_3 = {4b 6f 6e 73 61 20 3d 20 54 65 78 74 66 69 6c 65 70 61 72 74 2e 73 74 75 66 66 2e 54 61 67 } //1 Konsa = Textfilepart.stuff.Tag
		$a_01_4 = {44 69 6d 20 4f 70 65 72 61 20 41 73 20 4e 65 77 20 6e 61 6a 6d 61 } //1 Dim Opera As New najma
		$a_01_5 = {44 69 6d 20 74 65 78 74 66 69 6c 65 66 6f 72 79 6f 75 20 41 73 20 4e 65 77 20 6d 6f 64 65 72 6e } //1 Dim textfileforyou As New modern
		$a_01_6 = {6f 70 65 6e 77 6f 72 6c 64 66 6f 72 79 6f 75 20 3d 20 4f 70 65 72 61 2e 58 20 2b 20 4f 70 65 72 61 2e 59 20 2b 20 74 65 78 74 66 69 6c 65 66 6f 72 79 6f 75 2e 5a 20 2b 20 74 65 78 74 66 69 6c 65 66 6f 72 79 6f 75 2e 44 20 2b 20 68 69 2e 6f 70 65 6e 6d 61 72 6b 65 74 31 32 34 35 20 2b 20 68 69 2e 58 58 58 20 2b 20 68 69 2e 4b 6f 6e 73 61 20 2b 20 68 69 2e 54 } //1 openworldforyou = Opera.X + Opera.Y + textfileforyou.Z + textfileforyou.D + hi.openmarket1245 + hi.XXX + hi.Konsa + hi.T
		$a_01_7 = {4d 73 67 42 6f 78 20 22 45 72 72 6f 72 21 21 21 22 3a 20 5f } //1 MsgBox "Error!!!": _
		$a_01_8 = {43 61 6c 6c 20 53 68 65 6c 6c 21 28 6f 70 65 6e 77 6f 72 6c 64 66 6f 72 79 6f 75 29 } //1 Call Shell!(openworldforyou)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=9
 
}