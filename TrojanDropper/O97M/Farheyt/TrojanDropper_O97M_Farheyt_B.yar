
rule TrojanDropper_O97M_Farheyt_B{
	meta:
		description = "TrojanDropper:O97M/Farheyt.B,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 05 00 00 "
		
	strings :
		$a_01_0 = {43 68 72 28 31 30 32 20 2b 20 68 61 61 29 20 2b 20 22 78 65 22 } //1 Chr(102 + haa) + "xe"
		$a_01_1 = {43 68 72 28 68 61 61 20 2b 20 31 30 30 20 2b 20 32 29 20 2b 20 22 78 22 20 2b 20 43 68 72 28 41 73 63 28 22 65 22 29 29 } //1 Chr(haa + 100 + 2) + "x" + Chr(Asc("e"))
		$a_01_2 = {53 67 6e 28 43 49 6e 74 28 48 6f 75 72 28 4e 6f 77 29 29 20 2d 20 32 35 29 } //1 Sgn(CInt(Hour(Now)) - 25)
		$a_01_3 = {41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 53 61 76 65 41 73 20 46 69 6c 65 4e 61 6d 65 3a 3d 4e 61 6d 65 2c 20 46 69 6c 65 46 6f 72 6d 61 74 3a 3d 77 64 46 6f 72 6d 61 74 52 54 46 } //1 ActiveDocument.SaveAs FileName:=Name, FileFormat:=wdFormatRTF
		$a_01_4 = {2b 20 22 70 6d 32 22 20 26 20 22 22 20 2b } //1 + "pm2" & "" +
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=3
 
}