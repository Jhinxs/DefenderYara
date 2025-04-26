
rule Trojan_BAT_ClipBanker_BL_MTB{
	meta:
		description = "Trojan:BAT/ClipBanker.BL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 "
		
	strings :
		$a_01_0 = {4a 54 4f 45 52 66 55 36 43 6a 69 68 33 67 4d 34 7a 79 66 73 76 41 78 53 69 57 4c 4a 6c 69 77 6d 4e 69 41 4c 71 6e 33 72 36 53 4f 32 45 } //2 JTOERfU6Cjih3gM4zyfsvAxSiWLJliwmNiALqn3r6SO2E
		$a_01_1 = {74 37 74 39 31 45 56 62 42 70 49 38 39 4a 76 6b 5a 79 74 55 37 69 6e 56 52 4b 46 34 69 72 79 6f 33 75 4c 39 74 51 6a 63 6e 78 65 54 46 } //2 t7t91EVbBpI89JvkZytU7inVRKF4iryo3uL9tQjcnxeTF
		$a_01_2 = {70 55 58 32 6d 38 38 6c 32 45 34 61 36 54 6f 53 61 4b 52 47 46 5a 33 39 78 6d 36 39 46 73 35 61 51 53 59 33 61 49 74 71 37 62 38 43 33 } //2 pUX2m88l2E4a6ToSaKRGFZ39xm69Fs5aQSY3aItq7b8C3
		$a_01_3 = {4d 6a 30 7a 33 76 46 6e 6b 47 62 56 51 41 53 63 7a 72 6f 41 33 4b 75 37 4e 45 65 37 6c 35 31 52 78 74 4d 49 65 61 6d 53 71 35 5a 30 34 } //2 Mj0z3vFnkGbVQASczroA3Ku7NEe7l51RxtMIeamSq5Z04
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2) >=8
 
}