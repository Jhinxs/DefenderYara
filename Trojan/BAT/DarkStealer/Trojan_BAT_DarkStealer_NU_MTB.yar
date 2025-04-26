
rule Trojan_BAT_DarkStealer_NU_MTB{
	meta:
		description = "Trojan:BAT/DarkStealer.NU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {57 b7 a2 3f 09 0f 00 00 00 00 00 00 00 00 00 00 01 } //1
		$a_01_1 = {24 66 31 35 31 35 61 64 39 2d 34 62 31 32 2d 34 38 32 30 2d 61 37 39 63 2d 33 31 31 64 35 65 39 66 39 63 34 36 } //1 $f1515ad9-4b12-4820-a79c-311d5e9f9c46
		$a_01_2 = {54 00 65 00 6d 00 70 00 6f 00 72 00 61 00 6c 00 54 00 6f 00 6f 00 6c 00 6b 00 69 00 74 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //1 TemporalToolkit.Properties.Resources
		$a_01_3 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_4 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}