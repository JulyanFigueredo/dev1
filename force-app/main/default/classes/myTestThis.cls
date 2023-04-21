public class myTestThis {

public string s;
{
    this.s = 'TestString';
}

public myTestThis addLetterA(){
    this.s += 'A'; 
    return this;
}

public Integer i;
public myTestThis increment(){
    this.i ++; 
    return this;
}


}