class Anualidad{
int begin;
int end;
float value;
Anualidad(){
this.begin= begin;
this.end= end;
this.value= value;

}
void dibujo (int begin,int end, int value){
  
  float div =600/p;
  float sep =div*begin+50;
    for(int i =0;i<(end-begin);i++){
    
  line(sep,500,sep,500-value);
  line(sep-2,500-value+5,sep,500-value);
  line(sep+2,500-value+5,sep,500-value);
  sep = sep + div;
    }
  }
  
  
}