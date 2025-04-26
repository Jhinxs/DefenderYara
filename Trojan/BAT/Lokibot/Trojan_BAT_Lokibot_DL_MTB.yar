
rule Trojan_BAT_Lokibot_DL_MTB{
	meta:
		description = "Trojan:BAT/Lokibot.DL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_81_0 = {53 68 61 6c 6c 6f 77 54 68 6f 75 67 68 74 2e 47 61 6d 65 45 6e 67 69 6e 65 2e 72 65 73 6f 75 72 63 65 73 } //1 ShallowThought.GameEngine.resources
		$a_81_1 = {53 68 61 6c 6c 6f 77 54 68 6f 75 67 68 74 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //1 ShallowThought.Properties.Resources.resources
		$a_81_2 = {43 41 2e 47 66 78 2e 50 61 6c 65 74 74 65 } //1 CA.Gfx.Palette
		$a_81_3 = {43 41 2e 45 6e 67 69 6e 65 } //1 CA.Engine
		$a_81_4 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_5 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //1 DebuggingModes
		$a_81_6 = {41 63 74 69 76 61 74 6f 72 } //1 Activator
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=7
 
}