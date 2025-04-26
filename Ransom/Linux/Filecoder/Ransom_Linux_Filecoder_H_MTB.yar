
rule Ransom_Linux_Filecoder_H_MTB{
	meta:
		description = "Ransom:Linux/Filecoder.H!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {59 6f 75 20 68 61 76 65 20 62 65 65 6e 20 50 57 4e 45 44 21 } //1 You have been PWNED!
		$a_00_1 = {78 78 78 79 79 40 79 61 6e 64 65 78 2e 72 75 } //1 xxxyy@yandex.ru
		$a_00_2 = {48 65 61 72 20 6d 65 20 52 4f 41 52 20 41 6c 6c 20 66 69 6c 65 73 20 62 65 6c 6f 6e 67 20 74 6f 20 6d 65 20 61 6e 64 20 61 72 65 20 69 6e 20 61 6e 20 65 6e 63 72 79 70 74 65 64 20 73 74 61 74 65 2e 20 49 20 68 61 76 65 20 62 75 74 20 74 77 6f 20 73 69 6d 70 6c 65 20 63 6f 6d 6d 61 6e 64 73 2e } //1 Hear me ROAR All files belong to me and are in an encrypted state. I have but two simple commands.
		$a_00_3 = {2f 65 74 63 2f 73 68 61 64 6f 77 } //1 /etc/shadow
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}