
rule Ransom_MacOS_Crypat_B_MTB{
	meta:
		description = "Ransom:MacOS/Crypat.B!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_00_0 = {59 57 4e 73 5a 53 42 76 63 69 42 7a 64 47 46 79 64 43 42 76 59 6e 52 68 61 57 35 70 62 6d 63 67 51 6b 6c 55 51 30 39 4a 54 69 42 4f 54 31 63 68 49 43 77 67 59 57 35 6b 49 48 4a 6c 63 33 52 76 63 6d 55 67 57 55 39 56 55 69 42 45 51 56 52 42 49 48 52 6f 5a 53 42 6c 59 58 4e 35 49 48 64 68 65 51 30 4b 53 57 59 67 57 57 39 31 49 47 68 68 64 6d 55 67 63 6d 56 68 62 47 78 35 49 48 5a 68 62 48 56 68 59 6d 78 6c 49 45 52 42 56 45 45 73 49 48 6c 76 64 53 } //1 YWNsZSBvciBzdGFydCBvYnRhaW5pbmcgQklUQ09JTiBOT1chICwgYW5kIHJlc3RvcmUgWU9VUiBEQVRBIHRoZSBlYXN5IHdheQ0KSWYgWW91IGhhdmUgcmVhbGx5IHZhbHVhYmxlIERBVEEsIHlvdS
		$a_00_1 = {50 72 65 73 73 20 53 54 41 52 54 20 62 75 74 74 6f 6e 20 74 6f 20 63 72 61 63 6b 2f 70 61 74 63 68 20 } //1 Press START button to crack/patch 
		$a_00_2 = {2f 44 65 73 6b 74 6f 70 2f 48 4f 57 5f 54 4f 5f 44 45 43 52 59 50 54 } //1 /Desktop/HOW_TO_DECRYPT
		$a_00_3 = {2f 44 65 73 6b 74 6f 70 2f 44 45 43 52 59 50 54 } //1 /Desktop/DECRYPT
		$a_00_4 = {7b 7d 2e 63 72 79 70 74 } //1 {}.crypt
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=4
 
}