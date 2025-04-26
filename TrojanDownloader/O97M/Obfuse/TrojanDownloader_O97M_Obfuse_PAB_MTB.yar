
rule TrojanDownloader_O97M_Obfuse_PAB_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PAB!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {55 52 4c 44 6f [0-04] 44 [0-04] 73 [0-04] 64 54 6f 46 69 6c 65 41 [0-04] 77 6e 6c 6f 61 [0-04] 75 52 [0-04] 6c 4d 6f 6e [0-04] 4a 4a 43 43 4a 4a [0-04] 44 74 72 75 68 [0-04] 4a 4a 43 43 43 43 4a [0-04] 54 72 6f 6c 61 73 65 [0-04] 50 72 6f 74 6f [0-04] 46 69 6c 65 [0-04] 6e 64 6c 65 72 [0-04] 63 6f 6c 48 61 [0-04] 52 4c [0-04] 55 } //1
		$a_02_1 = {43 3a 5c 50 72 6f [0-04] 67 72 61 6d [0-04] 44 61 [0-04] 74 61 5c [0-04] 54 72 69 6f 6c [0-04] 65 78 70 6c [0-04] 6f 72 65 72 [0-06] 68 74 74 70 3a 2f 2f [0-20] 2e [0-04] 2f [0-10] 2f 32 32 32 32 32 32 2e 70 6e 67 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}
rule TrojanDownloader_O97M_Obfuse_PAB_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PAB!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {54 68 69 73 44 6f 63 75 6d 65 6e 74 2e 73 20 6c 6f 61 64 4c 6f 61 64 4b 61 72 6f 6c 2c 20 22 69 70 74 2e 73 68 22 } //1 ThisDocument.s loadLoadKarol, "ipt.sh"
		$a_01_1 = {2e 46 69 6e 64 2e 45 78 65 63 75 74 65 20 46 69 6e 64 54 65 78 74 3a 3d 22 5f 66 22 2c 20 52 65 70 6c 61 63 65 57 69 74 68 3a 3d 67 69 72 6c 4c 6f 76 65 4c 6f 76 65 2c 20 52 65 70 6c 61 63 65 3a 3d 77 64 52 65 70 6c 61 63 65 41 6c 6c } //1 .Find.Execute FindText:="_f", ReplaceWith:=girlLoveLove, Replace:=wdReplaceAll
		$a_01_2 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 73 63 72 22 20 2b 20 64 6f 6f 72 4b 61 72 6f 6c 4e 65 78 74 20 2b 20 22 65 6c 6c 22 29 } //1 = CreateObject("wscr" + doorKarolNext + "ell")
		$a_01_3 = {67 69 72 6c 4c 69 6b 65 4c 6f 76 65 2e 65 78 65 63 20 22 63 3a 5c 77 69 6e 64 6f 77 73 5c 65 78 70 6c 6f 72 65 72 20 22 20 26 20 6e 65 78 74 4b 61 72 6f 6c 4b 61 72 6f 6c } //1 girlLikeLove.exec "c:\windows\explorer " & nextKarolKarol
		$a_01_4 = {6d 61 69 6e 2e 6b 61 72 6f 6c 69 6e 65 20 28 22 22 29 } //1 main.karoline ("")
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}