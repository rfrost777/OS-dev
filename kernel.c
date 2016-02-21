kmain() {

  char* videomem = (char*)0xB8000;
  videomem[0] = 'X';
  videomem[1] = 0x04;

}
