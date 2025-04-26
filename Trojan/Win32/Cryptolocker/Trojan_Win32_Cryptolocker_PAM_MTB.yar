
rule Trojan_Win32_Cryptolocker_PAM_MTB{
	meta:
		description = "Trojan:Win32/Cryptolocker.PAM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 "
		
	strings :
		$a_01_0 = {4e 6f 6d 69 6e 61 74 75 73 5f 54 6f 78 69 63 42 61 74 74 65 72 79 2e 70 64 62 } //2 Nominatus_ToxicBattery.pdb
		$a_01_1 = {6e 00 65 00 74 00 20 00 73 00 74 00 6f 00 70 00 20 00 4e 00 65 00 74 00 42 00 61 00 63 00 6b 00 75 00 70 00 20 00 42 00 4d 00 52 00 20 00 4d 00 54 00 46 00 54 00 50 00 20 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 2f 00 79 00 } //2 net stop NetBackup BMR MTFTP Service /y
		$a_01_2 = {73 00 63 00 20 00 63 00 6f 00 6e 00 66 00 69 00 67 00 20 00 53 00 51 00 4c 00 54 00 45 00 4c 00 45 00 4d 00 45 00 54 00 52 00 59 00 24 00 45 00 43 00 57 00 44 00 42 00 32 00 20 00 73 00 74 00 61 00 72 00 74 00 3d 00 20 00 64 00 69 00 73 00 61 00 62 00 6c 00 65 00 64 00 } //2 sc config SQLTELEMETRY$ECWDB2 start= disabled
		$a_81_3 = {76 73 73 61 64 6d 69 6e 20 64 65 6c 65 74 65 20 73 68 61 64 6f 77 73 20 2f 61 6c 6c 20 2f 71 75 69 65 74 20 26 26 20 77 6d 69 63 20 73 68 61 64 6f 77 63 6f 70 79 20 64 65 6c 65 74 65 20 26 26 20 6e 65 74 20 75 73 65 72 73 20 } //2 vssadmin delete shadows /all /quiet && wmic shadowcopy delete && net users 
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_81_3  & 1)*2) >=8
 
}