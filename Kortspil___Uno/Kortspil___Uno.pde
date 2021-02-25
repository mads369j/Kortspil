String[] kort={"blå1", "blå2", "blå3", "blå4", "blå5", "blå6", "blå7", "blå8", "blå9", "rød1", "rød2", "rød3", "rød4", "rød5", "rød6", "rød7", "rød8", "rød9", "grøn1", "grøn2", "grøn3", "grøn4", "grøn5", "grøn6", "grøn7", "grøn8", "grøn9", "gul1", "gul2", "gul3", "gul4", "gul5", "gul6", "gul7", "gul8", "gul9"};
ArrayList<String> Kortbunke=new ArrayList();
ArrayList<String> Kortbunke2=new ArrayList();
PImage blaa1, blaa2, blaa3, blaa4, blaa5, blaa6, blaa7, blaa8, blaa9, roed1, roed2, roed3, roed4, roed5, roed6, roed7, roed8, roed9, groen1, groen2, groen3, groen4, groen5, groen6, groen7, groen8, groen9, gul1, gul2, gul3, gul4, gul5, gul6, gul7, gul8, gul9;
boolean blue1, blue2, blue3, blue4, blue5, blue6, blue7, blue8, blue9, red1, red2, red3, red4, red5, red6, red7, red8, red9, green1, green2, green3, green4, green5, green6, green7, green8, green9, yellow1, yellow2, yellow3, yellow4, yellow5, yellow6, yellow7, yellow8, yellow9;
int tur=1;
int skaerm;
PImage Simpfun;
PImage Spilvundet;
PImage Deltagispil;
PImage Indstillinger;
PImage Lukspillet;
PImage Lydstyrkestreg;
int lposx=470;
PImage Lydstyrketekst;
PImage nultekst;
PImage hundredtekst;
PImage Tilbagepil;
PImage Kortbaggrund;

ArrayList<String> haand1=new ArrayList();
ArrayList<String> haand2=new ArrayList();

void setup(){
size(1000,910);
loadkort();
loadarray();
//println(Kortbunke);
}

void draw(){
clear();
//liggekort(); 
if(skaerm==0){
hovedmenu();
}
if(skaerm==1){
deltagispil();
}
if(skaerm==2){
indstillinger();
}
if(skaerm==3){
lukspillet();
}
}

void mouseClicked(){
if(skaerm==0&&mouseX>333&&mouseX<666&&mouseY>490&&mouseY<580){
  skaerm=1;
}
if(skaerm==0&&mouseX>333&&mouseX<666&&mouseY>610&&mouseY<700){
  skaerm=2;
}
if(skaerm==0&&mouseX>333&&mouseX<666&&mouseY>730&&mouseY<820){
  skaerm=3;
}
if (skaerm==2){

if (mouseX>200&&mouseX<739&&mouseY>490&&mouseY<580){
lposx=mouseX;
}
if(mouseX>20&&mouseX<80&&mouseY>850&&mouseY<900){
skaerm=0;
}
}

if(skaerm==1){
if(tur==1&&mouseX>333&&mouseX<466&&mouseY>370&&mouseY<547&&Kortbunke.size()>0){
int kort1=(int)random(0,Kortbunke.size()-1);
      String kort1String=Kortbunke.get(kort1);
      //println(kort1 + Kortbunke.get(kort1));
      haand1.add(kort1String);
      Kortbunke.remove(kort1);
      tur=2;
}
if(haand1.size()>=1&&tur==1){
for(int i=0; i<haand1.size(); i++){
if(mouseX>50+136*i&&mouseX<188+136*i&&mouseY>700&&mouseY<877){
if(haand1.get(i)=="blå1"&&blue1==true){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="blå2"&&blue2==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="blå3"&&blue3==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="blå4"&&blue4==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="blå5"&&blue5==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="blå6"&&blue6==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="blå7"&&blue7==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="blå8"&&blue8==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="blå9"&&blue9==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="grøn1"&&green1==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="grøn2"&&green2==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="grøn3"&&green3==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="grøn4"&&green4==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="grøn5"&&green5==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="grøn6"&&green6==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="grøn7"&&green7==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="grø8"&&green8==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="grøn9"&&green9==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="rød1"&&red1==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="rød2"&&red2==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="rød3"&&red3==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="rød4"&&red4==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="rød5"&&red5==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="rød6"&&red6==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
}else{
if(haand1.get(i)=="rød7"&&red7==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="rød8"&&red8==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="rød9"&&red9==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="gul1"&&yellow1==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="gul2"&&yellow2==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="gul3"&&yellow3==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="gul4"&&yellow4==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="gul5"&&yellow5==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="gul6"&&yellow6==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="gul7"&&yellow7==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="gul8"&&yellow8==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}else{
if(haand1.get(i)=="gul9"&&yellow9==true&&tur==1){
String kort =haand1.get(i);
Kortbunke2.add(kort);
haand1.remove(i);
tur=2;
}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}};

void cpu(){
if(haand2.size()>=1&&tur==2){
for(int i=0; i<haand2.size(); i++){
if(haand2.get(i)=="blå1"&&blue1==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="blå2"&&blue2==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="blå3"&&blue3==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="blå4"&&blue4==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="blå5"&&blue5==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="blå6"&&blue6==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="blå7"&&blue7==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="blå8"&&blue8==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="blå9"&&blue9==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="grøn1"&&green1==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="grøn2"&&green2==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="grøn3"&&green3==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="grøn4"&&green4==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="grøn5"&&green5==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="grøn6"&&green6==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="grøn7"&&green7==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="grø8"&&green8==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="grøn9"&&green9==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="rød1"&&red1==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="rød2"&&red2==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="rød3"&&red3==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="rød4"&&red4==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="rød5"&&red5==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="rød6"&&red6==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="rød7"&&red7==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="rød8"&&red8==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="rød9"&&red9==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="gul1"&&yellow1==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="gul2"&&yellow2==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="gul3"&&yellow3==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="gul4"&&yellow4==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="gul5"&&yellow5==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="gul6"&&yellow6==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="gul7"&&yellow7==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="gul8"&&yellow8==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{
if(haand2.get(i)=="gul9"&&yellow9==true&&tur==2){
String kort =haand2.get(i);
Kortbunke2.add(kort);
haand2.remove(i);
tur=1;
}else{if(tur==2&&Kortbunke.size()>0){
int kort1=(int)random(0,Kortbunke.size()-1);
      String kort1String=Kortbunke.get(kort1);
      //println(kort1 + Kortbunke.get(kort1));
      haand2.add(kort1String);
      Kortbunke.remove(kort1);
      tur=1;
}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}

void hovedmenu(){
background(0,132,255);
image(Simpfun,333,90,333,90);
image(Spilvundet,333,210,333,90);
image(Deltagispil,333,490,333,90);
image(Indstillinger,333,610,333,90);
image(Lukspillet,333,730,333,90);
}

void deltagispil(){
background(0,132,255);
image(Kortbaggrund,333,370,133,177);
traekkort();
liggekort();
vishaand();
visbordkort();
cpu();
if(haand1.size()==0||haand2.size()==0){
  skaerm=0;
Kortbunke.clear();
Kortbunke2.clear();
haand1.clear();
haand2.clear();
loadarray();
startafspil=true;
}
}

void indstillinger(){
background(0,132,255);
image(Lydstyrkestreg,200,490,599,90);
image(Lydstyrketekst,280,370,415,90);
image(nultekst,170,510,40,40);
image(hundredtekst,799,510,40,40);
image(Tilbagepil,20,850,60,50);
fill(0);
rect(lposx,510,60,40);

}

void lukspillet(){

}

void visbordkort(){
 if(Kortbunke2.get(Kortbunke2.size()-1).equalsIgnoreCase("blå1")){
    //println("high1");
  //vishaand1.add(blaa1);
   image(blaa1,469,370,133,177);
  }
   if(Kortbunke2.get(Kortbunke2.size()-1).equalsIgnoreCase("blå2")){
      //println("high2");
  //vishaand1.add(blaa2);
   image(blaa2,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1).equalsIgnoreCase("blå3")){
     //println("high3");
  //vishaand1.add(blaa3);
   image(blaa3,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1).equalsIgnoreCase("blå4")){
  //vishaand1.add(blaa4);
   image(blaa4,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1)=="blå5"){
  //vishaand1.add(blaa5);
   image(blaa5,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1)=="blå6"){
  //vishaand1.add(blaa6);
   image(blaa6,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1)=="blå7"){
  //vishaand1.add(blaa7);
   image(blaa7,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1)=="blå8"){
  //vishaand1.add(blaa8);
   image(blaa8,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1)=="blå9"){
  //vishaand1.add(blaa9);
   image(blaa9,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1)=="rød1"){
  //vishaand1.add(roed1);
   image(roed1,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1)=="rød2"){
  //vishaand1.add(roed3);
   image(roed2,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1)=="rød3"){
  //vishaand1.add(roed3);
   image(roed3,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1)=="rød4"){
  //vishaand1.add(roed4);
   image(roed4,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1)=="rød5"){
  //vishaand1.add(roed5);
   image(roed5,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1)=="rød6"){
  //vishaand1.add(roed6);
   image(roed6,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1)=="rød7"){
  //vishaand1.add(roed7);
   image(roed7,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1)=="rød8"){
  //vishaand1.add(roed8);
   image(roed8,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1)=="rød9"){
  //vishaand1.add(roed9);
   image(roed9,469,370,133,177);
  }
if(Kortbunke2.get(Kortbunke2.size()-1)=="grøn1"){
  //vishaand1.add(groen1);
   image(groen1,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1)=="grøn2"){
  //vishaand1.add(groen2);
   image(groen2,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1)=="grøn3"){
  //vishaand1.add(groen3);
   image(groen3,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1)=="grøn4"){
  //vishaand1.add(groen4);
   image(groen4,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1)=="grøn5"){
  //vishaand1.add(groen5);
   image(groen5,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1)=="grøn6"){
  //vishaand1.add(groen6);
   image(groen6,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1)=="grøn7"){
  //vishaand1.add(groen7);
   image(groen7,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1)=="grøn8"){
  //vishaand1.add(groen8);
   image(groen8,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1)=="grøn9"){
  //vishaand1.add(groen9);
   image(groen9,469,370,133,177);
  }
   if(Kortbunke2.get(Kortbunke2.size()-1)=="gul1"){
  //vishaand1.add(gul1);
   image(gul1,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1)=="gul2"){
  //vishaand1.add(gul2);
   image(gul2,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1)=="gul3"){
  //vishaand1.add(gul3);
   image(gul3,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1)=="gul4"){
  //vishaand1.add(gul4);
   image(gul4,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1)=="gul5"){
  //vishaand1.add(gul5);
   image(gul5,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1)=="gul6"){
  //vishaand1.add(gul6);
   image(gul6,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1)=="gul7"){
  //vishaand1.add(gul7);
   image(gul7,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1)=="gul8"){
  //vishaand1.add(gul8);
   image(gul8,469,370,133,177);
  }
  if(Kortbunke2.get(Kortbunke2.size()-1)=="gul9"){
  //vishaand1.add(gul9);
  image(gul9,469,370,133,177);
  }
}

ArrayList<PImage> vishaand1=new ArrayList();
void vishaand(){
  //image(gul9,500,500);
  //println(haand1);
for(int i = 0; i < haand1.size();i++){
  if(haand1.get(i).equalsIgnoreCase("blå1")){
    //println("high1");
  //vishaand1.add(blaa1);
   image(blaa1,50+136*i,700,133,177);
  }
   if(haand1.get(i).equalsIgnoreCase("blå2")){
      //println("high2");
  //vishaand1.add(blaa2);
   image(blaa2,50+136*i,700,133,177);
  }
  if(haand1.get(i).equalsIgnoreCase("blå3")){
     //println("high3");
  //vishaand1.add(blaa3);
   image(blaa3,50+136*i,700,133,177);
  }
  if(haand1.get(i).equalsIgnoreCase("blå4")){
  //vishaand1.add(blaa4);
   image(blaa4,50+136*i,700,133,177);
  }
  if(haand1.get(i)=="blå5"){
  //vishaand1.add(blaa5);
   image(blaa5,50+136*i,700,133,177);
  }
  if(haand1.get(i)=="blå6"){
  //vishaand1.add(blaa6);
   image(blaa6,50+136*i,700,133,177);
  }
  if(haand1.get(i)=="blå7"){
  //vishaand1.add(blaa7);
   image(blaa7,50+136*i,700,133,177);
  }
  if(haand1.get(i)=="blå8"){
  //vishaand1.add(blaa8);
   image(blaa8,50+136*i,700,133,177);
  }
  if(haand1.get(i)=="blå9"){
  //vishaand1.add(blaa9);
   image(blaa9,50+136*i,700,133,177);
  }
  if(haand1.get(i)=="rød1"){
  //vishaand1.add(roed1);
   image(roed1,50+136*i,700,133,177);
  }
  if(haand1.get(i)=="rød2"){
  //vishaand1.add(roed3);
   image(roed2,50+136*i,700,133,177);
  }
  if(haand1.get(i)=="rød3"){
  //vishaand1.add(roed3);
   image(roed3,50+136*i,700,133,177);
  }
  if(haand1.get(i)=="rød4"){
  //vishaand1.add(roed4);
   image(roed4,50+136*i,700,133,177);
  }
  if(haand1.get(i)=="rød5"){
  //vishaand1.add(roed5);
   image(roed5,50+136*i,700,133,177);
  }
  if(haand1.get(i)=="rød6"){
  //vishaand1.add(roed6);
   image(roed6,50+136*i,700,133,177);
  }
  if(haand1.get(i)=="rød7"){
  //vishaand1.add(roed7);
   image(roed7,50+136*i,700,133,177);
  }
  if(haand1.get(i)=="rød8"){
  //vishaand1.add(roed8);
   image(roed8,50+136*i,700,133,177);
  }
  if(haand1.get(i)=="rød9"){
  //vishaand1.add(roed9);
   image(roed9,50+136*i,700,133,177);
  }
if(haand1.get(i)=="grøn1"){
  //vishaand1.add(groen1);
   image(groen1,50+136*i,700,133,177);
  }
  if(haand1.get(i)=="grøn2"){
  //vishaand1.add(groen2);
   image(groen2,50+136*i,700,133,177);
  }
  if(haand1.get(i)=="grøn3"){
  //vishaand1.add(groen3);
   image(groen3,50+136*i,700,133,177);
  }
  if(haand1.get(i)=="grøn4"){
  //vishaand1.add(groen4);
   image(groen4,50+136*i,700,133,177);
  }
  if(haand1.get(i)=="grøn5"){
  //vishaand1.add(groen5);
   image(groen5,50+136*i,700,133,177);
  }
  if(haand1.get(i)=="grøn6"){
  //vishaand1.add(groen6);
   image(groen6,50+136*i,700,133,177);
  }
  if(haand1.get(i)=="grøn7"){
  //vishaand1.add(groen7);
   image(groen7,50+136*i,700,133,177);
  }
  if(haand1.get(i)=="grøn8"){
  //vishaand1.add(groen8);
   image(groen8,50+136*i,700,133,177);
  }
  if(haand1.get(i)=="grøn9"){
  //vishaand1.add(groen9);
   image(groen9,50+136*i,700,133,177);
  }
   if(haand1.get(i)=="gul1"){
  //vishaand1.add(gul1);
   image(gul1,50+136*i,700,133,177);
  }
  if(haand1.get(i)=="gul2"){
  //vishaand1.add(gul2);
   image(gul2,50+136*i,700,133,177);
  }
  if(haand1.get(i)=="gul3"){
  //vishaand1.add(gul3);
   image(gul3,50+136*i,700,133,177);
  }
  if(haand1.get(i)=="gul4"){
  //vishaand1.add(gul4);
   image(gul4,50+136*i,700,133,177);
  }
  if(haand1.get(i)=="gul5"){
  //vishaand1.add(gul5);
   image(gul5,50+136*i,700,133,177);
  }
  if(haand1.get(i)=="gul6"){
  //vishaand1.add(gul6);
   image(gul6,50+136*i,700,133,177);
  }
  if(haand1.get(i)=="gul7"){
  //vishaand1.add(gul7);
   image(gul7,50+136*i,700,133,177);
  }
  if(haand1.get(i)=="gul8"){
  //vishaand1.add(gul8);
   image(gul8,50+136*i,700,133,177);
  }
  if(haand1.get(i)=="gul9"){
  //vishaand1.add(gul9);
  image(gul9,50+136*i,700,133,177);
  }
}
//println(vishaand1);
 for(int i = 0 ; i < haand2.size();i++){
  image(Kortbaggrund,200+136*i,50,133,177);
}
}

void loadarray(){
for(int i=0; i<36; i++){
  Kortbunke.add(kort[i]);}
//println(Kortbunke);
}

void loadkort(){
blaa1=loadImage("blue1.jpg");
blaa2=loadImage("blue2.jpg");
blaa3=loadImage("blue3.jpg");
blaa4=loadImage("blue4.jpg");
blaa5=loadImage("blue5.jpg");
blaa6=loadImage("blue6.jpg");
blaa7=loadImage("blue7.jpg");
blaa8=loadImage("blue8.jpg");
blaa9=loadImage("blue9.jpg");

roed1=loadImage("Red1.jpg");
roed2=loadImage("red2.jpg");
roed3=loadImage("red3.jpg");
roed4=loadImage("red4.jpg");
roed5=loadImage("red5.jpg");
roed6=loadImage("red6.jpg");
roed7=loadImage("red7.jpg");
roed8=loadImage("red8.jpg");
roed9=loadImage("red9.jpg");

groen1=loadImage("pink1.jpg");
groen2=loadImage("pink2.jpg");
groen3=loadImage("pink3.jpg");
groen4=loadImage("pink4.jpg");
groen5=loadImage("pink5.jpg");
groen6=loadImage("pink6.jpg");
groen7=loadImage("pink7.jpg");
groen8=loadImage("pink8.jpg");
groen9=loadImage("pink9.jpg");

gul1=loadImage("purple1.jpg");
gul2=loadImage("purple2.jpg");
gul3=loadImage("purple3.jpg");
gul4=loadImage("purple4.jpg");
gul5=loadImage("purple5.jpg");
gul6=loadImage("purple6.jpg");
gul7=loadImage("purple7.jpg");
gul8=loadImage("purple8.jpg");
gul9=loadImage("purple9.jpg");

Simpfun=loadImage("Simpfun.png");
Spilvundet=loadImage("Spilvundet.png");
Deltagispil=loadImage("Deltagispil.png");
Indstillinger=loadImage("Indstillinger.png");
Lukspillet=loadImage("Lukspillet.png");
Lydstyrkestreg=loadImage("Lydstyrkestreg.png");
Lydstyrketekst=loadImage("Lydstyrketekst.png");
nultekst=loadImage("nultekst.png");
hundredtekst=loadImage("hundredtekst.png");
Tilbagepil=loadImage("Tilbagepil.png");

Kortbaggrund=loadImage("Kortbaggrund.png");

}

boolean startafspil=true;

void traekkort(){
  if(startafspil==true){
    
    for(int i=0; i<5; i++){
      int kort1=(int)random(0,Kortbunke.size()-1);
      String kort1String=Kortbunke.get(kort1);
      //println(kort1 + Kortbunke.get(kort1));
      haand1.add(kort1String);
      Kortbunke.remove(kort1);
      int kort2=(int)random(0,Kortbunke.size()-1);
      String kort2String=Kortbunke.get(kort2);
      haand2.add(kort2String);
      Kortbunke.remove(kort2);
      //println(i);
  }
  
 // println(haand1);
  
  int startkort=(int)random(0,Kortbunke.size()-1);
  String startkortString=Kortbunke.get(startkort);
  Kortbunke2.add(startkortString);
      Kortbunke.remove(startkort);
  startafspil=false;
  }
if(Kortbunke.size()==0){
while(Kortbunke2.size()>1){
String kort=Kortbunke2.get(0);
Kortbunke.add(kort);
Kortbunke2.remove(0);
}
}
}
void liggekort(){
blue1=false;
blue2=false;
blue3=false;
blue4=false;
blue5=false;
blue6=false;
blue7=false;
blue8=false;
blue9=false;

red1=false;
red2=false;
red3=false;
red4=false;
red5=false;
red6=false;
red7=false;
red8=false;
red9=false;

green1=false;
green2=false;
green3=false;
green4=false;
green5=false;
green6=false;
green7=false;
green8=false;
green9=false;

yellow1=false;
yellow2=false;
yellow3=false;
yellow4=false;
yellow5=false;
yellow6=false;
yellow7=false;
yellow8=false;
yellow9=false;

if(Kortbunke2.get(Kortbunke2.size()-1)=="blå1"){
blue2=true;
blue3=true;
blue4=true;
blue5=true;
blue6=true;
blue7=true;
blue8=true;
blue9=true;
red1=true;
yellow1=true;
green1=true;
}  
if(Kortbunke2.get(Kortbunke2.size()-1)=="blå2"){
blue1=true;
blue3=true;
blue4=true;
blue5=true;
blue6=true;
blue7=true;
blue8=true;
blue9=true;
red2=true;
yellow2=true;
green2=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="blå3"){
blue1=true;
blue2=true;
blue4=true;
blue5=true;
blue6=true;
blue7=true;
blue8=true;
blue9=true;
red3=true;
yellow3=true;
green3=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="blå4"){
blue1=true;
blue2=true;
blue3=true;
blue5=true;
blue6=true;
blue7=true;
blue8=true;
blue9=true;
red4=true;
yellow4=true;
green4=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="blå5"){
blue1=true;
blue2=true;
blue3=true;
blue4=true;
blue6=true;
blue7=true;
blue8=true;
blue9=true;
red5=true;
yellow5=true;
green5=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="blå6"){
blue1=true;
blue2=true;
blue3=true;
blue4=true;
blue5=true;
blue7=true;
blue8=true;
blue9=true;
red6=true;
yellow6=true;
green6=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="blå7"){
blue1=true;
blue2=true;
blue3=true;
blue4=true;
blue5=true;
blue6=true;
blue8=true;
blue9=true;
red7=true;
yellow7=true;
green7=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="blå8"){
blue1=true;
blue2=true;
blue3=true;
blue4=true;
blue5=true;
blue6=true;
blue7=true;
blue9=true;
red8=true;
yellow8=true;
green8=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="blå9"){
blue1=true;
blue2=true;
blue3=true;
blue4=true;
blue5=true;
blue6=true;
blue7=true;
blue8=true;
red9=true;
yellow9=true;
green9=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="rød1"){
red2=true;
red3=true;
red4=true;
red5=true;
red6=true;
red7=true;
red8=true;
red9=true;
blue1=true;
yellow1=true;
green1=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="rød2"){
red1=true;
red3=true;
red4=true;
red5=true;
red6=true;
red7=true;
red8=true;
red9=true;
blue2=true;
yellow2=true;
green2=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="rød3"){
red1=true;
red2=true;
red4=true;
red5=true;
red6=true;
red7=true;
red8=true;
red9=true;
blue3=true;
yellow3=true;
green3=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="rød4"){
red1=true;
red2=true;
red3=true;
red5=true;
red6=true;
red7=true;
red8=true;
red9=true;
blue4=true;
yellow4=true;
green4=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="rød5"){
red1=true;
red2=true;
red3=true;
red4=true;
red6=true;
red7=true;
red8=true;
red9=true;
blue5=true;
yellow5=true;
green5=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="rød6"){
red1=true;
red2=true;
red3=true;
red4=true;
red5=true;
red7=true;
red8=true;
red9=true;
blue6=true;
yellow6=true;
green6=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="rød7"){
red1=true;
red2=true;
red3=true;
red4=true;
red5=true;
red6=true;
red8=true;
red9=true;
blue7=true;
yellow7=true;
green7=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="rød8"){
red1=true;
red2=true;
red3=true;
red4=true;
red5=true;
red6=true;
red7=true;
red9=true;
blue8=true;
yellow8=true;
green8=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="rød9"){
red1=true;
red2=true;
red3=true;
red4=true;
red5=true;
red6=true;
red7=true;
red8=true;
blue9=true;
yellow9=true;
green9=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="grøn1"){
green2=true;
green3=true;
green4=true;
green5=true;
green6=true;
green7=true;
green8=true;
green9=true;
red1=true;
yellow1=true;
blue1=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="grøn2"){
green1=true;
green3=true;
green4=true;
green5=true;
green6=true;
green7=true;
green8=true;
green9=true;
red2=true;
yellow2=true;
blue2=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="grøn3"){
green2=true;
green1=true;
green4=true;
green5=true;
green6=true;
green7=true;
green8=true;
green9=true;
red3=true;
yellow3=true;
blue3=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="grøn4"){
green2=true;
green3=true;
green1=true;
green5=true;
green6=true;
green7=true;
green8=true;
green9=true;
red4=true;
yellow4=true;
blue4=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="grøn5"){
green2=true;
green3=true;
green4=true;
green1=true;
green6=true;
green7=true;
green8=true;
green9=true;
red5=true;
yellow5=true;
blue5=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="grøn6"){
green2=true;
green3=true;
green4=true;
green5=true;
green1=true;
green7=true;
green8=true;
green9=true;
red6=true;
yellow6=true;
blue6=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="grøn7"){
green2=true;
green3=true;
green4=true;
green5=true;
green6=true;
green1=true;
green8=true;
green9=true;
red7=true;
yellow7=true;
blue7=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="grøn8"){
green2=true;
green3=true;
green4=true;
green5=true;
green6=true;
green7=true;
green1=true;
green9=true;
red8=true;
yellow8=true;
blue8=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="grøn9"){
green2=true;
green3=true;
green4=true;
green5=true;
green6=true;
green7=true;
green1=true;
green8=true;
red9=true;
yellow9=true;
blue9=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="gul9"){
yellow2=true;
yellow3=true;
yellow4=true;
yellow5=true;
yellow6=true;
yellow7=true;
yellow1=true;
yellow8=true;
red9=true;
green9=true;
blue9=true;
}

if(Kortbunke2.get(Kortbunke2.size()-1)=="gul8"){
yellow2=true;
yellow3=true;
yellow4=true;
yellow5=true;
yellow6=true;
yellow7=true;
yellow1=true;
yellow9=true;
red8=true;
green8=true;
blue8=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="gul7"){
yellow2=true;
yellow3=true;
yellow4=true;
yellow5=true;
yellow6=true;
yellow8=true;
yellow1=true;
yellow8=true;
red7=true;
green7=true;
blue7=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="gul6"){
yellow2=true;
yellow3=true;
yellow4=true;
yellow5=true;
yellow9=true;
yellow7=true;
yellow1=true;
yellow8=true;
red6=true;
green6=true;
blue6=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="gul5"){
yellow2=true;
yellow3=true;
yellow4=true;
yellow9=true;
yellow6=true;
yellow7=true;
yellow1=true;
yellow8=true;
red5=true;
green5=true;
blue5=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="gul4"){
yellow2=true;
yellow3=true;
yellow9=true;
yellow5=true;
yellow6=true;
yellow7=true;
yellow1=true;
yellow8=true;
red4=true;
green4=true;
blue4=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="gul3"){
yellow2=true;
yellow9=true;
yellow4=true;
yellow5=true;
yellow6=true;
yellow7=true;
yellow1=true;
yellow8=true;
red3=true;
green3=true;
blue3=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="gul2"){
yellow9=true;
yellow3=true;
yellow4=true;
yellow5=true;
yellow6=true;
yellow7=true;
yellow1=true;
yellow8=true;
red2=true;
green2=true;
blue2=true;
}
if(Kortbunke2.get(Kortbunke2.size()-1)=="gul1"){
yellow2=true;
yellow3=true;
yellow4=true;
yellow5=true;
yellow6=true;
yellow7=true;
yellow9=true;
yellow8=true;
red1=true;
green1=true;
blue1=true;
}
}
