# 1 "./grade.cil.c"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./grade.cil.c"
# 5 "grade.c"
void __globinit_grade(void) ;
extern void __CrestInit(void) __attribute__((__crest_skip__)) ;
extern void __CrestHandleReturn(int id , long long val ) __attribute__((__crest_skip__)) ;
extern void __CrestReturn(int id ) __attribute__((__crest_skip__)) ;
extern void __CrestCall(int id , unsigned int fid ) __attribute__((__crest_skip__)) ;
extern void __CrestBranch(int id , int bid , unsigned char b ) __attribute__((__crest_skip__)) ;
extern void __CrestApply2(int id , int op , long long val ) __attribute__((__crest_skip__)) ;
extern void __CrestApply1(int id , int op , long long val ) __attribute__((__crest_skip__)) ;
extern void __CrestClearStack(int id ) __attribute__((__crest_skip__)) ;
extern void __CrestStore(int id , unsigned long addr ) __attribute__((__crest_skip__)) ;
extern void __CrestLoad(int id , unsigned long addr , long long val ) __attribute__((__crest_skip__)) ;
# 362 "/usr/include/stdio.h"
extern int printf(char const * __restrict __format , ...) ;
# 202 "../bin/../include/crest.h"
extern void __CrestInt(int *x ) __attribute__((__crest_skip__)) ;
# 5 "grade.c"
int main(void)
{
  int m ;
  int a ;
  int b ;
  int c ;
  int sum ;
  int __retres8 ;

  {
  __globinit_grade();
  __CrestCall(1, 1);
# 8 "grade.c"
  __CrestInt(& m);
# 9 "grade.c"
  __CrestInt(& a);
# 10 "grade.c"
  __CrestInt(& b);
# 11 "grade.c"
  __CrestInt(& c);
# 13 "grade.c"
  printf((char const * __restrict )"Enter total marks & marks obtained by the student in 3 subjects: ");
  __CrestClearStack(2);
  __CrestLoad(3, (unsigned long )(& m), (long long )m);
  __CrestLoad(4, (unsigned long )(& a), (long long )a);
  __CrestLoad(5, (unsigned long )(& b), (long long )b);
  __CrestLoad(6, (unsigned long )(& c), (long long )c);
# 14 "grade.c"
  printf((char const * __restrict )"m=%d, a=%d, b=%d, c=%d\n", m, a, b, c);
  __CrestClearStack(7);
  __CrestLoad(10, (unsigned long )(& a), (long long )a);
  __CrestLoad(9, (unsigned long )(& m), (long long )m);
  __CrestApply2(8, 14, (long long )(a > m));
# 16 "grade.c"
  if (a > m) {
    __CrestBranch(11, 3, 1);
# 17 "grade.c"
    printf((char const * __restrict )"\n\t!!Wrong data !!\n");
    __CrestClearStack(13);
  } else {
    __CrestBranch(12, 4, 0);
    {
    __CrestLoad(16, (unsigned long )(& b), (long long )b);
    __CrestLoad(15, (unsigned long )(& m), (long long )m);
    __CrestApply2(14, 14, (long long )(b > m));
# 16 "grade.c"
    if (b > m) {
      __CrestBranch(17, 5, 1);
# 17 "grade.c"
      printf((char const * __restrict )"\n\t!!Wrong data !!\n");
      __CrestClearStack(19);
    } else {
      __CrestBranch(18, 6, 0);
      {
      __CrestLoad(22, (unsigned long )(& c), (long long )c);
      __CrestLoad(21, (unsigned long )(& m), (long long )m);
      __CrestApply2(20, 14, (long long )(c > m));
# 16 "grade.c"
      if (c > m) {
        __CrestBranch(23, 7, 1);
# 17 "grade.c"
        printf((char const * __restrict )"\n\t!!Wrong data !!\n");
        __CrestClearStack(25);
      } else {
        __CrestBranch(24, 8, 0);
        __CrestLoad(30, (unsigned long )(& a), (long long )a);
        __CrestLoad(29, (unsigned long )(& b), (long long )b);
        __CrestApply2(28, 0, (long long )(a + b));
        __CrestLoad(27, (unsigned long )(& c), (long long )c);
        __CrestApply2(26, 0, (long long )((a + b) + c));
        __CrestStore(31, (unsigned long )(& sum));
# 20 "grade.c"
        sum = (a + b) + c;
        {
        __CrestLoad(34, (unsigned long )(& sum), (long long )sum);
        __CrestLoad(33, (unsigned long )0, (long long )240);
        __CrestApply2(32, 17, (long long )(sum >= 240));
# 22 "grade.c"
        if (sum >= 240) {
          __CrestBranch(35, 10, 1);
# 23 "grade.c"
          printf((char const * __restrict )"Grade : A\n");
          __CrestClearStack(37);
        } else {
          __CrestBranch(36, 11, 0);
          {
          __CrestLoad(40, (unsigned long )(& sum), (long long )sum);
          __CrestLoad(39, (unsigned long )0, (long long )180);
          __CrestApply2(38, 17, (long long )(sum >= 180));
# 25 "grade.c"
          if (sum >= 180) {
            __CrestBranch(41, 12, 1);
            {
            __CrestLoad(45, (unsigned long )(& sum), (long long )sum);
            __CrestLoad(44, (unsigned long )0, (long long )240);
            __CrestApply2(43, 16, (long long )(sum < 240));
# 25 "grade.c"
            if (sum < 240) {
              __CrestBranch(46, 13, 1);
# 26 "grade.c"
              printf((char const * __restrict )"Grade : B\n");
              __CrestClearStack(48);
            } else {
              __CrestBranch(47, 14, 0);
# 25 "grade.c"
              goto _L;
            }
            }
          } else {
            __CrestBranch(42, 15, 0);
            _L:
            {
            __CrestLoad(51, (unsigned long )(& sum), (long long )sum);
            __CrestLoad(50, (unsigned long )0, (long long )120);
            __CrestApply2(49, 17, (long long )(sum >= 120));
# 28 "grade.c"
            if (sum >= 120) {
              __CrestBranch(52, 16, 1);
              {
              __CrestLoad(56, (unsigned long )(& sum), (long long )sum);
              __CrestLoad(55, (unsigned long )0, (long long )180);
              __CrestApply2(54, 16, (long long )(sum < 180));
# 28 "grade.c"
              if (sum < 180) {
                __CrestBranch(57, 17, 1);
# 29 "grade.c"
                printf((char const * __restrict )"Grade : C\n");
                __CrestClearStack(59);
              } else {
                __CrestBranch(58, 18, 0);
# 32 "grade.c"
                printf((char const * __restrict )"Result : Fail\n");
                __CrestClearStack(60);
              }
              }
            } else {
              __CrestBranch(53, 19, 0);
# 32 "grade.c"
              printf((char const * __restrict )"Result : Fail\n");
              __CrestClearStack(61);
            }
            }
          }
          }
        }
        }
      }
      }
    }
    }
  }
  __CrestLoad(62, (unsigned long )0, (long long )0);
  __CrestStore(63, (unsigned long )(& __retres8));
# 35 "grade.c"
  __retres8 = 0;
  __CrestLoad(64, (unsigned long )(& __retres8), (long long )__retres8);
  __CrestReturn(65);
# 5 "grade.c"
  return (__retres8);
}
}
void __globinit_grade(void)
{


  {
  __CrestInit();
}
}
