
rule Backdoor_Linux_BitXo_A_MTB{
	meta:
		description = "Backdoor:Linux/BitXo.A!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,05 00 05 00 07 00 00 "
		
	strings :
		$a_01_0 = {49 d3 4f a7 a2 bc 4d fa 40 cf a6 32 31 e9 59 a1 } //1
		$a_00_1 = {2f 64 65 76 2f 75 72 61 6e 64 6f 6d } //1 /dev/urandom
		$a_00_2 = {2f 76 61 72 2f 74 6d 70 2f 2e 75 6e 65 74 6e 73 } //1 /var/tmp/.unetns
		$a_00_3 = {4d 33 54 34 4d 30 52 50 48 31 4e 33 2e 6b 6f } //1 M3T4M0RPH1N3.ko
		$a_00_4 = {62 34 64 34 62 31 74 } //1 b4d4b1t
		$a_03_5 = {01 10 8f e0 01 20 a0 e3 10 80 8d e5 0c 40 8d e5 08 00 8d e5 04 00 8d e5 00 00 8d e5 01 00 70 e3 00 70 a0 e1 [0-05] 00 10 a0 e1 08 30 a0 e1 05 20 a0 e1 04 00 a0 e1 [0-05] 01 00 70 e3 [0-05] 01 00 a0 e3 [0-05] 08 30 a0 e1 05 20 a0 e1 07 10 a0 e1 04 00 a0 e1 [0-05] 01 00 70 e3 } //1
		$a_00_6 = {08 44 9f e5 04 00 a0 e1 90 02 05 00 00 50 e3 90 02 05 f8 23 9f e5 f8 03 9f e5 02 20 8f e0 c8 3e 52 e5 03 11 82 e0 c4 4e 01 e5 3b 1d 42 e2 08 10 41 e2 83 10 81 e0 b0 01 c1 e1 03 11 82 e0 08 00 a0 e3 01 30 83 e2 b0 0e 01 e5 c8 3e 42 e5 c4 a3 9f e5 c4 83 9f e5 c4 53 9f e5 c4 93 9f e5 0a a0 8f e0 08 80 8f e0 00 70 a0 e3 01 40 a0 e3 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_03_5  & 1)*1+(#a_00_6  & 1)*1) >=5
 
}