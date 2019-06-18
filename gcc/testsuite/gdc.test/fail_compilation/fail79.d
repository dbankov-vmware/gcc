/*
TEST_OUTPUT:
---
<<<<<<< HEAD
fail_compilation/fail79.d(13): Error: incompatible types for ((& a) + (& b)): both operands are of type 'int*'
=======
fail_compilation/fail79.d(13): Error: incompatible types for `(& a) + (& b)`: both operands are of type `int*`
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
---
*/

void main()
{
    int a, b;
    int* p;

    p = &a + &b;
}

