/*
TEST_OUTPUT:
---
fail_compilation/fail_contracts3.d(13): Error: function `fail_contracts3.D.foo` cannot have an in contract when overridden function `fail_contracts3.C.foo` does not have an in contract
---
*/

class C {
<<<<<<< HEAD
       void foo(){}
}

class D : C {
       override void foo()in{}do{}
=======
	void foo(){}
}

class D : C {
	override void foo()in{}do{}
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
}
