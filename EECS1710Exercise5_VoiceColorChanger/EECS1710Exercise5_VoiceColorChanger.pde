import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Programmer: Makiese Light Sita
//Program: Minim Voice Input Transmitter
//Started: Tuesday, November 23 2021
//Completed: Tuesday, November 23 2021
Minim minim;
AudioInput in;
int bufferSize = 512;
float amp = 0;

void setupMinim() {
  minim = new Minim(this);
  in = minim.getLineIn(Minim.STEREO, bufferSize);
}

void stopMinim() {
  in.close();
  minim.stop();
}

void updateMinim() {
  amp = getAmp();
}

float getAmp() {
  return in.mix.level();
}
