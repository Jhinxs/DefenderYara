
rule HackTool_Linux_MSFPythonShell_D{
	meta:
		description = "HackTool:Linux/MSFPythonShell.D,SIGNATURE_TYPE_CMDHSTR_EXT,0f 00 0f 00 03 00 00 "
		
	strings :
		$a_00_0 = {70 00 79 00 74 00 68 00 6f 00 6e 00 } //5 python
		$a_00_1 = {65 00 78 00 65 00 63 00 28 00 5f 00 5f 00 69 00 6d 00 70 00 6f 00 72 00 74 00 5f 00 5f 00 28 00 27 00 62 00 61 00 73 00 65 00 36 00 34 00 27 00 29 00 2e 00 62 00 36 00 34 00 64 00 65 00 63 00 6f 00 64 00 65 00 } //5 exec(__import__('base64').b64decode
		$a_00_2 = {28 00 5f 00 5f 00 69 00 6d 00 70 00 6f 00 72 00 74 00 5f 00 5f 00 28 00 27 00 63 00 6f 00 64 00 65 00 63 00 73 00 27 00 29 00 2e 00 67 00 65 00 74 00 65 00 6e 00 63 00 6f 00 64 00 65 00 72 00 28 00 27 00 75 00 74 00 66 00 2d 00 38 00 27 00 29 00 } //5 (__import__('codecs').getencoder('utf-8')
	condition:
		((#a_00_0  & 1)*5+(#a_00_1  & 1)*5+(#a_00_2  & 1)*5) >=15
 
}