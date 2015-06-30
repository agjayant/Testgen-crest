/* Generated by CIL v. 1.7.3 */
/* print_CIL_Input is true */

#line 86 "quicksort.c"
void __globinit_quicksort(void) ;
extern void __CrestInit(void)  __attribute__((__crest_skip__)) ;
extern void __CrestHandleReturn(int id , long long val )  __attribute__((__crest_skip__)) ;
extern void __CrestReturn(int id )  __attribute__((__crest_skip__)) ;
extern void __CrestCall(int id , unsigned int fid )  __attribute__((__crest_skip__)) ;
extern void __CrestBranch(int id , int bid , unsigned char b )  __attribute__((__crest_skip__)) ;
extern void __CrestApply2(int id , int op , long long val )  __attribute__((__crest_skip__)) ;
extern void __CrestApply1(int id , int op , long long val )  __attribute__((__crest_skip__)) ;
extern void __CrestClearStack(int id )  __attribute__((__crest_skip__)) ;
extern void __CrestStore(int id , unsigned long addr )  __attribute__((__crest_skip__)) ;
extern void __CrestLoad(int id , unsigned long addr , long long val )  __attribute__((__crest_skip__)) ;
/* compiler builtin: 
   void *__builtin_alloca(unsigned long  ) ;  */
#line 362 "/usr/include/stdio.h"
extern int printf(char const   * __restrict  __format  , ...) ;
#line 202 "../bin/../include/crest.h"
extern void __CrestInt(int *x )  __attribute__((__crest_skip__)) ;
#line 6 "quicksort.c"
void swap(int *a , int *b ) 
{ 
  int t ;

  {
  __CrestCall(1, 1);

  __CrestLoad(2, (unsigned long )a, (long long )*a);
  __CrestStore(3, (unsigned long )(& t));
#line 8
  t = *a;
  __CrestLoad(4, (unsigned long )b, (long long )*b);
  __CrestStore(5, (unsigned long )a);
#line 9
  *a = *b;
  __CrestLoad(6, (unsigned long )(& t), (long long )t);
  __CrestStore(7, (unsigned long )b);
#line 10
  *b = t;

  {
  __CrestReturn(8);
#line 6
  return;
  }
}
}
#line 14 "quicksort.c"
int partition(int *arr , int l , int h ) 
{ 
  int x ;
  int i ;
  int j ;
  int *mem_7 ;
  int *mem_8 ;
  int *mem_9 ;
  int __retres10 ;

  {
  __CrestCall(11, 2);
  __CrestStore(10, (unsigned long )(& h));
  __CrestStore(9, (unsigned long )(& l));
#line 16
  mem_7 = arr + h;
  __CrestLoad(12, (unsigned long )mem_7, (long long )*mem_7);
  __CrestStore(13, (unsigned long )(& x));
#line 16
  x = *mem_7;
  __CrestLoad(16, (unsigned long )(& l), (long long )l);
  __CrestLoad(15, (unsigned long )0, (long long )1);
  __CrestApply2(14, 1, (long long )(l - 1));
  __CrestStore(17, (unsigned long )(& i));
#line 17
  i = l - 1;
  __CrestLoad(18, (unsigned long )(& l), (long long )l);
  __CrestLoad(19, (unsigned long )(& h), (long long )h);
#line 19
  printf((char const   * __restrict  )"l=%d, h=%d\n", l, h);
  __CrestClearStack(20);
  __CrestLoad(21, (unsigned long )(& l), (long long )l);
  __CrestStore(22, (unsigned long )(& j));
#line 21
  j = l;
  {
  {
  __CrestLoad(27, (unsigned long )(& j), (long long )j);
  __CrestLoad(26, (unsigned long )(& h), (long long )h);
  __CrestLoad(25, (unsigned long )0, (long long )1);
  __CrestApply2(24, 1, (long long )(h - 1));
  __CrestApply2(23, 15, (long long )(j <= h - 1));
  if (j <= h - 1) {
    __CrestBranch(28, 7, 1);
    {
    mem_8 = arr + j;
    {
    __CrestLoad(32, (unsigned long )mem_8, (long long )*mem_8);
    __CrestLoad(31, (unsigned long )(& x), (long long )x);
    __CrestApply2(30, 15, (long long )(*mem_8 <= x));
    if (*mem_8 <= x) {
      __CrestBranch(33, 10, 1);
      __CrestLoad(37, (unsigned long )(& i), (long long )i);
      __CrestLoad(36, (unsigned long )0, (long long )1);
      __CrestApply2(35, 0, (long long )(i + 1));
      __CrestStore(38, (unsigned long )(& i));
      i ++;
      swap(arr + i, arr + j);
      __CrestClearStack(39);
    } else {
      __CrestBranch(34, 11, 0);

    }
    }
    }
    __CrestLoad(42, (unsigned long )(& j), (long long )j);
    __CrestLoad(41, (unsigned long )0, (long long )1);
    __CrestApply2(40, 0, (long long )(j + 1));
    __CrestStore(43, (unsigned long )(& j));
    j ++;
  } else {
    __CrestBranch(29, 13, 0);

  }
  }
  {
  __CrestLoad(48, (unsigned long )(& j), (long long )j);
  __CrestLoad(47, (unsigned long )(& h), (long long )h);
  __CrestLoad(46, (unsigned long )0, (long long )1);
  __CrestApply2(45, 1, (long long )(h - 1));
  __CrestApply2(44, 15, (long long )(j <= h - 1));
  if (j <= h - 1) {
    __CrestBranch(49, 15, 1);
    {
    mem_9 = arr + j;
    {
    __CrestLoad(53, (unsigned long )mem_9, (long long )*mem_9);
    __CrestLoad(52, (unsigned long )(& x), (long long )x);
    __CrestApply2(51, 15, (long long )(*mem_9 <= x));
    if (*mem_9 <= x) {
      __CrestBranch(54, 18, 1);
      __CrestLoad(58, (unsigned long )(& i), (long long )i);
      __CrestLoad(57, (unsigned long )0, (long long )1);
      __CrestApply2(56, 0, (long long )(i + 1));
      __CrestStore(59, (unsigned long )(& i));
      i ++;
      swap(arr + i, arr + j);
      __CrestClearStack(60);
    } else {
      __CrestBranch(55, 19, 0);

    }
    }
    }
    __CrestLoad(63, (unsigned long )(& j), (long long )j);
    __CrestLoad(62, (unsigned long )0, (long long )1);
    __CrestApply2(61, 0, (long long )(j + 1));
    __CrestStore(64, (unsigned long )(& j));
    j ++;
  } else {
    __CrestBranch(50, 21, 0);

  }
  }
  }
#line 32
  swap(arr + (i + 1), arr + h);
  __CrestClearStack(65);
  __CrestLoad(68, (unsigned long )(& i), (long long )i);
  __CrestLoad(67, (unsigned long )0, (long long )1);
  __CrestApply2(66, 0, (long long )(i + 1));
  __CrestStore(69, (unsigned long )(& __retres10));
#line 33
  __retres10 = i + 1;
  {
  __CrestLoad(70, (unsigned long )(& __retres10), (long long )__retres10);
  __CrestReturn(71);
#line 14
  return (__retres10);
  }
}
}
#line 37 "quicksort.c"
void quickSort(int *arr , int l , int h ) 
{ 
  int *stack ;
  unsigned long __lengthofstack ;
  void *tmp ;
  int top ;
  int tmp___0 ;
  int tmp___1 ;
  int p ;
  int tmp___2 ;
  int *mem_12 ;
  int *mem_13 ;
  int *mem_14 ;
  int *mem_15 ;
  int *mem_16 ;
  int *mem_17 ;
  int *mem_18 ;
  int *mem_19 ;
  int *mem_20 ;
  int *mem_21 ;
  int *mem_22 ;
  int *mem_23 ;
  int *mem_24 ;
  int *mem_25 ;

  {
  __CrestCall(74, 3);
  __CrestStore(73, (unsigned long )(& h));
  __CrestStore(72, (unsigned long )(& l));
  __CrestLoad(79, (unsigned long )(& h), (long long )h);
  __CrestLoad(78, (unsigned long )(& l), (long long )l);
  __CrestApply2(77, 1, (long long )(h - l));
  __CrestLoad(76, (unsigned long )0, (long long )1);
  __CrestApply2(75, 0, (long long )((h - l) + 1));
  __CrestStore(80, (unsigned long )(& __lengthofstack));
#line 40
  __lengthofstack = (unsigned long )((h - l) + 1);
  __CrestLoad(83, (unsigned long )0, (long long )sizeof(*stack));
  __CrestLoad(82, (unsigned long )(& __lengthofstack), (long long )__lengthofstack);
  __CrestApply2(81, 2, (long long )(sizeof(*stack) * __lengthofstack));
#line 40
  tmp = __builtin_alloca(sizeof(*stack) * __lengthofstack);
  __CrestClearStack(84);
#line 40
  stack = (int *)tmp;
  __CrestLoad(85, (unsigned long )0, (long long )-1);
  __CrestStore(86, (unsigned long )(& top));
#line 43
  top = -1;
  __CrestLoad(89, (unsigned long )(& top), (long long )top);
  __CrestLoad(88, (unsigned long )0, (long long )1);
  __CrestApply2(87, 0, (long long )(top + 1));
  __CrestStore(90, (unsigned long )(& top));
#line 46
  top ++;
#line 46
  mem_12 = stack + top;
  __CrestLoad(91, (unsigned long )(& l), (long long )l);
  __CrestStore(92, (unsigned long )mem_12);
#line 46
  *mem_12 = l;
  __CrestLoad(95, (unsigned long )(& top), (long long )top);
  __CrestLoad(94, (unsigned long )0, (long long )1);
  __CrestApply2(93, 0, (long long )(top + 1));
  __CrestStore(96, (unsigned long )(& top));
#line 47
  top ++;
#line 47
  mem_13 = stack + top;
  __CrestLoad(97, (unsigned long )(& h), (long long )h);
  __CrestStore(98, (unsigned long )mem_13);
#line 47
  *mem_13 = h;
  {
  {
  __CrestLoad(101, (unsigned long )(& top), (long long )top);
  __CrestLoad(100, (unsigned long )0, (long long )0);
  __CrestApply2(99, 17, (long long )(top >= 0));
  if (top >= 0) {
    __CrestBranch(102, 28, 1);
    {
    __CrestLoad(106, (unsigned long )(& l), (long long )l);
    __CrestLoad(105, (unsigned long )0, (long long )0);
    __CrestApply2(104, 14, (long long )(l > 0));
    if (l > 0) {
      __CrestBranch(107, 29, 1);
      {
      __CrestLoad(111, (unsigned long )(& h), (long long )h);
      __CrestLoad(110, (unsigned long )(& l), (long long )l);
      __CrestApply2(109, 14, (long long )(h > l));
      if (h > l) {
        __CrestBranch(112, 30, 1);
        __CrestLoad(114, (unsigned long )(& top), (long long )top);
        __CrestStore(115, (unsigned long )(& tmp___0));
        tmp___0 = top;
        __CrestLoad(118, (unsigned long )(& top), (long long )top);
        __CrestLoad(117, (unsigned long )0, (long long )1);
        __CrestApply2(116, 1, (long long )(top - 1));
        __CrestStore(119, (unsigned long )(& top));
        top --;
        mem_14 = stack + tmp___0;
        __CrestLoad(120, (unsigned long )mem_14, (long long )*mem_14);
        __CrestStore(121, (unsigned long )(& h));
        h = *mem_14;
        __CrestLoad(122, (unsigned long )(& top), (long long )top);
        __CrestStore(123, (unsigned long )(& tmp___1));
        tmp___1 = top;
        __CrestLoad(126, (unsigned long )(& top), (long long )top);
        __CrestLoad(125, (unsigned long )0, (long long )1);
        __CrestApply2(124, 1, (long long )(top - 1));
        __CrestStore(127, (unsigned long )(& top));
        top --;
        mem_15 = stack + tmp___1;
        __CrestLoad(128, (unsigned long )mem_15, (long long )*mem_15);
        __CrestStore(129, (unsigned long )(& l));
        l = *mem_15;
        __CrestLoad(130, (unsigned long )(& l), (long long )l);
        __CrestLoad(131, (unsigned long )(& h), (long long )h);
        tmp___2 = partition(arr, l, h);
        __CrestHandleReturn(133, (long long )tmp___2);
        __CrestStore(132, (unsigned long )(& tmp___2));
        __CrestLoad(134, (unsigned long )(& tmp___2), (long long )tmp___2);
        __CrestStore(135, (unsigned long )(& p));
        p = tmp___2;
        {
        __CrestLoad(140, (unsigned long )(& p), (long long )p);
        __CrestLoad(139, (unsigned long )0, (long long )1);
        __CrestApply2(138, 1, (long long )(p - 1));
        __CrestLoad(137, (unsigned long )(& l), (long long )l);
        __CrestApply2(136, 14, (long long )(p - 1 > l));
        if (p - 1 > l) {
          __CrestBranch(141, 32, 1);
          __CrestLoad(145, (unsigned long )(& top), (long long )top);
          __CrestLoad(144, (unsigned long )0, (long long )1);
          __CrestApply2(143, 0, (long long )(top + 1));
          __CrestStore(146, (unsigned long )(& top));
          top ++;
          mem_16 = stack + top;
          __CrestLoad(147, (unsigned long )(& l), (long long )l);
          __CrestStore(148, (unsigned long )mem_16);
          *mem_16 = l;
          __CrestLoad(151, (unsigned long )(& top), (long long )top);
          __CrestLoad(150, (unsigned long )0, (long long )1);
          __CrestApply2(149, 0, (long long )(top + 1));
          __CrestStore(152, (unsigned long )(& top));
          top ++;
          mem_17 = stack + top;
          __CrestLoad(155, (unsigned long )(& p), (long long )p);
          __CrestLoad(154, (unsigned long )0, (long long )1);
          __CrestApply2(153, 1, (long long )(p - 1));
          __CrestStore(156, (unsigned long )mem_17);
          *mem_17 = p - 1;
        } else {
          __CrestBranch(142, 33, 0);

        }
        }
        {
        __CrestLoad(161, (unsigned long )(& p), (long long )p);
        __CrestLoad(160, (unsigned long )0, (long long )1);
        __CrestApply2(159, 0, (long long )(p + 1));
        __CrestLoad(158, (unsigned long )(& h), (long long )h);
        __CrestApply2(157, 16, (long long )(p + 1 < h));
        if (p + 1 < h) {
          __CrestBranch(162, 35, 1);
          __CrestLoad(166, (unsigned long )(& top), (long long )top);
          __CrestLoad(165, (unsigned long )0, (long long )1);
          __CrestApply2(164, 0, (long long )(top + 1));
          __CrestStore(167, (unsigned long )(& top));
          top ++;
          mem_18 = stack + top;
          __CrestLoad(170, (unsigned long )(& p), (long long )p);
          __CrestLoad(169, (unsigned long )0, (long long )1);
          __CrestApply2(168, 0, (long long )(p + 1));
          __CrestStore(171, (unsigned long )mem_18);
          *mem_18 = p + 1;
          __CrestLoad(174, (unsigned long )(& top), (long long )top);
          __CrestLoad(173, (unsigned long )0, (long long )1);
          __CrestApply2(172, 0, (long long )(top + 1));
          __CrestStore(175, (unsigned long )(& top));
          top ++;
          mem_19 = stack + top;
          __CrestLoad(176, (unsigned long )(& h), (long long )h);
          __CrestStore(177, (unsigned long )mem_19);
          *mem_19 = h;
        } else {
          __CrestBranch(163, 36, 0);

        }
        }
      } else {
        __CrestBranch(113, 37, 0);

      }
      }
    } else {
      __CrestBranch(108, 38, 0);

    }
    }
  } else {
    __CrestBranch(103, 39, 0);

  }
  }
  {
  __CrestLoad(180, (unsigned long )(& top), (long long )top);
  __CrestLoad(179, (unsigned long )0, (long long )0);
  __CrestApply2(178, 17, (long long )(top >= 0));
  if (top >= 0) {
    __CrestBranch(181, 41, 1);
    {
    __CrestLoad(185, (unsigned long )(& l), (long long )l);
    __CrestLoad(184, (unsigned long )0, (long long )0);
    __CrestApply2(183, 14, (long long )(l > 0));
    if (l > 0) {
      __CrestBranch(186, 42, 1);
      {
      __CrestLoad(190, (unsigned long )(& h), (long long )h);
      __CrestLoad(189, (unsigned long )(& l), (long long )l);
      __CrestApply2(188, 14, (long long )(h > l));
      if (h > l) {
        __CrestBranch(191, 43, 1);
        __CrestLoad(193, (unsigned long )(& top), (long long )top);
        __CrestStore(194, (unsigned long )(& tmp___0));
        tmp___0 = top;
        __CrestLoad(197, (unsigned long )(& top), (long long )top);
        __CrestLoad(196, (unsigned long )0, (long long )1);
        __CrestApply2(195, 1, (long long )(top - 1));
        __CrestStore(198, (unsigned long )(& top));
        top --;
        mem_20 = stack + tmp___0;
        __CrestLoad(199, (unsigned long )mem_20, (long long )*mem_20);
        __CrestStore(200, (unsigned long )(& h));
        h = *mem_20;
        __CrestLoad(201, (unsigned long )(& top), (long long )top);
        __CrestStore(202, (unsigned long )(& tmp___1));
        tmp___1 = top;
        __CrestLoad(205, (unsigned long )(& top), (long long )top);
        __CrestLoad(204, (unsigned long )0, (long long )1);
        __CrestApply2(203, 1, (long long )(top - 1));
        __CrestStore(206, (unsigned long )(& top));
        top --;
        mem_21 = stack + tmp___1;
        __CrestLoad(207, (unsigned long )mem_21, (long long )*mem_21);
        __CrestStore(208, (unsigned long )(& l));
        l = *mem_21;
        __CrestLoad(209, (unsigned long )(& l), (long long )l);
        __CrestLoad(210, (unsigned long )(& h), (long long )h);
        tmp___2 = partition(arr, l, h);
        __CrestHandleReturn(212, (long long )tmp___2);
        __CrestStore(211, (unsigned long )(& tmp___2));
        __CrestLoad(213, (unsigned long )(& tmp___2), (long long )tmp___2);
        __CrestStore(214, (unsigned long )(& p));
        p = tmp___2;
        {
        __CrestLoad(219, (unsigned long )(& p), (long long )p);
        __CrestLoad(218, (unsigned long )0, (long long )1);
        __CrestApply2(217, 1, (long long )(p - 1));
        __CrestLoad(216, (unsigned long )(& l), (long long )l);
        __CrestApply2(215, 14, (long long )(p - 1 > l));
        if (p - 1 > l) {
          __CrestBranch(220, 45, 1);
          __CrestLoad(224, (unsigned long )(& top), (long long )top);
          __CrestLoad(223, (unsigned long )0, (long long )1);
          __CrestApply2(222, 0, (long long )(top + 1));
          __CrestStore(225, (unsigned long )(& top));
          top ++;
          mem_22 = stack + top;
          __CrestLoad(226, (unsigned long )(& l), (long long )l);
          __CrestStore(227, (unsigned long )mem_22);
          *mem_22 = l;
          __CrestLoad(230, (unsigned long )(& top), (long long )top);
          __CrestLoad(229, (unsigned long )0, (long long )1);
          __CrestApply2(228, 0, (long long )(top + 1));
          __CrestStore(231, (unsigned long )(& top));
          top ++;
          mem_23 = stack + top;
          __CrestLoad(234, (unsigned long )(& p), (long long )p);
          __CrestLoad(233, (unsigned long )0, (long long )1);
          __CrestApply2(232, 1, (long long )(p - 1));
          __CrestStore(235, (unsigned long )mem_23);
          *mem_23 = p - 1;
        } else {
          __CrestBranch(221, 46, 0);

        }
        }
        {
        __CrestLoad(240, (unsigned long )(& p), (long long )p);
        __CrestLoad(239, (unsigned long )0, (long long )1);
        __CrestApply2(238, 0, (long long )(p + 1));
        __CrestLoad(237, (unsigned long )(& h), (long long )h);
        __CrestApply2(236, 16, (long long )(p + 1 < h));
        if (p + 1 < h) {
          __CrestBranch(241, 48, 1);
          __CrestLoad(245, (unsigned long )(& top), (long long )top);
          __CrestLoad(244, (unsigned long )0, (long long )1);
          __CrestApply2(243, 0, (long long )(top + 1));
          __CrestStore(246, (unsigned long )(& top));
          top ++;
          mem_24 = stack + top;
          __CrestLoad(249, (unsigned long )(& p), (long long )p);
          __CrestLoad(248, (unsigned long )0, (long long )1);
          __CrestApply2(247, 0, (long long )(p + 1));
          __CrestStore(250, (unsigned long )mem_24);
          *mem_24 = p + 1;
          __CrestLoad(253, (unsigned long )(& top), (long long )top);
          __CrestLoad(252, (unsigned long )0, (long long )1);
          __CrestApply2(251, 0, (long long )(top + 1));
          __CrestStore(254, (unsigned long )(& top));
          top ++;
          mem_25 = stack + top;
          __CrestLoad(255, (unsigned long )(& h), (long long )h);
          __CrestStore(256, (unsigned long )mem_25);
          *mem_25 = h;
        } else {
          __CrestBranch(242, 49, 0);

        }
        }
      } else {
        __CrestBranch(192, 50, 0);

      }
      }
    } else {
      __CrestBranch(187, 51, 0);

    }
    }
  } else {
    __CrestBranch(182, 52, 0);

  }
  }
  }

  {
  __CrestReturn(257);
#line 37
  return;
  }
}
}
#line 78 "quicksort.c"
void printArr(int *arr , int n ) 
{ 
  int i ;
  int *mem_4 ;
  int *mem_5 ;

  {
  __CrestCall(259, 4);
  __CrestStore(258, (unsigned long )(& n));
  __CrestLoad(260, (unsigned long )0, (long long )0);
  __CrestStore(261, (unsigned long )(& i));
#line 81
  i = 0;
  {
  {
  __CrestLoad(264, (unsigned long )(& i), (long long )i);
  __CrestLoad(263, (unsigned long )(& n), (long long )n);
  __CrestApply2(262, 16, (long long )(i < n));
  if (i < n) {
    __CrestBranch(265, 58, 1);
    mem_4 = arr + i;
    __CrestLoad(267, (unsigned long )mem_4, (long long )*mem_4);
    printf((char const   * __restrict  )"%d ", *mem_4);
    __CrestClearStack(268);
    __CrestLoad(271, (unsigned long )(& i), (long long )i);
    __CrestLoad(270, (unsigned long )0, (long long )1);
    __CrestApply2(269, 0, (long long )(i + 1));
    __CrestStore(272, (unsigned long )(& i));
    i ++;
  } else {
    __CrestBranch(266, 59, 0);

  }
  }
  {
  __CrestLoad(275, (unsigned long )(& i), (long long )i);
  __CrestLoad(274, (unsigned long )(& n), (long long )n);
  __CrestApply2(273, 16, (long long )(i < n));
  if (i < n) {
    __CrestBranch(276, 61, 1);
    mem_5 = arr + i;
    __CrestLoad(278, (unsigned long )mem_5, (long long )*mem_5);
    printf((char const   * __restrict  )"%d ", *mem_5);
    __CrestClearStack(279);
    __CrestLoad(282, (unsigned long )(& i), (long long )i);
    __CrestLoad(281, (unsigned long )0, (long long )1);
    __CrestApply2(280, 0, (long long )(i + 1));
    __CrestStore(283, (unsigned long )(& i));
    i ++;
  } else {
    __CrestBranch(277, 62, 0);

  }
  }
  }

  {
  __CrestReturn(284);
#line 78
  return;
  }
}
}
#line 86 "quicksort.c"
int main(void) 
{ 
  int arr[10] ;
  int n ;
  int __retres3 ;

  {
  __globinit_quicksort();
  __CrestCall(285, 5);
#line 90
  __CrestInt((int *)(& arr));
#line 91
  __CrestInt(& n);
  __CrestLoad(286, (unsigned long )0, (long long )0);
  __CrestLoad(289, (unsigned long )(& n), (long long )n);
  __CrestLoad(288, (unsigned long )0, (long long )1);
  __CrestApply2(287, 1, (long long )(n - 1));
#line 92
  quickSort(arr, 0, n - 1);
  __CrestClearStack(290);
  __CrestLoad(291, (unsigned long )(& n), (long long )n);
#line 93
  printArr(arr, n);
  __CrestClearStack(292);
  __CrestLoad(293, (unsigned long )0, (long long )0);
  __CrestStore(294, (unsigned long )(& __retres3));
#line 94
  __retres3 = 0;
  __CrestLoad(295, (unsigned long )(& __retres3), (long long )__retres3);
  __CrestReturn(296);
#line 86
  return (__retres3);
}
}
void __globinit_quicksort(void) 
{ 


  {
  __CrestInit();
}
}
