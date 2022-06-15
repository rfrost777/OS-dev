kmain() {
// let's write "X" by manipulating our video memory,
// as "proof of concept"
  char* videomem = (char*)0xB8000;
  videomem[0] = 'X';
  videomem[1] = 0x04;

// TODO: write a simple sched or swapper and start now *PID(0)*
// TODO: now would be a good time to start initd *PID(1)*
}
