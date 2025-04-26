
rule Trojan_O97M_Obfuse_RPI_MTB{
	meta:
		description = "Trojan:O97M/Obfuse.RPI!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {2e 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 22 20 26 20 6c 7a 20 26 20 22 63 72 69 70 74 2e 53 68 22 20 26 20 6c 7a 20 26 20 22 65 6c 6c 22 29 2e 52 75 6e } //1 .CreateObject("WS" & lz & "cript.Sh" & lz & "ell").Run
		$a_01_1 = {20 45 6e 76 69 72 6f 6e 28 22 4c 6f 63 61 6c 41 70 70 44 61 74 61 22 29 20 26 20 22 5c 6c 69 73 74 2e 78 73 6c 22 } //1  Environ("LocalAppData") & "\list.xsl"
		$a_01_2 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 41 64 6f 64 22 20 26 20 22 62 2e 53 74 72 65 22 20 26 20 22 61 6d 22 29 } //1 = CreateObject("Adod" & "b.Stre" & "am")
		$a_03_3 = {52 65 70 6c 61 63 65 28 [0-1a] 2c 20 22 3a 22 2c 20 22 24 22 29 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}