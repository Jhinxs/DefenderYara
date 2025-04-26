
rule TrojanDropper_O97M_Netwire_PDA_MTB{
	meta:
		description = "TrojanDropper:O97M/Netwire.PDA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {43 61 6c 6c 20 73 73 73 28 4f 70 74 69 6f 6e 73 2e 44 65 66 61 75 6c 74 46 69 6c 65 50 61 74 68 28 77 64 54 65 6d 70 46 69 6c 65 50 61 74 68 29 29 } //1 Call sss(Options.DefaultFilePath(wdTempFilePath))
		$a_01_1 = {6b 6f 6b 61 20 3d 20 22 5c 68 65 70 6c 75 73 73 33 2e 64 22 20 26 20 22 6f 63 22 } //1 koka = "\hepluss3.d" & "oc"
		$a_01_2 = {43 61 6c 6c 20 53 65 61 72 63 68 28 73 66 78 63 76 2e 47 65 74 46 6f 6c 64 65 72 28 66 66 66 66 29 29 } //1 Call Search(sfxcv.GetFolder(ffff))
		$a_01_3 = {2e 4f 70 65 6e 20 46 69 6c 65 4e 61 6d 65 3a 3d 73 74 72 52 65 74 75 72 6e 2c 20 50 61 73 73 77 6f 72 64 44 6f 63 75 6d 65 6e 74 3a 3d 22 34 34 22 } //1 .Open FileName:=strReturn, PasswordDocument:="44"
		$a_01_4 = {73 74 72 52 65 74 75 72 6e 20 3d 20 70 61 6c 2e 50 61 74 68 } //1 strReturn = pal.Path
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}