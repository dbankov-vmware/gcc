/*
TEST_OUTPUT:
---
<<<<<<< HEAD
fail_compilation/fail3.d(41): Error: incompatible types for ((a) + (b)): both operands are of type 'vec2'
=======
fail_compilation/fail3.d(41): Error: incompatible types for `(a) + (b)`: both operands are of type `vec2`
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
---
*/

// DMD 0.79 linux: Internal error: ../ztc/cgcod.c 1459

template vector(T)
{
    struct vec2
    {
        T x, y;
    }

    // not struct member
    vec2 opAdd(vec2 a, vec2 b)
    {
        vec2 r;
        r.x = a.x + b.x;
        r.y = a.y + b.y;
        return r;
    }

    vec2 make2(T x, T y)
    {
        vec2 a;
        a.x = x;
        a.y = y;
        return a;
    }
}

alias vector!(float).vec2 vec2f;

int main()
{
    vec2f a, b;
    b.x = 3;
    a = a + b;
    //printf("%f\n", a.x);
    return 0;
}
