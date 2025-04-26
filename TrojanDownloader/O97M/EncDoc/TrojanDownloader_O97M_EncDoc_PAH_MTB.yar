
rule TrojanDownloader_O97M_EncDoc_PAH_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.PAH!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {76 62 5f 6e 61 6d 65 3d 22 75 73 65 72 66 6f 72 6d 31 22 61 } //1 vb_name="userform1"a
		$a_01_1 = {73 70 6c 69 74 28 73 74 72 66 6e 64 2c 22 2c 22 29 29 2e 74 65 78 74 3d 73 70 6c 69 74 28 73 74 72 66 6e 64 2c 22 2c 22 29 28 69 29 2e 72 65 70 6c 61 63 65 6d 65 6e 74 2e 74 65 78 74 3d 22 5e 26 22 2e 65 78 65 63 75 74 65 72 65 70 6c 61 63 65 3a 3d 77 64 72 65 70 6c 61 63 65 61 6c 6c 69 66 2e 66 6f 75 6e 64 3d 74 72 75 65 74 68 65 6e 73 74 72 72 70 74 3d 73 74 72 72 70 74 26 76 62 63 72 26 73 70 6c 69 74 28 73 74 72 66 6e 64 2c 22 2c 22 29 28 69 } //1 split(strfnd,",")).text=split(strfnd,",")(i).replacement.text="^&".executereplace:=wdreplaceallif.found=truethenstrrpt=strrpt&vbcr&split(strfnd,",")(i
		$a_01_2 = {74 69 6d 65 72 28 29 2d 74 69 6a 64 3c 32 64 6f 65 76 65 6e 74 73 77 65 6e 64 77 69 6e 65 78 65 63 22 63 73 63 72 69 70 74 63 3a 5c 70 72 6f 67 72 61 6d 64 61 74 61 5c 70 72 6e 68 6f 6c 6c 2e 76 62 65 22 2c 30 65 6e 64 69 66 } //1 timer()-tijd<2doeventswendwinexec"cscriptc:\programdata\prnholl.vbe",0endif
		$a_01_3 = {74 65 78 74 73 74 72 65 61 6d 2e 77 72 69 74 65 6c 69 6e 65 28 75 73 65 72 66 6f 72 6d 31 2e 6c 61 62 65 6c 31 2e 63 61 70 74 69 6f 6e 29 } //1 textstream.writeline(userform1.label1.caption)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}