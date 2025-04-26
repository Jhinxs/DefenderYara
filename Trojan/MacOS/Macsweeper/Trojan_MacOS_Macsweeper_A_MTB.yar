
rule Trojan_MacOS_Macsweeper_A_MTB{
	meta:
		description = "Trojan:MacOS/Macsweeper.A!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {63 6f 6d 2e 69 4d 75 6e 69 7a 61 74 6f 72 2e 69 4d 75 6e 69 7a 61 74 6f 72 44 61 65 6d 6f 6e 2e } //1 com.iMunizator.iMunizatorDaemon.
		$a_00_1 = {52 65 73 6f 75 72 63 65 73 2f 69 4d 75 6e 69 7a 61 74 6f 72 44 61 65 6d 6f 6e 2e 61 70 70 } //1 Resources/iMunizatorDaemon.app
		$a_00_2 = {52 65 73 6f 75 72 63 65 73 2f 69 4d 75 6e 69 7a 61 74 6f 72 43 4d 49 2e 70 6c 75 67 69 6e } //1 Resources/iMunizatorCMI.plugin
		$a_00_3 = {69 4d 75 6e 69 7a 61 74 6f 72 2f 55 70 64 61 74 65 72 } //1 iMunizator/Updater
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}