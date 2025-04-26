
rule Trojan_WinNT_AdwindAY_B_MTB{
	meta:
		description = "Trojan:WinNT/AdwindAY.B!MTB,SIGNATURE_TYPE_JAVAHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {5c 44 65 73 6b 74 6f 70 2e 6a 61 72 } //1 \Desktop.jar
		$a_01_1 = {52 45 47 20 41 44 44 20 48 4b 45 59 5f 43 55 52 52 45 4e 54 5f 55 53 45 52 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 20 2f 76 20 44 65 73 6b 74 6f 70 20 2f 64 } //1 REG ADD HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /v Desktop /d
		$a_00_2 = {44 49 52 45 43 54 4f 52 59 55 50 } //1 DIRECTORYUP
		$a_00_3 = {43 48 4e 47 44 49 52 } //1 CHNGDIR
		$a_00_4 = {43 6c 69 65 6e 74 2f 2e 6d 61 75 73 63 73 } //1 Client/.mauscs
		$a_00_5 = {6c 6f 63 61 6c 68 6f 73 74 } //1 localhost
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=6
 
}