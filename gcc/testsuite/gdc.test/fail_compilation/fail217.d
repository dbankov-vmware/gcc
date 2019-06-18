/*
TEST_OUTPUT:
---
fail_compilation/fail217.d(22): Error: mutable method `fail217.Message.this` is not callable using a `immutable` object
<<<<<<< HEAD
fail_compilation/fail217.d(13):        Consider adding `const` or `inout` here
=======
fail_compilation/fail217.d(22):        Consider adding `const` or `inout` to fail217.Message.this
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
---
*/

class Message
  {
    public int notifier;

    this( int notifier_object )
      {
        notifier = notifier_object;
      }
  }

void
main()
  {
    auto m2 = new immutable(Message)(2);
    m2.notifier = 3;
  }

