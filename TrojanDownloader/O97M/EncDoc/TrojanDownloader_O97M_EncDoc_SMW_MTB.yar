
rule TrojanDownloader_O97M_EncDoc_SMW_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.SMW!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 05 00 00 "
		
	strings :
		$a_01_0 = {37 6a 63 61 74 2e 63 6f 6d 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 63 51 4f 33 76 64 50 51 61 76 4a 72 66 32 55 72 43 57 2f } //1 7jcat.com/wp-content/cQO3vdPQavJrf2UrCW/
		$a_01_1 = {64 65 73 61 79 75 6e 6f 73 64 65 73 64 65 2e 63 61 73 61 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 6c 79 4e 53 68 57 67 59 4e 37 46 2f } //1 desayunosdesde.casa/wp-content/lyNShWgYN7F/
		$a_01_2 = {70 69 63 6b 75 70 68 69 62 6c 6f 67 2e 74 61 74 61 6d 6f 74 6f 72 73 2e 63 6f 6d 2f 77 70 2d 69 6e 63 6c 75 64 65 73 2f 4c 6f 42 76 37 4c 77 57 65 73 41 68 6b 37 58 75 30 41 2f } //1 pickuphiblog.tatamotors.com/wp-includes/LoBv7LwWesAhk7Xu0A/
		$a_01_3 = {73 75 62 73 2e 76 69 64 65 6f 2f 6e 65 74 72 65 67 69 6e 73 74 61 6c 6c 2f 36 54 4d 78 39 57 51 6b 57 51 47 33 6d 6e 52 79 72 44 2f } //1 subs.video/netreginstall/6TMx9WQkWQG3mnRyrD/
		$a_01_4 = {70 68 75 74 75 6e 67 62 6f 6d 2e 63 6f 6d 2f 63 67 69 2d 62 69 6e 2f 43 61 77 51 6c 62 48 37 33 31 61 55 4d 53 50 2f } //1 phutungbom.com/cgi-bin/CawQlbH731aUMSP/
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=1
 
}