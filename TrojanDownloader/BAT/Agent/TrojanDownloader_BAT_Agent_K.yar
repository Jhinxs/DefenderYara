
rule TrojanDownloader_BAT_Agent_K{
	meta:
		description = "TrojanDownloader:BAT/Agent.K,SIGNATURE_TYPE_PEHSTR,05 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {57 68 69 74 65 4e 65 74 2e 48 74 74 70 } //1 WhiteNet.Http
		$a_01_1 = {6f 00 62 00 7a 00 6f 00 72 00 2e 00 72 00 75 00 2f 00 75 00 70 00 2e 00 68 00 75 00 79 00 } //1 obzor.ru/up.huy
		$a_01_2 = {73 00 61 00 66 00 65 00 73 00 75 00 72 00 66 00 2e 00 74 00 78 00 74 00 } //1 safesurf.txt
		$a_01_3 = {61 00 63 00 63 00 6f 00 75 00 6e 00 74 00 3f 00 6d 00 6f 00 64 00 65 00 3d 00 75 00 72 00 6c 00 26 00 63 00 6d 00 64 00 3d 00 73 00 74 00 61 00 72 00 74 00 26 00 6c 00 6f 00 63 00 3d 00 61 00 75 00 74 00 6f 00 73 00 75 00 72 00 66 00 } //1 account?mode=url&cmd=start&loc=autosurf
		$a_01_4 = {73 00 75 00 72 00 66 00 67 00 75 00 61 00 72 00 74 00 } //1 surfguart
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}