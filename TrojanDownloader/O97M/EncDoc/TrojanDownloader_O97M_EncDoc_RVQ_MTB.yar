
rule TrojanDownloader_O97M_EncDoc_RVQ_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.RVQ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {61 63 74 69 6f 6e 2e 70 61 74 68 3d 22 5c 5c 31 30 2e 31 32 37 2e 32 35 32 2e 31 31 5c 73 68 61 72 65 5c 71 75 69 65 74 6d 6f 74 68 2e 65 78 65 22 } //1 action.path="\\10.127.252.11\share\quietmoth.exe"
		$a_01_1 = {3d 63 72 65 61 74 65 6f 62 6a 65 63 74 28 22 73 63 68 65 64 75 6c 65 2e 73 65 72 76 69 63 65 22 29 } //1 =createobject("schedule.service")
		$a_01_2 = {63 61 6c 6c 73 65 72 76 69 63 65 2e 67 65 74 66 6f 6c 64 65 72 28 22 5c 22 29 2e 72 65 67 69 73 74 65 72 74 61 73 6b 64 65 66 69 6e 69 74 69 6f 6e 28 22 75 70 64 61 74 65 74 61 73 6b 22 2c 74 64 2c 36 2c 2c 2c 33 29 65 6e 64 73 75 62 } //1 callservice.getfolder("\").registertaskdefinition("updatetask",td,6,,,3)endsub
		$a_01_3 = {61 75 74 6f 5f 63 6c 6f 73 65 28 29 64 6f 63 62 65 73 74 64 61 79 6d 6f 74 68 65 6e 64 73 75 62 } //1 auto_close()docbestdaymothendsub
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}