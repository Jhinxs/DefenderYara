
rule TrojanDownloader_O97M_Emotet_SSM_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.SSM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {41 47 67 41 64 41 42 30 41 48 41 41 4f 67 41 76 41 43 38 41 63 67 42 72 41 47 55 41 5a 51 42 77 41 47 55 41 63 67 42 31 41 47 45 41 4c 67 42 6a 41 47 38 41 62 51 41 76 41 47 6b 41 62 67 42 6a 41 47 77 41 64 51 42 6b 41 47 55 41 4c 77 42 47 41 46 67 41 51 67 42 7a 41 46 59 41 } //1 AGgAdAB0AHAAOgAvAC8AcgBrAGUAZQBwAGUAcgB1AGEALgBjAG8AbQAvAGkAbgBjAGwAdQBkAGUALwBGAFgAQgBzAFYA
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule TrojanDownloader_O97M_Emotet_SSM_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Emotet.SSM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {73 74 72 4d 65 73 73 61 67 65 20 3d 20 22 62 6b 73 20 66 67 77 68 6b 6a 73 64 3a 22 20 26 20 76 62 54 61 62 20 26 20 46 6f 72 6d 61 74 28 64 62 6c 53 61 6c 65 73 2c 20 22 24 23 2c 23 23 30 22 29 20 26 } //1 strMessage = "bks fgwhkjsd:" & vbTab & Format(dblSales, "$#,##0") &
		$a_01_1 = {68 67 77 6b 69 20 3d 20 43 65 6c 6c 73 28 31 30 36 2c 20 36 29 3a 20 74 75 6f 77 71 20 3d 20 52 65 70 6c 61 63 65 28 43 65 6c 6c 73 28 31 30 37 2c 20 32 29 2c 20 22 70 6f 69 22 2c 20 22 22 29 } //1 hgwki = Cells(106, 6): tuowq = Replace(Cells(107, 2), "poi", "")
		$a_01_2 = {4d 73 67 42 6f 78 20 22 66 57 65 68 72 68 73 65 20 73 35 75 73 64 66 67 73 22 } //1 MsgBox "fWehrhse s5usdfgs"
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule TrojanDownloader_O97M_Emotet_SSM_MTB_3{
	meta:
		description = "TrojanDownloader:O97M/Emotet.SSM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 03 00 00 "
		
	strings :
		$a_01_0 = {26 22 3a 2f 22 26 22 2f 61 22 26 22 61 63 22 26 22 6c 2e 63 22 26 22 6f 2e 69 22 26 22 6e 2f 69 22 26 22 6d 22 26 22 61 22 26 22 67 65 22 26 22 73 2f 37 22 26 22 43 4d 22 26 22 63 32 22 26 22 4e 6c 22 26 22 4f 6f 22 26 22 73 44 22 26 22 34 70 22 26 22 6e 36 22 26 22 6c 6a } //1 &":/"&"/a"&"ac"&"l.c"&"o.i"&"n/i"&"m"&"a"&"ge"&"s/7"&"CM"&"c2"&"Nl"&"Oo"&"sD"&"4p"&"n6"&"lj
		$a_01_1 = {3a 2f 2f 61 22 26 22 6c 70 22 26 22 73 22 26 22 61 22 26 22 77 22 26 22 6e 22 26 22 69 22 26 22 6e 22 26 22 67 22 26 22 73 2e 63 22 26 22 6f 2e 7a 22 26 22 61 2f 6c 22 26 22 6f 22 26 22 67 22 26 22 73 2f 4b 22 26 22 4d 22 26 22 61 22 26 22 38 33 } //1 ://a"&"lp"&"s"&"a"&"w"&"n"&"i"&"n"&"g"&"s.c"&"o.z"&"a/l"&"o"&"g"&"s/K"&"M"&"a"&"83
		$a_01_2 = {73 3a 2f 2f 61 22 26 22 6c 72 22 26 22 6f 22 26 22 74 22 26 22 65 22 26 22 63 2e 63 22 26 22 6f 2e 75 22 26 22 6b 2f 77 22 26 22 70 2d 69 22 26 22 6e 22 26 22 63 22 26 22 6c 75 22 26 22 64 22 26 22 65 22 26 22 73 2f 44 22 26 22 44 22 26 22 32 22 26 22 6a 22 26 22 77 22 26 22 67 22 26 22 61 22 26 22 7a 22 26 22 54 22 26 22 4b 22 26 22 73 22 26 22 70 2f } //1 s://a"&"lr"&"o"&"t"&"e"&"c.c"&"o.u"&"k/w"&"p-i"&"n"&"c"&"lu"&"d"&"e"&"s/D"&"D"&"2"&"j"&"w"&"g"&"a"&"z"&"T"&"K"&"s"&"p/
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=1
 
}