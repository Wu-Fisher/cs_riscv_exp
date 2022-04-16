# include <stdio.h>

// bits  乘数位数，返回结果为2倍
// a,b 乘数
unsigned muti(unsigned bits,unsigned a,unsigned b)
{
    a=(a<<(bits-1));
    unsigned result=0;
    // 从乘数最后一位开始判断加
    for(int i=0;i<bits-1;i++)
    {
        
        if(((b>>i)&1)==1)
            {
                result+=a;
            }
    // 模拟位移
        result>>=1;
    }
    return result;
}
void main()
{
    unsigned int id =32;
    unsigned int ans = muti(16,id,muti(8,id,id));
    printf("num:%d,cubed:%d\n",id,ans);

}

