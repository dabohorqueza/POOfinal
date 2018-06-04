class Graficos{
float sep;
float div;


Graficos(){
this.sep=sep;
this.div=div;

}
void divisions(int p){
  sep = 50;
  div = 600/p;
  for(int i =0;i<p+1;i++){
    
  line(sep,505,sep,495);
  sep = sep + div;
  }
  plano (sep-div);
}
  
  void plano(float lenght ){
    line(50,500,lenght,500);
  }
  
  
}