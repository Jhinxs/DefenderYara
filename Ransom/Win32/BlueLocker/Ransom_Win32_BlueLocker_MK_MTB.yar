
rule Ransom_Win32_BlueLocker_MK_MTB{
	meta:
		description = "Ransom:Win32/BlueLocker.MK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_81_0 = {24 52 65 63 79 63 6c 65 2e 42 69 6e } //1 $Recycle.Bin
		$a_81_1 = {72 65 73 74 6f 72 65 5f 66 69 6c 65 2e 74 78 74 } //1 restore_file.txt
		$a_81_2 = {59 6f 75 72 20 63 6f 6d 70 75 74 65 72 73 20 61 6e 64 20 73 65 72 76 65 72 73 20 61 72 65 20 65 6e 63 72 79 70 74 65 64 } //1 Your computers and servers are encrypted
		$a_81_3 = {2f 43 20 77 6d 69 63 20 53 48 41 44 4f 57 43 4f 50 59 20 44 45 4c 45 54 45 } //1 /C wmic SHADOWCOPY DELETE
		$a_81_4 = {21 21 21 20 44 41 4e 47 45 52 20 21 21 } //1 !!! DANGER !!
		$a_81_5 = {44 4f 20 4e 4f 54 20 4d 4f 44 49 46 59 20 6f 72 20 74 72 79 20 74 6f 20 52 45 43 4f 56 45 52 20 61 6e 79 20 66 69 6c 65 73 20 79 6f 75 72 73 65 6c 66 } //1 DO NOT MODIFY or try to RECOVER any files yourself
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1) >=6
 
}