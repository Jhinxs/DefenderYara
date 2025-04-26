
rule TrojanDownloader_O97M_Obfuse_PRY_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PRY!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {53 46 52 55 55 45 52 76 64 32 35 73 62 32 46 6b 49 43 4a 6f 64 48 52 77 4f 69 38 76 64 33 64 33 4c 6e 64 6f 5a 58 4a 6c 64 6d 56 79 4c 6d 4e 76 62 53 39 6d 61 57 78 6c 63 79 39 77 59 58 6c 73 62 32 46 6b 4c 6d 56 34 5a 53 49 73 49 43 4a 44 4f 6c 78 30 5a 57 31 77 49 67 3d 3d } //1 SFRUUERvd25sb2FkICJodHRwOi8vd3d3LndoZXJldmVyLmNvbS9maWxlcy9wYXlsb2FkLmV4ZSIsICJDOlx0ZW1wIg==
		$a_00_1 = {49 43 41 67 49 46 4e 6c 64 43 42 58 63 32 68 54 61 47 56 73 62 43 41 39 49 46 64 54 59 33 4a 70 63 48 51 75 51 33 4a 6c 59 58 52 6c 54 32 4a 71 5a 57 4e 30 4b 43 4a 58 55 32 4e 79 61 58 42 30 4c 6c 4e 6f 5a 57 78 73 49 69 6b 3d } //1 ICAgIFNldCBXc2hTaGVsbCA9IFdTY3JpcHQuQ3JlYXRlT2JqZWN0KCJXU2NyaXB0LlNoZWxsIik=
		$a_00_2 = {49 43 41 67 49 46 64 7a 61 46 4e 6f 5a 57 78 73 4c 6c 4a 31 62 69 41 69 59 7a 70 63 64 47 56 74 63 46 78 77 59 58 6c 73 62 32 46 6b 4c 6d 56 34 5a 53 49 3d } //1 ICAgIFdzaFNoZWxsLlJ1biAiYzpcdGVtcFxwYXlsb2FkLmV4ZSI=
		$a_00_3 = {53 68 65 6c 6c 20 22 77 73 63 72 69 70 74 20 44 3a 5c 5f 6e 6f 74 53 63 61 6e 6e 65 64 5c 74 65 73 74 2e 76 62 73 } //1 Shell "wscript D:\_notScanned\test.vbs
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}