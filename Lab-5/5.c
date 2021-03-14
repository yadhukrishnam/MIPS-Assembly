#include <stdio.h>

int main()
{
    int t0 = 0, t1 = 10;

    while (t0 != t1)
    {
        t0 = t0 + 1;
    }

    t0 = t1 << 2;

    printf("%d \n", t0);
    
    return 0;
}