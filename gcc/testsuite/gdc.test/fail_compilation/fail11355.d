/*
TEST_OUTPUT:
---
<<<<<<< HEAD
fail_compilation/fail11355.d(28): Error: struct fail11355.A is not copyable because it is annotated with `@disable`
=======
fail_compilation/fail11355.d(28): Error: struct `fail11355.A` is not copyable because it is annotated with `@disable`
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
---
*/

T move(T)(ref T source)
{
    return T.init;          // Dummy rvalue
}

struct A
{
    ~this() {}
    @disable this(this);    // Prevent copying
}

struct B
{
    A a;
    alias a this;
}

void main()
{
    B b;
    A a = move(b);
}
