
rule TrojanDownloader_O97M_EncDoc_EMTO_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.EMTO!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 06 00 00 "
		
	strings :
		$a_01_0 = {61 73 65 6d 70 61 79 65 2e 63 6f 6d 2f 34 30 34 2f 7a 52 45 58 6c 64 4c 38 5a 66 70 73 45 65 70 69 43 2f } //1 asempaye.com/404/zREXldL8ZfpsEepiC/
		$a_01_1 = {66 72 65 65 73 6f 66 74 31 38 2e 63 6f 6d 2f 75 72 71 2f 64 64 31 73 39 57 79 44 4c 6b 64 4d 2f } //1 freesoft18.com/urq/dd1s9WyDLkdM/
		$a_01_2 = {76 69 64 61 72 65 66 75 67 69 6f 2e 63 6f 6d 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 41 51 6a 37 6b 5a 55 52 38 56 63 4b 59 4f 65 2f } //1 vidarefugio.com/wp-content/AQj7kZUR8VcKYOe/
		$a_01_3 = {72 6a 73 73 6a 68 61 72 6b 68 61 6e 64 2e 63 6f 6d 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 4e 45 65 6e 47 67 35 55 48 41 32 34 67 6e 5a 41 6c 59 6a 2f } //1 rjssjharkhand.com/wp-content/NEenGg5UHA24gnZAlYj/
		$a_01_4 = {70 65 64 72 6f 72 69 62 65 69 72 6f 2e 77 6f 72 6b 2f 77 70 2d 61 64 6d 69 6e 2f 71 4f 6b 51 51 2f } //1 pedroribeiro.work/wp-admin/qOkQQ/
		$a_01_5 = {68 6f 6a 65 65 6d 64 69 61 2e 6c 69 66 65 2f 64 65 74 65 63 74 6f 72 2f 6b 6c 77 48 67 43 39 65 61 74 2f } //1 hojeemdia.life/detector/klwHgC9eat/
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=1
 
}