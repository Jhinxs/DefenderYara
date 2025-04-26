
rule Trojan_BAT_AgentTesla_DF_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_01_0 = {08 1d 5d 16 fe 01 0d 09 2c 0b 06 08 06 08 91 1f 4b 61 b4 9c 00 00 08 17 d6 0c 08 07 31 } //4
		$a_01_1 = {52 65 76 65 72 73 65 } //1 Reverse
	condition:
		((#a_01_0  & 1)*4+(#a_01_1  & 1)*1) >=5
 
}
rule Trojan_BAT_AgentTesla_DF_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.DF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_02_0 = {13 07 11 07 28 ?? ?? ?? 0a 13 08 08 06 11 08 } //1
		$a_81_1 = {4d 79 41 70 70 6c 69 63 61 74 69 6f 6e } //1 MyApplication
		$a_81_2 = {49 53 65 63 74 69 6f 6e 45 6e 74 72 79 } //1 ISectionEntry
		$a_81_3 = {53 75 62 74 72 61 63 74 4f 62 6a 65 63 74 } //1 SubtractObject
		$a_81_4 = {47 65 74 50 69 78 65 6c } //1 GetPixel
		$a_81_5 = {47 65 74 4f 62 6a 65 63 74 56 61 6c 75 65 } //1 GetObjectValue
		$a_81_6 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
	condition:
		((#a_02_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=7
 
}
rule Trojan_BAT_AgentTesla_DF_MTB_3{
	meta:
		description = "Trojan:BAT/AgentTesla.DF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 11 00 00 "
		
	strings :
		$a_81_0 = {24 39 39 34 62 36 65 63 66 2d 36 37 32 62 2d 34 32 39 37 2d 38 62 66 33 2d 31 38 61 31 61 35 62 32 30 38 38 64 } //20 $994b6ecf-672b-4297-8bf3-18a1a5b2088d
		$a_81_1 = {24 45 31 30 36 32 31 34 30 2d 36 32 43 38 2d 34 38 39 30 2d 39 45 32 34 2d 31 42 34 37 32 46 31 42 30 32 46 44 } //20 $E1062140-62C8-4890-9E24-1B472F1B02FD
		$a_81_2 = {24 35 33 32 62 38 39 36 38 2d 35 66 65 35 2d 34 39 33 32 2d 39 63 35 65 2d 34 64 37 39 38 37 36 30 63 37 33 39 } //20 $532b8968-5fe5-4932-9c5e-4d798760c739
		$a_81_3 = {24 39 62 34 33 35 65 39 37 2d 31 37 65 33 2d 34 39 62 66 2d 62 30 39 37 2d 63 31 30 63 30 34 33 35 64 37 61 63 } //20 $9b435e97-17e3-49bf-b097-c10c0435d7ac
		$a_81_4 = {45 61 73 79 53 63 72 65 65 6e 73 68 6f 74 43 61 70 74 75 72 65 2e 46 6f 72 6d 31 2e 72 65 73 6f 75 72 63 65 73 } //1 EasyScreenshotCapture.Form1.resources
		$a_81_5 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //1 DebuggerBrowsableState
		$a_81_6 = {53 74 65 73 74 57 69 6e 46 6f 72 6d 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //1 StestWinForm.Properties.Resources
		$a_81_7 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
		$a_81_8 = {50 61 69 6e 74 65 72 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //1 Painter.Properties.Resources
		$a_81_9 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerBrowsableAttribute
		$a_81_10 = {67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e } //1 get_CurrentDomain
		$a_81_11 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_12 = {41 63 74 69 76 61 74 6f 72 } //1 Activator
		$a_81_13 = {47 65 74 45 78 74 65 6e 73 69 6f 6e } //1 GetExtension
		$a_81_14 = {43 72 65 61 74 65 44 6f 6d 61 69 6e } //1 CreateDomain
		$a_81_15 = {47 65 74 44 6f 6d 61 69 6e } //1 GetDomain
		$a_81_16 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //1 DebuggingModes
	condition:
		((#a_81_0  & 1)*20+(#a_81_1  & 1)*20+(#a_81_2  & 1)*20+(#a_81_3  & 1)*20+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1+(#a_81_13  & 1)*1+(#a_81_14  & 1)*1+(#a_81_15  & 1)*1+(#a_81_16  & 1)*1) >=25
 
}