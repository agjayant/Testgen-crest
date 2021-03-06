# 1 "./median.cil.c"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./median.cil.c"
# 58 "median.c"
void __globinit_median(void) ;
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
# 8 "median.c"
int getMedian(int *ar1 , int *ar2 , int n )
{
  int i ;
  int j ;
  int count ;
  int m1 ;
  int m2 ;
  int *mem_9 ;
  int *mem_10 ;
  int *mem_11 ;
  int *mem_12 ;
  int *mem_13 ;
  int *mem_14 ;
  int *mem_15 ;
  int *mem_16 ;
  int *mem_17 ;
  int *mem_18 ;
  int *mem_19 ;
  int *mem_20 ;
  int __retres21 ;

  {
  __CrestCall(2, 1);
  __CrestStore(1, (unsigned long )(& n));
  __CrestLoad(3, (unsigned long )0, (long long )0);
  __CrestStore(4, (unsigned long )(& i));
# 10 "median.c"
  i = 0;
  __CrestLoad(5, (unsigned long )0, (long long )0);
  __CrestStore(6, (unsigned long )(& j));
# 11 "median.c"
  j = 0;
  __CrestLoad(7, (unsigned long )0, (long long )-1);
  __CrestStore(8, (unsigned long )(& m1));
# 13 "median.c"
  m1 = -1;
  __CrestLoad(9, (unsigned long )0, (long long )-1);
  __CrestStore(10, (unsigned long )(& m2));
# 13 "median.c"
  m2 = -1;
  __CrestLoad(11, (unsigned long )0, (long long )0);
  __CrestStore(12, (unsigned long )(& count));
# 18 "median.c"
  count = 0;
  {
  {
  __CrestLoad(15, (unsigned long )(& count), (long long )count);
  __CrestLoad(14, (unsigned long )(& n), (long long )n);
  __CrestApply2(13, 15, (long long )(count <= n));
  if (count <= n) {
    __CrestBranch(16, 4, 1);
    {
    __CrestLoad(20, (unsigned long )(& i), (long long )i);
    __CrestLoad(19, (unsigned long )(& n), (long long )n);
    __CrestApply2(18, 12, (long long )(i == n));
    if (i == n) {
      __CrestBranch(21, 5, 1);
      __CrestLoad(23, (unsigned long )(& m2), (long long )m2);
      __CrestStore(24, (unsigned long )(& m1));
      m1 = m2;
      mem_9 = ar2 + 0;
      __CrestLoad(25, (unsigned long )mem_9, (long long )*mem_9);
      __CrestStore(26, (unsigned long )(& m2));
      m2 = *mem_9;
      __CrestLoad(29, (unsigned long )(& n), (long long )n);
      __CrestLoad(28, (unsigned long )0, (long long )1);
      __CrestApply2(27, 0, (long long )(n + 1));
      __CrestStore(30, (unsigned long )(& count));
      count = n + 1;
    } else {
      __CrestBranch(22, 6, 0);
      {
      __CrestLoad(33, (unsigned long )(& j), (long long )j);
      __CrestLoad(32, (unsigned long )(& n), (long long )n);
      __CrestApply2(31, 12, (long long )(j == n));
      if (j == n) {
        __CrestBranch(34, 7, 1);
        __CrestLoad(36, (unsigned long )(& m2), (long long )m2);
        __CrestStore(37, (unsigned long )(& m1));
        m1 = m2;
        mem_10 = ar1 + 0;
        __CrestLoad(38, (unsigned long )mem_10, (long long )*mem_10);
        __CrestStore(39, (unsigned long )(& m2));
        m2 = *mem_10;
        __CrestLoad(42, (unsigned long )(& n), (long long )n);
        __CrestLoad(41, (unsigned long )0, (long long )1);
        __CrestApply2(40, 0, (long long )(n + 1));
        __CrestStore(43, (unsigned long )(& count));
        count = n + 1;
      } else {
        __CrestBranch(35, 8, 0);
        {
        mem_11 = ar1 + i;
        mem_12 = ar2 + j;
        {
        __CrestLoad(46, (unsigned long )mem_11, (long long )*mem_11);
        __CrestLoad(45, (unsigned long )mem_12, (long long )*mem_12);
        __CrestApply2(44, 16, (long long )(*mem_11 < *mem_12));
        if (*mem_11 < *mem_12) {
          __CrestBranch(47, 11, 1);
          __CrestLoad(49, (unsigned long )(& m2), (long long )m2);
          __CrestStore(50, (unsigned long )(& m1));
          m1 = m2;
          mem_13 = ar1 + i;
          __CrestLoad(51, (unsigned long )mem_13, (long long )*mem_13);
          __CrestStore(52, (unsigned long )(& m2));
          m2 = *mem_13;
          __CrestLoad(55, (unsigned long )(& i), (long long )i);
          __CrestLoad(54, (unsigned long )0, (long long )1);
          __CrestApply2(53, 0, (long long )(i + 1));
          __CrestStore(56, (unsigned long )(& i));
          i ++;
        } else {
          __CrestBranch(48, 12, 0);
          __CrestLoad(57, (unsigned long )(& m2), (long long )m2);
          __CrestStore(58, (unsigned long )(& m1));
          m1 = m2;
          mem_14 = ar2 + j;
          __CrestLoad(59, (unsigned long )mem_14, (long long )*mem_14);
          __CrestStore(60, (unsigned long )(& m2));
          m2 = *mem_14;
          __CrestLoad(63, (unsigned long )(& j), (long long )j);
          __CrestLoad(62, (unsigned long )0, (long long )1);
          __CrestApply2(61, 0, (long long )(j + 1));
          __CrestStore(64, (unsigned long )(& j));
          j ++;
        }
        }
        }
      }
      }
    }
    }
    __CrestLoad(67, (unsigned long )(& count), (long long )count);
    __CrestLoad(66, (unsigned long )0, (long long )1);
    __CrestApply2(65, 0, (long long )(count + 1));
    __CrestStore(68, (unsigned long )(& count));
    count ++;
  } else {
    __CrestBranch(17, 14, 0);

  }
  }
  {
  __CrestLoad(71, (unsigned long )(& count), (long long )count);
  __CrestLoad(70, (unsigned long )(& n), (long long )n);
  __CrestApply2(69, 15, (long long )(count <= n));
  if (count <= n) {
    __CrestBranch(72, 16, 1);
    {
    __CrestLoad(76, (unsigned long )(& i), (long long )i);
    __CrestLoad(75, (unsigned long )(& n), (long long )n);
    __CrestApply2(74, 12, (long long )(i == n));
    if (i == n) {
      __CrestBranch(77, 17, 1);
      __CrestLoad(79, (unsigned long )(& m2), (long long )m2);
      __CrestStore(80, (unsigned long )(& m1));
      m1 = m2;
      mem_15 = ar2 + 0;
      __CrestLoad(81, (unsigned long )mem_15, (long long )*mem_15);
      __CrestStore(82, (unsigned long )(& m2));
      m2 = *mem_15;
      __CrestLoad(85, (unsigned long )(& n), (long long )n);
      __CrestLoad(84, (unsigned long )0, (long long )1);
      __CrestApply2(83, 0, (long long )(n + 1));
      __CrestStore(86, (unsigned long )(& count));
      count = n + 1;
    } else {
      __CrestBranch(78, 18, 0);
      {
      __CrestLoad(89, (unsigned long )(& j), (long long )j);
      __CrestLoad(88, (unsigned long )(& n), (long long )n);
      __CrestApply2(87, 12, (long long )(j == n));
      if (j == n) {
        __CrestBranch(90, 19, 1);
        __CrestLoad(92, (unsigned long )(& m2), (long long )m2);
        __CrestStore(93, (unsigned long )(& m1));
        m1 = m2;
        mem_16 = ar1 + 0;
        __CrestLoad(94, (unsigned long )mem_16, (long long )*mem_16);
        __CrestStore(95, (unsigned long )(& m2));
        m2 = *mem_16;
        __CrestLoad(98, (unsigned long )(& n), (long long )n);
        __CrestLoad(97, (unsigned long )0, (long long )1);
        __CrestApply2(96, 0, (long long )(n + 1));
        __CrestStore(99, (unsigned long )(& count));
        count = n + 1;
      } else {
        __CrestBranch(91, 20, 0);
        {
        mem_17 = ar1 + i;
        mem_18 = ar2 + j;
        {
        __CrestLoad(102, (unsigned long )mem_17, (long long )*mem_17);
        __CrestLoad(101, (unsigned long )mem_18, (long long )*mem_18);
        __CrestApply2(100, 16, (long long )(*mem_17 < *mem_18));
        if (*mem_17 < *mem_18) {
          __CrestBranch(103, 23, 1);
          __CrestLoad(105, (unsigned long )(& m2), (long long )m2);
          __CrestStore(106, (unsigned long )(& m1));
          m1 = m2;
          mem_19 = ar1 + i;
          __CrestLoad(107, (unsigned long )mem_19, (long long )*mem_19);
          __CrestStore(108, (unsigned long )(& m2));
          m2 = *mem_19;
          __CrestLoad(111, (unsigned long )(& i), (long long )i);
          __CrestLoad(110, (unsigned long )0, (long long )1);
          __CrestApply2(109, 0, (long long )(i + 1));
          __CrestStore(112, (unsigned long )(& i));
          i ++;
        } else {
          __CrestBranch(104, 24, 0);
          __CrestLoad(113, (unsigned long )(& m2), (long long )m2);
          __CrestStore(114, (unsigned long )(& m1));
          m1 = m2;
          mem_20 = ar2 + j;
          __CrestLoad(115, (unsigned long )mem_20, (long long )*mem_20);
          __CrestStore(116, (unsigned long )(& m2));
          m2 = *mem_20;
          __CrestLoad(119, (unsigned long )(& j), (long long )j);
          __CrestLoad(118, (unsigned long )0, (long long )1);
          __CrestApply2(117, 0, (long long )(j + 1));
          __CrestStore(120, (unsigned long )(& j));
          j ++;
        }
        }
        }
      }
      }
    }
    }
    __CrestLoad(123, (unsigned long )(& count), (long long )count);
    __CrestLoad(122, (unsigned long )0, (long long )1);
    __CrestApply2(121, 0, (long long )(count + 1));
    __CrestStore(124, (unsigned long )(& count));
    count ++;
  } else {
    __CrestBranch(73, 26, 0);

  }
  }
  }
  __CrestLoad(129, (unsigned long )(& m1), (long long )m1);
  __CrestLoad(128, (unsigned long )(& m2), (long long )m2);
  __CrestApply2(127, 0, (long long )(m1 + m2));
  __CrestLoad(126, (unsigned long )0, (long long )2);
  __CrestApply2(125, 3, (long long )((m1 + m2) / 2));
  __CrestStore(130, (unsigned long )(& __retres21));
# 53 "median.c"
  __retres21 = (m1 + m2) / 2;
  {
  __CrestLoad(131, (unsigned long )(& __retres21), (long long )__retres21);
  __CrestReturn(132);
# 8 "median.c"
  return (__retres21);
  }
}
}
# 58 "median.c"
int main(void)
{
  int ar1[10] ;
  int ar2[10] ;
  int n1 ;
  int n2 ;
  int tmp ;
  int __retres6 ;

  {
  __globinit_median();
  __CrestCall(133, 2);
# 65 "median.c"
  __CrestInt((int *)(& ar1));
# 66 "median.c"
  __CrestInt((int *)(& ar2));
# 67 "median.c"
  __CrestInt(& n1);
# 68 "median.c"
  __CrestInt(& n2);
  __CrestLoad(136, (unsigned long )(& n1), (long long )n1);
  __CrestLoad(135, (unsigned long )(& n2), (long long )n2);
  __CrestApply2(134, 12, (long long )(n1 == n2));
# 70 "median.c"
  if (n1 == n2) {
    __CrestBranch(137, 31, 1);
    __CrestLoad(139, (unsigned long )(& n1), (long long )n1);
# 71 "median.c"
    tmp = getMedian(ar1, ar2, n1);
    __CrestHandleReturn(141, (long long )tmp);
    __CrestStore(140, (unsigned long )(& tmp));
    __CrestLoad(142, (unsigned long )(& tmp), (long long )tmp);
# 71 "median.c"
    printf((char const * __restrict )"Median is %d", tmp);
    __CrestClearStack(143);
  } else {
    __CrestBranch(138, 32, 0);
# 73 "median.c"
    printf((char const * __restrict )"Doesn\'t work for arrays of unequal size");
    __CrestClearStack(144);
  }
  __CrestLoad(145, (unsigned long )0, (long long )0);
  __CrestStore(146, (unsigned long )(& __retres6));
# 74 "median.c"
  __retres6 = 0;
  __CrestLoad(147, (unsigned long )(& __retres6), (long long )__retres6);
  __CrestReturn(148);
# 58 "median.c"
  return (__retres6);
}
}
void __globinit_median(void)
{


  {
  __CrestInit();
}
}
