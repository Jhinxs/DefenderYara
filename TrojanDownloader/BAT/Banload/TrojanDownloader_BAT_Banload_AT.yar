
rule TrojanDownloader_BAT_Banload_AT{
	meta:
		description = "TrojanDownloader:BAT/Banload.AT,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {5c 00 41 00 52 00 51 00 55 00 49 00 56 00 4f 00 2e 00 5a 00 49 00 50 00 } //1 \ARQUIVO.ZIP
		$a_01_1 = {52 00 45 00 47 00 2e 00 4b 00 41 00 59 00 43 00 } //1 REG.KAYC
		$a_01_2 = {4c 4f 41 44 5f 47 30 4c 50 33 5c 6f 62 6a } //1 LOAD_G0LP3\obj
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}