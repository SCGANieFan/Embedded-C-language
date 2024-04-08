#include<stdio.h>
int sum(int a,int b)
{
    int sum = a+b;
    printf("sum:%d\n",sum);
    return sum;
}
void SUM_ASM();
int main()
{
    SUM_ASM();
    // printf("sum:%d\n",1);
    return 1;
}