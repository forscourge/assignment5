; Jassmin assembly code
; MiniC v. 1.0
.class public fibonacci
.super java/lang/Object

.method static <clinit>()V
   .limit stack 1
   .limit locals 0
   return
.end method

.method public <init>()V
   .limit stack 1
   .limit locals 1
   .var 0 is this Lfibonacci; from Label0 to Label1

  Label0:
   aload_0
   invokespecial java/lang/Object/<init>()V
  Label1:
   return
.end method

.method public fibonacci(I)I
  Label0:
   ; IfStmt, line 14
   iload_1
   iconst_0
   if_icmpeqLabel2
   iconst_0
   gotoLabel3
  Label2:
   iconst_1
  Label3:
   ifeqLabel4
   ; AssignStmt, line 10
   iconst_0
   istore_2
   gotoLabel5
  Label4:
   ; IfStmt, line 14
   iload_1
   iconst_1
   if_icmpeqLabel6
   iconst_0
   gotoLabel7
  Label6:
   iconst_1
  Label7:
   ifeqLabel8
   ; AssignStmt, line 12
   iconst_1
   istore_2
   gotoLabel9
  Label8:
   ; AssignStmt, line 14
   ; CallExpr
   ; "this"-pointer is the first ActualParam with instance methods:
   aload_0
   ; ActualParam
   iload_1
   iconst_1
   isub
   invokevirtualfibonacci/fibonacci(I)I
   ; CallExpr
   ; "this"-pointer is the first ActualParam with instance methods:
   aload_0
   ; ActualParam
   iload_1
   iconst_2
   isub
   invokevirtualfibonacci/fibonacci(I)I
   iadd
   istore_2
  Label9:
  Label5:
   ; ReturnStmt, line 15
   iload_2
   ireturn
  Label1:
   .limit locals 3
   .limit stack 150
.end method

.method public static main([Ljava/lang/String;)V
  Label0:
   new fibonacci
   dup
   invokespecial fibonacci/<init>()V
   astore_1
   ; ForStmt, line 20
   ; AssignExpr
   iconst_0
   istore_2
  Label2:
   iload_2
   bipush 20
   if_icmpgtLabel4
   iconst_1
   gotoLabel5
  Label4:
   iconst_0
  Label5:
   ifeqLabel3
   ; CallStmt, line 21
   ; CallExpr
   ; ActualParam
   ldc "Fibonacci number "
   invokestatic lang/System/putString(Ljava/lang/String;)V
   ; CallStmt, line 22
   ; CallExpr
   ; ActualParam
   iload_2
   invokestatic lang/System/putInt(I)V
   ; CallStmt, line 23
   ; CallExpr
   ; ActualParam
   ldc ": "
   invokestatic lang/System/putString(Ljava/lang/String;)V
   ; CallStmt, line 24
   ; CallExpr
   ; ActualParam
   ; CallExpr
   ; "this"-pointer is the first ActualParam with instance methods:
   aload_1
   ; ActualParam
   iload_2
   invokevirtualfibonacci/fibonacci(I)I
   invokestatic lang/System/putInt(I)V
   ; CallStmt, line 25
   ; CallExpr
   invokestatic lang/System/putLn()V
   ; AssignExpr
   iload_2
   iconst_1
   iadd
   istore_2
   gotoLabel2
  Label3:
  Label1:
   return
   .limit locals 3
   .limit stack 150
.end method
