
rule Trojan_BAT_Injector_UUI_MTB{
	meta:
		description = "Trojan:BAT/Injector.UUI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 "
		
	strings :
		$a_81_0 = {3c 56 41 74 6f 46 69 6c 65 4d 61 70 70 69 6e 67 3e 62 5f 5f 32 30 5f 30 } //1 <VAtoFileMapping>b__20_0
		$a_81_1 = {3c 52 56 41 74 6f 46 69 6c 65 4d 61 70 70 69 6e 67 3e 62 5f 5f 32 32 5f 30 } //1 <RVAtoFileMapping>b__22_0
		$a_81_2 = {4b 65 79 56 61 6c 75 65 50 61 69 72 } //1 KeyValuePair
		$a_81_3 = {67 65 74 5f 49 73 45 58 45 } //1 get_IsEXE
		$a_81_4 = {4c 6f 61 64 43 6f 6e 66 69 67 } //1 LoadConfig
		$a_81_5 = {45 78 65 63 75 74 65 53 68 65 6c 6c 63 6f 64 65 49 6e 54 61 72 67 65 74 50 72 6f 63 65 73 73 } //1 ExecuteShellcodeInTargetProcess
		$a_81_6 = {4f 70 65 6e 54 61 72 67 65 74 50 72 6f 63 65 73 73 } //1 OpenTargetProcess
		$a_81_7 = {49 6e 6a 65 63 74 41 73 73 65 6d 62 6c 79 } //1 InjectAssembly
		$a_81_8 = {4c 6f 63 61 6c 20 69 6e 6a 65 63 74 69 6f 6e } //1 Local injection
		$a_00_9 = {24 32 65 33 64 38 63 38 32 2d 65 62 39 36 2d 34 65 31 37 2d 39 62 30 33 2d 66 65 31 33 33 32 34 65 38 31 62 36 } //1 $2e3d8c82-eb96-4e17-9b03-fe13324e81b6
		$a_81_10 = {4c 6f 61 64 41 73 73 65 6d 62 6c 79 } //1 LoadAssembly
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_00_9  & 1)*1+(#a_81_10  & 1)*1) >=11
 
}