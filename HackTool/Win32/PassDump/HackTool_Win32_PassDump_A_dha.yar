
rule HackTool_Win32_PassDump_A_dha{
	meta:
		description = "HackTool:Win32/PassDump.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {53 45 4c 45 43 54 20 4f 52 49 47 49 4e 5f 55 52 4c 2c 55 53 45 52 4e 41 4d 45 5f 56 41 4c 55 45 2c 50 41 53 53 57 4f 52 44 5f 56 41 4c 55 45 20 46 52 4f 4d 20 4c 4f 47 49 4e 53 } //1 SELECT ORIGIN_URL,USERNAME_VALUE,PASSWORD_VALUE FROM LOGINS
		$a_01_1 = {5c 4c 6f 63 61 6c 5c 47 6f 6f 67 6c 65 5c 43 68 72 6f 6d 65 5c 55 73 65 72 20 44 61 74 61 5c 44 65 66 61 75 6c 74 5c 4c 6f 67 69 6e 20 44 61 74 61 } //1 \Local\Google\Chrome\User Data\Default\Login Data
		$a_01_2 = {53 45 4c 45 43 54 20 65 6e 63 72 79 70 74 65 64 55 73 65 72 6e 61 6d 65 2c 20 65 6e 63 72 79 70 74 65 64 50 61 73 73 77 6f 72 64 2c 20 68 6f 73 74 6e 61 6d 65 2c 68 74 74 70 52 65 61 6c 6d 20 46 52 4f 4d 20 6d 6f 7a 5f 6c 6f 67 69 6e 73 } //1 SELECT encryptedUsername, encryptedPassword, hostname,httpRealm FROM moz_logins
		$a_01_3 = {2e 5c 50 41 49 5c 49 45 66 6f 72 58 50 70 61 73 73 77 6f 72 64 73 2e 74 78 74 } //1 .\PAI\IEforXPpasswords.txt
		$a_01_4 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 38 00 20 00 2d 00 20 00 31 00 30 00 20 00 49 00 45 00 20 00 63 00 72 00 65 00 64 00 65 00 6e 00 74 00 69 00 61 00 6c 00 73 00 } //1 Windows 8 - 10 IE credentials
		$a_01_5 = {43 61 6e 20 6e 6f 74 20 63 6f 70 79 20 57 61 6e 64 20 46 69 6c 65 } //1 Can not copy Wand File
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}