
rule Trojan_BAT_Mamut_GFK_MTB{
	meta:
		description = "Trojan:BAT/Mamut.GFK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 45 6e 63 72 79 70 74 6f 72 } //1 CreateEncryptor
		$a_80_1 = {50 4f 57 45 52 53 48 45 4c 4c } //POWERSHELL  1
		$a_80_2 = {61 70 69 2e 70 61 73 74 65 2e 65 65 2f 76 31 2f 70 61 73 74 65 73 } //api.paste.ee/v1/pastes  1
		$a_01_3 = {49 6f 6e 69 63 2e 5a 69 70 } //1 Ionic.Zip
		$a_80_4 = {44 6f 73 63 61 6e 2e 65 78 65 } //Doscan.exe  1
		$a_80_5 = {53 45 4c 45 43 54 20 50 52 4f 43 45 53 53 49 44 20 46 52 4f 4d 20 57 49 4e 33 32 5f 50 52 4f 43 45 53 53 20 57 48 45 52 45 20 50 41 52 45 4e 54 50 52 4f 43 45 53 53 49 44 20 3d 20 7b 30 7d } //SELECT PROCESSID FROM WIN32_PROCESS WHERE PARENTPROCESSID = {0}  1
		$a_80_6 = {53 65 49 6e 63 72 65 61 73 65 51 75 6f 74 61 50 72 69 76 69 6c 65 67 65 } //SeIncreaseQuotaPrivilege  1
		$a_80_7 = {53 45 4c 45 43 54 20 50 52 4f 43 45 53 53 49 44 2c 20 4e 41 4d 45 2c 20 43 52 45 41 54 49 4f 4e 44 41 54 45 2c 20 43 4f 4d 4d 41 4e 44 4c 49 4e 45 20 46 52 4f 4d 20 57 49 4e 33 32 5f 50 52 4f 43 45 53 53 20 57 48 45 52 45 20 4e 41 4d 45 20 3d 20 27 7b 30 7d 27 } //SELECT PROCESSID, NAME, CREATIONDATE, COMMANDLINE FROM WIN32_PROCESS WHERE NAME = '{0}'  1
	condition:
		((#a_01_0  & 1)*1+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1+(#a_01_3  & 1)*1+(#a_80_4  & 1)*1+(#a_80_5  & 1)*1+(#a_80_6  & 1)*1+(#a_80_7  & 1)*1) >=8
 
}