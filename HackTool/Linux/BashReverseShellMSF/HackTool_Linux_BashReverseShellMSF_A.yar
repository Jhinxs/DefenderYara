
rule HackTool_Linux_BashReverseShellMSF_A{
	meta:
		description = "HackTool:Linux/BashReverseShellMSF.A,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_00_0 = {65 00 78 00 65 00 63 00 28 00 22 00 61 00 57 00 31 00 77 00 62 00 33 00 4a 00 30 00 49 00 48 00 42 00 30 00 65 00 54 00 74 00 77 00 64 00 48 00 6b 00 75 00 63 00 33 00 42 00 68 00 64 00 32 00 34 00 6f 00 4a 00 79 00 39 00 69 00 61 00 57 00 34 00 76 00 63 00 32 00 67 00 6e 00 4b 00 51 00 3d 00 3d 00 22 00 2e 00 64 00 65 00 63 00 6f 00 64 00 65 00 28 00 22 00 62 00 61 00 73 00 65 00 36 00 34 00 22 00 29 00 29 00 } //1 exec("aW1wb3J0IHB0eTtwdHkuc3Bhd24oJy9iaW4vc2gnKQ==".decode("base64"))
	condition:
		((#a_00_0  & 1)*1) >=1
 
}