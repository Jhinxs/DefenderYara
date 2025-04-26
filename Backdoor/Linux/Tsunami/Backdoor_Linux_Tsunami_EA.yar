
rule Backdoor_Linux_Tsunami_EA{
	meta:
		description = "Backdoor:Linux/Tsunami.EA,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 09 00 00 "
		
	strings :
		$a_00_0 = {4e 4f 54 49 43 45 20 25 73 20 3a 3e 62 6f 74 20 2b 65 78 65 63 20 3c 57 47 45 54 20 50 45 52 4c 20 53 43 52 49 50 54 3e 20 3c 46 49 4c 45 4e 41 4d 45 3e } //2 NOTICE %s :>bot +exec <WGET PERL SCRIPT> <FILENAME>
		$a_00_1 = {4e 4f 54 49 43 45 20 25 73 20 3a 25 73 20 53 4f 43 4b 53 54 52 45 53 53 20 3c 69 70 3e 3a 3c 70 6f 72 74 3e 20 3c 69 6e 74 65 72 66 61 63 65 3e 20 2d 74 20 3c 74 68 72 65 61 64 73 3e 20 2d 73 20 3c 74 69 6d 65 3e 20 5b 2d 70 20 70 61 79 6c 6f 61 64 5d 20 5b 2d 64 20 64 65 6c 61 79 5d } //2 NOTICE %s :%s SOCKSTRESS <ip>:<port> <interface> -t <threads> -s <time> [-p payload] [-d delay]
		$a_00_2 = {4e 4f 54 49 43 45 20 25 73 20 3a 48 54 54 50 20 3c 6d 65 74 68 6f 64 3e 20 3c 74 61 72 67 65 74 3e 20 3c 70 6f 72 74 3e 20 3c 70 61 74 68 3e 20 3c 74 69 6d 65 3e 20 3c 70 6f 77 65 72 3e 20 3d 20 41 6e 20 65 78 74 72 65 6d 65 6c 79 20 70 6f 77 65 72 66 75 6c 20 48 54 54 50 20 66 6c 6f 6f 64 65 72 } //2 NOTICE %s :HTTP <method> <target> <port> <path> <time> <power> = An extremely powerful HTTP flooder
		$a_00_3 = {4e 4f 54 49 43 45 20 25 73 20 3a 53 48 44 49 53 41 53 53 20 3c 63 6f 6d 6d 61 6e 64 3e 20 3d 20 45 78 65 63 75 74 65 73 20 61 20 70 73 75 65 64 6f 2d 64 61 65 6d 6f 6e 69 7a 65 64 20 63 6f 6d 6d 61 6e 64 } //2 NOTICE %s :SHDISASS <command> = Executes a psuedo-daemonized command
		$a_00_4 = {28 67 63 63 20 2d 6f 20 25 73 20 2f 74 6d 70 2f 2e 63 3b 20 72 6d 20 2d 72 66 20 2f 74 6d 70 2f 2e 63 3b 20 6b 69 6c 6c 20 2d 39 20 25 64 3b 20 25 73 20 26 29 20 3e 20 2f 64 65 76 2f 6e 75 6c 6c 20 32 3e 26 31 } //1 (gcc -o %s /tmp/.c; rm -rf /tmp/.c; kill -9 %d; %s &) > /dev/null 2>&1
		$a_00_5 = {54 65 6c 6e 65 74 50 61 79 6c 6f 61 64 } //1 TelnetPayload
		$a_00_6 = {63 68 6d 6f 64 20 37 37 35 20 2f 76 61 72 2f 62 69 6e 2f 25 73 } //1 chmod 775 /var/bin/%s
		$a_00_7 = {5b 53 59 4e 5d 20 41 74 74 61 63 6b 69 6e 67 } //2 [SYN] Attacking
		$a_00_8 = {50 52 49 56 4d 53 47 20 25 73 20 3a 5b 54 45 4c 4e 45 54 5d 20 5b 2d 5d 20 46 41 49 4c 45 44 20 54 4f 20 53 45 4e 44 20 53 48 45 4c 4c 20 50 41 59 4c 4f 41 44 20 2d 2d 2d 3e 20 25 73 3a 25 73 3a 25 73 } //2 PRIVMSG %s :[TELNET] [-] FAILED TO SEND SHELL PAYLOAD ---> %s:%s:%s
	condition:
		((#a_00_0  & 1)*2+(#a_00_1  & 1)*2+(#a_00_2  & 1)*2+(#a_00_3  & 1)*2+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*2+(#a_00_8  & 1)*2) >=4
 
}