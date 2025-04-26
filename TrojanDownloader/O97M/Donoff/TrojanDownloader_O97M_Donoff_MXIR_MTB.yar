
rule TrojanDownloader_O97M_Donoff_MXIR_MTB{
	meta:
		description = "TrojanDownloader:O97M/Donoff.MXIR!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_01_0 = {65 78 65 63 24 20 28 73 72 28 45 78 41 72 72 61 79 4c 6f 63 61 6c 29 29 } //1 exec$ (sr(ExArrayLocal))
		$a_01_1 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 73 63 72 69 70 74 2e 73 68 65 6c 6c 22 29 } //1 CreateObject("wscript.shell")
		$a_01_2 = {41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 42 75 69 6c 74 49 6e 44 6f 63 75 6d 65 6e 74 50 72 6f 70 65 72 74 69 65 73 28 22 74 69 74 6c 65 22 29 } //1 ActiveDocument.BuiltInDocumentProperties("title")
		$a_01_3 = {67 6c 6f 62 61 6c 43 6c 65 61 72 5b 27 54 69 6d 65 6f 75 74 27 5d 20 3d 22 20 26 20 22 20 36 30 30 30 30 3b } //1 globalClear['Timeout'] =" & " 60000;
		$a_01_4 = {72 65 74 75 72 6e 20 6e 61 6d 65 73 70 61 63 65 42 22 20 26 20 22 75 74 74 6f 6e 2e 73 70 6c 69 74 28 27 27 29 2e 72 65 76 65 72 73 65 28 29 2e 6a 6f 69 6e 28 27 22 } //1 return namespaceB" & "utton.split('').reverse().join('"
		$a_01_5 = {22 4e 70 62 47 4a 31 63 46 78 63 63 33 4a 6c 63 33 56 63 58 44 70 6a 49 69 68 6c 62 47 6c 6d 62 33 22 } //1 "NpbGJ1cFxcc3Jlc3VcXDpjIihlbGlmb3"
		$a_01_6 = {6b 39 59 5a 58 5a 70 64 47 4e 42 49 48 64 6c 62 67 3d 3d } //1 k9YZXZpdGNBIHdlbg==
		$a_01_7 = {70 74 72 52 65 70 6f 20 3d 20 33 31 33 33 37 } //1 ptrRepo = 31337
		$a_01_8 = {22 6c 30 59 30 45 67 64 32 56 75 49 44 30 67 65 57 46 79 63 6b 46 30 62 6d 56 74 64 57 64 79 59 53 22 } //1 "l0Y0Egd2VuID0geWFyckF0bmVtdWdyYS"
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=9
 
}