
rule Trojan_Linux_Remaiten_DS_MTB{
	meta:
		description = "Trojan:Linux/Remaiten.DS!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,0c 00 0c 00 0d 00 00 "
		
	strings :
		$a_03_0 = {2f 62 69 6e 2f 62 75 73 79 62 6f 78 20 74 66 74 70 20 2d 67 20 2d 72 20 61 2e 73 68 20 [0-15] 3b 74 66 74 70 20 2d 67 20 2d 72 20 61 2e 73 68 20 [0-15] 3b 2f 62 69 6e 2f 62 75 73 79 62 6f 78 20 77 67 65 74 20 68 74 74 70 [0-18] 2f 61 2e 73 68 3b 77 67 65 74 20 68 74 74 70 [0-18] 2f 61 2e 73 68 3b 2f 62 69 6e 2f 62 75 73 79 62 6f 78 20 73 68 20 61 2e 73 68 3b 73 68 20 61 2e 73 68 [0-07] 2e 74 } //1
		$a_00_1 = {2f 62 69 6e 2f 62 75 73 79 62 6f 78 20 63 68 6d 6f 64 20 2b 78 20 72 65 74 72 3b 2e 2f 72 65 74 72 3e 6b 74 6e 31 3b 2f 62 69 6e 2f 62 75 73 79 62 6f 78 20 63 68 6d 6f 64 20 2b 78 20 6b 74 6e 31 3b 2e 2f 6b 74 6e 31 } //1 /bin/busybox chmod +x retr;./retr>ktn1;/bin/busybox chmod +x ktn1;./ktn1
		$a_00_2 = {42 6f 74 20 69 6e 66 65 63 74 65 64 20 76 69 61 20 54 46 54 50 2f 77 67 65 74 } //1 Bot infected via TFTP/wget
		$a_00_3 = {54 53 55 4e 34 4d 31 20 66 72 6f 6d 20 6f 72 69 67 69 6e 61 6c 20 4b 54 4e } //1 TSUN4M1 from original KTN
		$a_00_4 = {4b 49 4c 4c 42 4f 54 53 } //1 KILLBOTS
		$a_00_5 = {4b 69 6c 6c 69 6e 67 20 63 68 69 6c 64 20 50 49 44 } //1 Killing child PID
		$a_00_6 = {5b 51 42 30 74 5d 20 55 44 50 20 66 6c 6f 6f 64 65 72 20 79 61 20 64 75 6d 62 61 73 73 } //1 [QB0t] UDP flooder ya dumbass
		$a_00_7 = {54 43 50 20 46 6c 6f 6f 64 69 6e 67 } //1 TCP Flooding
		$a_00_8 = {4e 53 53 59 4e 46 4c 4f 4f 44 } //1 NSSYNFLOOD
		$a_00_9 = {51 4a 55 4e 4b 20 66 6c 6f 6f 64 69 6e 67 } //1 QJUNK flooding
		$a_00_10 = {48 54 54 50 20 46 6c 6f 6f 64 } //1 HTTP Flood
		$a_00_11 = {42 6f 74 20 75 6e 73 69 6c 65 6e 63 65 64 } //1 Bot unsilenced
		$a_00_12 = {53 59 4e 20 66 6c 6f 6f 64 65 72 20 66 72 6f 6d 20 74 68 65 20 6f 72 69 67 69 6e 61 6c 20 4b 54 4e } //1 SYN flooder from the original KTN
	condition:
		((#a_03_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_00_11  & 1)*1+(#a_00_12  & 1)*1) >=12
 
}