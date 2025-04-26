
rule TrojanDownloader_O97M_Ursnif_PDUA_MTB{
	meta:
		description = "TrojanDownloader:O97M/Ursnif.PDUA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {3d 63 72 65 61 74 65 6f 62 6a 65 63 74 28 6e 65 78 78 74 28 22 35 68 64 62 74 61 78 6a 6f 2e 72 6d 69 61 64 73 65 22 29 29 23 65 6e 64 69 66 76 62 61 72 66 2e 6f 70 65 6e 6e 65 78 78 74 28 22 39 31 65 6d 7a 74 72 67 22 29 } //1 =createobject(nexxt("5hdbtaxjo.rmiadse"))#endifvbarf.opennexxt("91emztrg")
		$a_01_1 = {3d 76 62 61 2e 65 6e 76 69 72 6f 6e 28 28 22 74 65 6d 70 22 29 29 26 22 5c 22 65 6e 64 66 75 6e 63 74 69 6f 6e } //1 =vba.environ(("temp"))&"\"endfunction
		$a_01_2 = {3d 63 6f 6d 65 64 79 28 6e 65 78 78 74 28 22 71 68 70 2f 6f 6e 63 6f 5f 6a 74 73 2f 6d 61 2e 6d 3e 5c 74 3a 64 61 69 63 22 29 2c 73 6b 29 78 61 72 65 61 78 61 72 65 61 68 69 67 68 74 3d 76 69 76 61 6c 64 69 28 76 61 61 72 28 22 22 26 73 6b 29 29 65 6e 64 73 75 62 66 75 6e 63 74 69 6f 6e } //1 =comedy(nexxt("qhp/onco_jts/ma.m>\t:daic"),sk)xareaxareahight=vivaldi(vaar(""&sk))endsubfunction
		$a_01_3 = {3d 67 65 74 6f 62 6a 65 63 74 28 73 69 69 29 2e 67 65 74 28 75 75 29 68 6f 77 } //1 =getobject(sii).get(uu)how
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}