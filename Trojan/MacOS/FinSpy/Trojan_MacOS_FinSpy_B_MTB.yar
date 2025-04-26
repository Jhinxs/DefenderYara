
rule Trojan_MacOS_FinSpy_B_MTB{
	meta:
		description = "Trojan:MacOS/FinSpy.B!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_02_0 = {73 79 73 74 65 6d 5f 70 72 6f 66 69 6c 65 72 20 53 50 55 53 42 44 61 74 61 54 79 70 65 20 7c 20 65 67 72 65 70 20 2d 69 [0-05] 4d 61 6e 75 66 61 63 74 75 72 65 72 3a 20 28 70 61 72 61 6c 6c 65 6c 73 7c 76 6d 77 61 72 65 7c 76 69 72 74 75 61 6c 62 6f 78 29 } //1
		$a_01_1 = {2f 75 73 72 2f 73 62 69 6e 2f 63 68 6f 77 6e 20 72 6f 6f 74 3a 77 68 65 65 6c 20 2f 62 69 6e 2f 63 68 6d 6f 64 20 30 36 37 37 37 } //1 /usr/sbin/chown root:wheel /bin/chmod 06777
		$a_02_2 = {2f 73 62 69 6e 2f 6d 6f 75 6e 74 5f 6e 66 73 20 2f 53 79 73 74 65 6d 2f 4c 69 62 72 61 72 79 2f 43 6f 72 65 53 65 72 76 69 63 65 73 2f [0-20] 2e 61 70 70 } //1
		$a_01_3 = {53 74 6f 72 61 67 65 2e 66 72 61 6d 65 77 6f 72 6b 20 2f 4c 69 62 72 61 72 79 2f 46 72 61 6d 65 77 6f 72 6b 73 20 6c 6f 67 69 6e 64 2e 70 6c 69 73 74 20 2f 4c 69 62 72 61 72 79 2f 4c 61 75 6e 63 68 41 67 65 6e 74 73 } //1 Storage.framework /Library/Frameworks logind.plist /Library/LaunchAgents
	condition:
		((#a_02_0  & 1)*1+(#a_01_1  & 1)*1+(#a_02_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}