void f(int x, Object y);

void g()
{
<<<<<<< HEAD
       Object o;
       f(o, o, 404);
       f(5, 6, 404);
=======
	Object o;
	f(o, o, 404);
	f(5, 6, 404);
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
}

/* 
TEST_OUTPUT:
---
fail_compilation/bug16165.d(6): Error: function `bug16165.f(int x, Object y)` is not callable using argument types `(Object, Object, int)`
fail_compilation/bug16165.d(6):        cannot pass argument `o` of type `object.Object` to parameter `int x`
fail_compilation/bug16165.d(7): Error: function `bug16165.f(int x, Object y)` is not callable using argument types `(int, int, int)`
fail_compilation/bug16165.d(7):        cannot pass argument `6` of type `int` to parameter `Object y`
---
 */
