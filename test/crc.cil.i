# 1 "./crc.cil.c"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./crc.cil.c"
# 112 "crc.c"
void __globinit_crc(void) ;
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
# 51 "crc.c"
typedef unsigned char uchar;
# 202 "../bin/../include/crest.h"
extern void __CrestInt(int *x ) __attribute__((__crest_skip__)) ;
# 55 "crc.c"
unsigned char lin[256] =
# 55 "crc.c"
  { (unsigned char )'a', (unsigned char )'s', (unsigned char )'d', (unsigned char )'f',
        (unsigned char )'f', (unsigned char )'e', (unsigned char )'a', (unsigned char )'g',
        (unsigned char )'e', (unsigned char )'w', (unsigned char )'a', (unsigned char )'H',
        (unsigned char )'A', (unsigned char )'F', (unsigned char )'E', (unsigned char )'F',
        (unsigned char )'a', (unsigned char )'e', (unsigned char )'D', (unsigned char )'s',
        (unsigned char )'F', (unsigned char )'E', (unsigned char )'a', (unsigned char )'w',
        (unsigned char )'F', (unsigned char )'d', (unsigned char )'s', (unsigned char )'F',
        (unsigned char )'a', (unsigned char )'e', (unsigned char )'f', (unsigned char )'a',
        (unsigned char )'e', (unsigned char )'e', (unsigned char )'r', (unsigned char )'d',
        (unsigned char )'j', (unsigned char )'g', (unsigned char )'p', (unsigned char )'\000'};
# 57 "crc.c"
unsigned short icrc1(unsigned short crc , unsigned char onech )
{
  int i ;
  unsigned short ans ;

  {
  __CrestCall(3, 1);
  __CrestStore(2, (unsigned long )(& onech));
  __CrestStore(1, (unsigned long )(& crc));
  __CrestLoad(8, (unsigned long )(& crc), (long long )crc);
  __CrestLoad(7, (unsigned long )(& onech), (long long )onech);
  __CrestLoad(6, (unsigned long )0, (long long )8);
  __CrestApply2(5, 8, (long long )((int )onech << 8));
  __CrestApply2(4, 7, (long long )((int )crc ^ ((int )onech << 8)));
  __CrestStore(9, (unsigned long )(& ans));
# 60 "crc.c"
  ans = (unsigned short )((int )crc ^ ((int )onech << 8));
  __CrestLoad(10, (unsigned long )0, (long long )0);
  __CrestStore(11, (unsigned long )(& i));
# 62 "crc.c"
  i = 0;
  {
  {
  __CrestLoad(14, (unsigned long )(& i), (long long )i);
  __CrestLoad(13, (unsigned long )0, (long long )8);
  __CrestApply2(12, 16, (long long )(i < 8));
  if (i < 8) {
    __CrestBranch(15, 4, 1);
    {
    __CrestLoad(21, (unsigned long )(& ans), (long long )ans);
    __CrestLoad(20, (unsigned long )0, (long long )32768);
    __CrestApply2(19, 5, (long long )((int )ans & 32768));
    __CrestLoad(18, (unsigned long )0, (long long )0);
    __CrestApply2(17, 13, (long long )(((int )ans & 32768) != 0));
    if (((int )ans & 32768) != 0) {
      __CrestBranch(22, 5, 1);
      __CrestLoad(26, (unsigned long )(& ans), (long long )ans);
      __CrestLoad(25, (unsigned long )0, (long long )1);
      __CrestApply2(24, 8, (long long )((int )ans << 1));
      __CrestStore(27, (unsigned long )(& ans));
      ans = (unsigned short )((int )ans << 1);
      __CrestLoad(30, (unsigned long )(& ans), (long long )ans);
      __CrestLoad(29, (unsigned long )0, (long long )4129);
      __CrestApply2(28, 7, (long long )((int )ans ^ 4129));
      __CrestStore(31, (unsigned long )(& ans));
      ans = (unsigned short )((int )ans ^ 4129);
    } else {
      __CrestBranch(23, 6, 0);
      __CrestLoad(34, (unsigned long )(& ans), (long long )ans);
      __CrestLoad(33, (unsigned long )0, (long long )1);
      __CrestApply2(32, 8, (long long )((int )ans << 1));
      __CrestStore(35, (unsigned long )(& ans));
      ans = (unsigned short )((int )ans << 1);
    }
    }
    __CrestLoad(38, (unsigned long )(& i), (long long )i);
    __CrestLoad(37, (unsigned long )0, (long long )1);
    __CrestApply2(36, 0, (long long )(i + 1));
    __CrestStore(39, (unsigned long )(& i));
    i ++;
  } else {
    __CrestBranch(16, 8, 0);

  }
  }
  {
  __CrestLoad(42, (unsigned long )(& i), (long long )i);
  __CrestLoad(41, (unsigned long )0, (long long )8);
  __CrestApply2(40, 16, (long long )(i < 8));
  if (i < 8) {
    __CrestBranch(43, 10, 1);
    {
    __CrestLoad(49, (unsigned long )(& ans), (long long )ans);
    __CrestLoad(48, (unsigned long )0, (long long )32768);
    __CrestApply2(47, 5, (long long )((int )ans & 32768));
    __CrestLoad(46, (unsigned long )0, (long long )0);
    __CrestApply2(45, 13, (long long )(((int )ans & 32768) != 0));
    if (((int )ans & 32768) != 0) {
      __CrestBranch(50, 11, 1);
      __CrestLoad(54, (unsigned long )(& ans), (long long )ans);
      __CrestLoad(53, (unsigned long )0, (long long )1);
      __CrestApply2(52, 8, (long long )((int )ans << 1));
      __CrestStore(55, (unsigned long )(& ans));
      ans = (unsigned short )((int )ans << 1);
      __CrestLoad(58, (unsigned long )(& ans), (long long )ans);
      __CrestLoad(57, (unsigned long )0, (long long )4129);
      __CrestApply2(56, 7, (long long )((int )ans ^ 4129));
      __CrestStore(59, (unsigned long )(& ans));
      ans = (unsigned short )((int )ans ^ 4129);
    } else {
      __CrestBranch(51, 12, 0);
      __CrestLoad(62, (unsigned long )(& ans), (long long )ans);
      __CrestLoad(61, (unsigned long )0, (long long )1);
      __CrestApply2(60, 8, (long long )((int )ans << 1));
      __CrestStore(63, (unsigned long )(& ans));
      ans = (unsigned short )((int )ans << 1);
    }
    }
    __CrestLoad(66, (unsigned long )(& i), (long long )i);
    __CrestLoad(65, (unsigned long )0, (long long )1);
    __CrestApply2(64, 0, (long long )(i + 1));
    __CrestStore(67, (unsigned long )(& i));
    i ++;
  } else {
    __CrestBranch(44, 14, 0);

  }
  }
  }
  {
  __CrestLoad(68, (unsigned long )(& ans), (long long )ans);
  __CrestReturn(69);
# 68 "crc.c"
  return (ans);
  }
}
}
# 75 "crc.c"
static unsigned short icrctb[256] ;
# 75 "crc.c"
unsigned short icrc(unsigned short crc , unsigned long len , short jinit , int jrev ) ;
# 75 "crc.c"
static unsigned short init = (unsigned short)0;
# 76 "crc.c"
static uchar rchr[256] ;
# 78 "crc.c"
unsigned short icrc(unsigned short crc , unsigned long len , short jinit , int jrev ) ;
# 78 "crc.c"
static uchar it[16] =
# 78 "crc.c"
  { (uchar )0, (uchar )8, (uchar )4, (uchar )12,
        (uchar )2, (uchar )10, (uchar )6, (uchar )14,
        (uchar )1, (uchar )9, (uchar )5, (uchar )13,
        (uchar )3, (uchar )11, (uchar )7, (uchar )15};
# 71 "crc.c"
unsigned short icrc(unsigned short crc , unsigned long len , short jinit , int jrev )
{
  unsigned short tmp1 ;
  unsigned short tmp2 ;
  unsigned short j ;
  unsigned short cword ;

  {
  __CrestCall(74, 2);
  __CrestStore(73, (unsigned long )(& jrev));
  __CrestStore(72, (unsigned long )(& jinit));
  __CrestStore(71, (unsigned long )(& len));
  __CrestStore(70, (unsigned long )(& crc));
  __CrestLoad(75, (unsigned long )(& crc), (long long )crc);
  __CrestStore(76, (unsigned long )(& cword));
# 77 "crc.c"
  cword = crc;
  {
  __CrestLoad(79, (unsigned long )(& init), (long long )init);
  __CrestLoad(78, (unsigned long )0, (long long )0);
  __CrestApply2(77, 12, (long long )(init == 0));
# 80 "crc.c"
  if (init == 0) {
    __CrestBranch(80, 18, 1);
    __CrestLoad(82, (unsigned long )0, (long long )(unsigned short)1);
    __CrestStore(83, (unsigned long )(& init));
# 81 "crc.c"
    init = (unsigned short)1;
    __CrestLoad(84, (unsigned long )0, (long long )(unsigned short)0);
    __CrestStore(85, (unsigned long )(& j));
# 82 "crc.c"
    j = (unsigned short)0;
    {
    {
    __CrestLoad(88, (unsigned long )(& j), (long long )j);
    __CrestLoad(87, (unsigned long )0, (long long )255);
    __CrestApply2(86, 15, (long long )((int )j <= 255));
    if ((int )j <= 255) {
      __CrestBranch(89, 21, 1);
      __CrestLoad(93, (unsigned long )(& j), (long long )j);
      __CrestLoad(92, (unsigned long )0, (long long )8);
      __CrestApply2(91, 8, (long long )((int )j << 8));
      __CrestLoad(94, (unsigned long )0, (long long )((uchar )0));
      icrctb[j] = icrc1((unsigned short )((int )j << 8), (uchar )0);
      __CrestHandleReturn(96, (long long )icrctb[j]);
      __CrestStore(95, (unsigned long )(& icrctb[j]));
      __CrestLoad(101, (unsigned long )(& it[(int )j & 15]), (long long )it[(int )j & 15]);
      __CrestLoad(100, (unsigned long )0, (long long )4);
      __CrestApply2(99, 8, (long long )((int )it[(int )j & 15] << 4));
      __CrestLoad(98, (unsigned long )(& it[(int )j >> 4]), (long long )it[(int )j >> 4]);
      __CrestApply2(97, 6, (long long )(((int )it[(int )j & 15] << 4) | (int )it[(int )j >> 4]));
      __CrestStore(102, (unsigned long )(& rchr[j]));
      rchr[j] = (uchar )(((int )it[(int )j & 15] << 4) | (int )it[(int )j >> 4]);
      __CrestLoad(105, (unsigned long )(& j), (long long )j);
      __CrestLoad(104, (unsigned long )0, (long long )1);
      __CrestApply2(103, 0, (long long )((int )j + 1));
      __CrestStore(106, (unsigned long )(& j));
      j = (unsigned short )((int )j + 1);
    } else {
      __CrestBranch(90, 22, 0);

    }
    }
    {
    __CrestLoad(109, (unsigned long )(& j), (long long )j);
    __CrestLoad(108, (unsigned long )0, (long long )255);
    __CrestApply2(107, 15, (long long )((int )j <= 255));
    if ((int )j <= 255) {
      __CrestBranch(110, 24, 1);
      __CrestLoad(114, (unsigned long )(& j), (long long )j);
      __CrestLoad(113, (unsigned long )0, (long long )8);
      __CrestApply2(112, 8, (long long )((int )j << 8));
      __CrestLoad(115, (unsigned long )0, (long long )((uchar )0));
      icrctb[j] = icrc1((unsigned short )((int )j << 8), (uchar )0);
      __CrestHandleReturn(117, (long long )icrctb[j]);
      __CrestStore(116, (unsigned long )(& icrctb[j]));
      __CrestLoad(122, (unsigned long )(& it[(int )j & 15]), (long long )it[(int )j & 15]);
      __CrestLoad(121, (unsigned long )0, (long long )4);
      __CrestApply2(120, 8, (long long )((int )it[(int )j & 15] << 4));
      __CrestLoad(119, (unsigned long )(& it[(int )j >> 4]), (long long )it[(int )j >> 4]);
      __CrestApply2(118, 6, (long long )(((int )it[(int )j & 15] << 4) | (int )it[(int )j >> 4]));
      __CrestStore(123, (unsigned long )(& rchr[j]));
      rchr[j] = (uchar )(((int )it[(int )j & 15] << 4) | (int )it[(int )j >> 4]);
      __CrestLoad(126, (unsigned long )(& j), (long long )j);
      __CrestLoad(125, (unsigned long )0, (long long )1);
      __CrestApply2(124, 0, (long long )((int )j + 1));
      __CrestStore(127, (unsigned long )(& j));
      j = (unsigned short )((int )j + 1);
    } else {
      __CrestBranch(111, 25, 0);

    }
    }
    }
  } else {
    __CrestBranch(81, 26, 0);

  }
  }
  {
  __CrestLoad(130, (unsigned long )(& jinit), (long long )jinit);
  __CrestLoad(129, (unsigned long )0, (long long )0);
  __CrestApply2(128, 17, (long long )((int )jinit >= 0));
# 87 "crc.c"
  if ((int )jinit >= 0) {
    __CrestBranch(131, 28, 1);
    __CrestLoad(137, (unsigned long )(& jinit), (long long )jinit);
    __CrestLoad(136, (unsigned long )(& jinit), (long long )jinit);
    __CrestLoad(135, (unsigned long )0, (long long )8);
    __CrestApply2(134, 8, (long long )((int )((uchar )jinit) << 8));
    __CrestApply2(133, 6, (long long )((int )((uchar )jinit) | ((int )((uchar )jinit) << 8)));
    __CrestStore(138, (unsigned long )(& cword));
# 87 "crc.c"
    cword = (unsigned short )((int )((uchar )jinit) | ((int )((uchar )jinit) << 8));
  } else {
    __CrestBranch(132, 29, 0);
    {
    __CrestLoad(141, (unsigned long )(& jrev), (long long )jrev);
    __CrestLoad(140, (unsigned long )0, (long long )0);
    __CrestApply2(139, 16, (long long )(jrev < 0));
# 88 "crc.c"
    if (jrev < 0) {
      __CrestBranch(142, 30, 1);
      __CrestLoad(148, (unsigned long )(& rchr[(uchar )((int )cword >> 8)]), (long long )rchr[(uchar )((int )cword >> 8)]);
      __CrestLoad(147, (unsigned long )(& rchr[(uchar )((int )cword & 255)]), (long long )rchr[(uchar )((int )cword & 255)]);
      __CrestLoad(146, (unsigned long )0, (long long )8);
      __CrestApply2(145, 8, (long long )((int )rchr[(uchar )((int )cword & 255)] << 8));
      __CrestApply2(144, 6, (long long )((int )rchr[(uchar )((int )cword >> 8)] | ((int )rchr[(uchar )((int )cword & 255)] << 8)));
      __CrestStore(149, (unsigned long )(& cword));
# 89 "crc.c"
      cword = (unsigned short )((int )rchr[(uchar )((int )cword >> 8)] | ((int )rchr[(uchar )((int )cword & 255)] << 8));
    } else {
      __CrestBranch(143, 31, 0);

    }
    }
  }
  }
  __CrestLoad(150, (unsigned long )0, (long long )(unsigned short)1);
  __CrestStore(151, (unsigned long )(& j));
# 93 "crc.c"
  j = (unsigned short)1;
  {
  {
  __CrestLoad(154, (unsigned long )(& j), (long long )j);
  __CrestLoad(153, (unsigned long )(& len), (long long )len);
  __CrestApply2(152, 15, (long long )((unsigned long )j <= len));
  if ((unsigned long )j <= len) {
    __CrestBranch(155, 35, 1);
    {
    __CrestLoad(159, (unsigned long )(& jrev), (long long )jrev);
    __CrestLoad(158, (unsigned long )0, (long long )0);
    __CrestApply2(157, 16, (long long )(jrev < 0));
    if (jrev < 0) {
      __CrestBranch(160, 36, 1);
      __CrestLoad(166, (unsigned long )(& rchr[lin[j]]), (long long )rchr[lin[j]]);
      __CrestLoad(165, (unsigned long )(& cword), (long long )cword);
      __CrestLoad(164, (unsigned long )0, (long long )8);
      __CrestApply2(163, 9, (long long )((int )cword >> 8));
      __CrestApply2(162, 7, (long long )((int )rchr[lin[j]] ^ (int )((uchar )((int )cword >> 8))));
      __CrestStore(167, (unsigned long )(& tmp1));
      tmp1 = (unsigned short )((int )rchr[lin[j]] ^ (int )((uchar )((int )cword >> 8)));
    } else {
      __CrestBranch(161, 37, 0);
      __CrestLoad(172, (unsigned long )(& lin[j]), (long long )lin[j]);
      __CrestLoad(171, (unsigned long )(& cword), (long long )cword);
      __CrestLoad(170, (unsigned long )0, (long long )8);
      __CrestApply2(169, 9, (long long )((int )cword >> 8));
      __CrestApply2(168, 7, (long long )((int )lin[j] ^ (int )((uchar )((int )cword >> 8))));
      __CrestStore(173, (unsigned long )(& tmp1));
      tmp1 = (unsigned short )((int )lin[j] ^ (int )((uchar )((int )cword >> 8)));
    }
    }
    __CrestLoad(180, (unsigned long )(& icrctb[tmp1]), (long long )icrctb[tmp1]);
    __CrestLoad(179, (unsigned long )(& cword), (long long )cword);
    __CrestLoad(178, (unsigned long )0, (long long )255);
    __CrestApply2(177, 5, (long long )((int )cword & 255));
    __CrestLoad(176, (unsigned long )0, (long long )8);
    __CrestApply2(175, 8, (long long )((int )((uchar )((int )cword & 255)) << 8));
    __CrestApply2(174, 7, (long long )((int )icrctb[tmp1] ^ ((int )((uchar )((int )cword & 255)) << 8)));
    __CrestStore(181, (unsigned long )(& cword));
    cword = (unsigned short )((int )icrctb[tmp1] ^ ((int )((uchar )((int )cword & 255)) << 8));
    __CrestLoad(184, (unsigned long )(& j), (long long )j);
    __CrestLoad(183, (unsigned long )0, (long long )1);
    __CrestApply2(182, 0, (long long )((int )j + 1));
    __CrestStore(185, (unsigned long )(& j));
    j = (unsigned short )((int )j + 1);
  } else {
    __CrestBranch(156, 39, 0);

  }
  }
  {
  __CrestLoad(188, (unsigned long )(& j), (long long )j);
  __CrestLoad(187, (unsigned long )(& len), (long long )len);
  __CrestApply2(186, 15, (long long )((unsigned long )j <= len));
  if ((unsigned long )j <= len) {
    __CrestBranch(189, 41, 1);
    {
    __CrestLoad(193, (unsigned long )(& jrev), (long long )jrev);
    __CrestLoad(192, (unsigned long )0, (long long )0);
    __CrestApply2(191, 16, (long long )(jrev < 0));
    if (jrev < 0) {
      __CrestBranch(194, 42, 1);
      __CrestLoad(200, (unsigned long )(& rchr[lin[j]]), (long long )rchr[lin[j]]);
      __CrestLoad(199, (unsigned long )(& cword), (long long )cword);
      __CrestLoad(198, (unsigned long )0, (long long )8);
      __CrestApply2(197, 9, (long long )((int )cword >> 8));
      __CrestApply2(196, 7, (long long )((int )rchr[lin[j]] ^ (int )((uchar )((int )cword >> 8))));
      __CrestStore(201, (unsigned long )(& tmp1));
      tmp1 = (unsigned short )((int )rchr[lin[j]] ^ (int )((uchar )((int )cword >> 8)));
    } else {
      __CrestBranch(195, 43, 0);
      __CrestLoad(206, (unsigned long )(& lin[j]), (long long )lin[j]);
      __CrestLoad(205, (unsigned long )(& cword), (long long )cword);
      __CrestLoad(204, (unsigned long )0, (long long )8);
      __CrestApply2(203, 9, (long long )((int )cword >> 8));
      __CrestApply2(202, 7, (long long )((int )lin[j] ^ (int )((uchar )((int )cword >> 8))));
      __CrestStore(207, (unsigned long )(& tmp1));
      tmp1 = (unsigned short )((int )lin[j] ^ (int )((uchar )((int )cword >> 8)));
    }
    }
    __CrestLoad(214, (unsigned long )(& icrctb[tmp1]), (long long )icrctb[tmp1]);
    __CrestLoad(213, (unsigned long )(& cword), (long long )cword);
    __CrestLoad(212, (unsigned long )0, (long long )255);
    __CrestApply2(211, 5, (long long )((int )cword & 255));
    __CrestLoad(210, (unsigned long )0, (long long )8);
    __CrestApply2(209, 8, (long long )((int )((uchar )((int )cword & 255)) << 8));
    __CrestApply2(208, 7, (long long )((int )icrctb[tmp1] ^ ((int )((uchar )((int )cword & 255)) << 8)));
    __CrestStore(215, (unsigned long )(& cword));
    cword = (unsigned short )((int )icrctb[tmp1] ^ ((int )((uchar )((int )cword & 255)) << 8));
    __CrestLoad(218, (unsigned long )(& j), (long long )j);
    __CrestLoad(217, (unsigned long )0, (long long )1);
    __CrestApply2(216, 0, (long long )((int )j + 1));
    __CrestStore(219, (unsigned long )(& j));
    j = (unsigned short )((int )j + 1);
  } else {
    __CrestBranch(190, 45, 0);

  }
  }
  }
  {
  __CrestLoad(222, (unsigned long )(& jrev), (long long )jrev);
  __CrestLoad(221, (unsigned long )0, (long long )0);
  __CrestApply2(220, 17, (long long )(jrev >= 0));
# 102 "crc.c"
  if (jrev >= 0) {
    __CrestBranch(223, 47, 1);
    __CrestLoad(225, (unsigned long )(& cword), (long long )cword);
    __CrestStore(226, (unsigned long )(& tmp2));
# 103 "crc.c"
    tmp2 = cword;
  } else {
    __CrestBranch(224, 48, 0);
    __CrestLoad(231, (unsigned long )(& rchr[(uchar )((int )cword >> 8)]), (long long )rchr[(uchar )((int )cword >> 8)]);
    __CrestLoad(230, (unsigned long )(& rchr[(uchar )((int )cword & 255)]), (long long )rchr[(uchar )((int )cword & 255)]);
    __CrestLoad(229, (unsigned long )0, (long long )8);
    __CrestApply2(228, 8, (long long )((int )rchr[(uchar )((int )cword & 255)] << 8));
    __CrestApply2(227, 6, (long long )((int )rchr[(uchar )((int )cword >> 8)] | ((int )rchr[(uchar )((int )cword & 255)] << 8)));
    __CrestStore(232, (unsigned long )(& tmp2));
# 106 "crc.c"
    tmp2 = (unsigned short )((int )rchr[(uchar )((int )cword >> 8)] | ((int )rchr[(uchar )((int )cword & 255)] << 8));
  }
  }
  {
  __CrestLoad(233, (unsigned long )(& tmp2), (long long )tmp2);
  __CrestReturn(234);
# 108 "crc.c"
  return (tmp2);
  }
}
}
# 112 "crc.c"
int main(void)
{
  unsigned short i1 ;
  unsigned short i2 ;
  unsigned long n ;
  int __retres4 ;

  {
  __globinit_crc();
  __CrestCall(235, 3);
# 117 "crc.c"
  __CrestInt((int *)(& i1));
# 118 "crc.c"
  __CrestInt((int *)(& i2));
# 119 "crc.c"
  __CrestInt((int *)(& n));
  __CrestLoad(236, (unsigned long )0, (long long )40UL);
  __CrestStore(237, (unsigned long )(& n));
# 122 "crc.c"
  n = 40UL;
  __CrestLoad(238, (unsigned long )0, (long long )(unsigned char)0);
  __CrestStore(239, (unsigned long )(& lin[n + 1UL]));
# 123 "crc.c"
  lin[n + 1UL] = (unsigned char)0;
  __CrestLoad(240, (unsigned long )0, (long long )(unsigned short)0);
  __CrestLoad(241, (unsigned long )(& n), (long long )n);
  __CrestLoad(242, (unsigned long )0, (long long )(short)0);
  __CrestLoad(243, (unsigned long )0, (long long )1);
# 124 "crc.c"
  i1 = icrc((unsigned short)0, n, (short)0, 1);
  __CrestHandleReturn(245, (long long )i1);
  __CrestStore(244, (unsigned long )(& i1));
  __CrestLoad(248, (unsigned long )(& i1), (long long )i1);
  __CrestLoad(247, (unsigned long )0, (long long )8);
  __CrestApply2(246, 9, (long long )((int )i1 >> 8));
  __CrestStore(249, (unsigned long )(& lin[n + 1UL]));
# 125 "crc.c"
  lin[n + 1UL] = (uchar )((int )i1 >> 8);
  __CrestLoad(252, (unsigned long )(& i1), (long long )i1);
  __CrestLoad(251, (unsigned long )0, (long long )255);
  __CrestApply2(250, 5, (long long )((int )i1 & 255));
  __CrestStore(253, (unsigned long )(& lin[n + 2UL]));
# 126 "crc.c"
  lin[n + 2UL] = (uchar )((int )i1 & 255);
  __CrestLoad(254, (unsigned long )(& i1), (long long )i1);
  __CrestLoad(257, (unsigned long )(& n), (long long )n);
  __CrestLoad(256, (unsigned long )0, (long long )2UL);
  __CrestApply2(255, 0, (long long )(n + 2UL));
  __CrestLoad(258, (unsigned long )0, (long long )(short)0);
  __CrestLoad(259, (unsigned long )0, (long long )1);
# 127 "crc.c"
  i2 = icrc(i1, n + 2UL, (short)0, 1);
  __CrestHandleReturn(261, (long long )i2);
  __CrestStore(260, (unsigned long )(& i2));
  __CrestLoad(262, (unsigned long )0, (long long )0);
  __CrestStore(263, (unsigned long )(& __retres4));
# 128 "crc.c"
  __retres4 = 0;
  __CrestLoad(264, (unsigned long )(& __retres4), (long long )__retres4);
  __CrestReturn(265);
# 112 "crc.c"
  return (__retres4);
}
}
void __globinit_crc(void)
{


  {
  __CrestInit();
}
}
