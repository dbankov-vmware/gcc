/*
<<<<<<< HEAD
=======
REQUIRED_ARGS: -m64
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
TEST_OUTPUT:
---
fail_compilation/fail10905.d(20): Error: incompatible types for `(this.x) == (cast(const(__vector(long[2])))cast(__vector(long[2]))1L)`: both operands are of type `const(__vector(long[2]))`
---
*/

struct Foo
{
    enum __vector(long[2]) y = 1;
}

struct Bar
{
    __vector(long[2]) x;

    bool spam() const
    {
        return x == Foo.y;
    }
}

