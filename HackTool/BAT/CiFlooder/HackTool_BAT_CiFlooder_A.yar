
rule HackTool_BAT_CiFlooder_A{
	meta:
		description = "HackTool:BAT/CiFlooder.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {5b 00 20 00 48 00 54 00 54 00 50 00 20 00 46 00 6c 00 6f 00 6f 00 64 00 65 00 72 00 20 00 5d 00 } //1 [ HTTP Flooder ]
		$a_01_1 = {5b 00 55 00 52 00 4c 00 2f 00 49 00 50 00 5d 00 } //1 [URL/IP]
		$a_00_2 = {66 6c 6f 6f 64 65 72 2e 70 64 62 } //1 flooder.pdb
		$a_01_3 = {43 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 2d 00 6c 00 65 00 6e 00 67 00 74 00 68 00 3a 00 20 00 35 00 32 00 33 00 35 00 } //1 Content-length: 5235
		$a_01_4 = {43 00 6c 00 6f 00 6e 00 65 00 72 00 31 00 39 00 36 00 30 00 } //1 Cloner1960
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_00_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}