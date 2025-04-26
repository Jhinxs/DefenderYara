
rule TrojanDownloader_O97M_Ursnif_PDD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Ursnif.PDD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {28 28 72 65 70 6c 61 63 65 28 72 74 72 69 6d 28 68 29 2c 22 22 2c 22 61 22 29 29 29 2c } //1 ((replace(rtrim(h),"","a"))),
		$a_01_1 = {64 65 73 74 69 6e 61 74 69 6f 6e 3a 3d 61 63 74 69 76 65 73 68 65 65 74 2e 72 61 6e 67 65 28 22 24 61 24 32 22 29 29 2e } //1 destination:=activesheet.range("$a$2")).
		$a_01_2 = {3d 68 75 62 62 26 22 22 26 61 6d 62 61 73 73 6f 26 22 2c 23 31 2f 71 22 73 68 65 6c 6c 6e 69 67 6f 6a 69 65 6e 64 66 75 6e 63 74 69 6f 6e 66 75 6e 63 74 69 6f 6e 68 65 72 6d 75 28 29 } //1 =hubb&""&ambasso&",#1/q"shellnigojiendfunctionfunctionhermu()
		$a_01_3 = {3d 62 69 64 69 6e 67 6f 28 6c 65 66 74 28 65 6e 76 69 72 6f 6e 28 6f 6f 79 28 } //1 =bidingo(left(environ(ooy(
		$a_01_4 = {64 65 65 65 3d 64 65 65 65 2b 72 72 6e 65 78 74 6f 6f 79 3d 64 65 65 65 65 6e 64 66 75 6e 63 74 69 6f 6e } //1 deee=deee+rrnextooy=deeeendfunction
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}