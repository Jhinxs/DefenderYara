
rule Trojan_BAT_Lokibot_MFP_MTB{
	meta:
		description = "Trojan:BAT/Lokibot.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_81_0 = {57 15 a2 09 09 0b 00 00 00 fa 01 33 00 16 00 00 } //1
		$a_81_1 = {24 30 32 66 35 32 66 32 32 2d 62 64 62 32 2d 34 64 32 63 2d 38 38 62 33 2d 34 31 39 34 63 32 37 64 33 33 63 33 } //1 $02f52f22-bdb2-4d2c-88b3-4194c27d33c3
		$a_81_2 = {58 70 53 69 6d 75 6c 61 74 65 50 61 72 61 6e 6f 69 64 } //1 XpSimulateParanoid
		$a_81_3 = {43 3a 5c 6d 79 61 70 70 2e 65 78 65 } //1 C:\myapp.exe
		$a_81_4 = {52 50 46 3a 53 6d 61 72 74 41 73 73 65 6d 62 6c 79 } //1 RPF:SmartAssembly
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=5
 
}
rule Trojan_BAT_Lokibot_MFP_MTB_2{
	meta:
		description = "Trojan:BAT/Lokibot.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0f 00 00 "
		
	strings :
		$a_00_0 = {24 64 33 38 36 36 37 39 31 2d 38 37 33 66 2d 34 64 63 34 2d 61 36 39 35 2d 39 61 33 62 37 65 64 31 35 62 62 31 } //1 $d3866791-873f-4dc4-a695-9a3b7ed15bb1
		$a_00_1 = {57 1f a2 0b 09 1f 00 00 00 fa 01 33 00 16 00 00 } //1
		$a_81_2 = {53 75 73 70 65 6e 64 4c 61 79 6f 75 74 } //1 SuspendLayout
		$a_81_3 = {4c 6f 61 64 46 69 6c 65 } //1 LoadFile
		$a_81_4 = {67 65 74 5f 4b 65 79 } //1 get_Key
		$a_81_5 = {48 61 73 68 74 61 62 6c 65 } //1 Hashtable
		$a_81_6 = {43 6c 69 70 62 6f 61 72 64 } //1 Clipboard
		$a_81_7 = {47 65 74 45 78 65 63 75 74 69 6e 67 41 73 73 65 6d 62 6c 79 } //1 GetExecutingAssembly
		$a_81_8 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_81_9 = {43 6f 6e 74 61 69 6e 73 4b 65 79 } //1 ContainsKey
		$a_81_10 = {52 65 61 64 42 79 74 65 } //1 ReadByte
		$a_81_11 = {4b 65 79 56 61 6c 75 65 50 61 69 72 } //1 KeyValuePair
		$a_81_12 = {45 6e 63 6f 64 69 6e 67 } //1 Encoding
		$a_81_13 = {4c 61 74 65 47 65 74 } //1 LateGet
		$a_81_14 = {73 65 74 5f 53 68 6f 72 74 63 75 74 4b 65 79 73 } //1 set_ShortcutKeys
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1+(#a_81_13  & 1)*1+(#a_81_14  & 1)*1) >=15
 
}