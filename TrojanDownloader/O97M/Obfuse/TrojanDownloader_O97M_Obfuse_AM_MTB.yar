
rule TrojanDownloader_O97M_Obfuse_AM_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.AM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_00_0 = {53 65 74 20 6f 62 6a 4f 4c 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 4f 75 74 6c 6f 6f 6b 2e 41 70 70 6c 69 63 61 74 69 6f 6e 22 29 } //1 Set objOL = CreateObject("Outlook.Application")
		$a_00_1 = {53 65 74 20 57 73 68 53 68 65 6c 6c 20 3d 20 6f 62 6a 4f 4c 2e 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 } //1 Set WshShell = objOL.CreateObject("WScript.Shell")
		$a_00_2 = {53 65 74 20 57 73 68 53 68 65 6c 6c 45 78 65 63 20 3d 20 57 73 68 53 68 65 6c 6c 2e 45 78 65 63 28 63 6f 6d 6d 61 6e 64 29 } //1 Set WshShellExec = WshShell.Exec(command)
		$a_00_3 = {52 75 6e 43 6f 6d 6d 61 6e 64 20 3d 20 57 73 68 53 68 65 6c 6c 45 78 65 63 2e 53 74 64 4f 75 74 2e 52 65 61 64 41 6c 6c } //1 RunCommand = WshShellExec.StdOut.ReadAll
		$a_00_4 = {61 72 72 44 61 74 61 20 3d 20 53 74 72 43 6f 6e 76 28 74 65 78 74 2c 20 76 62 46 72 6f 6d 55 6e 69 63 6f 64 65 29 } //1 arrData = StrConv(text, vbFromUnicode)
		$a_00_5 = {53 65 74 20 6f 62 6a 58 4d 4c 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 4d 53 58 4d 4c 32 2e 44 4f 4d 44 6f 63 75 6d 65 6e 74 22 29 } //1 Set objXML = CreateObject("MSXML2.DOMDocument")
		$a_00_6 = {45 6e 63 6f 64 65 42 61 73 65 36 34 20 3d 20 6f 62 6a 4e 6f 64 65 2e 74 65 78 74 } //1 EncodeBase64 = objNode.text
		$a_00_7 = {6f 62 6a 48 54 54 50 2e 73 65 6e 64 20 28 65 6e 63 72 79 70 74 44 61 74 61 29 } //1 objHTTP.send (encryptData)
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=8
 
}