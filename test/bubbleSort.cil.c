/* Generated by CIL v. 1.7.3 */
/* print_CIL_Input is true */

#line 3 "bubbleSort.c"
void __globinit_bubbleSort(void) ;
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
#line 362 "/usr/include/stdio.h"
extern int printf(char const   * __restrict  __format  , ...) ;
#line 202 "../bin/../include/crest.h"
extern void __CrestInt(int *x )  __attribute__((__crest_skip__)) ;
#line 3 "bubbleSort.c"
int main(void) 
{ 
  int num ;
  int i ;
  int __retres3 ;

  {
  __globinit_bubbleSort();
  __CrestCall(1, 1);
#line 6
  __CrestInt(& num);
  __CrestLoad(2, (unsigned long )0, (long long )0);
  __CrestStore(3, (unsigned long )(& i));
#line 7
  i = 0;
  __CrestLoad(6, (unsigned long )(& i), (long long )i);
  __CrestLoad(5, (unsigned long )(& num), (long long )num);
  __CrestApply2(4, 16, (long long )(i < num));
  if (i < num) {
    __CrestBranch(7, 4, 1);
    printf((char const   * __restrict  )"Do nothing");
    __CrestClearStack(9);
    __CrestLoad(12, (unsigned long )(& i), (long long )i);
    __CrestLoad(11, (unsigned long )0, (long long )1);
    __CrestApply2(10, 0, (long long )(i + 1));
    __CrestStore(13, (unsigned long )(& i));
    i ++;
  } else {
    __CrestBranch(8, 5, 0);

  }
  __CrestLoad(16, (unsigned long )(& i), (long long )i);
  __CrestLoad(15, (unsigned long )(& num), (long long )num);
  __CrestApply2(14, 16, (long long )(i < num));
  if (i < num) {
    __CrestBranch(17, 7, 1);
    printf((char const   * __restrict  )"Do nothing");
    __CrestClearStack(19);
    __CrestLoad(22, (unsigned long )(& i), (long long )i);
    __CrestLoad(21, (unsigned long )0, (long long )1);
    __CrestApply2(20, 0, (long long )(i + 1));
    __CrestStore(23, (unsigned long )(& i));
    i ++;
  } else {
    __CrestBranch(18, 8, 0);

  }
  __CrestLoad(24, (unsigned long )0, (long long )0);
  __CrestStore(25, (unsigned long )(& __retres3));
#line 11
  __retres3 = 0;
  __CrestLoad(26, (unsigned long )(& __retres3), (long long )__retres3);
  __CrestReturn(27);
#line 3
  return (__retres3);
}
}
void __globinit_bubbleSort(void) 
{ 


  {
  __CrestInit();
}
}
