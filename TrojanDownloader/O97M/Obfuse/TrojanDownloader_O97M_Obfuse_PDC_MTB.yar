
rule TrojanDownloader_O97M_Obfuse_PDC_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PDC!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {3d 65 6e 76 69 72 6f 6e 24 28 22 61 70 70 64 61 74 61 22 29 26 22 5c 22 26 } //1 =environ$("appdata")&"\"&
		$a_01_1 = {3d 63 68 72 28 35 30 29 2b 63 68 72 28 34 38 29 2b 63 68 72 28 34 38 29 64 69 6d 77 73 68 73 68 65 6c 6c 61 73 6f 62 6a 65 63 74 64 69 6d 73 70 65 63 69 61 6c 70 61 74 68 } //1 =chr(50)+chr(48)+chr(48)dimwshshellasobjectdimspecialpath
		$a_01_2 = {73 65 74 6f 62 6a 77 73 68 73 68 65 6c 6c 3d 63 72 65 61 74 65 6f 62 6a 65 63 74 28 22 77 73 63 72 69 70 74 2e 73 68 65 6c 6c 22 29 73 70 65 63 69 61 6c 70 61 74 68 3d 6f 62 6a 77 73 68 73 68 65 6c 6c 2e 73 70 65 63 69 61 6c 66 6f 6c 64 65 72 73 28 22 74 65 6d 70 6c 61 74 65 73 22 29 } //1 setobjwshshell=createobject("wscript.shell")specialpath=objwshshell.specialfolders("templates")
		$a_01_3 = {3d 63 72 65 61 74 65 6f 62 6a 65 63 74 28 22 73 68 65 6c 6c 2e 61 70 70 6c 69 63 61 74 69 6f 6e 22 29 3d 73 70 65 63 69 61 6c 70 61 74 68 2b 28 22 5c 6d 6a 68 6d 2e 22 29 2e 6f 70 65 6e 22 67 65 74 22 } //1 =createobject("shell.application")=specialpath+("\mjhm.").open"get"
		$a_01_4 = {3d 73 74 72 72 65 76 65 72 73 65 28 65 6e 63 29 } //1 =strreverse(enc)
		$a_01_5 = {61 70 70 64 61 74 61 3d 61 70 70 64 61 74 61 26 63 68 72 28 61 73 63 } //1 appdata=appdata&chr(asc
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}