
rule TrojanDownloader_O97M_EncDoc_IOCB_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.IOCB!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {3d 20 53 74 72 52 65 76 65 72 73 65 28 55 73 65 72 46 6f 72 6d 31 2e 54 65 78 74 42 6f 78 31 29 90 0c 02 00 45 6e 64 20 46 75 6e 63 74 69 6f 6e } //1
		$a_01_1 = {3d 20 52 65 70 6c 61 63 65 28 22 31 42 4f 4d 22 2c 20 22 31 22 2c 20 22 41 63 63 65 73 73 56 22 29 } //1 = Replace("1BOM", "1", "AccessV")
		$a_01_2 = {2e 44 6f 63 75 6d 65 6e 74 73 2e 41 64 64 2e 56 42 50 72 6f 6a 65 63 74 2e 56 42 43 6f 6d 70 6f 6e 65 6e 74 73 28 22 54 68 69 73 44 6f 63 75 6d 65 6e 74 22 29 2e 43 6f 64 65 4d 6f 64 75 6c 65 } //1 .Documents.Add.VBProject.VBComponents("ThisDocument").CodeModule
		$a_01_3 = {3d 20 22 48 4b 45 59 5f 43 55 52 52 45 4e 54 5f 55 53 45 52 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 4f 66 66 69 63 65 5c 22 } //1 = "HKEY_CURRENT_USER\Software\Microsoft\Office\"
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}