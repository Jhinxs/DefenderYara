
rule TrojanDownloader_O97M_Adnel{
	meta:
		description = "TrojanDownloader:O97M/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {28 38 33 29 [0-0c] 28 31 30 34 29 [0-0c] 28 31 30 31 29 [0-0c] 28 31 30 38 29 [0-0c] 28 31 30 38 29 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
rule TrojanDownloader_O97M_Adnel_2{
	meta:
		description = "TrojanDownloader:O97M/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {63 57 6f 6c 49 64 44 75 } //1 cWolIdDu
		$a_01_1 = {c6 c4 d3 8c 78 af } //1
		$a_01_2 = {53 68 65 6c 6c 20 } //1 Shell 
		$a_01_3 = {2c 20 76 62 48 69 64 65 } //1 , vbHide
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule TrojanDownloader_O97M_Adnel_3{
	meta:
		description = "TrojanDownloader:O97M/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {53 63 72 69 20 20 25 54 45 20 4d 50 25 20 5c 5c 22 2e 73 70 6c 69 74 28 22 20 22 29 3b } //1 Scri  %TE MP% \\".split(" ");
		$a_01_1 = {20 2e 65 20 78 65 20 47 20 45 54 22 29 2e 73 70 6c 69 74 28 22 20 22 29 } //1  .e xe G ET").split(" ")
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
rule TrojanDownloader_O97M_Adnel_4{
	meta:
		description = "TrojanDownloader:O97M/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_02_0 = {3d 20 34 20 2b 20 [0-10] 20 2b 20 36 0d 0a 45 78 69 74 20 53 75 62 } //1
		$a_02_1 = {2d 20 39 37 20 2b 20 [0-15] 20 32 36 29 20 2b 20 39 37 29 0d 0a 45 6c 73 65 } //1
		$a_02_2 = {41 70 70 6c 69 63 61 74 69 6f 6e 2e 52 75 6e 90 0a 4f 00 2f 2f 3a } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1) >=3
 
}
rule TrojanDownloader_O97M_Adnel_5{
	meta:
		description = "TrojanDownloader:O97M/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_01_0 = {4a 70 49 76 64 6d 50 74 46 77 72 4b 4f 69 20 3d 20 75 65 5a 72 58 6e 48 44 28 22 70 69 70 2e 70 6e 74 71 71 7a 2f 64 70 72 6c 78 74 2f 64 70 6f 66 77 6e 79 74 2d 61 68 2f 78 7a 6e 2e 32 31 74 64 63 6c 6e 2e 68 68 68 2f 2f 3a 61 65 65 73 22 2c 20 31 35 29 } //5 JpIvdmPtFwrKOi = ueZrXnHD("pip.pntqqz/dprlxt/dpofwnyt-ah/xzn.21tdcln.hhh//:aees", 15)
	condition:
		((#a_01_0  & 1)*5) >=5
 
}
rule TrojanDownloader_O97M_Adnel_6{
	meta:
		description = "TrojanDownloader:O97M/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {53 75 62 20 52 54 59 67 75 68 69 68 64 66 66 59 54 55 64 73 66 28 29 ?? ?? 52 44 46 43 47 56 48 6a 64 61 64 20 3d 20 57 45 44 52 54 59 67 75 66 2e 67 66 64 63 77 65 66 77 65 72 66 66 66 ?? ?? 53 68 65 6c 6c 20 52 44 46 43 47 56 48 6a 64 61 64 2c 20 76 62 48 69 64 65 ?? ?? 45 6e 64 20 53 75 62 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule TrojanDownloader_O97M_Adnel_7{
	meta:
		description = "TrojanDownloader:O97M/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {3d 20 53 70 6c 69 74 28 22 90 10 04 00 90 12 04 00 90 10 04 00 90 12 04 00 90 10 04 00 [0-f0] 22 2c 20 5f 90 0c 04 00 22 90 1b 01 22 29 } //1
		$a_03_1 = {2e 4f 70 65 6e 0d 0a 47 65 74 46 49 46 4f 43 6f 73 74 20 22 22 2c 20 22 22 2c 20 22 22 2c 20 4e 6f 77 28 29 2c 20 22 22 2c 20 90 05 04 04 30 2d 39 2e 2c 20 22 22 2c 20 22 22 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}
rule TrojanDownloader_O97M_Adnel_8{
	meta:
		description = "TrojanDownloader:O97M/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,14 00 14 00 04 00 00 "
		
	strings :
		$a_01_0 = {53 75 62 20 54 79 72 79 6b 61 28 55 68 72 62 20 41 73 20 4c 6f 6e 67 29 } //5 Sub Tyryka(Uhrb As Long)
		$a_01_1 = {44 69 6d 20 48 62 68 65 20 41 73 20 4c 6f 6e 67 2c 20 45 68 64 68 20 41 73 20 4c 6f 6e 67 } //5 Dim Hbhe As Long, Ehdh As Long
		$a_01_2 = {64 68 64 77 20 3d 20 36 34 20 2a 20 33 20 2a 20 34 20 2a 20 31 20 2a 20 31 20 2a 20 33 20 2a 20 31 } //5 dhdw = 64 * 3 * 4 * 1 * 1 * 3 * 1
		$a_01_3 = {66 66 77 20 3d 20 53 68 65 6c 6c 28 72 72 65 2c 20 30 29 } //5 ffw = Shell(rre, 0)
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*5+(#a_01_3  & 1)*5) >=20
 
}
rule TrojanDownloader_O97M_Adnel_9{
	meta:
		description = "TrojanDownloader:O97M/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,0a 00 0a 00 02 00 00 "
		
	strings :
		$a_01_0 = {64 54 59 46 69 64 73 66 66 20 3d 20 45 6e 76 69 72 6f 6e 28 22 54 45 4d 50 22 29 20 26 20 68 73 64 69 75 66 67 68 62 6a 6b 62 48 4a 46 55 48 6b 6a 62 73 64 68 62 66 64 73 6b 66 2e 54 65 78 74 42 6f 78 32 } //5 dTYFidsff = Environ("TEMP") & hsdiufghbjkbHJFUHkjbsdhbfdskf.TextBox2
		$a_01_1 = {70 6a 49 4f 48 64 73 66 63 20 3d 20 68 73 64 69 75 66 67 68 62 6a 6b 62 48 4a 46 55 48 6b 6a 62 73 64 68 62 66 64 73 6b 66 2e 54 65 78 74 42 6f 78 31 } //5 pjIOHdsfc = hsdiufghbjkbHJFUHkjbsdhbfdskf.TextBox1
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5) >=10
 
}
rule TrojanDownloader_O97M_Adnel_10{
	meta:
		description = "TrojanDownloader:O97M/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {53 68 65 6c 6c 20 [0-15] 2c 20 30 0d 0a 45 6e 64 20 53 75 62 } //1
		$a_03_1 = {46 6f 72 20 ?? ?? ?? ?? ?? [0-10] 20 3d 20 [0-15] 28 [0-15] 29 20 54 6f 20 90 1b 02 28 [0-15] 29 0d 0a [0-15] 28 90 05 03 03 30 2d 39 29 20 3d 20 [0-15] 28 90 1b 00 [0-10] 2c 20 31 29 0d 0a 90 1b 06 28 90 05 03 03 30 2d 39 29 20 3d 20 [0-15] 28 90 1b 00 [0-10] 2c 20 32 29 } //1
		$a_01_2 = {53 75 62 20 44 6f 63 75 6d 65 6e 74 5f 4f 70 65 6e 28 29 } //1 Sub Document_Open()
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule TrojanDownloader_O97M_Adnel_11{
	meta:
		description = "TrojanDownloader:O97M/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {29 20 3d 20 22 4c 41 45 71 7a 47 47 7a 31 35 38 4a 44 47 79 42 68 44 47 48 4e 54 6a 58 30 74 77 4b 22 20 54 68 65 6e 20 45 78 69 74 20 46 6f 72 } //1 ) = "LAEqzGGz158JDGyBhDGHNTjX0twK" Then Exit For
		$a_01_1 = {29 20 3d 20 22 4d 44 76 43 5a 58 4c 34 6f 71 71 79 6d 6b 48 66 39 66 68 62 32 71 42 65 50 79 6b 42 22 20 54 68 65 6e 20 45 78 69 74 20 46 6f 72 } //1 ) = "MDvCZXL4oqqymkHf9fhb2qBePykB" Then Exit For
		$a_01_2 = {29 20 3d 20 22 42 53 55 68 5a 37 79 68 5a 47 50 6a 45 58 65 4c 6b 43 71 36 35 61 52 4d 4a 45 63 22 20 54 68 65 6e 20 45 78 69 74 20 46 6f 72 } //1 ) = "BSUhZ7yhZGPjEXeLkCq65aRMJEc" Then Exit For
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule TrojanDownloader_O97M_Adnel_12{
	meta:
		description = "TrojanDownloader:O97M/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {41 74 74 72 69 62 75 74 65 20 56 42 5f 4e 61 6d 65 20 3d 20 22 4d 6f 64 75 6c 65 31 22 } //1 Attribute VB_Name = "Module1"
		$a_01_1 = {50 72 69 76 61 74 65 20 43 6f 6e 73 74 20 79 59 31 55 4c 20 3d 20 } //1 Private Const yY1UL = 
		$a_01_2 = {50 72 69 76 61 74 65 20 43 6f 6e 73 74 20 44 44 75 4b 51 20 3d 20 } //1 Private Const DDuKQ = 
		$a_01_3 = {53 75 62 20 74 79 72 74 79 61 61 67 28 29 } //1 Sub tyrtyaag()
		$a_01_4 = {6f 50 4f 4a 69 64 73 66 20 3d 20 6c 71 6a 57 6a 46 4f 28 44 44 75 4b 51 2c 20 79 59 31 55 4c 29 } //1 oPOJidsf = lqjWjFO(DDuKQ, yY1UL)
		$a_01_5 = {53 68 65 6c 6c 20 6f 50 4f 4a 69 64 73 66 2c 20 76 62 48 69 64 65 } //1 Shell oPOJidsf, vbHide
		$a_01_6 = {45 6e 64 20 53 75 62 } //1 End Sub
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}
rule TrojanDownloader_O97M_Adnel_13{
	meta:
		description = "TrojanDownloader:O97M/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,0e 00 0e 00 0e 00 00 "
		
	strings :
		$a_01_0 = {28 30 29 20 3d 20 34 31 } //1 (0) = 41
		$a_01_1 = {28 31 29 20 3d 20 36 33 } //1 (1) = 63
		$a_01_2 = {28 32 29 20 3d 20 37 33 } //1 (2) = 73
		$a_01_3 = {28 33 29 20 3d 20 31 37 38 } //1 (3) = 178
		$a_01_4 = {28 34 29 20 3d 20 36 30 } //1 (4) = 60
		$a_01_5 = {28 35 29 20 3d 20 32 32 32 } //1 (5) = 222
		$a_01_6 = {28 36 29 20 3d 20 31 30 31 } //1 (6) = 101
		$a_01_7 = {28 37 29 20 3d 20 32 33 } //1 (7) = 23
		$a_01_8 = {28 38 29 20 3d 20 32 35 33 } //1 (8) = 253
		$a_01_9 = {28 39 29 20 3d 20 31 39 35 } //1 (9) = 195
		$a_01_10 = {28 31 30 29 20 3d 20 31 30 35 } //1 (10) = 105
		$a_01_11 = {28 31 31 29 20 3d 20 32 34 32 } //1 (11) = 242
		$a_01_12 = {28 31 32 29 20 3d 20 36 } //1 (12) = 6
		$a_01_13 = {29 29 2e 52 75 6e 20 } //1 )).Run 
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1) >=14
 
}
rule TrojanDownloader_O97M_Adnel_14{
	meta:
		description = "TrojanDownloader:O97M/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,0f 00 0f 00 03 00 00 "
		
	strings :
		$a_01_0 = {4d 4f 4e 45 20 3d 20 4b 4b 47 47 20 2b 20 22 65 22 20 26 20 43 68 72 28 39 30 20 2b 20 68 61 61 20 2b 20 33 30 20 2b 20 31 29 20 26 20 22 65 22 } //5 MONE = KKGG + "e" & Chr(90 + haa + 30 + 1) & "e"
		$a_01_1 = {4a 4e 42 42 48 20 3d 20 4b 4b 47 47 20 2b 20 22 22 20 26 20 22 72 22 20 26 20 43 68 72 28 68 61 61 20 2b 20 31 37 20 2b 20 34 30 20 2b 20 36 30 29 20 26 20 22 66 22 } //5 JNBBH = KKGG + "" & "r" & Chr(haa + 17 + 40 + 60) & "f"
		$a_01_2 = {73 73 42 6e 62 73 61 6e 64 48 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 43 68 72 28 37 20 2b 20 38 30 29 20 2b 20 22 6f 72 22 20 2b 20 22 64 2e 41 70 70 6c 69 63 61 74 69 6f 6e 22 29 } //5 ssBnbsandH = CreateObject(Chr(7 + 80) + "or" + "d.Application")
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*5) >=15
 
}
rule TrojanDownloader_O97M_Adnel_15{
	meta:
		description = "TrojanDownloader:O97M/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {52 65 62 6f 6f 74 53 79 73 74 65 6d 31 20 3d 20 52 65 62 6f 6f 74 53 79 73 74 65 6d 31 20 26 20 43 68 72 28 42 79 56 61 6c 76 44 65 66 61 75 6c 74 28 69 29 20 2d 20 35 20 2a 20 4e 6f 74 68 69 6e 67 4f 72 4e 6f 64 65 4e 61 6d 65 20 2d 20 35 20 2d 20 35 35 35 20 2d 20 35 35 35 35 20 2d 20 35 35 35 29 } //1 RebootSystem1 = RebootSystem1 & Chr(ByValvDefault(i) - 5 * NothingOrNodeName - 5 - 555 - 5555 - 555)
		$a_01_1 = {50 75 62 6c 69 63 20 46 75 6e 63 74 69 6f 6e 20 49 73 46 69 6c 65 41 44 58 52 65 64 69 73 74 28 42 79 56 61 6c 76 44 65 66 61 75 6c 74 28 29 20 41 73 20 56 61 72 69 61 6e 74 2c 20 4e 6f 74 68 69 6e 67 4f 72 4e 6f 64 65 4e 61 6d 65 20 41 73 20 49 6e 74 65 67 65 72 29 20 41 73 20 53 74 72 69 6e 67 } //1 Public Function IsFileADXRedist(ByValvDefault() As Variant, NothingOrNodeName As Integer) As String
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
rule TrojanDownloader_O97M_Adnel_16{
	meta:
		description = "TrojanDownloader:O97M/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {50 75 62 6c 69 63 20 46 75 6e 63 74 69 6f 6e 20 47 65 74 50 61 74 68 53 65 70 61 72 61 74 6f 72 28 29 20 41 73 20 53 74 72 69 6e 67 0d 0a 20 20 20 20 47 65 74 50 61 74 68 53 65 70 61 72 61 74 6f 72 20 3d 20 43 68 72 28 39 32 29 20 27 20 5c 0d 0a 20 20 20 20 20 53 65 74 20 4d 6f 64 75 6c 65 32 2e 68 61 79 73 74 61 63 6b 4a 6f 52 65 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 4d 69 63 72 6f 73 6f 66 74 2e 58 4d 4c 48 54 54 50 22 29 0d 0a 20 20 20 20 53 65 74 20 61 64 6f 64 62 53 74 72 65 61 6d 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 41 64 6f 64 62 2e 53 74 72 65 61 6d 22 29 0d 0a 45 6e 64 20 46 75 6e 63 74 69 6f 6e } //1
		$a_01_1 = {74 65 6d 70 46 69 6c 65 20 3d 20 74 65 6d 70 46 6f 6c 64 65 72 20 2b 20 22 5c 68 69 7a 62 33 32 61 2e 65 78 65 22 } //1 tempFile = tempFolder + "\hizb32a.exe"
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
rule TrojanDownloader_O97M_Adnel_17{
	meta:
		description = "TrojanDownloader:O97M/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {4c 50 54 31 20 3d 20 53 45 45 45 47 4d 41 54 49 43 4b 53 31 32 32 28 49 50 50 54 44 53 48 38 37 31 2c 20 49 50 50 54 44 53 48 39 39 39 2c 20 76 62 4e 75 6c 6c 53 74 72 69 6e 67 2c 20 76 62 4e 75 6c 6c 53 74 72 69 6e 67 2c 20 30 29 } //1 LPT1 = SEEEGMATICKS122(IPPTDSH871, IPPTDSH999, vbNullString, vbNullString, 0)
		$a_01_1 = {4c 50 54 32 20 3d 20 53 45 45 45 47 4d 41 54 49 43 4b 53 31 28 4c 50 54 31 2c 20 49 54 53 46 52 4f 4d 2c 20 76 62 4e 75 6c 6c 53 74 72 69 6e 67 2c 20 30 2c 20 63 43 43 63 2c 20 30 29 } //1 LPT2 = SEEEGMATICKS1(LPT1, ITSFROM, vbNullString, 0, cCCc, 0)
		$a_01_2 = {53 45 45 45 47 4d 41 54 49 43 4b 53 32 31 20 4c 50 54 32 2c 20 53 41 33 33 4c 4f 4f 4f 4f 4d 4d 41 34 34 32 2c 20 49 50 50 54 44 53 48 38 37 32 2c 20 43 44 53 46 44 46 44 } //1 SEEEGMATICKS21 LPT2, SA33LOOOOMMA442, IPPTDSH872, CDSFDFD
		$a_01_3 = {49 54 53 46 52 4f 4d 20 3d 20 4b 41 4c 4c 4b 4b 4b 41 53 4b 41 4a 4a 41 53 28 57 49 49 49 4e 33 34 44 49 53 32 2c 20 57 49 49 49 4e 33 34 44 49 53 34 29 } //1 ITSFROM = KALLKKKASKAJJAS(WIIIN34DIS2, WIIIN34DIS4)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule TrojanDownloader_O97M_Adnel_18{
	meta:
		description = "TrojanDownloader:O97M/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {72 49 75 79 59 4d 4a 44 56 53 71 4c 20 3d 20 43 68 72 24 28 56 61 6c 28 43 68 72 24 28 33 38 29 20 26 20 43 68 72 24 28 37 32 29 20 26 20 4d 69 64 24 28 4f 44 59 4e 45 53 64 4c 4c 79 6c 4c 69 76 2c 20 47 41 65 75 4d 68 41 75 6b 2c 20 32 29 29 29 } //1 rIuyYMJDVSqL = Chr$(Val(Chr$(38) & Chr$(72) & Mid$(ODYNESdLLylLiv, GAeuMhAuk, 2)))
		$a_01_1 = {50 75 62 6c 69 63 20 46 75 6e 63 74 69 6f 6e 20 47 68 6b 62 6b 6a 47 4a 66 67 28 42 79 56 61 6c 20 4f 44 59 4e 45 53 64 4c 4c 79 6c 4c 69 76 20 41 73 20 53 74 72 69 6e 67 29 20 41 73 20 53 74 72 69 6e 67 } //1 Public Function GhkbkjGJfg(ByVal ODYNESdLLylLiv As String) As String
		$a_01_2 = {71 6d 78 42 50 6c 6e 20 3d 20 71 6d 78 42 50 6c 6e 20 26 20 72 49 75 79 59 4d 4a 44 56 53 71 4c } //1 qmxBPln = qmxBPln & rIuyYMJDVSqL
		$a_01_3 = {47 68 6b 62 6b 6a 47 4a 66 67 20 3d 20 71 6d 78 42 50 6c 6e } //1 GhkbkjGJfg = qmxBPln
		$a_01_4 = {46 6f 72 20 47 41 65 75 4d 68 41 75 6b 20 3d 20 31 20 54 6f 20 4c 65 6e 28 4f 44 59 4e 45 53 64 4c 4c 79 6c 4c 69 76 29 20 53 74 65 70 20 32 } //1 For GAeuMhAuk = 1 To Len(ODYNESdLLylLiv) Step 2
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule TrojanDownloader_O97M_Adnel_19{
	meta:
		description = "TrojanDownloader:O97M/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {20 41 73 20 56 61 72 69 61 6e 74 2c 20 42 79 56 61 6c 20 [0-15] 20 41 73 20 53 74 72 69 6e 67 29 [0-02] 53 65 74 20 [0-15] 20 3d 20 [0-15] 28 22 [0-03] 7a [0-03] 6e [0-03] 72 [0-03] 65 [0-03] 67 [0-38] 2e 54 79 70 65 20 3d 20 31 [0-02] 43 61 6c 6c 42 79 4e 61 6d 65 20 [0-50] 22 29 2c 20 56 62 4d 65 74 68 6f 64 [0-02] 43 61 6c 6c 42 79 4e 61 6d 65 20 [0-50] 22 29 2c 20 56 62 4d 65 74 68 6f 64 2c 20 [0-20] 43 61 6c 6c 42 79 4e 61 6d 65 20 [0-50] 22 29 2c 20 56 62 4d 65 74 68 6f 64 2c 20 [0-20] 2c 20 32 [0-02] 45 6e 64 20 53 75 62 } //2
		$a_03_1 = {43 61 6c 6c 42 79 4e 61 6d 65 20 [0-30] 2c 20 56 62 4d 65 74 68 6f 64 [0-02] 43 61 6c 6c 42 79 4e 61 6d 65 20 [0-30] 2c 20 56 62 4d 65 74 68 6f 64 2c 20 [0-20] 43 61 6c 6c 42 79 4e 61 6d 65 20 [0-30] 2c 20 56 62 4d 65 74 68 6f 64 2c 20 [0-20] 2c 20 32 [0-02] 45 6e 64 20 53 75 62 } //1
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*1) >=2
 
}
rule TrojanDownloader_O97M_Adnel_20{
	meta:
		description = "TrojanDownloader:O97M/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 05 00 00 "
		
	strings :
		$a_03_0 = {28 29 20 41 73 20 56 61 72 69 61 6e 74 ?? ?? ?? ?? [0-0f] 3d 20 41 72 72 61 79 28 90 0f 05 00 2c 20 90 0f 05 00 2c 20 90 0f 05 00 2c 20 90 0f 05 00 } //1
		$a_03_1 = {61 72 72 61 79 5f 62 6f 6f 73 74 65 72 2e 4f 70 65 6e 20 73 74 72 4c 69 6e 6b 54 61 62 6c 65 4e 61 6d 65 20 2b 20 50 75 73 68 5f 54 2c 20 47 65 74 53 74 72 69 6e 67 46 72 6f 6d 41 72 72 61 79 28 75 72 6c 41 72 2c 20 90 0f 02 00 29 2c 20 46 61 6c 73 65 } //1
		$a_03_2 = {2e 4f 70 65 6e 20 55 43 61 73 65 28 [0-15] 29 2c 20 70 69 6c 65 76 6f 5f 90 10 02 00 28 70 69 6c 65 76 6f 5f 90 10 02 00 2c 20 90 10 02 00 29 2c 20 46 61 6c 73 65 } //1
		$a_03_3 = {2e 4f 70 65 6e 20 55 73 65 72 46 6f 72 6d 31 2e 4c 61 62 65 6c 90 10 02 00 2e 43 61 70 74 69 6f 6e 2c 20 6b 69 73 6b 61 5f 90 10 02 00 28 6b 69 73 6b 61 5f 90 10 02 00 2c 20 90 10 02 00 29 2c 20 46 61 6c 73 65 } //1
		$a_03_4 = {2e 4f 70 65 6e 20 53 61 6d 62 6f 46 2e 4c 61 62 65 6c 90 10 02 00 2e 43 61 70 74 69 6f 6e 2c 20 62 61 72 61 62 61 72 61 5f 90 10 02 00 2c 20 46 61 6c 73 65 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=2
 
}
rule TrojanDownloader_O97M_Adnel_21{
	meta:
		description = "TrojanDownloader:O97M/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_01_0 = {28 31 34 35 2c 20 31 35 36 2c 20 31 35 35 2c 20 31 35 30 2c 20 39 35 2c 20 38 33 2c 20 38 32 2c 20 38 34 2c 20 38 31 2c 20 38 34 2c 20 37 37 2c 20 37 39 2c 20 38 31 2c 20 37 36 2c 20 37 33 2c 20 37 35 2c 20 38 32 2c 20 37 30 2c 20 37 32 2c 20 37 32 2c 20 36 38 2c 20 37 31 2c 20 37 31 2c 20 31 32 30 2c 20 31 31 36 2c 20 36 37 2c 20 36 37 2c 20 31 33 30 2c 20 36 35 2c 20 36 35 2c 20 31 32 37 2c 20 35 37 2c 20 36 35 2c 20 31 31 33 2c 20 31 31 33 2c 20 31 30 38 2c 20 31 30 36 2c 20 31 32 33 2c 20 34 39 } //1 (145, 156, 155, 150, 95, 83, 82, 84, 81, 84, 77, 79, 81, 76, 73, 75, 82, 70, 72, 72, 68, 71, 71, 120, 116, 67, 67, 130, 65, 65, 127, 57, 65, 113, 113, 108, 106, 123, 49
		$a_01_1 = {28 31 35 34 2c 20 31 36 35 2c 20 31 36 34 2c 20 31 35 39 2c 20 31 30 34 2c 20 39 32 2c 20 39 31 2c 20 31 35 39 2c 20 31 34 36 2c 20 31 34 32 2c 20 31 34 38 2c 20 31 35 36 2c 20 31 35 32 2c 20 31 33 38 2c 20 31 34 37 2c 20 31 33 37 2c 20 31 34 34 2c 20 31 34 34 2c 20 31 34 31 2c 20 31 32 38 2c 20 37 36 2c 20 31 32 38 2c 20 31 33 39 2c 20 31 33 36 2c 20 37 33 2c 20 31 35 31 2c 20 31 34 33 2c 20 31 32 34 2c 20 31 32 30 2c 20 36 38 2c 20 37 31 2c 20 37 31 2c 20 31 32 30 2c 20 31 31 36 2c 20 36 37 2c 20 36 37 2c 20 31 33 30 } //1 (154, 165, 164, 159, 104, 92, 91, 159, 146, 142, 148, 156, 152, 138, 147, 137, 144, 144, 141, 128, 76, 128, 139, 136, 73, 151, 143, 124, 120, 68, 71, 71, 120, 116, 67, 67, 130
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=1
 
}
rule TrojanDownloader_O97M_Adnel_22{
	meta:
		description = "TrojanDownloader:O97M/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {50 75 62 6c 69 63 20 46 75 6e 63 74 69 6f 6e 20 47 65 74 53 74 72 69 6e 67 46 72 6f 6d 41 72 72 61 79 28 66 72 6f 6d 41 72 72 28 29 20 41 73 20 56 61 72 69 61 6e 74 2c 20 4c 65 6e 4c 65 6e 20 41 73 20 49 6e 74 65 67 65 72 29 20 41 73 20 53 74 72 69 6e 67 0d 0a 20 20 20 20 44 69 6d 20 69 20 41 73 20 49 6e 74 65 67 65 72 0d 0a 20 20 20 20 44 69 6d 20 72 65 73 75 6c 74 20 41 73 20 53 74 72 69 6e 67 0d 0a 20 20 20 20 72 65 73 75 6c 74 20 3d 20 22 22 0d 0a 20 20 20 20 46 6f 72 20 69 20 3d 20 4c 42 6f 75 6e 64 28 66 72 6f 6d 41 72 72 29 20 54 6f 20 55 42 6f 75 6e 64 28 66 72 6f 6d 41 72 72 29 0d 0a } //1
		$a_01_1 = {20 20 20 20 20 20 20 20 72 65 73 75 6c 74 20 3d 20 72 65 73 75 6c 74 20 26 20 43 68 72 28 66 72 6f 6d 41 72 72 28 69 29 20 2d 20 4c 65 6e 4c 65 6e 20 2b 20 69 20 2a 20 32 29 0d 0a 20 20 20 20 4e 65 78 74 20 69 0d 0a 20 20 20 20 47 65 74 53 74 72 69 6e 67 46 72 6f 6d 41 72 72 61 79 20 3d 20 72 65 73 75 6c 74 0d 0a 45 6e 64 20 46 75 6e 63 74 69 6f 6e 0d 0a } //1
		$a_01_2 = {74 65 6d 70 46 69 6c 65 20 3d 20 74 65 6d 70 46 6f 6c 64 65 72 20 2b 20 22 5c 73 68 68 67 33 32 63 2e 65 78 65 22 } //1 tempFile = tempFolder + "\shhg32c.exe"
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule TrojanDownloader_O97M_Adnel_23{
	meta:
		description = "TrojanDownloader:O97M/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 07 00 00 "
		
	strings :
		$a_01_0 = {3d 20 53 74 72 52 65 76 65 72 73 65 28 22 54 45 47 22 29 } //1 = StrReverse("TEG")
		$a_03_1 = {3d 20 43 61 6c 6c 42 79 4e 61 6d 65 28 [0-10] 2c 20 22 6f 70 65 6e 22 2c 20 56 62 4d 65 74 68 6f 64 2c 20 [0-10] 2c 20 22 [0-30] 2f 90 05 05 03 30 2d 39 2e 65 78 65 22 2c 20 46 61 6c 73 65 29 } //1
		$a_01_2 = {3d 20 43 61 6c 6c 42 79 4e 61 6d 65 28 76 69 63 74 6f 72 2c 20 22 6f 70 65 6e 22 2c 20 56 62 4d 65 74 68 6f 64 2c 20 62 69 6f 67 72 61 70 68 65 72 2c 20 6c 6f 6e 67 65 70 61 73 73 2c 20 46 61 6c 73 65 29 } //1 = CallByName(victor, "open", VbMethod, biographer, longepass, False)
		$a_01_3 = {3d 20 43 61 6c 6c 42 79 4e 61 6d 65 28 61 6c 61 73 6b 61 6e 2c 20 22 6f 70 65 6e 22 2c 20 56 62 4d 65 74 68 6f 64 2c 20 70 70 65 70 61 72 65 2c 20 74 72 6f 6e 2c 20 46 61 6c 73 65 29 } //1 = CallByName(alaskan, "open", VbMethod, ppepare, tron, False)
		$a_01_4 = {43 61 6c 6c 42 79 4e 61 6d 65 28 6f 62 65 64 69 61 6e 74 2c 20 22 6f 70 65 6e 22 2c 20 56 62 4d 65 74 68 6f 64 2c 20 6c 68 6f 6d 6d 65 2c 20 70 61 6e 64 65 6d 69 63 2c 20 46 61 6c 73 65 29 } //1 CallByName(obediant, "open", VbMethod, lhomme, pandemic, False)
		$a_01_5 = {3d 20 43 61 6c 6c 42 79 4e 61 6d 65 28 6d 6f 6f 2c 20 22 6f 70 65 6e 22 2c 20 56 62 4d 65 74 68 6f 64 2c 20 63 6f 75 70 6c 65 73 2c 20 74 72 69 63 6b 6c 65 2c 20 46 61 6c 73 65 29 } //1 = CallByName(moo, "open", VbMethod, couples, trickle, False)
		$a_03_6 = {2e 4f 70 65 6e 20 4b 4f 4c 4f 44 41 28 90 05 04 03 30 2d 39 29 2c 20 53 41 6d 6f 65 74 75 74 50 72 6f 28 72 75 62 6c 69 6b 69 37 2c 20 90 05 04 03 30 2d 39 29 2c 20 46 61 6c 73 65 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_03_6  & 1)*1) >=2
 
}
rule TrojanDownloader_O97M_Adnel_24{
	meta:
		description = "TrojanDownloader:O97M/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 02 00 03 00 00 "
		
	strings :
		$a_01_0 = {50 75 62 6c 69 63 20 46 75 6e 63 74 69 6f 6e 20 47 65 74 53 74 72 69 6e 67 46 72 6f 6d 41 72 72 61 79 28 66 72 6f 6d 41 72 72 28 29 20 41 73 20 56 61 72 69 61 6e 74 2c 20 4c 65 6e 4c 65 6e 20 41 73 20 49 6e 74 65 67 65 72 29 20 41 73 20 53 74 72 69 6e 67 0d 0a 20 20 20 20 44 69 6d 20 69 20 41 73 20 49 6e 74 65 67 65 72 0d 0a 20 20 20 20 44 69 6d 20 72 65 73 75 6c 74 20 41 73 20 53 74 72 69 6e 67 0d 0a 20 20 20 20 72 65 73 75 6c 74 20 3d 20 22 22 0d 0a 20 20 20 20 46 6f 72 20 69 20 3d 20 4c 42 6f 75 6e 64 28 66 72 6f 6d 41 72 72 29 20 54 6f 20 55 42 6f 75 6e 64 28 66 72 6f 6d 41 72 72 29 0d 0a } //1
		$a_03_1 = {20 20 20 20 20 20 20 20 72 65 73 75 6c 74 20 3d 20 72 65 73 75 6c 74 20 26 20 43 68 72 28 66 72 6f 6d 41 72 72 28 69 29 20 2d 20 90 0f 01 00 20 2a 20 4c 65 6e 4c 65 6e 20 2d 20 90 0f 03 00 29 0d 0a 20 20 20 20 4e 65 78 74 20 69 0d 0a 20 20 20 20 47 65 74 53 74 72 69 6e 67 46 72 6f 6d 41 72 72 61 79 20 3d 20 72 65 73 75 6c 74 0d 0a 45 6e 64 20 46 75 6e 63 74 69 6f 6e 0d 0a } //1
		$a_03_2 = {65 78 69 74 31 3a 0d 0a 0d 0a 44 61 74 61 62 61 73 65 43 6f 6e 6e 65 63 74 69 6f 6e 48 61 6e 64 6c 65 2e 4f 70 65 6e 20 52 65 70 6c 61 63 65 28 52 65 70 6c 61 63 65 28 22 ?? 45 ?? 22 2c 20 22 90 1b 00 22 2c 20 22 47 22 29 2c 20 22 90 1b 01 22 2c 20 22 54 22 29 2c 20 47 65 74 53 74 72 69 6e 67 46 72 6f 6d 41 72 72 61 79 28 44 61 79 49 6e 64 65 78 32 2c 20 90 0f 02 00 29 2c 20 46 6c 61 67 35 0d 0a 0d 0a 45 6e 64 20 46 75 6e 63 74 69 6f 6e } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=2
 
}