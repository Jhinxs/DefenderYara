
rule VirTool_BAT_Injector_CW{
	meta:
		description = "VirTool:BAT/Injector.CW,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {11 06 11 07 9a 0c 08 6f ?? 00 00 0a 72 ?? ?? 00 70 6f ?? 00 00 0a 2c 67 08 6f ?? 00 00 0a 0d 09 13 08 16 13 09 2b 50 } //1
		$a_01_1 = {61 76 66 75 63 6b 65 72 } //1 avfucker
		$a_01_2 = {69 6e 76 6f 6b 6d 79 61 73 73 } //1 invokmyass
		$a_01_3 = {6d 00 79 00 73 00 68 00 69 00 74 00 74 00 79 00 6b 00 65 00 79 00 } //1 myshittykey
		$a_01_4 = {58 4f 52 45 6e 63 72 79 70 74 44 65 63 72 79 70 74 } //1 XOREncryptDecrypt
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}