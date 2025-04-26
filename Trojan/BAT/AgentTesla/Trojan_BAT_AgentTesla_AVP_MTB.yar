
rule Trojan_BAT_AgentTesla_AVP_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.AVP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 0e 00 00 "
		
	strings :
		$a_81_0 = {43 72 61 7a 79 54 65 74 72 69 73 2e 46 6f 72 6d 31 2e 72 65 73 6f 75 72 63 65 73 } //1 CrazyTetris.Form1.resources
		$a_81_1 = {43 72 61 7a 79 54 65 74 72 69 73 2e 66 72 6d 4c 65 76 65 6c 32 2e 72 65 73 6f 75 72 63 65 73 } //1 CrazyTetris.frmLevel2.resources
		$a_81_2 = {43 72 61 7a 79 54 65 74 72 69 73 2e 66 72 6d 4c 65 76 65 6c 33 2e 72 65 73 6f 75 72 63 65 73 } //1 CrazyTetris.frmLevel3.resources
		$a_81_3 = {43 72 61 7a 79 54 65 74 72 69 73 2e 66 72 6d 4c 65 76 65 6c 34 2e 72 65 73 6f 75 72 63 65 73 } //1 CrazyTetris.frmLevel4.resources
		$a_81_4 = {43 72 61 7a 79 54 65 74 72 69 73 2e 66 72 6d 4c 65 76 65 6c 35 43 48 49 4d 4e 45 59 2e 72 65 73 6f 75 72 63 65 73 } //1 CrazyTetris.frmLevel5CHIMNEY.resources
		$a_81_5 = {43 72 61 7a 79 54 65 74 72 69 73 2e 66 72 6d 4c 65 76 65 6c 53 65 6c 65 63 74 2e 72 65 73 6f 75 72 63 65 73 } //1 CrazyTetris.frmLevelSelect.resources
		$a_81_6 = {43 72 61 7a 79 54 65 74 72 69 73 2e 66 72 6d 4d 61 69 6e 4d 65 6e 75 2e 72 65 73 6f 75 72 63 65 73 } //1 CrazyTetris.frmMainMenu.resources
		$a_81_7 = {43 72 61 7a 79 54 65 74 72 69 73 2e 66 72 6d 53 65 74 74 69 6e 67 73 2e 72 65 73 6f 75 72 63 65 73 } //1 CrazyTetris.frmSettings.resources
		$a_81_8 = {43 72 61 7a 79 54 65 74 72 69 73 2e 47 61 6d 65 46 6f 72 6d 2e 72 65 73 6f 75 72 63 65 73 } //1 CrazyTetris.GameForm.resources
		$a_81_9 = {43 72 61 7a 79 54 65 74 72 69 73 2e 48 69 67 68 53 63 6f 72 65 46 6f 72 6d 2e 72 65 73 6f 75 72 63 65 73 } //1 CrazyTetris.HighScoreForm.resources
		$a_81_10 = {43 72 61 7a 79 54 65 74 72 69 73 2e 4d 61 69 6e 4d 65 6e 75 2e 72 65 73 6f 75 72 63 65 73 } //1 CrazyTetris.MainMenu.resources
		$a_81_11 = {43 72 61 7a 79 54 65 74 72 69 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //1 CrazyTetris.Resources.resources
		$a_81_12 = {43 72 61 7a 79 54 65 74 72 69 73 2e 53 70 6c 61 73 68 53 63 72 65 65 6e 2e 72 65 73 6f 75 72 63 65 73 } //1 CrazyTetris.SplashScreen.resources
		$a_81_13 = {24 35 35 32 45 42 37 46 32 2d 37 46 32 43 2d 34 31 44 39 2d 41 41 44 31 2d 36 34 30 38 41 38 46 34 43 32 39 42 } //1 $552EB7F2-7F2C-41D9-AAD1-6408A8F4C29B
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1+(#a_81_13  & 1)*1) >=14
 
}