
rule TrojanDownloader_O97M_EncDoc_PABE_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.PABE!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {28 31 2c 32 29 29 2b 31 2c 32 29 69 66 70 3d 32 33 74 68 65 6e 75 3d 66 3a 66 3d 22 22 69 66 70 3d 33 36 74 68 65 6e 72 3d 66 3a 66 3d 22 22 6e 65 78 74 6c 28 31 29 3d 75 26 22 22 3a 6c 28 32 29 3d 74 72 69 6d 28 72 29 3a 6c 28 33 29 3d 66 68 6c 69 67 66 61 3d 6c } //1 (1,2))+1,2)ifp=23thenu=f:f=""ifp=36thenr=f:f=""nextl(1)=u&"":l(2)=trim(r):l(3)=fhligfa=l
		$a_01_1 = {61 62 73 28 61 70 70 6c 69 63 61 74 69 6f 6e 2e 77 69 6e 64 6f 77 73 74 61 74 65 29 26 22 2e 22 65 6e 64 66 75 6e 63 74 69 6f 6e 66 75 6e 63 74 69 6f 6e 67 67 28 6d 61 73 73 74 72 69 6e 67 29 63 61 6c 6c 73 68 65 6c 6c 28 28 22 72 65 67 73 76 72 33 32 2f 73 22 26 6d 29 29 } //1 abs(application.windowstate)&"."endfunctionfunctiongg(masstring)callshell(("regsvr32/s"&m))
		$a_01_2 = {6d 69 6e 69 6d 61 6c 5f 6d 61 78 28 29 6d 61 78 7a 3d 68 65 72 6f 6f 6f 28 30 2c 68 6c 69 67 66 61 28 6d 61 6d 69 29 2c 68 66 6c 75 69 64 73 2c 30 2c 30 29 6d 69 6e 63 3d 67 67 28 22 63 61 6c 63 22 29 3a 6d 69 6e 63 3d 67 67 28 68 66 6c 75 69 64 73 29 3a } //1 minimal_max()maxz=herooo(0,hligfa(mami),hfluids,0,0)minc=gg("calc"):minc=gg(hfluids):
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}