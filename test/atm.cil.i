# 1 "./atm.cil.c"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./atm.cil.c"
# 20 "atm.c"
void __globinit_atm(void) ;
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
# 12 "atm.c"
int amount = 1000;
# 12 "atm.c"
int deposit ;
# 12 "atm.c"
int withdraw ;
# 14 "atm.c"
int choice ;
# 14 "atm.c"
int pin ;
# 14 "atm.c"
int k ;
# 16 "atm.c"
int transaction = 1;
# 20 "atm.c"
void main(void)
{


  {
  __globinit_atm();
  __CrestCall(1, 1);
# 23 "atm.c"
  __CrestInt(& pin);
# 24 "atm.c"
  __CrestInt(& k);
# 25 "atm.c"
  __CrestInt(& choice);
  __CrestLoad(4, (unsigned long )(& pin), (long long )pin);
  __CrestLoad(3, (unsigned long )0, (long long )1520);
  __CrestApply2(2, 13, (long long )(pin != 1520));
  if (pin != 1520) {
    __CrestBranch(5, 4, 1);
    printf((char const * __restrict )"ENTER YOUR SECRET PIN NUMBER:");
    __CrestClearStack(7);
    {
    __CrestLoad(10, (unsigned long )(& pin), (long long )pin);
    __CrestLoad(9, (unsigned long )0, (long long )1520);
    __CrestApply2(8, 13, (long long )(pin != 1520));
    if (pin != 1520) {
      __CrestBranch(11, 6, 1);
      printf((char const * __restrict )"PLEASE ENTER VALID PASSWORD\n");
      __CrestClearStack(13);
    } else {
      __CrestBranch(12, 7, 0);

    }
    }
  } else {
    __CrestBranch(6, 8, 0);

  }
  __CrestLoad(16, (unsigned long )(& pin), (long long )pin);
  __CrestLoad(15, (unsigned long )0, (long long )1520);
  __CrestApply2(14, 13, (long long )(pin != 1520));
  if (pin != 1520) {
    __CrestBranch(17, 10, 1);
    printf((char const * __restrict )"ENTER YOUR SECRET PIN NUMBER:");
    __CrestClearStack(19);
    {
    __CrestLoad(22, (unsigned long )(& pin), (long long )pin);
    __CrestLoad(21, (unsigned long )0, (long long )1520);
    __CrestApply2(20, 13, (long long )(pin != 1520));
    if (pin != 1520) {
      __CrestBranch(23, 12, 1);
      printf((char const * __restrict )"PLEASE ENTER VALID PASSWORD\n");
      __CrestClearStack(25);
    } else {
      __CrestBranch(24, 13, 0);

    }
    }
  } else {
    __CrestBranch(18, 14, 0);

  }
  __CrestLoad(28, (unsigned long )(& k), (long long )k);
  __CrestLoad(27, (unsigned long )0, (long long )1);
  __CrestApply2(26, 13, (long long )(k != 1));
  if (k != 1) {
    __CrestBranch(29, 17, 1);
    printf((char const * __restrict )"********Welcome to ATM Service**************\n");
    __CrestClearStack(31);
    printf((char const * __restrict )"1. Check Balance\n");
    __CrestClearStack(32);
    printf((char const * __restrict )"2. Withdraw Cash\n");
    __CrestClearStack(33);
    printf((char const * __restrict )"3. Deposit Cash\n");
    __CrestClearStack(34);
    printf((char const * __restrict )"4. Quit\n");
    __CrestClearStack(35);
    printf((char const * __restrict )"******************?**************************?*\n\n");
    __CrestClearStack(36);
    printf((char const * __restrict )"Enter your choice: ");
    __CrestClearStack(37);
    {
    __CrestLoad(40, (unsigned long )(& choice), (long long )choice);
    __CrestLoad(39, (unsigned long )0, (long long )1);
    __CrestApply2(38, 12, (long long )(choice == 1));
    if (choice == 1) {
      __CrestBranch(41, 19, 1);
      __CrestLoad(43, (unsigned long )(& amount), (long long )amount);
      printf((char const * __restrict )"\n YOUR BALANCE IN Rs : %d ", amount);
      __CrestClearStack(44);
    } else {
      __CrestBranch(42, 20, 0);
      {
      __CrestLoad(47, (unsigned long )(& choice), (long long )choice);
      __CrestLoad(46, (unsigned long )0, (long long )2);
      __CrestApply2(45, 12, (long long )(choice == 2));
      if (choice == 2) {
        __CrestBranch(48, 21, 1);
        printf((char const * __restrict )"\n ENTER THE AMOUNT TO WITHDRAW: ");
        __CrestClearStack(50);
        {
        __CrestLoad(55, (unsigned long )(& withdraw), (long long )withdraw);
        __CrestLoad(54, (unsigned long )0, (long long )100);
        __CrestApply2(53, 4, (long long )(withdraw % 100));
        __CrestLoad(52, (unsigned long )0, (long long )0);
        __CrestApply2(51, 13, (long long )(withdraw % 100 != 0));
        if (withdraw % 100 != 0) {
          __CrestBranch(56, 23, 1);
          printf((char const * __restrict )"\n PLEASE ENTER THE AMOUNT IN MULTIPLES OF 100");
          __CrestClearStack(58);
        } else {
          __CrestBranch(57, 24, 0);
          {
          __CrestLoad(63, (unsigned long )(& withdraw), (long long )withdraw);
          __CrestLoad(62, (unsigned long )(& amount), (long long )amount);
          __CrestLoad(61, (unsigned long )0, (long long )500);
          __CrestApply2(60, 1, (long long )(amount - 500));
          __CrestApply2(59, 14, (long long )(withdraw > amount - 500));
          if (withdraw > amount - 500) {
            __CrestBranch(64, 25, 1);
            printf((char const * __restrict )"\n INSUFFICENT BALANCE");
            __CrestClearStack(66);
          } else {
            __CrestBranch(65, 26, 0);
            __CrestLoad(69, (unsigned long )(& amount), (long long )amount);
            __CrestLoad(68, (unsigned long )(& withdraw), (long long )withdraw);
            __CrestApply2(67, 1, (long long )(amount - withdraw));
            __CrestStore(70, (unsigned long )(& amount));
            amount -= withdraw;
            printf((char const * __restrict )"\n\n PLEASE COLLECT CASH");
            __CrestClearStack(71);
            __CrestLoad(72, (unsigned long )(& amount), (long long )amount);
            printf((char const * __restrict )"\n YOUR CURRENT BALANCE IS%d", amount);
            __CrestClearStack(73);
          }
          }
        }
        }
      } else {
        __CrestBranch(49, 27, 0);
        {
        __CrestLoad(76, (unsigned long )(& choice), (long long )choice);
        __CrestLoad(75, (unsigned long )0, (long long )3);
        __CrestApply2(74, 12, (long long )(choice == 3));
        if (choice == 3) {
          __CrestBranch(77, 28, 1);
          printf((char const * __restrict )"\n ENTER THE AMOUNT TO DEPOSIT");
          __CrestClearStack(79);
          __CrestLoad(82, (unsigned long )(& amount), (long long )amount);
          __CrestLoad(81, (unsigned long )(& deposit), (long long )deposit);
          __CrestApply2(80, 0, (long long )(amount + deposit));
          __CrestStore(83, (unsigned long )(& amount));
          amount += deposit;
          __CrestLoad(84, (unsigned long )(& amount), (long long )amount);
          printf((char const * __restrict )"YOUR BALANCE IS %d", amount);
          __CrestClearStack(85);
        } else {
          __CrestBranch(78, 29, 0);
          {
          __CrestLoad(88, (unsigned long )(& choice), (long long )choice);
          __CrestLoad(87, (unsigned long )0, (long long )4);
          __CrestApply2(86, 12, (long long )(choice == 4));
          if (choice == 4) {
            __CrestBranch(89, 30, 1);
            printf((char const * __restrict )"\n THANK U USING ATM");
            __CrestClearStack(91);
          } else {
            __CrestBranch(90, 31, 0);
            printf((char const * __restrict )"\n INVALID CHOICE");
            __CrestClearStack(92);
          }
          }
        }
        }
      }
      }
    }
    }
  } else {
    __CrestBranch(30, 32, 0);

  }
  __CrestLoad(95, (unsigned long )(& k), (long long )k);
  __CrestLoad(94, (unsigned long )0, (long long )1);
  __CrestApply2(93, 13, (long long )(k != 1));
  if (k != 1) {
    __CrestBranch(96, 34, 1);
    printf((char const * __restrict )"********Welcome to ATM Service**************\n");
    __CrestClearStack(98);
    printf((char const * __restrict )"1. Check Balance\n");
    __CrestClearStack(99);
    printf((char const * __restrict )"2. Withdraw Cash\n");
    __CrestClearStack(100);
    printf((char const * __restrict )"3. Deposit Cash\n");
    __CrestClearStack(101);
    printf((char const * __restrict )"4. Quit\n");
    __CrestClearStack(102);
    printf((char const * __restrict )"******************?**************************?*\n\n");
    __CrestClearStack(103);
    printf((char const * __restrict )"Enter your choice: ");
    __CrestClearStack(104);
    {
    __CrestLoad(107, (unsigned long )(& choice), (long long )choice);
    __CrestLoad(106, (unsigned long )0, (long long )1);
    __CrestApply2(105, 12, (long long )(choice == 1));
    if (choice == 1) {
      __CrestBranch(108, 36, 1);
      __CrestLoad(110, (unsigned long )(& amount), (long long )amount);
      printf((char const * __restrict )"\n YOUR BALANCE IN Rs : %d ", amount);
      __CrestClearStack(111);
    } else {
      __CrestBranch(109, 37, 0);
      {
      __CrestLoad(114, (unsigned long )(& choice), (long long )choice);
      __CrestLoad(113, (unsigned long )0, (long long )2);
      __CrestApply2(112, 12, (long long )(choice == 2));
      if (choice == 2) {
        __CrestBranch(115, 38, 1);
        printf((char const * __restrict )"\n ENTER THE AMOUNT TO WITHDRAW: ");
        __CrestClearStack(117);
        {
        __CrestLoad(122, (unsigned long )(& withdraw), (long long )withdraw);
        __CrestLoad(121, (unsigned long )0, (long long )100);
        __CrestApply2(120, 4, (long long )(withdraw % 100));
        __CrestLoad(119, (unsigned long )0, (long long )0);
        __CrestApply2(118, 13, (long long )(withdraw % 100 != 0));
        if (withdraw % 100 != 0) {
          __CrestBranch(123, 40, 1);
          printf((char const * __restrict )"\n PLEASE ENTER THE AMOUNT IN MULTIPLES OF 100");
          __CrestClearStack(125);
        } else {
          __CrestBranch(124, 41, 0);
          {
          __CrestLoad(130, (unsigned long )(& withdraw), (long long )withdraw);
          __CrestLoad(129, (unsigned long )(& amount), (long long )amount);
          __CrestLoad(128, (unsigned long )0, (long long )500);
          __CrestApply2(127, 1, (long long )(amount - 500));
          __CrestApply2(126, 14, (long long )(withdraw > amount - 500));
          if (withdraw > amount - 500) {
            __CrestBranch(131, 42, 1);
            printf((char const * __restrict )"\n INSUFFICENT BALANCE");
            __CrestClearStack(133);
          } else {
            __CrestBranch(132, 43, 0);
            __CrestLoad(136, (unsigned long )(& amount), (long long )amount);
            __CrestLoad(135, (unsigned long )(& withdraw), (long long )withdraw);
            __CrestApply2(134, 1, (long long )(amount - withdraw));
            __CrestStore(137, (unsigned long )(& amount));
            amount -= withdraw;
            printf((char const * __restrict )"\n\n PLEASE COLLECT CASH");
            __CrestClearStack(138);
            __CrestLoad(139, (unsigned long )(& amount), (long long )amount);
            printf((char const * __restrict )"\n YOUR CURRENT BALANCE IS%d", amount);
            __CrestClearStack(140);
          }
          }
        }
        }
      } else {
        __CrestBranch(116, 44, 0);
        {
        __CrestLoad(143, (unsigned long )(& choice), (long long )choice);
        __CrestLoad(142, (unsigned long )0, (long long )3);
        __CrestApply2(141, 12, (long long )(choice == 3));
        if (choice == 3) {
          __CrestBranch(144, 45, 1);
          printf((char const * __restrict )"\n ENTER THE AMOUNT TO DEPOSIT");
          __CrestClearStack(146);
          __CrestLoad(149, (unsigned long )(& amount), (long long )amount);
          __CrestLoad(148, (unsigned long )(& deposit), (long long )deposit);
          __CrestApply2(147, 0, (long long )(amount + deposit));
          __CrestStore(150, (unsigned long )(& amount));
          amount += deposit;
          __CrestLoad(151, (unsigned long )(& amount), (long long )amount);
          printf((char const * __restrict )"YOUR BALANCE IS %d", amount);
          __CrestClearStack(152);
        } else {
          __CrestBranch(145, 46, 0);
          {
          __CrestLoad(155, (unsigned long )(& choice), (long long )choice);
          __CrestLoad(154, (unsigned long )0, (long long )4);
          __CrestApply2(153, 12, (long long )(choice == 4));
          if (choice == 4) {
            __CrestBranch(156, 47, 1);
            printf((char const * __restrict )"\n THANK U USING ATM");
            __CrestClearStack(158);
          } else {
            __CrestBranch(157, 48, 0);
            printf((char const * __restrict )"\n INVALID CHOICE");
            __CrestClearStack(159);
          }
          }
        }
        }
      }
      }
    }
    }
  } else {
    __CrestBranch(97, 49, 0);

  }
# 119 "atm.c"
  printf((char const * __restrict )"\n\n\n DO U WISH TO HAVE ANOTHER TRANSCATION?(y/n): \n");
  __CrestClearStack(160);
  __CrestLoad(163, (unsigned long )(& transaction), (long long )transaction);
  __CrestLoad(162, (unsigned long )0, (long long )0);
  __CrestApply2(161, 12, (long long )(transaction == 0));
# 123 "atm.c"
  if (transaction == 0) {
    __CrestBranch(164, 52, 1);
    __CrestLoad(166, (unsigned long )0, (long long )1);
    __CrestStore(167, (unsigned long )(& k));
# 124 "atm.c"
    k = 1;
  } else {
    __CrestBranch(165, 53, 0);

  }
# 128 "atm.c"
  printf((char const * __restrict )"\n\n THANKS FOR USING OUT ATM SERVICE");
  __CrestClearStack(168);
  __CrestReturn(169);
# 20 "atm.c"
  return;
}
}
void __globinit_atm(void)
{


  {
  __CrestInit();
}
}
