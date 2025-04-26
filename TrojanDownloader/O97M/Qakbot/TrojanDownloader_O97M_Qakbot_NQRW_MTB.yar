
rule TrojanDownloader_O97M_Qakbot_NQRW_MTB{
	meta:
		description = "TrojanDownloader:O97M/Qakbot.NQRW!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 07 00 00 "
		
	strings :
		$a_01_0 = {72 65 67 73 76 72 33 32 20 2d 73 69 6c 65 6e 74 20 2e 2e 5c 58 65 72 74 69 73 2e 64 6c 6c } //1 regsvr32 -silent ..\Xertis.dll
		$a_01_1 = {72 65 67 73 76 72 33 32 20 2d 73 69 6c 65 6e 74 20 2e 2e 5c 46 69 6f 73 61 2e 64 65 72 } //1 regsvr32 -silent ..\Fiosa.der
		$a_01_2 = {72 65 67 73 76 72 33 32 20 2d 73 69 6c 65 6e 74 20 2e 2e 5c 56 69 6f 6c 61 66 2e 64 65 72 } //1 regsvr32 -silent ..\Violaf.der
		$a_01_3 = {55 73 65 72 46 6f 72 6d 31 2e 4c 61 62 65 6c 33 2e 43 61 70 74 69 6f 6e } //1 UserForm1.Label3.Caption
		$a_01_4 = {52 45 47 49 53 54 45 52 28 49 39 2c 49 31 30 26 4a 31 30 2c 49 31 31 2c 49 31 32 2c 2c 31 2c 39 29 } //1 REGISTER(I9,I10&J10,I11,I12,,1,9)
		$a_01_5 = {42 79 75 6b 69 6c 6f 73 } //1 Byukilos
		$a_01_6 = {2e 46 6f 6e 74 2e 43 6f 6c 6f 72 20 3d 20 76 62 57 68 69 74 65 } //1 .Font.Color = vbWhite
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=5
 
}