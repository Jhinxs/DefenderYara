
rule VirTool_BAT_Cryptor_MTB{
	meta:
		description = "VirTool:BAT/Cryptor!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0a 00 00 "
		
	strings :
		$a_01_0 = {67 65 74 5f 42 } //1 get_B
		$a_01_1 = {67 65 74 5f 47 } //1 get_G
		$a_01_2 = {67 65 74 5f 52 } //1 get_R
		$a_01_3 = {4d 59 53 51 4c 5f 43 4f 52 45 } //1 MYSQL_CORE
		$a_01_4 = {43 6f 72 65 5f 53 51 4c } //1 Core_SQL
		$a_01_5 = {55 70 64 61 74 65 53 51 4c } //1 UpdateSQL
		$a_01_6 = {43 6c 61 73 73 53 51 4c } //1 ClassSQL
		$a_01_7 = {43 6f 6e 6e 65 63 74 4d 79 53 51 4c } //1 ConnectMySQL
		$a_01_8 = {52 65 74 72 79 53 51 4c } //1 RetrySQL
		$a_01_9 = {43 6f 72 65 43 6f 64 65 73 2e 64 6c 6c } //10 CoreCodes.dll
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*10) >=15
 
}
rule VirTool_BAT_Cryptor_MTB_2{
	meta:
		description = "VirTool:BAT/Cryptor!MTB,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 11 00 00 "
		
	strings :
		$a_01_0 = {3c 4d 6f 64 75 6c 65 3e } //1 <Module>
		$a_01_1 = {3c 50 72 69 76 61 74 65 49 6d 70 6c 65 6d 65 6e 74 61 74 69 6f 6e 44 65 74 61 69 6c 73 3e } //1 <PrivateImplementationDetails>
		$a_01_2 = {67 65 74 5f 6c 6f 63 6b 65 64 } //1 get_locked
		$a_01_3 = {73 65 74 5f 6c 6f 63 6b 65 64 } //1 set_locked
		$a_01_4 = {67 65 74 5f 70 61 73 73 57 6f 72 64 } //1 get_passWord
		$a_01_5 = {73 65 74 5f 70 61 73 73 57 6f 72 64 } //1 set_passWord
		$a_01_6 = {4b 6f 69 56 4d } //1 KoiVM
		$a_01_7 = {53 79 73 74 65 6d 2e 54 68 72 65 61 64 69 6e 67 } //1 System.Threading
		$a_01_8 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_9 = {67 65 74 5f 43 6f 6e 6e 65 63 74 69 6f 6e 53 74 72 69 6e 67 } //1 get_ConnectionString
		$a_01_10 = {47 65 74 46 75 6e 63 74 69 6f 6e 50 6f 69 6e 74 65 72 } //1 GetFunctionPointer
		$a_01_11 = {73 65 74 5f 55 73 65 56 69 73 75 61 6c 53 74 79 6c 65 42 61 63 6b 43 6f 6c 6f 72 } //1 set_UseVisualStyleBackColor
		$a_01_12 = {67 65 74 5f 50 6f 77 65 72 50 6f 69 6e 74 } //1 get_PowerPoint
		$a_01_13 = {47 00 65 00 74 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 53 00 74 00 72 00 69 00 6e 00 67 00 } //1 GetResourceString
		$a_01_14 = {53 00 6b 00 69 00 70 00 56 00 65 00 72 00 69 00 66 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 } //1 SkipVerification
		$a_01_15 = {23 00 4b 00 6f 00 69 00 } //1 #Koi
		$a_01_16 = {49 00 6e 00 24 00 4a 00 24 00 63 00 74 00 30 00 72 00 } //1 In$J$ct0r
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1) >=17
 
}