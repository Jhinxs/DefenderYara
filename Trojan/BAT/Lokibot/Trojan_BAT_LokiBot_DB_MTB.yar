
rule Trojan_BAT_LokiBot_DB_MTB{
	meta:
		description = "Trojan:BAT/LokiBot.DB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 "
		
	strings :
		$a_03_0 = {0b 16 0c 2b 14 07 06 08 9a 1f 10 28 ?? 00 00 0a 6f ?? 00 00 0a 08 17 58 0c 08 20 00 38 01 00 32 e4 } //3
		$a_01_1 = {4d 61 67 6e 61 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //1 Magna.Properties.Resources.resources
		$a_01_2 = {53 70 6c 69 74 } //1 Split
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=5
 
}
rule Trojan_BAT_LokiBot_DB_MTB_2{
	meta:
		description = "Trojan:BAT/LokiBot.DB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 09 00 00 "
		
	strings :
		$a_81_0 = {53 68 6f 70 5f 4d 61 6e 61 67 65 72 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //10 Shop_Manager.My.Resources
		$a_81_1 = {53 68 6f 70 73 5f 44 42 44 61 74 61 53 65 74 } //10 Shops_DBDataSet
		$a_81_2 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_3 = {41 63 74 69 76 61 74 6f 72 } //1 Activator
		$a_81_4 = {44 65 62 75 67 67 65 72 } //1 Debugger
		$a_81_5 = {54 6f 53 74 72 69 6e 67 } //1 ToString
		$a_81_6 = {43 6f 6e 76 65 72 74 } //1 Convert
		$a_81_7 = {43 6f 6e 63 61 74 } //1 Concat
		$a_81_8 = {53 70 6c 69 74 } //1 Split
	condition:
		((#a_81_0  & 1)*10+(#a_81_1  & 1)*10+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1) >=17
 
}
rule Trojan_BAT_LokiBot_DB_MTB_3{
	meta:
		description = "Trojan:BAT/LokiBot.DB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 07 00 00 "
		
	strings :
		$a_81_0 = {24 30 63 62 30 35 65 37 62 2d 37 65 35 31 2d 34 65 66 30 2d 61 30 65 63 2d 38 63 35 39 65 30 62 32 35 63 31 36 } //20 $0cb05e7b-7e51-4ef0-a0ec-8c59e0b25c16
		$a_81_1 = {56 61 6c 68 65 69 6d 53 65 72 76 65 72 4d 61 6e 61 67 65 72 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //20 ValheimServerManager.My.Resources
		$a_81_2 = {56 61 6c 68 65 69 6d 53 65 72 76 65 72 4d 61 6e 61 67 65 72 2e 52 65 73 6f 75 72 63 65 73 } //1 ValheimServerManager.Resources
		$a_81_3 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //1 DebuggerBrowsableState
		$a_81_4 = {4d 61 6e 61 67 65 73 20 61 20 56 61 6c 68 65 69 6d 20 47 61 6d 65 20 53 65 72 76 65 72 } //1 Manages a Valheim Game Server
		$a_81_5 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_6 = {41 63 74 69 76 61 74 6f 72 } //1 Activator
	condition:
		((#a_81_0  & 1)*20+(#a_81_1  & 1)*20+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=25
 
}