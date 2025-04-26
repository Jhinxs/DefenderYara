
rule TrojanDownloader_O97M_IcedID_SMK_MTB{
	meta:
		description = "TrojanDownloader:O97M/IcedID.SMK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {61 6e 55 48 44 20 3d 20 53 70 6c 69 74 28 61 35 6d 74 69 44 28 66 72 6d 2e 70 61 74 68 73 2e 74 65 78 74 29 2c 20 22 7c 22 29 } //1 anUHD = Split(a5mtiD(frm.paths.text), "|")
		$a_01_1 = {61 58 4c 5a 51 20 3d 20 54 72 69 6d 28 61 72 4b 53 37 20 26 20 22 74 20 3a 20 22 20 26 20 61 30 78 56 57 20 26 20 61 74 62 6f 55 20 26 20 61 30 78 56 57 29 } //1 aXLZQ = Trim(arKS7 & "t : " & a0xVW & atboU & a0xVW)
		$a_01_2 = {43 61 6c 6c 20 61 33 61 6c 4d 2e 53 68 65 6c 6c 45 78 65 63 75 74 65 28 61 61 33 4d 49 46 2c 20 61 58 4c 5a 51 2c 20 22 20 22 2c 20 53 57 5f 53 48 4f 57 4e 4f 52 4d 41 4c 29 } //1 Call a3alM.ShellExecute(aa3MIF, aXLZQ, " ", SW_SHOWNORMAL)
		$a_01_3 = {53 65 74 20 61 72 75 6e 46 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 53 63 72 69 70 74 69 6e 67 2e 46 69 6c 65 53 79 73 74 65 6d 4f 62 6a 65 63 74 22 29 } //1 Set arunF = CreateObject("Scripting.FileSystemObject")
		$a_01_4 = {43 61 6c 6c 20 61 72 75 6e 46 2e 43 6f 70 79 46 69 6c 65 28 61 73 34 36 67 2c 20 61 75 48 4d 5a 61 2c 20 31 29 } //1 Call arunF.CopyFile(as46g, auHMZa, 1)
		$a_01_5 = {4f 70 65 6e 20 61 79 36 72 73 71 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 31 } //1 Open ay6rsq For Output As #1
		$a_01_6 = {57 69 74 68 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 4d 69 63 72 6f 73 6f 66 74 2e 58 4d 4c 44 4f 4d 22 29 2e 63 72 65 61 74 65 45 6c 65 6d 65 6e 74 28 22 62 36 34 22 29 } //1 With CreateObject("Microsoft.XMLDOM").createElement("b64")
		$a_01_7 = {2e 44 61 74 61 54 79 70 65 20 3d 20 22 62 69 6e 2e 62 61 73 65 36 34 } //1 .DataType = "bin.base64
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}