
rule Trojan_Win32_SmokeLoader_DC_MTB{
	meta:
		description = "Trojan:Win32/SmokeLoader.DC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 45 ec 8b 55 e8 01 10 8b 45 d8 03 45 b0 03 45 e8 8b 55 ec 31 02 6a 00 e8 ?? ?? ?? ?? 6a 00 e8 ?? ?? ?? ?? 6a 00 e8 ?? ?? ?? ?? 6a 00 e8 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_SmokeLoader_DC_MTB_2{
	meta:
		description = "Trojan:Win32/SmokeLoader.DC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {78 00 6f 00 6c 00 65 00 6c 00 61 00 62 00 61 00 70 00 61 00 77 00 20 00 73 00 75 00 77 00 65 00 6c 00 69 00 63 00 65 00 6b 00 65 00 7a 00 69 00 79 00 61 00 76 00 69 00 6a 00 65 00 78 00 6f 00 77 00 69 00 68 00 75 00 6a 00 65 00 78 00 65 00 74 00 } //1 xolelabapaw suwelicekeziyavijexowihujexet
		$a_01_1 = {63 00 6f 00 76 00 75 00 62 00 69 00 74 00 75 00 70 00 65 00 63 00 6f 00 7a 00 69 00 77 00 69 00 62 00 75 00 77 00 69 00 6a 00 69 00 64 00 6f 00 6e 00 75 00 67 00 61 00 77 00 69 00 79 00 6f 00 63 00 6f 00 6b 00 6f 00 67 00 61 00 74 00 69 00 66 00 69 00 7a 00 69 00 66 00 6f 00 63 00 65 00 6b 00 69 00 6b 00 61 00 74 00 65 00 79 00 69 00 62 00 6f 00 6b 00 6f 00 79 00 75 00 74 00 69 00 73 00 75 00 72 00 69 00 76 00 69 00 76 00 6f 00 77 00 } //1 covubitupecoziwibuwijidonugawiyocokogatifizifocekikateyibokoyutisurivivow
		$a_01_2 = {76 00 65 00 76 00 6f 00 68 00 69 00 64 00 61 00 77 00 75 00 70 00 75 00 6a 00 75 00 63 00 65 00 78 00 65 00 6b 00 75 00 78 00 75 00 6c 00 61 00 68 00 61 00 79 00 6f 00 7a 00 65 00 7a 00 75 00 20 00 6a 00 61 00 73 00 65 00 7a 00 61 00 77 00 75 00 70 00 75 00 6e 00 69 00 79 00 75 00 74 00 } //1 vevohidawupujucexekuxulahayozezu jasezawupuniyut
		$a_01_3 = {72 00 6f 00 62 00 75 00 6d 00 65 00 6e 00 69 00 6b 00 69 00 68 00 69 00 72 00 61 00 6e 00 6f 00 74 00 61 00 70 00 69 00 6c 00 75 00 6a 00 6f 00 6e 00 75 00 6d 00 75 00 70 00 75 00 74 00 65 00 20 00 68 00 65 00 68 00 69 00 66 00 61 00 68 00 61 00 76 00 6f 00 68 00 61 00 79 00 75 00 79 00 75 00 74 00 69 00 62 00 6f 00 70 00 20 00 6a 00 65 00 68 00 65 00 67 00 61 00 70 00 6f 00 77 00 61 00 66 00 75 00 77 00 75 00 20 00 6c 00 6f 00 74 00 65 00 6a 00 69 00 64 00 61 00 6d 00 75 00 6e 00 75 00 67 00 75 00 6c 00 6f 00 73 00 61 00 6c 00 65 00 20 00 67 00 75 00 64 00 75 00 76 00 69 00 79 00 69 00 6d 00 75 00 77 00 6f 00 78 00 } //1 robumenikihiranotapilujonumupute hehifahavohayuyutibop jehegapowafuwu lotejidamunugulosale guduviyimuwox
		$a_01_4 = {64 00 75 00 67 00 61 00 6c 00 65 00 73 00 61 00 74 00 65 00 66 00 65 00 6e 00 75 00 6b 00 61 00 63 00 61 00 67 00 61 00 6d 00 6f 00 67 00 75 00 6e 00 6f 00 6b 00 75 00 79 00 61 00 72 00 20 00 6a 00 69 00 6e 00 69 00 68 00 69 00 63 00 } //1 dugalesatefenukacagamogunokuyar jinihic
		$a_01_5 = {63 75 67 6f 6c 6f 72 69 6c 65 6b 75 78 61 20 77 61 63 61 73 6f 67 6f 6c 6f 68 20 78 69 77 6f 6c 75 77 61 74 75 76 6f 73 75 63 75 70 6f 78 69 68 6f 77 69 7a 61 62 20 6c 6f 74 69 63 65 6e 61 6a } //1 cugolorilekuxa wacasogoloh xiwoluwatuvosucupoxihowizab loticenaj
		$a_01_6 = {7a 61 6c 75 6c 6f 6c 6f 7a 61 5c 72 6f 62 61 5c 6a 6f 70 6f 74 69 68 20 6b 75 78 61 63 75 7a 61 2e 70 64 62 } //1 zaluloloza\roba\jopotih kuxacuza.pdb
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}