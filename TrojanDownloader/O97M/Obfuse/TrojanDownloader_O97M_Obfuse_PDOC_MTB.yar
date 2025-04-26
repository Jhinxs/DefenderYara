
rule TrojanDownloader_O97M_Obfuse_PDOC_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PDOC!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {70 61 74 68 5f 66 69 6c 65 3d 65 6e 76 69 72 6f 6e 24 28 22 61 70 70 64 61 74 61 22 29 63 61 6c 6c } //1 path_file=environ$("appdata")call
		$a_01_1 = {6c 6f 6e 67 66 6f 72 69 3d 31 74 6f 6c 65 6e 28 68 65 78 74 6f 73 74 72 29 73 74 65 70 32 73 74 72 74 65 6d 70 3d 63 68 72 24 28 76 61 6c 28 22 26 68 22 26 6d 69 64 24 28 68 65 78 74 6f 73 74 72 2c 69 2c 32 29 29 29 73 74 72 72 65 74 75 72 6e 3d 73 74 72 72 65 74 75 72 6e 26 73 74 72 74 65 6d 70 6e 65 78 74 69 68 65 78 74 6f 73 74 72 69 6e 67 } //1 longfori=1tolen(hextostr)step2strtemp=chr$(val("&h"&mid$(hextostr,i,2)))strreturn=strreturn&strtempnextihextostring
		$a_01_2 = {2e 67 65 74 66 6f 6c 64 65 72 28 22 5c 22 29 64 69 6d 74 61 73 6b 64 65 66 69 6e 69 74 69 6f 6e 73 65 74 74 61 73 6b 64 65 66 69 6e 69 74 69 6f 6e 3d 73 65 72 76 69 63 65 2e 6e 65 77 74 61 73 6b 28 30 29 64 69 6d } //1 .getfolder("\")dimtaskdefinitionsettaskdefinition=service.newtask(0)dim
		$a_01_3 = {68 69 28 22 63 3a 5c 75 73 65 72 73 5c 70 75 62 6c 69 63 5c 64 6f 77 6e 6c 6f 61 64 73 5c 73 64 6e 73 2e 7a 69 70 22 2c 70 61 74 68 5f 66 69 6c 65 2b } //1 hi("c:\users\public\downloads\sdns.zip",path_file+
		$a_01_4 = {34 33 33 61 35 63 35 35 37 33 36 35 37 32 37 33 35 63 35 30 37 35 36 32 36 63 36 39 36 33 35 63 34 34 36 66 37 37 36 65 36 63 36 66 36 31 36 34 37 33 35 63 37 33 36 34 36 65 37 33 32 65 36 34 36 63 36 63 } //1 433a5c55736572735c5075626c69635c446f776e6c6f6164735c73646e732e646c6c
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}