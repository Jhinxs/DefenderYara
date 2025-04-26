
rule TrojanDownloader_O97M_Ursnif_KEKE_MTB{
	meta:
		description = "TrojanDownloader:O97M/Ursnif.KEKE!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {66 65 2e 53 54 41 52 54 55 50 49 4e 46 4f 2e 63 62 20 3d 20 4c 65 6e 42 28 66 65 29 3a 20 66 65 2e 53 54 41 52 54 55 50 49 4e 46 4f 2e 71 77 65 65 6a 6a 6a 20 3d 20 61 6d } //1 fe.STARTUPINFO.cb = LenB(fe): fe.STARTUPINFO.qweejjj = am
		$a_01_1 = {3d 20 68 69 6d 6d 65 28 22 65 72 78 65 70 72 6c 6f 22 29 } //1 = himme("erxeprlo")
		$a_01_2 = {3d 20 22 72 20 65 73 67 2d 73 20 76 32 72 33 22 } //1 = "r esg-s v2r3"
		$a_01_3 = {3d 20 45 6e 76 69 72 6f 6e 28 22 54 65 6d 70 22 29 20 26 20 22 5c 22 20 26 20 74 79 20 26 20 22 2e 22 } //1 = Environ("Temp") & "\" & ty & "."
		$a_01_4 = {68 69 6d 6d 65 28 22 68 20 74 6d 74 6f 70 63 73 2e 3a 61 2f 69 2f 6e 64 61 6f 6b 6d 69 69 6e 22 29 2c 20 42 70 69 6e 6e 53 2c 20 78 6c 54 6f 70 31 30 42 6f 74 74 6f 6d 2c 20 78 6c 52 65 70 6f 72 74 31 29 20 3d 20 74 79 20 2d 20 74 79 20 54 68 65 6e 20 44 65 62 75 67 2e 50 72 69 6e 74 20 } //1 himme("h tmtopcs.:a/i/ndaokmiin"), BpinnS, xlTop10Bottom, xlReport1) = ty - ty Then Debug.Print 
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}