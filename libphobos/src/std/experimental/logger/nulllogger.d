// Written in the D programming language.
/**
Source: $(PHOBOSSRC std/experimental/logger/nulllogger.d)
*/
module std.experimental.logger.nulllogger;

import std.experimental.logger.core;

/** The `NullLogger` will not process any log messages.

In case of a log message with `LogLevel.fatal` nothing will happen.
*/
class NullLogger : Logger
{
    /** The default constructor for the `NullLogger`.

    Independent of the parameter this Logger will never log a message.

    Params:
      lv = The `LogLevel` for the `NullLogger`. By default the `LogLevel`
      for `NullLogger` is `LogLevel.all`.
    */
    this(const LogLevel lv = LogLevel.all) @safe
    {
        super(lv);
        this.fatalHandler = delegate() {};
    }

    override protected void writeLogMsg(ref LogEntry payload) @safe @nogc
    {
    }
}

///
@safe unittest
{
    import std.experimental.logger.core : LogLevel;
<<<<<<< HEAD

=======
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
    auto nl1 = new NullLogger(LogLevel.all);
    nl1.info("You will never read this.");
    nl1.fatal("You will never read this, either and it will not throw");
}
