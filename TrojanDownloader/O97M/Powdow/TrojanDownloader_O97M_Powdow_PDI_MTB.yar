
rule TrojanDownloader_O97M_Powdow_PDI_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.PDI!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {4d 73 67 42 6f 78 20 22 45 52 72 4f 52 21 22 } //1 MsgBox "ERrOR!"
		$a_01_1 = {3d 20 22 43 3a 5c 55 73 65 72 73 5c 22 20 26 20 45 6e 76 69 72 6f 6e 28 22 55 73 65 72 4e 61 6d 65 22 29 20 26 20 22 5c 50 69 63 74 75 72 65 73 5c 6e 6f 74 6e 69 63 65 22 20 2b 20 22 2e 22 20 2b 20 22 70 73 31 22 } //1 = "C:\Users\" & Environ("UserName") & "\Pictures\notnice" + "." + "ps1"
		$a_01_2 = {47 65 74 4f 62 6a 65 63 74 28 22 6e 65 77 3a 31 33 37 30 39 36 32 30 2d 43 32 37 39 2d 31 31 43 45 2d 41 34 39 45 2d 34 34 34 35 35 33 35 34 30 30 30 30 22 29 2e 53 68 65 6c 6c 65 78 65 63 75 74 65 20 61 73 64 61 73 6f 64 6b 6f 61 73 6b 64 6f 6b 2e 6c 63 61 6b 73 64 6f 6b 61 73 6f 64 6b 61 6f 73 6b 64 2e 54 61 67 2c 20 61 73 6b 64 6f 61 6b 73 6f 64 6b 61 6f 73 64 6b 2e 61 73 64 6f 6b 61 73 6f 64 6b 61 73 6f 64 6b 2e 54 61 67 20 2b 20 6b 61 6f 73 6b 64 6f 6b 61 73 64 2c } //1 GetObject("new:13709620-C279-11CE-A49E-444553540000").Shellexecute asdasodkoaskdok.lcaksdokasodkaoskd.Tag, askdoaksodkaosdk.asdokasodkasodk.Tag + kaoskdokasd,
		$a_01_3 = {53 74 72 52 65 76 65 72 73 65 28 22 6e 22 20 2b 20 22 65 22 20 2b 20 22 70 22 20 2b 20 22 6f 22 29 2c 20 5f } //1 StrReverse("n" + "e" + "p" + "o"), _
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}