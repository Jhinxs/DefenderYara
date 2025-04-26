
rule TrojanDownloader_O97M_Obfuse_PC_MSR{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PC!MSR,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_00_0 = {3d 20 43 61 6c 6c 42 79 4e 61 6d 65 28 43 72 65 61 74 65 4f 62 6a 65 63 74 28 44 69 6c 6e 65 72 63 28 22 20 57 78 20 53 63 78 20 72 69 78 20 70 74 78 2e 20 78 53 78 20 68 65 78 20 78 6c 6c 20 22 29 29 2c 20 44 69 6c 6e 65 72 63 28 22 52 78 20 78 75 6e 22 29 2c 20 46 72 61 6d 65 31 2e 5a 6f 6f 6d 20 2d 20 39 39 2c 20 4a 69 6c 65 72 64 6f 2c 20 46 72 61 6d 65 31 2e 5a 6f 6f 6d 20 2d 20 39 39 29 } //1 = CallByName(CreateObject(Dilnerc(" Wx Scx rix ptx. xSx hex xll ")), Dilnerc("Rx xun"), Frame1.Zoom - 99, Jilerdo, Frame1.Zoom - 99)
		$a_00_1 = {3d 20 45 6e 76 69 72 6f 6e 28 22 55 53 45 52 50 52 4f 46 49 4c 45 22 29 20 26 20 22 5c 22 20 26 20 41 70 70 6c 69 63 61 74 69 6f 6e 2e 4e 61 6d 65 } //1 = Environ("USERPROFILE") & "\" & Application.Name
		$a_00_2 = {3d 20 52 65 70 6c 61 63 65 28 44 69 6c 6e 65 72 63 2c 20 22 78 22 2c 20 22 22 29 } //1 = Replace(Dilnerc, "x", "")
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1) >=2
 
}