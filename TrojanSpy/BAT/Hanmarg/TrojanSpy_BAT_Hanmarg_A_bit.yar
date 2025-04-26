
rule TrojanSpy_BAT_Hanmarg_A_bit{
	meta:
		description = "TrojanSpy:BAT/Hanmarg.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {5c 00 6e 00 6f 00 64 00 33 00 32 00 6b 00 75 00 69 00 2e 00 65 00 78 00 65 00 } //1 \nod32kui.exe
		$a_01_1 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //1 Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_2 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 64 00 61 00 76 00 2e 00 6d 00 65 00 73 00 73 00 61 00 67 00 69 00 6e 00 67 00 65 00 6e 00 67 00 69 00 6e 00 65 00 2e 00 63 00 6f 00 6d 00 2f 00 67 00 75 00 65 00 73 00 73 00 35 00 31 00 35 00 2e 00 66 00 61 00 73 00 74 00 6d 00 61 00 69 00 6c 00 2e 00 66 00 6d 00 2f 00 66 00 69 00 6c 00 65 00 73 00 } //1 https://dav.messagingengine.com/guess515.fastmail.fm/files
		$a_01_3 = {45 6d 61 69 6c 50 61 73 73 77 6f 72 64 73 } //1 EmailPasswords
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}