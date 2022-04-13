# include <stdio.h>
unsigned muti(unsigned bits,unsigned a,unsigned b)
{
    a=(a<<(bits-1));
    unsigned result=0;
    for(int i=0;i<bits-1;i++)
    {
        if(((b>>i)&1)==1)
            {result+=a;}
        result>>=1;
    }
    return result;
    
}
void main()
{
    unsigned int id =32;
    unsigned int ans = muti(16,id,muti(8,id,id));
    printf("num:%d,cubed:%d",id,ans);

}

