
rule Ransom_Win32_MedusaLocker_B_MTB{
	meta:
		description = "Ransom:Win32/MedusaLocker.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 10 00 00 "
		
	strings :
		$a_81_0 = {5c 4d 65 64 75 73 61 4c 6f 63 6b 65 72 49 6e 66 6f 5c 4d 65 64 75 73 61 4c 6f 63 6b 65 72 50 72 6f 6a 65 63 74 5c 4d 65 64 75 73 61 4c 6f 63 6b 65 72 5c 52 65 6c 65 61 73 65 5c 4d 65 64 75 73 61 4c 6f 63 6b 65 72 2e 70 64 62 } //1 \MedusaLockerInfo\MedusaLockerProject\MedusaLocker\Release\MedusaLocker.pdb
		$a_81_1 = {53 4f 46 54 57 41 52 45 5c 4d 65 64 75 73 61 } //1 SOFTWARE\Medusa
		$a_81_2 = {53 4f 46 54 57 41 52 45 5c 4d 44 53 4c 4b } //1 SOFTWARE\MDSLK
		$a_81_3 = {7b 38 37 36 31 41 42 42 44 2d 37 46 38 35 2d 34 32 45 45 2d 42 32 37 32 2d 41 37 36 31 37 39 36 38 37 43 36 33 7d } //1 {8761ABBD-7F85-42EE-B272-A76179687C63}
		$a_81_4 = {7b 33 45 35 46 43 37 46 39 2d 39 41 35 31 2d 34 33 36 37 2d 39 30 36 33 2d 41 31 32 30 32 34 34 46 42 45 43 37 7d } //1 {3E5FC7F9-9A51-4367-9063-A120244FBEC7}
		$a_81_5 = {7b 36 45 44 44 36 44 37 34 2d 43 30 30 37 2d 34 45 37 35 2d 42 37 36 41 2d 45 35 37 34 30 39 39 35 45 32 34 43 7d } //1 {6EDD6D74-C007-4E75-B76A-E5740995E24C}
		$a_81_6 = {76 73 73 61 64 6d 69 6e 2e 65 78 65 20 64 65 6c 65 74 65 } //1 vssadmin.exe delete
		$a_81_7 = {62 63 64 65 64 69 74 2e 65 78 65 20 2f 73 65 74 20 7b 64 65 66 61 75 6c 74 7d } //1 bcdedit.exe /set {default}
		$a_81_8 = {77 62 61 64 6d 69 6e 20 64 65 6c 65 74 65 20 73 79 73 74 65 6d 73 74 61 74 65 62 61 63 6b 75 70 } //1 wbadmin delete systemstatebackup
		$a_81_9 = {2e 65 78 65 2c 2e 64 6c 6c 2c 2e 73 79 73 2c 2e 69 6e 69 2c 2e 6c 6e 6b 2c 2e 72 64 70 2c 2e 65 6e 63 72 79 70 74 65 64 } //1 .exe,.dll,.sys,.ini,.lnk,.rdp,.encrypted
		$a_81_10 = {5b 4c 4f 43 4b 45 52 5d } //1 [LOCKER]
		$a_81_11 = {53 4f 46 54 57 41 52 45 5c 61 6b 6f 63 66 67 } //1 SOFTWARE\akocfg
		$a_81_12 = {77 6d 69 63 2e 65 78 65 20 53 48 41 44 4f 57 43 4f 50 59 20 2f 6e 6f 69 6e 74 65 72 61 63 74 69 76 65 } //1 wmic.exe SHADOWCOPY /nointeractive
		$a_81_13 = {59 4f 55 52 20 43 4f 4d 50 41 4e 59 20 4e 45 54 57 4f 52 4b 20 48 41 53 20 42 45 45 4e 20 50 45 4e 45 54 52 41 54 45 44 } //1 YOUR COMPANY NETWORK HAS BEEN PENETRATED
		$a_81_14 = {41 4c 4c 20 59 4f 55 52 20 49 4d 50 4f 52 54 41 4e 54 20 46 49 4c 45 53 20 48 41 56 45 20 42 45 45 4e 20 45 4e 43 52 59 50 54 45 44 21 } //1 ALL YOUR IMPORTANT FILES HAVE BEEN ENCRYPTED!
		$a_81_15 = {52 65 63 6f 76 65 72 79 5f 49 6e 73 74 72 75 63 74 69 6f 6e 73 2e 68 74 6d 6c } //1 Recovery_Instructions.html
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1+(#a_81_13  & 1)*1+(#a_81_14  & 1)*1+(#a_81_15  & 1)*1) >=6
 
}