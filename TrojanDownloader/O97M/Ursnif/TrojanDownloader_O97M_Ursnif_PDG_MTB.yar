
rule TrojanDownloader_O97M_Ursnif_PDG_MTB{
	meta:
		description = "TrojanDownloader:O97M/Ursnif.PDG!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {6d 61 72 76 65 6c 6c 28 69 6e 67 29 6d 61 72 76 65 6c 6c 3d 65 6e 76 69 72 6f 6e 28 22 73 79 73 74 65 6d 64 72 69 76 65 22 29 26 65 6e 76 69 72 6f 6e 28 22 68 6f 6d 65 70 61 74 68 22 29 26 5f 61 70 70 6c 69 63 61 74 69 6f 6e 2e } //1 marvell(ing)marvell=environ("systemdrive")&environ("homepath")&_application.
		$a_01_1 = {26 66 6f 72 69 3d 30 74 6f 39 73 3d 62 72 6f 28 73 2c 61 6d 69 28 69 29 29 6e 65 78 74 70 72 69 6e 74 65 64 3d 73 65 6e 64 66 75 6e 63 74 69 6f 6e 66 75 6e 63 74 69 6f 6e 61 6d 69 28 73 65 29 61 6d 69 3d 63 73 74 72 28 73 65 29 65 6e 64 66 75 6e 63 74 69 6f 6e 66 75 6e 63 74 69 6f 6e } //1 &fori=0to9s=bro(s,ami(i))nextprinted=sendfunctionfunctionami(se)ami=cstr(se)endfunctionfunction
		$a_01_2 = {62 72 6f 28 68 2c 68 68 29 62 72 6f 3d 72 65 70 6c 61 63 65 28 68 2c 68 68 2c 22 22 29 65 6e 64 66 75 6e 63 74 69 6f 6e } //1 bro(h,hh)bro=replace(h,hh,"")endfunction
		$a_01_3 = {3d 61 74 6d 6f 73 70 68 65 72 65 28 30 2c 64 65 63 6c 61 72 61 2c 70 6c 6f 6e 67 70 74 72 2c 30 2c 30 29 64 6f 77 3d 73 68 65 6c 6c 28 66 69 65 72 72 61 28 70 6c 6f 6e 67 70 74 72 29 29 65 6e 64 73 75 62 66 75 6e 63 74 69 6f 6e 70 72 69 6e 74 65 64 28 73 29 } //1 =atmosphere(0,declara,plongptr,0,0)dow=shell(fierra(plongptr))endsubfunctionprinted(s)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}