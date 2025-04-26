
rule Trojan_BAT_AgentTesla_NNR_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NNR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {e0 02 0e 03 df 02 e5 02 15 03 df 02 f8 02 ef 02 e0 02 e8 02 df 02 e5 02 d2 02 df 02 f8 02 05 03 e0 02 14 03 3d 72 3d 72 3d 72 df 02 09 03 3d 72 ef 02 3d 72 } //1
		$a_01_1 = {f5 02 f0 02 eb 02 ec 02 e9 02 d3 02 0c 03 01 03 e5 02 e0 02 eb 02 ef 02 e3 02 f0 02 e0 02 e4 02 e0 02 15 03 3d 72 df 02 e0 02 ce 02 3d 72 3d 72 3d 72 3d 72 3d 72 3d 72 3d 72 3d 72 3d 72 } //1
		$a_01_2 = {24 37 32 39 37 65 31 38 66 2d 39 34 35 38 2d 34 38 39 37 2d 61 63 39 38 2d 65 35 63 64 33 65 63 63 63 37 32 65 } //1 $7297e18f-9458-4897-ac98-e5cd3eccc72e
		$a_01_3 = {53 6d 61 72 74 50 6f 74 69 6f 6e 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //1 SmartPotion.Resources.resources
		$a_01_4 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
		$a_01_5 = {46 72 6f 6d 42 61 73 65 36 34 } //1 FromBase64
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}