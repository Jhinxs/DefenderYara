
rule PWS_Win32_Lineage_gen_B{
	meta:
		description = "PWS:Win32/Lineage.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,11 00 0f 00 0d 00 00 "
		
	strings :
		$a_00_0 = {23 33 32 37 37 30 } //1 #32770
		$a_00_1 = {5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 \Microsoft\Windows\CurrentVersion\Run
		$a_00_2 = {62 63 64 65 66 67 68 69 38 39 32 31 33 30 36 71 72 73 74 75 76 77 78 79 7a 35 34 37 6a 6b 6c 6d 6e 6f 70 61 } //1 bcdefghi8921306qrstuvwxyz547jklmnopa
		$a_00_3 = {57 58 59 5a 39 32 31 33 30 36 35 34 37 38 46 47 48 49 4a 4b 4c 4d 41 42 43 44 45 4e 4f 50 51 52 53 54 55 56 } //1 WXYZ9213065478FGHIJKLMABCDENOPQRSTUV
		$a_00_4 = {52 61 76 4d 6f 6e 2e 65 78 65 } //1 RavMon.exe
		$a_00_5 = {5c 65 78 70 6c 6f 72 65 72 2e 65 78 65 } //1 \explorer.exe
		$a_01_6 = {50 65 6e 64 69 6e 67 46 69 6c 65 52 65 6e 61 6d 65 4f 70 65 72 61 74 69 6f 6e 73 } //1 PendingFileRenameOperations
		$a_00_7 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 43 6f 6e 74 72 6f 6c 5c 53 65 73 73 69 6f 6e 20 4d 61 6e 61 67 65 72 } //1 SYSTEM\CurrentControlSet\Control\Session Manager
		$a_00_8 = {41 56 50 2e 41 6c 65 72 74 44 69 61 6c 6f 67 } //1 AVP.AlertDialog
		$a_00_9 = {41 56 50 2e 50 72 6f 64 75 63 74 5f 4e 6f 74 69 66 69 63 61 74 69 6f 6e } //1 AVP.Product_Notification
		$a_00_10 = {57 69 6e 45 78 65 63 } //1 WinExec
		$a_02_11 = {ff 15 40 10 40 00 3b c3 74 08 53 50 ff 15 74 10 40 00 8b 3d 44 10 40 00 8d 45 f8 50 53 53 68 ?? 15 40 00 53 53 ff d7 8b f0 68 e8 03 00 00 56 ff 15 34 10 40 00 56 8b 35 b4 10 40 00 ff d6 8d 45 f8 50 53 53 68 ?? 1a 40 00 53 53 ff d7 50 ff d6 } //3
		$a_02_12 = {ff 15 a4 10 40 00 53 68 80 00 00 00 6a 02 53 53 8d 85 80 fe ff ff 68 00 00 00 40 50 ff 15 98 10 40 00 83 f8 ff 89 45 fc 75 68 8d 85 80 fe ff ff 56 50 ff 15 50 10 40 00 8d 85 80 fe ff ff 68 ?? 12 40 00 50 e8 ?? 01 00 00 8d 85 80 fe ff ff 68 54 12 40 00 50 e8 ?? 01 00 00 83 c4 10 8d 85 80 fe ff ff 50 ff 15 a4 10 40 00 } //3
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_01_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_02_11  & 1)*3+(#a_02_12  & 1)*3) >=15
 
}