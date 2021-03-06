# 1 "./tcas.cil.c"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./tcas.cil.c"
# 233 "tcas.c"
void __globinit_tcas(void) ;
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
# 69 "/usr/include/assert.h"
extern __attribute__((__nothrow__, __noreturn__)) void ( __attribute__((__leaf__)) __assert_fail)(char const *__assertion ,
                                                                                                   char const *__file ,
                                                                                                   unsigned int __line ,
                                                                                                   char const *__function ) ;
# 202 "../bin/../include/crest.h"
extern void __CrestInt(int *x ) __attribute__((__crest_skip__)) ;
# 6 "tcas.c"
int nondet_int(void)
{
  int nd ;

  {
  __CrestCall(1, 1);

  {
  __CrestLoad(2, (unsigned long )(& nd), (long long )nd);
  __CrestReturn(3);
# 9 "tcas.c"
  return (nd);
  }
}
}
# 12 "tcas.c"
int Cur_Vertical_Sep ;
# 13 "tcas.c"
int High_Confidence ;
# 14 "tcas.c"
int Two_of_Three_Reports_Valid ;
# 15 "tcas.c"
int Own_Tracked_Alt ;
# 16 "tcas.c"
int Own_Tracked_Alt_Rate ;
# 17 "tcas.c"
int Other_Tracked_Alt ;
# 18 "tcas.c"
int Alt_Layer_Value ;
# 19 "tcas.c"
int Positive_RA_Alt_Thresh_0 ;
# 20 "tcas.c"
int Positive_RA_Alt_Thresh_1 ;
# 21 "tcas.c"
int Positive_RA_Alt_Thresh_2 ;
# 22 "tcas.c"
int Positive_RA_Alt_Thresh_3 ;
# 23 "tcas.c"
int Up_Separation ;
# 24 "tcas.c"
int Down_Separation ;
# 25 "tcas.c"
int Other_RAC ;
# 26 "tcas.c"
int Other_Capability ;
# 27 "tcas.c"
int Climb_Inhibit ;
# 29 "tcas.c"
int costs[999] ;
# 30 "tcas.c"
int citer ;
# 37 "tcas.c"
int Own_Below_Threat(void)
{
  int __retres1 ;

  {
  __CrestCall(4, 2);

  {
  __CrestLoad(7, (unsigned long )(& Own_Tracked_Alt), (long long )Own_Tracked_Alt);
  __CrestLoad(6, (unsigned long )(& Other_Tracked_Alt), (long long )Other_Tracked_Alt);
  __CrestApply2(5, 16, (long long )(Own_Tracked_Alt < Other_Tracked_Alt));
# 39 "tcas.c"
  if (Own_Tracked_Alt < Other_Tracked_Alt) {
    __CrestBranch(8, 3, 1);
    __CrestLoad(10, (unsigned long )0, (long long )1);
    __CrestStore(11, (unsigned long )(& __retres1));
# 40 "tcas.c"
    __retres1 = 1;
# 40 "tcas.c"
    goto return_label;
  } else {
    __CrestBranch(9, 5, 0);
    __CrestLoad(12, (unsigned long )0, (long long )0);
    __CrestStore(13, (unsigned long )(& __retres1));
# 42 "tcas.c"
    __retres1 = 0;
# 42 "tcas.c"
    goto return_label;
  }
  }
  return_label:
  {
  __CrestLoad(14, (unsigned long )(& __retres1), (long long )__retres1);
  __CrestReturn(15);
# 37 "tcas.c"
  return (__retres1);
  }
}
}
# 45 "tcas.c"
int Own_Above_Threat(void)
{
  int __retres1 ;

  {
  __CrestCall(16, 3);

  {
  __CrestLoad(19, (unsigned long )(& Other_Tracked_Alt), (long long )Other_Tracked_Alt);
  __CrestLoad(18, (unsigned long )(& Own_Tracked_Alt), (long long )Own_Tracked_Alt);
  __CrestApply2(17, 16, (long long )(Other_Tracked_Alt < Own_Tracked_Alt));
# 47 "tcas.c"
  if (Other_Tracked_Alt < Own_Tracked_Alt) {
    __CrestBranch(20, 9, 1);
    __CrestLoad(22, (unsigned long )0, (long long )1);
    __CrestStore(23, (unsigned long )(& __retres1));
# 48 "tcas.c"
    __retres1 = 1;
# 48 "tcas.c"
    goto return_label;
  } else {
    __CrestBranch(21, 11, 0);
    __CrestLoad(24, (unsigned long )0, (long long )0);
    __CrestStore(25, (unsigned long )(& __retres1));
# 50 "tcas.c"
    __retres1 = 0;
# 50 "tcas.c"
    goto return_label;
  }
  }
  return_label:
  {
  __CrestLoad(26, (unsigned long )(& __retres1), (long long )__retres1);
  __CrestReturn(27);
# 45 "tcas.c"
  return (__retres1);
  }
}
}
# 53 "tcas.c"
int initialize(void)
{
  int __retres1 ;

  {
  __CrestCall(28, 4);

  __CrestLoad(29, (unsigned long )0, (long long )32767);
  __CrestStore(30, (unsigned long )(& High_Confidence));
# 55 "tcas.c"
  High_Confidence = 32767;
  __CrestLoad(31, (unsigned long )0, (long long )0);
  __CrestStore(32, (unsigned long )(& Other_Capability));
# 56 "tcas.c"
  Other_Capability = 0;
  __CrestLoad(33, (unsigned long )0, (long long )1);
  __CrestStore(34, (unsigned long )(& Climb_Inhibit));
# 58 "tcas.c"
  Climb_Inhibit = 1;
  __CrestLoad(35, (unsigned long )0, (long long )16684);
  __CrestStore(36, (unsigned long )(& Cur_Vertical_Sep));
# 59 "tcas.c"
  Cur_Vertical_Sep = 16684;
  __CrestLoad(37, (unsigned long )0, (long long )450);
  __CrestStore(38, (unsigned long )(& Own_Tracked_Alt_Rate));
# 60 "tcas.c"
  Own_Tracked_Alt_Rate = 450;
  {
  __CrestLoad(41, (unsigned long )(& Own_Tracked_Alt), (long long )Own_Tracked_Alt);
  __CrestLoad(40, (unsigned long )0, (long long )0);
  __CrestApply2(39, 17, (long long )(Own_Tracked_Alt >= 0));
# 62 "tcas.c"
  if (Own_Tracked_Alt >= 0) {
    __CrestBranch(42, 16, 1);

  } else {
    __CrestBranch(43, 17, 0);
    __CrestLoad(44, (unsigned long )0, (long long )62U);
# 62 "tcas.c"
    __assert_fail("Own_Tracked_Alt >= 0", "tcas.c", 62U, "initialize");
    __CrestClearStack(45);
  }
  }
  {
  __CrestLoad(48, (unsigned long )(& Other_Tracked_Alt), (long long )Other_Tracked_Alt);
  __CrestLoad(47, (unsigned long )0, (long long )0);
  __CrestApply2(46, 17, (long long )(Other_Tracked_Alt >= 0));
# 63 "tcas.c"
  if (Other_Tracked_Alt >= 0) {
    __CrestBranch(49, 19, 1);

  } else {
    __CrestBranch(50, 20, 0);
    __CrestLoad(51, (unsigned long )0, (long long )63U);
# 63 "tcas.c"
    __assert_fail("Other_Tracked_Alt >= 0", "tcas.c", 63U, "initialize");
    __CrestClearStack(52);
  }
  }
  {
  __CrestLoad(55, (unsigned long )(& Own_Tracked_Alt_Rate), (long long )Own_Tracked_Alt_Rate);
  __CrestLoad(54, (unsigned long )0, (long long )0);
  __CrestApply2(53, 17, (long long )(Own_Tracked_Alt_Rate >= 0));
# 64 "tcas.c"
  if (Own_Tracked_Alt_Rate >= 0) {
    __CrestBranch(56, 22, 1);

  } else {
    __CrestBranch(57, 23, 0);
    __CrestLoad(58, (unsigned long )0, (long long )64U);
# 64 "tcas.c"
    __assert_fail("Own_Tracked_Alt_Rate >= 0", "tcas.c", 64U, "initialize");
    __CrestClearStack(59);
  }
  }
  __CrestLoad(60, (unsigned long )0, (long long )16434);
  __CrestStore(61, (unsigned long )(& Positive_RA_Alt_Thresh_0));
# 66 "tcas.c"
  Positive_RA_Alt_Thresh_0 = 16434;
  __CrestLoad(62, (unsigned long )0, (long long )0);
  __CrestStore(63, (unsigned long )(& Positive_RA_Alt_Thresh_1));
# 67 "tcas.c"
  Positive_RA_Alt_Thresh_1 = 0;
  __CrestLoad(64, (unsigned long )0, (long long )0);
  __CrestStore(65, (unsigned long )(& Positive_RA_Alt_Thresh_2));
# 68 "tcas.c"
  Positive_RA_Alt_Thresh_2 = 0;
  __CrestLoad(66, (unsigned long )0, (long long )0);
  __CrestStore(67, (unsigned long )(& Positive_RA_Alt_Thresh_3));
# 69 "tcas.c"
  Positive_RA_Alt_Thresh_3 = 0;
  __CrestLoad(68, (unsigned long )0, (long long )1);
  __CrestStore(69, (unsigned long )(& __retres1));
# 70 "tcas.c"
  __retres1 = 1;
  {
  __CrestLoad(70, (unsigned long )(& __retres1), (long long )__retres1);
  __CrestReturn(71);
# 53 "tcas.c"
  return (__retres1);
  }
}
}
# 73 "tcas.c"
int Positive_RA_Alt_Thresh(int Alt )
{
  int res ;

  {
  __CrestCall(73, 5);
  __CrestStore(72, (unsigned long )(& Alt));
# 75 "tcas.c"
  __CrestInt(& Alt);
  __CrestLoad(74, (unsigned long )0, (long long )0);
  __CrestStore(75, (unsigned long )(& res));
# 76 "tcas.c"
  res = 0;
  {
  __CrestLoad(78, (unsigned long )(& Alt), (long long )Alt);
  __CrestLoad(77, (unsigned long )0, (long long )0);
  __CrestApply2(76, 12, (long long )(Alt == 0));
# 77 "tcas.c"
  if (Alt == 0) {
    __CrestBranch(79, 29, 1);
    __CrestLoad(81, (unsigned long )(& Positive_RA_Alt_Thresh_0), (long long )Positive_RA_Alt_Thresh_0);
    __CrestStore(82, (unsigned long )(& res));
# 78 "tcas.c"
    res = Positive_RA_Alt_Thresh_0;
  } else {
    __CrestBranch(80, 30, 0);
    {
    __CrestLoad(85, (unsigned long )(& Alt), (long long )Alt);
    __CrestLoad(84, (unsigned long )0, (long long )1);
    __CrestApply2(83, 12, (long long )(Alt == 1));
# 79 "tcas.c"
    if (Alt == 1) {
      __CrestBranch(86, 31, 1);
      __CrestLoad(88, (unsigned long )(& Positive_RA_Alt_Thresh_1), (long long )Positive_RA_Alt_Thresh_1);
      __CrestStore(89, (unsigned long )(& res));
# 80 "tcas.c"
      res = Positive_RA_Alt_Thresh_1;
    } else {
      __CrestBranch(87, 32, 0);
      {
      __CrestLoad(92, (unsigned long )(& Alt), (long long )Alt);
      __CrestLoad(91, (unsigned long )0, (long long )2);
      __CrestApply2(90, 12, (long long )(Alt == 2));
# 81 "tcas.c"
      if (Alt == 2) {
        __CrestBranch(93, 33, 1);
        __CrestLoad(95, (unsigned long )(& Positive_RA_Alt_Thresh_2), (long long )Positive_RA_Alt_Thresh_2);
        __CrestStore(96, (unsigned long )(& res));
# 82 "tcas.c"
        res = Positive_RA_Alt_Thresh_2;
      } else {
        __CrestBranch(94, 34, 0);
        {
        __CrestLoad(99, (unsigned long )(& Alt), (long long )Alt);
        __CrestLoad(98, (unsigned long )0, (long long )3);
        __CrestApply2(97, 12, (long long )(Alt == 3));
# 83 "tcas.c"
        if (Alt == 3) {
          __CrestBranch(100, 35, 1);
          __CrestLoad(102, (unsigned long )(& Positive_RA_Alt_Thresh_3), (long long )Positive_RA_Alt_Thresh_3);
          __CrestStore(103, (unsigned long )(& res));
# 84 "tcas.c"
          res = Positive_RA_Alt_Thresh_3;
        } else {
          __CrestBranch(101, 36, 0);

        }
        }
      }
      }
    }
    }
  }
  }
  {
  __CrestLoad(104, (unsigned long )(& res), (long long )res);
  __CrestReturn(105);
# 85 "tcas.c"
  return (res);
  }
}
}
# 89 "tcas.c"
int ALIM(void)
{
  int tmp ;

  {
  __CrestCall(106, 6);

  __CrestLoad(107, (unsigned long )(& Alt_Layer_Value), (long long )Alt_Layer_Value);
# 91 "tcas.c"
  tmp = Positive_RA_Alt_Thresh(Alt_Layer_Value);
  __CrestHandleReturn(109, (long long )tmp);
  __CrestStore(108, (unsigned long )(& tmp));
  {
  __CrestLoad(110, (unsigned long )(& tmp), (long long )tmp);
  __CrestReturn(111);
# 91 "tcas.c"
  return (tmp);
  }
}
}
# 94 "tcas.c"
int Inhibit_Biased_Climb(void)
{
  int __retres1 ;

  {
  __CrestCall(112, 7);

  {
  __CrestLoad(115, (unsigned long )(& Climb_Inhibit), (long long )Climb_Inhibit);
  __CrestLoad(114, (unsigned long )0, (long long )1);
  __CrestApply2(113, 17, (long long )(Climb_Inhibit >= 1));
# 96 "tcas.c"
  if (Climb_Inhibit >= 1) {
    __CrestBranch(116, 41, 1);
    __CrestLoad(120, (unsigned long )(& Up_Separation), (long long )Up_Separation);
    __CrestLoad(119, (unsigned long )0, (long long )100);
    __CrestApply2(118, 0, (long long )(Up_Separation + 100));
    __CrestStore(121, (unsigned long )(& __retres1));
# 97 "tcas.c"
    __retres1 = Up_Separation + 100;
# 97 "tcas.c"
    goto return_label;
  } else {
    __CrestBranch(117, 43, 0);
    __CrestLoad(122, (unsigned long )(& Up_Separation), (long long )Up_Separation);
    __CrestStore(123, (unsigned long )(& __retres1));
# 99 "tcas.c"
    __retres1 = Up_Separation;
# 99 "tcas.c"
    goto return_label;
  }
  }
  return_label:
  {
  __CrestLoad(124, (unsigned long )(& __retres1), (long long )__retres1);
  __CrestReturn(125);
# 94 "tcas.c"
  return (__retres1);
  }
}
}
# 104 "tcas.c"
int Non_Crossing_Biased_Climb(void)
{
  int upward_preferred ;
  int upward_crossing_situation ;
  int result ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;

  {
  __CrestCall(126, 8);
# 109 "tcas.c"
  __CrestInt(& upward_preferred);
# 110 "tcas.c"
  __CrestInt(& upward_crossing_situation);
# 111 "tcas.c"
  __CrestInt(& result);
# 113 "tcas.c"
  tmp = Inhibit_Biased_Climb();
  __CrestHandleReturn(128, (long long )tmp);
  __CrestStore(127, (unsigned long )(& tmp));
  {
  __CrestLoad(131, (unsigned long )(& tmp), (long long )tmp);
  __CrestLoad(130, (unsigned long )(& Down_Separation), (long long )Down_Separation);
  __CrestApply2(129, 14, (long long )(tmp > Down_Separation));
# 113 "tcas.c"
  if (tmp > Down_Separation) {
    __CrestBranch(132, 48, 1);
    __CrestLoad(134, (unsigned long )0, (long long )1);
    __CrestStore(135, (unsigned long )(& upward_preferred));
# 114 "tcas.c"
    upward_preferred = 1;
  } else {
    __CrestBranch(133, 49, 0);
    __CrestLoad(136, (unsigned long )0, (long long )0);
    __CrestStore(137, (unsigned long )(& upward_preferred));
# 116 "tcas.c"
    upward_preferred = 0;
  }
  }
  {
  __CrestLoad(140, (unsigned long )(& upward_preferred), (long long )upward_preferred);
  __CrestLoad(139, (unsigned long )0, (long long )1);
  __CrestApply2(138, 12, (long long )(upward_preferred == 1));
# 118 "tcas.c"
  if (upward_preferred == 1) {
    __CrestBranch(141, 51, 1);
# 120 "tcas.c"
    tmp___0 = Own_Below_Threat();
    __CrestHandleReturn(144, (long long )tmp___0);
    __CrestStore(143, (unsigned long )(& tmp___0));
    {
    __CrestLoad(147, (unsigned long )(& tmp___0), (long long )tmp___0);
    __CrestLoad(146, (unsigned long )0, (long long )0);
    __CrestApply2(145, 13, (long long )(tmp___0 != 0));
# 120 "tcas.c"
    if (tmp___0 != 0) {
      __CrestBranch(148, 53, 1);
# 120 "tcas.c"
      tmp___1 = Own_Below_Threat();
      __CrestHandleReturn(151, (long long )tmp___1);
      __CrestStore(150, (unsigned long )(& tmp___1));
      {
      __CrestLoad(154, (unsigned long )(& tmp___1), (long long )tmp___1);
      __CrestLoad(153, (unsigned long )0, (long long )0);
      __CrestApply2(152, 13, (long long )(tmp___1 != 0));
# 120 "tcas.c"
      if (tmp___1 != 0) {
        __CrestBranch(155, 55, 1);
# 120 "tcas.c"
        tmp___2 = ALIM();
        __CrestHandleReturn(158, (long long )tmp___2);
        __CrestStore(157, (unsigned long )(& tmp___2));
        {
        __CrestLoad(161, (unsigned long )(& Down_Separation), (long long )Down_Separation);
        __CrestLoad(160, (unsigned long )(& tmp___2), (long long )tmp___2);
        __CrestApply2(159, 17, (long long )(Down_Separation >= tmp___2));
# 120 "tcas.c"
        if (Down_Separation >= tmp___2) {
          __CrestBranch(162, 57, 1);
          __CrestLoad(164, (unsigned long )0, (long long )0);
          __CrestStore(165, (unsigned long )(& result));
# 123 "tcas.c"
          result = 0;
        } else {
          __CrestBranch(163, 58, 0);
          __CrestLoad(166, (unsigned long )0, (long long )1);
          __CrestStore(167, (unsigned long )(& result));
# 121 "tcas.c"
          result = 1;
        }
        }
      } else {
        __CrestBranch(156, 59, 0);
        __CrestLoad(168, (unsigned long )0, (long long )0);
        __CrestStore(169, (unsigned long )(& result));
# 123 "tcas.c"
        result = 0;
      }
      }
    } else {
      __CrestBranch(149, 60, 0);
      __CrestLoad(170, (unsigned long )0, (long long )1);
      __CrestStore(171, (unsigned long )(& result));
# 121 "tcas.c"
      result = 1;
    }
    }
  } else {
    __CrestBranch(142, 61, 0);
# 127 "tcas.c"
    tmp___3 = Own_Above_Threat();
    __CrestHandleReturn(173, (long long )tmp___3);
    __CrestStore(172, (unsigned long )(& tmp___3));
    {
    __CrestLoad(176, (unsigned long )(& tmp___3), (long long )tmp___3);
    __CrestLoad(175, (unsigned long )0, (long long )0);
    __CrestApply2(174, 13, (long long )(tmp___3 != 0));
# 127 "tcas.c"
    if (tmp___3 != 0) {
      __CrestBranch(177, 63, 1);
      {
      __CrestLoad(181, (unsigned long )(& Cur_Vertical_Sep), (long long )Cur_Vertical_Sep);
      __CrestLoad(180, (unsigned long )0, (long long )300);
      __CrestApply2(179, 17, (long long )(Cur_Vertical_Sep >= 300));
# 127 "tcas.c"
      if (Cur_Vertical_Sep >= 300) {
        __CrestBranch(182, 64, 1);
# 127 "tcas.c"
        tmp___4 = ALIM();
        __CrestHandleReturn(185, (long long )tmp___4);
        __CrestStore(184, (unsigned long )(& tmp___4));
        {
        __CrestLoad(188, (unsigned long )(& Up_Separation), (long long )Up_Separation);
        __CrestLoad(187, (unsigned long )(& tmp___4), (long long )tmp___4);
        __CrestApply2(186, 17, (long long )(Up_Separation >= tmp___4));
# 127 "tcas.c"
        if (Up_Separation >= tmp___4) {
          __CrestBranch(189, 66, 1);
          __CrestLoad(191, (unsigned long )0, (long long )1);
          __CrestStore(192, (unsigned long )(& result));
# 128 "tcas.c"
          result = 1;
        } else {
          __CrestBranch(190, 67, 0);
          __CrestLoad(193, (unsigned long )0, (long long )0);
          __CrestStore(194, (unsigned long )(& result));
# 130 "tcas.c"
          result = 0;
        }
        }
      } else {
        __CrestBranch(183, 68, 0);
        __CrestLoad(195, (unsigned long )0, (long long )0);
        __CrestStore(196, (unsigned long )(& result));
# 130 "tcas.c"
        result = 0;
      }
      }
    } else {
      __CrestBranch(178, 69, 0);
      __CrestLoad(197, (unsigned long )0, (long long )0);
      __CrestStore(198, (unsigned long )(& result));
# 130 "tcas.c"
      result = 0;
    }
    }
  }
  }
  {
  __CrestLoad(199, (unsigned long )(& result), (long long )result);
  __CrestReturn(200);
# 132 "tcas.c"
  return (result);
  }
}
}
# 137 "tcas.c"
int Non_Crossing_Biased_Descend(void)
{
  int upward_preferred ;
  int upward_crossing_situation ;
  int result ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;

  {
  __CrestCall(201, 9);
# 142 "tcas.c"
  __CrestInt(& upward_preferred);
# 143 "tcas.c"
  __CrestInt(& upward_crossing_situation);
# 144 "tcas.c"
  __CrestInt(& result);
# 145 "tcas.c"
  tmp = Inhibit_Biased_Climb();
  __CrestHandleReturn(203, (long long )tmp);
  __CrestStore(202, (unsigned long )(& tmp));
  {
  __CrestLoad(206, (unsigned long )(& tmp), (long long )tmp);
  __CrestLoad(205, (unsigned long )(& Down_Separation), (long long )Down_Separation);
  __CrestApply2(204, 14, (long long )(tmp > Down_Separation));
# 145 "tcas.c"
  if (tmp > Down_Separation) {
    __CrestBranch(207, 73, 1);
    __CrestLoad(209, (unsigned long )0, (long long )1);
    __CrestStore(210, (unsigned long )(& upward_preferred));
# 146 "tcas.c"
    upward_preferred = 1;
  } else {
    __CrestBranch(208, 74, 0);
    __CrestLoad(211, (unsigned long )0, (long long )0);
    __CrestStore(212, (unsigned long )(& upward_preferred));
# 148 "tcas.c"
    upward_preferred = 0;
  }
  }
  {
  __CrestLoad(215, (unsigned long )(& upward_preferred), (long long )upward_preferred);
  __CrestLoad(214, (unsigned long )0, (long long )1);
  __CrestApply2(213, 12, (long long )(upward_preferred == 1));
# 150 "tcas.c"
  if (upward_preferred == 1) {
    __CrestBranch(216, 76, 1);
# 152 "tcas.c"
    tmp___0 = Own_Below_Threat();
    __CrestHandleReturn(219, (long long )tmp___0);
    __CrestStore(218, (unsigned long )(& tmp___0));
    {
    __CrestLoad(222, (unsigned long )(& tmp___0), (long long )tmp___0);
    __CrestLoad(221, (unsigned long )0, (long long )0);
    __CrestApply2(220, 13, (long long )(tmp___0 != 0));
# 152 "tcas.c"
    if (tmp___0 != 0) {
      __CrestBranch(223, 78, 1);
      {
      __CrestLoad(227, (unsigned long )(& Cur_Vertical_Sep), (long long )Cur_Vertical_Sep);
      __CrestLoad(226, (unsigned long )0, (long long )300);
      __CrestApply2(225, 17, (long long )(Cur_Vertical_Sep >= 300));
# 152 "tcas.c"
      if (Cur_Vertical_Sep >= 300) {
        __CrestBranch(228, 79, 1);
# 152 "tcas.c"
        tmp___1 = ALIM();
        __CrestHandleReturn(231, (long long )tmp___1);
        __CrestStore(230, (unsigned long )(& tmp___1));
        {
        __CrestLoad(234, (unsigned long )(& Down_Separation), (long long )Down_Separation);
        __CrestLoad(233, (unsigned long )(& tmp___1), (long long )tmp___1);
        __CrestApply2(232, 17, (long long )(Down_Separation >= tmp___1));
# 152 "tcas.c"
        if (Down_Separation >= tmp___1) {
          __CrestBranch(235, 81, 1);
          __CrestLoad(237, (unsigned long )0, (long long )1);
          __CrestStore(238, (unsigned long )(& result));
# 153 "tcas.c"
          result = 1;
        } else {
          __CrestBranch(236, 82, 0);
          __CrestLoad(239, (unsigned long )0, (long long )0);
          __CrestStore(240, (unsigned long )(& result));
# 155 "tcas.c"
          result = 0;
        }
        }
      } else {
        __CrestBranch(229, 83, 0);
        __CrestLoad(241, (unsigned long )0, (long long )0);
        __CrestStore(242, (unsigned long )(& result));
# 155 "tcas.c"
        result = 0;
      }
      }
    } else {
      __CrestBranch(224, 84, 0);
      __CrestLoad(243, (unsigned long )0, (long long )0);
      __CrestStore(244, (unsigned long )(& result));
# 155 "tcas.c"
      result = 0;
    }
    }
  } else {
    __CrestBranch(217, 85, 0);
# 159 "tcas.c"
    tmp___2 = Own_Above_Threat();
    __CrestHandleReturn(246, (long long )tmp___2);
    __CrestStore(245, (unsigned long )(& tmp___2));
    {
    __CrestLoad(249, (unsigned long )(& tmp___2), (long long )tmp___2);
    __CrestLoad(248, (unsigned long )0, (long long )0);
    __CrestApply2(247, 13, (long long )(tmp___2 != 0));
# 159 "tcas.c"
    if (tmp___2 != 0) {
      __CrestBranch(250, 87, 1);
# 159 "tcas.c"
      tmp___3 = Own_Above_Threat();
      __CrestHandleReturn(253, (long long )tmp___3);
      __CrestStore(252, (unsigned long )(& tmp___3));
      {
      __CrestLoad(256, (unsigned long )(& tmp___3), (long long )tmp___3);
      __CrestLoad(255, (unsigned long )0, (long long )0);
      __CrestApply2(254, 13, (long long )(tmp___3 != 0));
# 159 "tcas.c"
      if (tmp___3 != 0) {
        __CrestBranch(257, 89, 1);
# 159 "tcas.c"
        tmp___4 = ALIM();
        __CrestHandleReturn(260, (long long )tmp___4);
        __CrestStore(259, (unsigned long )(& tmp___4));
        {
        __CrestLoad(263, (unsigned long )(& Up_Separation), (long long )Up_Separation);
        __CrestLoad(262, (unsigned long )(& tmp___4), (long long )tmp___4);
        __CrestApply2(261, 17, (long long )(Up_Separation >= tmp___4));
# 159 "tcas.c"
        if (Up_Separation >= tmp___4) {
          __CrestBranch(264, 91, 1);
          __CrestLoad(266, (unsigned long )0, (long long )1);
          __CrestStore(267, (unsigned long )(& result));
# 160 "tcas.c"
          result = 1;
        } else {
          __CrestBranch(265, 92, 0);
          __CrestLoad(268, (unsigned long )0, (long long )0);
          __CrestStore(269, (unsigned long )(& result));
# 162 "tcas.c"
          result = 0;
        }
        }
      } else {
        __CrestBranch(258, 93, 0);
        __CrestLoad(270, (unsigned long )0, (long long )0);
        __CrestStore(271, (unsigned long )(& result));
# 162 "tcas.c"
        result = 0;
      }
      }
    } else {
      __CrestBranch(251, 94, 0);
      __CrestLoad(272, (unsigned long )0, (long long )1);
      __CrestStore(273, (unsigned long )(& result));
# 160 "tcas.c"
      result = 1;
    }
    }
  }
  }
  {
  __CrestLoad(274, (unsigned long )(& result), (long long )result);
  __CrestReturn(275);
# 164 "tcas.c"
  return (result);
  }
}
}
# 168 "tcas.c"
int alt_sep_test(void)
{
  int enabled ;
  int tcas_equipped ;
  int intent_not_known ;
  int need_upward_RA ;
  int need_downward_RA ;
  int alt_sep ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;

  {
  __CrestCall(276, 10);

  __CrestLoad(277, (unsigned long )0, (long long )0);
  __CrestStore(278, (unsigned long )(& need_upward_RA));
# 171 "tcas.c"
  need_upward_RA = 0;
  __CrestLoad(279, (unsigned long )0, (long long )0);
  __CrestStore(280, (unsigned long )(& need_downward_RA));
# 172 "tcas.c"
  need_downward_RA = 0;
  {
  __CrestLoad(283, (unsigned long )(& Own_Tracked_Alt), (long long )Own_Tracked_Alt);
  __CrestLoad(282, (unsigned long )0, (long long )300);
  __CrestApply2(281, 17, (long long )(Own_Tracked_Alt >= 300));
# 176 "tcas.c"
  if (Own_Tracked_Alt >= 300) {
    __CrestBranch(284, 98, 1);

  } else {
    __CrestBranch(285, 99, 0);
    __CrestLoad(286, (unsigned long )0, (long long )176U);
# 176 "tcas.c"
    __assert_fail("Own_Tracked_Alt >= 300", "tcas.c", 176U, "alt_sep_test");
    __CrestClearStack(287);
  }
  }
  {
  __CrestLoad(290, (unsigned long )(& Other_Tracked_Alt), (long long )Other_Tracked_Alt);
  __CrestLoad(289, (unsigned long )0, (long long )300);
  __CrestApply2(288, 17, (long long )(Other_Tracked_Alt >= 300));
# 177 "tcas.c"
  if (Other_Tracked_Alt >= 300) {
    __CrestBranch(291, 101, 1);

  } else {
    __CrestBranch(292, 102, 0);
    __CrestLoad(293, (unsigned long )0, (long long )177U);
# 177 "tcas.c"
    __assert_fail("Other_Tracked_Alt >= 300", "tcas.c", 177U, "alt_sep_test");
    __CrestClearStack(294);
  }
  }
  {
  __CrestLoad(297, (unsigned long )(& Own_Tracked_Alt_Rate), (long long )Own_Tracked_Alt_Rate);
  __CrestLoad(296, (unsigned long )0, (long long )300);
  __CrestApply2(295, 17, (long long )(Own_Tracked_Alt_Rate >= 300));
# 178 "tcas.c"
  if (Own_Tracked_Alt_Rate >= 300) {
    __CrestBranch(298, 104, 1);

  } else {
    __CrestBranch(299, 105, 0);
    __CrestLoad(300, (unsigned long )0, (long long )178U);
# 178 "tcas.c"
    __assert_fail("Own_Tracked_Alt_Rate >= 300", "tcas.c", 178U, "alt_sep_test");
    __CrestClearStack(301);
  }
  }
  {
  __CrestLoad(304, (unsigned long )(& High_Confidence), (long long )High_Confidence);
  __CrestLoad(303, (unsigned long )0, (long long )1);
  __CrestApply2(302, 17, (long long )(High_Confidence >= 1));
# 180 "tcas.c"
  if (High_Confidence >= 1) {
    __CrestBranch(305, 107, 1);
    {
    __CrestLoad(309, (unsigned long )(& Own_Tracked_Alt_Rate), (long long )Own_Tracked_Alt_Rate);
    __CrestLoad(308, (unsigned long )0, (long long )600);
    __CrestApply2(307, 15, (long long )(Own_Tracked_Alt_Rate <= 600));
# 180 "tcas.c"
    if (Own_Tracked_Alt_Rate <= 600) {
      __CrestBranch(310, 108, 1);
      {
      __CrestLoad(314, (unsigned long )(& Cur_Vertical_Sep), (long long )Cur_Vertical_Sep);
      __CrestLoad(313, (unsigned long )0, (long long )600);
      __CrestApply2(312, 14, (long long )(Cur_Vertical_Sep > 600));
# 180 "tcas.c"
      if (Cur_Vertical_Sep > 600) {
        __CrestBranch(315, 109, 1);
        __CrestLoad(317, (unsigned long )0, (long long )1);
        __CrestStore(318, (unsigned long )(& enabled));
# 181 "tcas.c"
        enabled = 1;
      } else {
        __CrestBranch(316, 110, 0);
        __CrestLoad(319, (unsigned long )0, (long long )0);
        __CrestStore(320, (unsigned long )(& enabled));
# 183 "tcas.c"
        enabled = 0;
      }
      }
    } else {
      __CrestBranch(311, 111, 0);
      __CrestLoad(321, (unsigned long )0, (long long )0);
      __CrestStore(322, (unsigned long )(& enabled));
# 183 "tcas.c"
      enabled = 0;
    }
    }
  } else {
    __CrestBranch(306, 112, 0);
    __CrestLoad(323, (unsigned long )0, (long long )0);
    __CrestStore(324, (unsigned long )(& enabled));
# 183 "tcas.c"
    enabled = 0;
  }
  }
  {
  __CrestLoad(327, (unsigned long )(& Other_Capability), (long long )Other_Capability);
  __CrestLoad(326, (unsigned long )0, (long long )1);
  __CrestApply2(325, 12, (long long )(Other_Capability == 1));
# 185 "tcas.c"
  if (Other_Capability == 1) {
    __CrestBranch(328, 114, 1);
    __CrestLoad(330, (unsigned long )0, (long long )1);
    __CrestStore(331, (unsigned long )(& tcas_equipped));
# 186 "tcas.c"
    tcas_equipped = 1;
  } else {
    __CrestBranch(329, 115, 0);
    __CrestLoad(332, (unsigned long )0, (long long )0);
    __CrestStore(333, (unsigned long )(& tcas_equipped));
# 188 "tcas.c"
    tcas_equipped = 0;
  }
  }
  {
  __CrestLoad(336, (unsigned long )(& Two_of_Three_Reports_Valid), (long long )Two_of_Three_Reports_Valid);
  __CrestLoad(335, (unsigned long )0, (long long )1);
  __CrestApply2(334, 17, (long long )(Two_of_Three_Reports_Valid >= 1));
# 191 "tcas.c"
  if (Two_of_Three_Reports_Valid >= 1) {
    __CrestBranch(337, 117, 1);
    {
    __CrestLoad(341, (unsigned long )(& Other_RAC), (long long )Other_RAC);
    __CrestLoad(340, (unsigned long )0, (long long )0);
    __CrestApply2(339, 12, (long long )(Other_RAC == 0));
# 191 "tcas.c"
    if (Other_RAC == 0) {
      __CrestBranch(342, 118, 1);
      __CrestLoad(344, (unsigned long )0, (long long )1);
      __CrestStore(345, (unsigned long )(& intent_not_known));
# 192 "tcas.c"
      intent_not_known = 1;
    } else {
      __CrestBranch(343, 119, 0);
      __CrestLoad(346, (unsigned long )0, (long long )0);
      __CrestStore(347, (unsigned long )(& intent_not_known));
# 194 "tcas.c"
      intent_not_known = 0;
    }
    }
  } else {
    __CrestBranch(338, 120, 0);
    __CrestLoad(348, (unsigned long )0, (long long )0);
    __CrestStore(349, (unsigned long )(& intent_not_known));
# 194 "tcas.c"
    intent_not_known = 0;
  }
  }
  __CrestLoad(350, (unsigned long )0, (long long )0);
  __CrestStore(351, (unsigned long )(& alt_sep));
# 196 "tcas.c"
  alt_sep = 0;
  {
  __CrestLoad(354, (unsigned long )(& enabled), (long long )enabled);
  __CrestLoad(353, (unsigned long )0, (long long )1);
  __CrestApply2(352, 17, (long long )(enabled >= 1));
# 198 "tcas.c"
  if (enabled >= 1) {
    __CrestBranch(355, 123, 1);
    {
    __CrestLoad(359, (unsigned long )(& tcas_equipped), (long long )tcas_equipped);
    __CrestLoad(358, (unsigned long )0, (long long )1);
    __CrestApply2(357, 12, (long long )(tcas_equipped == 1));
# 198 "tcas.c"
    if (tcas_equipped == 1) {
      __CrestBranch(360, 124, 1);
      {
      __CrestLoad(364, (unsigned long )(& intent_not_known), (long long )intent_not_known);
      __CrestLoad(363, (unsigned long )0, (long long )1);
      __CrestApply2(362, 12, (long long )(intent_not_known == 1));
# 198 "tcas.c"
      if (intent_not_known == 1) {
        __CrestBranch(365, 125, 1);
# 198 "tcas.c"
        goto _L___0;
      } else {
        __CrestBranch(366, 126, 0);
# 198 "tcas.c"
        goto _L___1;
      }
      }
    } else {
      __CrestBranch(361, 127, 0);
      _L___1:
      {
      __CrestLoad(369, (unsigned long )(& tcas_equipped), (long long )tcas_equipped);
      __CrestLoad(368, (unsigned long )0, (long long )0);
      __CrestApply2(367, 12, (long long )(tcas_equipped == 0));
# 198 "tcas.c"
      if (tcas_equipped == 0) {
        __CrestBranch(370, 128, 1);
        _L___0:
# 200 "tcas.c"
        tmp = Non_Crossing_Biased_Climb();
        __CrestHandleReturn(373, (long long )tmp);
        __CrestStore(372, (unsigned long )(& tmp));
        {
        __CrestLoad(376, (unsigned long )(& tmp), (long long )tmp);
        __CrestLoad(375, (unsigned long )0, (long long )1);
        __CrestApply2(374, 12, (long long )(tmp == 1));
# 200 "tcas.c"
        if (tmp == 1) {
          __CrestBranch(377, 130, 1);
# 200 "tcas.c"
          tmp___0 = Own_Below_Threat();
          __CrestHandleReturn(380, (long long )tmp___0);
          __CrestStore(379, (unsigned long )(& tmp___0));
          {
          __CrestLoad(383, (unsigned long )(& tmp___0), (long long )tmp___0);
          __CrestLoad(382, (unsigned long )0, (long long )1);
          __CrestApply2(381, 12, (long long )(tmp___0 == 1));
# 200 "tcas.c"
          if (tmp___0 == 1) {
            __CrestBranch(384, 132, 1);
            __CrestLoad(386, (unsigned long )0, (long long )1);
            __CrestStore(387, (unsigned long )(& need_upward_RA));
# 201 "tcas.c"
            need_upward_RA = 1;
          } else {
            __CrestBranch(385, 133, 0);
            __CrestLoad(388, (unsigned long )0, (long long )0);
            __CrestStore(389, (unsigned long )(& need_upward_RA));
# 203 "tcas.c"
            need_upward_RA = 0;
          }
          }
        } else {
          __CrestBranch(378, 134, 0);
          __CrestLoad(390, (unsigned long )0, (long long )0);
          __CrestStore(391, (unsigned long )(& need_upward_RA));
# 203 "tcas.c"
          need_upward_RA = 0;
        }
        }
# 206 "tcas.c"
        tmp___1 = Non_Crossing_Biased_Descend();
        __CrestHandleReturn(393, (long long )tmp___1);
        __CrestStore(392, (unsigned long )(& tmp___1));
        {
        __CrestLoad(396, (unsigned long )(& tmp___1), (long long )tmp___1);
        __CrestLoad(395, (unsigned long )0, (long long )1);
        __CrestApply2(394, 12, (long long )(tmp___1 == 1));
# 206 "tcas.c"
        if (tmp___1 == 1) {
          __CrestBranch(397, 137, 1);
# 206 "tcas.c"
          tmp___2 = Own_Above_Threat();
          __CrestHandleReturn(400, (long long )tmp___2);
          __CrestStore(399, (unsigned long )(& tmp___2));
          {
          __CrestLoad(403, (unsigned long )(& tmp___2), (long long )tmp___2);
          __CrestLoad(402, (unsigned long )0, (long long )1);
          __CrestApply2(401, 12, (long long )(tmp___2 == 1));
# 206 "tcas.c"
          if (tmp___2 == 1) {
            __CrestBranch(404, 139, 1);
            __CrestLoad(406, (unsigned long )0, (long long )1);
            __CrestStore(407, (unsigned long )(& need_downward_RA));
# 207 "tcas.c"
            need_downward_RA = 1;
          } else {
            __CrestBranch(405, 140, 0);
            __CrestLoad(408, (unsigned long )0, (long long )0);
            __CrestStore(409, (unsigned long )(& need_downward_RA));
# 209 "tcas.c"
            need_downward_RA = 0;
          }
          }
        } else {
          __CrestBranch(398, 141, 0);
          __CrestLoad(410, (unsigned long )0, (long long )0);
          __CrestStore(411, (unsigned long )(& need_downward_RA));
# 209 "tcas.c"
          need_downward_RA = 0;
        }
        }
        {
        __CrestLoad(414, (unsigned long )(& need_upward_RA), (long long )need_upward_RA);
        __CrestLoad(413, (unsigned long )0, (long long )1);
        __CrestApply2(412, 12, (long long )(need_upward_RA == 1));
# 211 "tcas.c"
        if (need_upward_RA == 1) {
          __CrestBranch(415, 143, 1);
          {
          __CrestLoad(419, (unsigned long )(& need_downward_RA), (long long )need_downward_RA);
          __CrestLoad(418, (unsigned long )0, (long long )1);
          __CrestApply2(417, 12, (long long )(need_downward_RA == 1));
# 211 "tcas.c"
          if (need_downward_RA == 1) {
            __CrestBranch(420, 144, 1);
            __CrestLoad(422, (unsigned long )0, (long long )0);
            __CrestStore(423, (unsigned long )(& alt_sep));
# 213 "tcas.c"
            alt_sep = 0;
          } else {
            __CrestBranch(421, 145, 0);
# 211 "tcas.c"
            goto _L;
          }
          }
        } else {
          __CrestBranch(416, 146, 0);
          _L:
          {
          __CrestLoad(426, (unsigned long )(& need_upward_RA), (long long )need_upward_RA);
          __CrestLoad(425, (unsigned long )0, (long long )1);
          __CrestApply2(424, 12, (long long )(need_upward_RA == 1));
# 216 "tcas.c"
          if (need_upward_RA == 1) {
            __CrestBranch(427, 147, 1);
            __CrestLoad(429, (unsigned long )0, (long long )1);
            __CrestStore(430, (unsigned long )(& alt_sep));
# 218 "tcas.c"
            alt_sep = 1;
          } else {
            __CrestBranch(428, 148, 0);
            {
            __CrestLoad(433, (unsigned long )(& need_downward_RA), (long long )need_downward_RA);
            __CrestLoad(432, (unsigned long )0, (long long )1);
            __CrestApply2(431, 12, (long long )(need_downward_RA == 1));
# 221 "tcas.c"
            if (need_downward_RA == 1) {
              __CrestBranch(434, 149, 1);
              __CrestLoad(436, (unsigned long )0, (long long )2);
              __CrestStore(437, (unsigned long )(& alt_sep));
# 223 "tcas.c"
              alt_sep = 2;
            } else {
              __CrestBranch(435, 150, 0);
              __CrestLoad(438, (unsigned long )0, (long long )0);
              __CrestStore(439, (unsigned long )(& alt_sep));
# 226 "tcas.c"
              alt_sep = 0;
            }
            }
          }
          }
        }
        }
      } else {
        __CrestBranch(371, 151, 0);

      }
      }
    }
    }
  } else {
    __CrestBranch(356, 152, 0);

  }
  }
  {
  __CrestLoad(440, (unsigned long )(& alt_sep), (long long )alt_sep);
  __CrestReturn(441);
# 229 "tcas.c"
  return (alt_sep);
  }
}
}
# 233 "tcas.c"
int main(int argc , char **argv )
{
  int res ;
  int __retres4 ;

  {
  __globinit_tcas();
  __CrestCall(443, 11);
  __CrestStore(442, (unsigned long )(& argc));
# 236 "tcas.c"
  __CrestInt(& res);
# 237 "tcas.c"
  Cur_Vertical_Sep = nondet_int();
  __CrestHandleReturn(445, (long long )Cur_Vertical_Sep);
  __CrestStore(444, (unsigned long )(& Cur_Vertical_Sep));
# 238 "tcas.c"
  High_Confidence = nondet_int();
  __CrestHandleReturn(447, (long long )High_Confidence);
  __CrestStore(446, (unsigned long )(& High_Confidence));
# 239 "tcas.c"
  Two_of_Three_Reports_Valid = nondet_int();
  __CrestHandleReturn(449, (long long )Two_of_Three_Reports_Valid);
  __CrestStore(448, (unsigned long )(& Two_of_Three_Reports_Valid));
# 240 "tcas.c"
  Own_Tracked_Alt = nondet_int();
  __CrestHandleReturn(451, (long long )Own_Tracked_Alt);
  __CrestStore(450, (unsigned long )(& Own_Tracked_Alt));
# 241 "tcas.c"
  Own_Tracked_Alt_Rate = nondet_int();
  __CrestHandleReturn(453, (long long )Own_Tracked_Alt_Rate);
  __CrestStore(452, (unsigned long )(& Own_Tracked_Alt_Rate));
# 242 "tcas.c"
  Other_Tracked_Alt = nondet_int();
  __CrestHandleReturn(455, (long long )Other_Tracked_Alt);
  __CrestStore(454, (unsigned long )(& Other_Tracked_Alt));
# 243 "tcas.c"
  Alt_Layer_Value = nondet_int();
  __CrestHandleReturn(457, (long long )Alt_Layer_Value);
  __CrestStore(456, (unsigned long )(& Alt_Layer_Value));
# 244 "tcas.c"
  Positive_RA_Alt_Thresh_0 = nondet_int();
  __CrestHandleReturn(459, (long long )Positive_RA_Alt_Thresh_0);
  __CrestStore(458, (unsigned long )(& Positive_RA_Alt_Thresh_0));
# 245 "tcas.c"
  Positive_RA_Alt_Thresh_1 = nondet_int();
  __CrestHandleReturn(461, (long long )Positive_RA_Alt_Thresh_1);
  __CrestStore(460, (unsigned long )(& Positive_RA_Alt_Thresh_1));
# 246 "tcas.c"
  Positive_RA_Alt_Thresh_2 = nondet_int();
  __CrestHandleReturn(463, (long long )Positive_RA_Alt_Thresh_2);
  __CrestStore(462, (unsigned long )(& Positive_RA_Alt_Thresh_2));
# 247 "tcas.c"
  Positive_RA_Alt_Thresh_3 = nondet_int();
  __CrestHandleReturn(465, (long long )Positive_RA_Alt_Thresh_3);
  __CrestStore(464, (unsigned long )(& Positive_RA_Alt_Thresh_3));
# 248 "tcas.c"
  Up_Separation = nondet_int();
  __CrestHandleReturn(467, (long long )Up_Separation);
  __CrestStore(466, (unsigned long )(& Up_Separation));
# 249 "tcas.c"
  Down_Separation = nondet_int();
  __CrestHandleReturn(469, (long long )Down_Separation);
  __CrestStore(468, (unsigned long )(& Down_Separation));
# 250 "tcas.c"
  Other_RAC = nondet_int();
  __CrestHandleReturn(471, (long long )Other_RAC);
  __CrestStore(470, (unsigned long )(& Other_RAC));
# 251 "tcas.c"
  Other_Capability = nondet_int();
  __CrestHandleReturn(473, (long long )Other_Capability);
  __CrestStore(472, (unsigned long )(& Other_Capability));
# 252 "tcas.c"
  Climb_Inhibit = nondet_int();
  __CrestHandleReturn(475, (long long )Climb_Inhibit);
  __CrestStore(474, (unsigned long )(& Climb_Inhibit));
# 254 "tcas.c"
  initialize();
  __CrestClearStack(476);
# 256 "tcas.c"
  res = alt_sep_test();
  __CrestHandleReturn(478, (long long )res);
  __CrestStore(477, (unsigned long )(& res));
  __CrestLoad(479, (unsigned long )0, (long long )0);
  __CrestStore(480, (unsigned long )(& __retres4));
# 258 "tcas.c"
  __retres4 = 0;
  __CrestLoad(481, (unsigned long )(& __retres4), (long long )__retres4);
  __CrestReturn(482);
# 233 "tcas.c"
  return (__retres4);
}
}
void __globinit_tcas(void)
{


  {
  __CrestInit();
}
}
