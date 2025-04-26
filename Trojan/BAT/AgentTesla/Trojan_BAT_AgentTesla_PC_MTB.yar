
rule Trojan_BAT_AgentTesla_PC_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.PC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 01 00 00 "
		
	strings :
		$a_01_0 = {11 07 11 04 95 11 07 11 05 95 58 d2 13 16 11 07 11 16 20 ff 00 00 00 5f 95 d2 13 17 11 15 11 17 61 13 18 11 08 11 12 } //4
	condition:
		((#a_01_0  & 1)*4) >=4
 
}
rule Trojan_BAT_AgentTesla_PC_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.PC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_01_0 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 56 00 42 00 53 00 61 00 6d 00 70 00 6c 00 65 00 73 00 5c 00 43 00 6f 00 6c 00 6c 00 61 00 70 00 73 00 65 00 5c 00 48 00 69 00 67 00 68 00 53 00 63 00 6f 00 72 00 65 00 73 00 } //1 Software\VBSamples\Collapse\HighScores
		$a_81_1 = {5c 72 65 73 6f 75 72 63 65 73 5c 49 6d 61 67 65 73 5c 74 75 74 2e 70 6e 67 } //1 \resources\Images\tut.png
		$a_01_2 = {54 61 6e 6b 47 61 6d 65 2e 53 74 61 72 74 55 70 2e 72 65 73 6f 75 72 63 65 73 } //1 TankGame.StartUp.resources
		$a_01_3 = {54 61 6e 6b 47 61 6d 65 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //1 TankGame.Resources.resources
		$a_01_4 = {54 61 6e 6b 47 61 6d 65 2e 4d 75 6c 74 69 70 6c 65 42 6c 6f 63 6b 73 2e 72 65 73 6f 75 72 63 65 73 } //1 TankGame.MultipleBlocks.resources
		$a_01_5 = {54 61 6e 6b 47 61 6d 65 2e 51 75 69 63 6b 53 74 61 72 74 2e 72 65 73 6f 75 72 63 65 73 } //1 TankGame.QuickStart.resources
		$a_01_6 = {46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 } //1 FromBase64String
		$a_01_7 = {57 00 69 00 6e 00 46 00 6f 00 72 00 6d 00 73 00 5f 00 52 00 65 00 63 00 75 00 72 00 73 00 69 00 76 00 65 00 46 00 6f 00 72 00 6d 00 43 00 72 00 65 00 61 00 74 00 65 00 } //1 WinForms_RecursiveFormCreate
		$a_01_8 = {57 00 69 00 6e 00 46 00 6f 00 72 00 6d 00 73 00 5f 00 53 00 65 00 65 00 49 00 6e 00 6e 00 65 00 72 00 45 00 78 00 63 00 65 00 70 00 74 00 69 00 6f 00 6e 00 } //1 WinForms_SeeInnerException
		$a_01_9 = {24 42 35 38 37 41 41 44 32 2d 31 45 41 34 2d 34 31 36 46 2d 39 39 30 34 2d 42 44 38 44 34 41 46 33 41 30 37 32 } //1 $B587AAD2-1EA4-416F-9904-BD8D4AF3A072
	condition:
		((#a_01_0  & 1)*1+(#a_81_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=10
 
}