
rule PWS_O97M_Rofpor_A{
	meta:
		description = "PWS:O97M/Rofpor.A,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {64 6d 66 6f 72 65 76 65 72 2e 62 69 7a 2f 72 65 70 6f 72 74 65 72 2e 70 68 70 3f 6d 73 67 3d 22 20 26 20 6d 65 73 73 61 67 65 5f 6e 6f 5f 73 70 61 63 65 73 20 26 20 22 26 75 6e 61 6d 65 3d 22 20 26 20 75 73 65 72 6e 61 6d 65 5f 6e 6f 5f 73 70 61 63 65 73 20 26 20 22 26 70 77 6f 72 64 3d } //1 dmforever.biz/reporter.php?msg=" & message_no_spaces & "&uname=" & username_no_spaces & "&pword=
		$a_01_1 = {43 61 6c 6c 20 75 70 6c 6f 61 64 50 4f 53 54 28 22 4e 55 4c 4c 22 2c 20 22 4e 55 4c 4c 22 2c 20 22 4d 41 43 52 4f 5f 45 58 45 43 55 54 45 44 5f 57 4f 52 44 5f 50 5f 4f 4e 4c 59 22 29 } //1 Call uploadPOST("NULL", "NULL", "MACRO_EXECUTED_WORD_P_ONLY")
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}