
rule Trojan_BAT_Tnega_AQ_MTB{
	meta:
		description = "Trojan:BAT/Tnega.AQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {37 35 46 79 78 77 50 48 77 6d 4b 48 41 63 77 37 38 46 } //1 75FyxwPHwmKHAcw78F
		$a_01_1 = {73 65 74 5f 54 72 61 64 65 42 61 6e 53 74 61 74 65 47 65 74 54 79 70 65 73 46 72 6f 6d 49 6e 74 65 72 66 61 63 65 50 61 72 73 65 55 49 6e 74 31 36 } //1 set_TradeBanStateGetTypesFromInterfaceParseUInt16
		$a_01_2 = {48 61 73 50 65 72 6d 69 73 73 69 6f 6e 73 46 69 78 65 64 55 70 64 61 74 65 61 64 64 5f 4f 6e 50 6c 75 67 69 6e 4c 6f 61 64 69 6e 67 } //1 HasPermissionsFixedUpdateadd_OnPluginLoading
		$a_01_3 = {48 61 73 50 65 72 6d 69 73 73 69 6f 6e 73 61 64 64 5f 4f 6e 50 6c 75 67 69 6e 73 4c 6f 61 64 65 64 41 64 64 50 6c 61 79 65 72 54 6f 47 72 6f 75 70 } //1 HasPermissionsadd_OnPluginsLoadedAddPlayerToGroup
		$a_01_4 = {67 65 74 5f 43 6c 69 65 6e 74 73 73 65 74 5f 53 74 65 61 6d 49 44 36 34 67 65 74 5f 44 65 66 61 75 6c 74 54 72 61 6e 73 6c 61 74 69 6f 6e 73 } //1 get_Clientsset_SteamID64get_DefaultTranslations
		$a_01_5 = {72 65 6d 6f 76 65 5f 4f 6e 50 6c 75 67 69 6e 73 4c 6f 61 64 65 64 50 61 72 73 65 44 6f 75 62 6c 65 67 65 74 5f 53 79 6e 74 61 78 } //1 remove_OnPluginsLoadedParseDoubleget_Syntax
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}