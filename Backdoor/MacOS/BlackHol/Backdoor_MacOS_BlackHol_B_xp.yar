
rule Backdoor_MacOS_BlackHol_B_xp{
	meta:
		description = "Backdoor:MacOS/BlackHol.B!xp,SIGNATURE_TYPE_MACHOHSTR_EXT,05 00 05 00 0a 00 00 "
		
	strings :
		$a_00_0 = {42 6c 61 63 6b 48 6f 6c 65 20 52 41 54 } //1 BlackHole RAT
		$a_00_1 = {54 61 6b 65 20 61 20 53 6e 61 70 73 68 6f 74 } //1 Take a Snapshot
		$a_00_2 = {56 69 63 74 69 6d 73 20 43 6f 6d 70 75 74 65 72 20 77 68 69 63 68 20 65 6e 61 62 6c 65 73 20 74 68 65 20 69 53 69 67 68 74 20 4c 61 6d 70 20 61 6e 64 20 74 68 65 20 4d 69 63 72 6f } //1 Victims Computer which enables the iSight Lamp and the Micro
		$a_00_3 = {41 70 70 6c 65 45 76 65 6e 74 52 65 63 6f 72 64 } //1 AppleEventRecord
		$a_00_4 = {4b 65 72 6e 65 6c 50 61 6e 69 6b 2e 20 53 79 73 74 65 6d 20 69 73 20 63 6f 72 72 75 70 74 2c 20 66 72 65 65 7a 69 6e 67 20 44 65 73 6b 74 6f 70 20 4e 4f 57 21 } //1 KernelPanik. System is corrupt, freezing Desktop NOW!
		$a_00_5 = {52 65 6d 6f 74 65 41 64 64 72 65 73 73 2e 47 65 74 } //1 RemoteAddress.Get
		$a_00_6 = {54 68 69 73 20 66 65 61 74 75 72 65 20 77 69 6c 6c 20 74 72 79 20 74 6f 20 65 72 61 73 65 20 74 68 65 20 66 75 6c 6c 20 48 44 21 20 49 74 20 77 69 6c 6c 20 65 6e 74 65 72 20 74 68 65 20 72 69 67 68 74 20 63 6f 64 65 20 69 6e 74 6f 20 74 68 65 20 53 68 65 6c 6c 20 43 6f 64 65 } //1 This feature will try to erase the full HD! It will enter the right code into the Shell Code
		$a_00_7 = {74 61 6b 65 20 61 6e 64 20 64 6f 77 6e 6c 6f 61 64 20 61 20 53 63 72 65 65 6e 20 53 68 6f 74 20 6f 66 20 74 68 65 20 56 69 63 74 69 6d 73 20 53 63 72 65 65 6e 2e } //1 take and download a Screen Shot of the Victims Screen.
		$a_00_8 = {66 69 70 68 61 63 6b 65 72 2e 74 78 74 } //1 fiphacker.txt
		$a_00_9 = {66 69 70 76 69 63 74 69 6d 2e 74 78 74 } //1 fipvictim.txt
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1) >=5
 
}