# 1 "./arrayBinSearch.cil.c"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./arrayBinSearch.cil.c"
# 3 "arrayBinSearch.c"
void __globinit_arrayBinSearch(void) ;
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
# 202 "../bin/../include/crest.h"
extern void __CrestInt(int *x ) __attribute__((__crest_skip__)) ;
# 15 "arrayBinSearch.c"
void b(int *A , int l , int r , int key ) ;
# 3 "arrayBinSearch.c"
int main(void)
{
  int A[10] ;
  int l ;
  int r ;
  int key ;
  int __retres5 ;

  {
  __globinit_arrayBinSearch();
  __CrestCall(1, 1);
# 10 "arrayBinSearch.c"
  __CrestInt((int *)(& A));
# 11 "arrayBinSearch.c"
  __CrestInt(& l);
# 12 "arrayBinSearch.c"
  __CrestInt(& r);
# 13 "arrayBinSearch.c"
  __CrestInt(& key);
  __CrestLoad(2, (unsigned long )(& l), (long long )l);
  __CrestLoad(3, (unsigned long )(& r), (long long )r);
  __CrestLoad(4, (unsigned long )(& key), (long long )key);
# 15 "arrayBinSearch.c"
  b(A, l, r, key);
  __CrestClearStack(5);
  __CrestLoad(6, (unsigned long )0, (long long )0);
  __CrestStore(7, (unsigned long )(& __retres5));
# 16 "arrayBinSearch.c"
  __retres5 = 0;
  __CrestLoad(8, (unsigned long )(& __retres5), (long long )__retres5);
  __CrestReturn(9);
# 3 "arrayBinSearch.c"
  return (__retres5);
}
}
# 20 "arrayBinSearch.c"
void b(int *A , int l , int r , int key )
{
  int m ;
  int *mem_6 ;
  int *mem_7 ;
  int *mem_8 ;
  int *mem_9 ;

  {
  __CrestCall(13, 2);
  __CrestStore(12, (unsigned long )(& key));
  __CrestStore(11, (unsigned long )(& r));
  __CrestStore(10, (unsigned long )(& l));
  {
  {
  __CrestLoad(16, (unsigned long )(& l), (long long )l);
  __CrestLoad(15, (unsigned long )(& r), (long long )r);
  __CrestApply2(14, 15, (long long )(l <= r));
  if (l <= r) {
    __CrestBranch(17, 6, 1);
    __CrestLoad(25, (unsigned long )(& l), (long long )l);
    __CrestLoad(24, (unsigned long )(& r), (long long )r);
    __CrestLoad(23, (unsigned long )(& l), (long long )l);
    __CrestApply2(22, 1, (long long )(r - l));
    __CrestLoad(21, (unsigned long )0, (long long )2);
    __CrestApply2(20, 3, (long long )((r - l) / 2));
    __CrestApply2(19, 0, (long long )(l + (r - l) / 2));
    __CrestStore(26, (unsigned long )(& m));
    m = l + (r - l) / 2;
    {
    mem_6 = A + m;
    {
    __CrestLoad(29, (unsigned long )mem_6, (long long )*mem_6);
    __CrestLoad(28, (unsigned long )(& key), (long long )key);
    __CrestApply2(27, 12, (long long )(*mem_6 == key));
    if (*mem_6 == key) {
      __CrestBranch(30, 10, 1);

      goto return_label;
    } else {
      __CrestBranch(31, 12, 0);

    }
    }
    }
    {
    mem_7 = A + m;
    {
    __CrestLoad(34, (unsigned long )mem_7, (long long )*mem_7);
    __CrestLoad(33, (unsigned long )(& key), (long long )key);
    __CrestApply2(32, 16, (long long )(*mem_7 < key));
    if (*mem_7 < key) {
      __CrestBranch(35, 16, 1);
      __CrestLoad(39, (unsigned long )(& m), (long long )m);
      __CrestLoad(38, (unsigned long )0, (long long )1);
      __CrestApply2(37, 0, (long long )(m + 1));
      __CrestStore(40, (unsigned long )(& l));
      l = m + 1;
    } else {
      __CrestBranch(36, 17, 0);
      __CrestLoad(43, (unsigned long )(& m), (long long )m);
      __CrestLoad(42, (unsigned long )0, (long long )1);
      __CrestApply2(41, 1, (long long )(m - 1));
      __CrestStore(44, (unsigned long )(& r));
      r = m - 1;
    }
    }
    }
  } else {
    __CrestBranch(18, 18, 0);

  }
  }
  {
  __CrestLoad(47, (unsigned long )(& l), (long long )l);
  __CrestLoad(46, (unsigned long )(& r), (long long )r);
  __CrestApply2(45, 15, (long long )(l <= r));
  if (l <= r) {
    __CrestBranch(48, 20, 1);
    __CrestLoad(56, (unsigned long )(& l), (long long )l);
    __CrestLoad(55, (unsigned long )(& r), (long long )r);
    __CrestLoad(54, (unsigned long )(& l), (long long )l);
    __CrestApply2(53, 1, (long long )(r - l));
    __CrestLoad(52, (unsigned long )0, (long long )2);
    __CrestApply2(51, 3, (long long )((r - l) / 2));
    __CrestApply2(50, 0, (long long )(l + (r - l) / 2));
    __CrestStore(57, (unsigned long )(& m));
    m = l + (r - l) / 2;
    {
    mem_8 = A + m;
    {
    __CrestLoad(60, (unsigned long )mem_8, (long long )*mem_8);
    __CrestLoad(59, (unsigned long )(& key), (long long )key);
    __CrestApply2(58, 12, (long long )(*mem_8 == key));
    if (*mem_8 == key) {
      __CrestBranch(61, 24, 1);

      goto return_label;
    } else {
      __CrestBranch(62, 26, 0);

    }
    }
    }
    {
    mem_9 = A + m;
    {
    __CrestLoad(65, (unsigned long )mem_9, (long long )*mem_9);
    __CrestLoad(64, (unsigned long )(& key), (long long )key);
    __CrestApply2(63, 16, (long long )(*mem_9 < key));
    if (*mem_9 < key) {
      __CrestBranch(66, 30, 1);
      __CrestLoad(70, (unsigned long )(& m), (long long )m);
      __CrestLoad(69, (unsigned long )0, (long long )1);
      __CrestApply2(68, 0, (long long )(m + 1));
      __CrestStore(71, (unsigned long )(& l));
      l = m + 1;
    } else {
      __CrestBranch(67, 31, 0);
      __CrestLoad(74, (unsigned long )(& m), (long long )m);
      __CrestLoad(73, (unsigned long )0, (long long )1);
      __CrestApply2(72, 1, (long long )(m - 1));
      __CrestStore(75, (unsigned long )(& r));
      r = m - 1;
    }
    }
    }
  } else {
    __CrestBranch(49, 32, 0);

  }
  }
  }

  return_label:
  {
  __CrestReturn(76);
# 20 "arrayBinSearch.c"
  return;
  }
}
}
void __globinit_arrayBinSearch(void)
{


  {
  __CrestInit();
}
}
