/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/Lab2/lab2/tb.v";
static int ng1[] = {0, 0};
static int ng2[] = {40, 0};
static unsigned int ng3[] = {170U, 0U};
static const char *ng4 = "Success: %b = %b";
static const char *ng5 = "Failure: %b = %b";
static int ng6[] = {56, 0};
static unsigned int ng7[] = {46U, 0U};
static unsigned int ng8[] = {44U, 0U};
static unsigned int ng9[] = {43U, 0U};
static unsigned int ng10[] = {45U, 0U};
static unsigned int ng11[] = {47U, 0U};
static unsigned int ng12[] = {0U, 0U};
static int ng13[] = {1, 0};
static unsigned int ng14[] = {129U, 0U};
static unsigned int ng15[] = {1U, 0U};
static int ng16[] = {8, 0};
static unsigned int ng17[] = {8U, 0U};
static int ng18[] = {16, 0};
static unsigned int ng19[] = {24U, 0U};
static unsigned int ng20[] = {2048U, 0U};
static unsigned int ng21[] = {255U, 0U};
static unsigned int ng22[] = {2047U, 0U};
static unsigned int ng23[] = {127U, 0U};
static int ng24[] = {2, 0};
static int ng25[] = {11, 0};
static int ng26[] = {15, 0};
static int ng27[] = {7, 0};
static int ng28[] = {3, 0};
static const char *ng29 = "Failure: %b = %b, res = %d, i = %d ";
static unsigned int ng30[] = {130U, 0U};
static const char *ng31 = "Failure: %b = %b, res = %d, i = %d, desAns = %b";



static void Initial_55_0(char *t0)
{
    char t4[8];
    char t31[8];
    char t36[8];
    char t37[8];
    char t38[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    int t39;
    int t40;
    int t41;
    int t42;
    int t43;
    int t44;
    int t45;
    int t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;

LAB0:    t1 = (t0 + 2364U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(55, ng0);

LAB4:    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 12);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2264);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_signed_unary_minus(t4, 32, t2, 32);
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 12);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2264);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = (t0 + 692U);
    t5 = *((char **)t2);
    t2 = (t0 + 600U);
    t6 = *((char **)t2);
    xsi_vlogtype_concat(t4, 8, 8, 3U, t6, 1, t5, 3, t3, 4);
    t2 = (t0 + 1104);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 8);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng3)));
    memset(t4, 0, 8);
    t7 = (t5 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t6);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB10;

LAB7:    if (t18 != 0)
        goto LAB9;

LAB8:    *((unsigned int *)t4) = 1;

LAB10:    t22 = (t4 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB11;

LAB12:    xsi_set_current_line(68, ng0);

LAB15:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1012);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 784U);
    t7 = *((char **)t6);
    t6 = (t0 + 692U);
    t8 = *((char **)t6);
    t6 = (t0 + 600U);
    t21 = *((char **)t6);
    xsi_vlogtype_concat(t4, 8, 8, 3U, t21, 1, t8, 3, t7, 4);
    xsi_vlogfile_write(1, 0, 0, ng5, 3, t0, (char)118, t5, 12, (char)118, t4, 8);

LAB13:    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 12);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 2264);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB16;
    goto LAB1;

LAB9:    t21 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB10;

LAB11:    xsi_set_current_line(65, ng0);

LAB14:    xsi_set_current_line(66, ng0);
    t28 = (t0 + 1012);
    t29 = (t28 + 36U);
    t30 = *((char **)t29);
    t32 = (t0 + 784U);
    t33 = *((char **)t32);
    t32 = (t0 + 692U);
    t34 = *((char **)t32);
    t32 = (t0 + 600U);
    t35 = *((char **)t32);
    xsi_vlogtype_concat(t31, 8, 8, 3U, t35, 1, t34, 3, t33, 4);
    xsi_vlogfile_write(1, 0, 0, ng4, 3, t0, (char)118, t30, 12, (char)118, t31, 8);
    goto LAB13;

LAB16:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = (t0 + 692U);
    t5 = *((char **)t2);
    t2 = (t0 + 600U);
    t6 = *((char **)t2);
    xsi_vlogtype_concat(t4, 8, 8, 3U, t6, 1, t5, 3, t3, 4);
    t2 = (t0 + 1104);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 8);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng7)));
    memset(t4, 0, 8);
    t7 = (t5 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t6);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB20;

LAB17:    if (t18 != 0)
        goto LAB19;

LAB18:    *((unsigned int *)t4) = 1;

LAB20:    t22 = (t4 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB21;

LAB22:    xsi_set_current_line(78, ng0);

LAB25:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 1012);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 784U);
    t7 = *((char **)t6);
    t6 = (t0 + 692U);
    t8 = *((char **)t6);
    t6 = (t0 + 600U);
    t21 = *((char **)t6);
    xsi_vlogtype_concat(t4, 8, 8, 3U, t21, 1, t8, 3, t7, 4);
    xsi_vlogfile_write(1, 0, 0, ng5, 3, t0, (char)118, t5, 12, (char)118, t4, 8);

LAB23:    xsi_set_current_line(82, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 12);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 2264);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB26;
    goto LAB1;

LAB19:    t21 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB20;

LAB21:    xsi_set_current_line(75, ng0);

LAB24:    xsi_set_current_line(76, ng0);
    t28 = (t0 + 1012);
    t29 = (t28 + 36U);
    t30 = *((char **)t29);
    t32 = (t0 + 784U);
    t33 = *((char **)t32);
    t32 = (t0 + 692U);
    t34 = *((char **)t32);
    t32 = (t0 + 600U);
    t35 = *((char **)t32);
    xsi_vlogtype_concat(t31, 8, 8, 3U, t35, 1, t34, 3, t33, 4);
    xsi_vlogfile_write(1, 0, 0, ng4, 3, t0, (char)118, t30, 12, (char)118, t31, 8);
    goto LAB23;

LAB26:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = (t0 + 692U);
    t5 = *((char **)t2);
    t2 = (t0 + 600U);
    t6 = *((char **)t2);
    xsi_vlogtype_concat(t4, 8, 8, 3U, t6, 1, t5, 3, t3, 4);
    t2 = (t0 + 1104);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 8);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng9)));
    memset(t4, 0, 8);
    t7 = (t5 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t6);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB30;

LAB27:    if (t18 != 0)
        goto LAB29;

LAB28:    *((unsigned int *)t4) = 1;

LAB30:    t22 = (t4 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB31;

LAB32:    xsi_set_current_line(88, ng0);

LAB35:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 1012);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 1104);
    t7 = (t6 + 36U);
    t8 = *((char **)t7);
    xsi_vlogfile_write(1, 0, 0, ng5, 3, t0, (char)118, t5, 12, (char)118, t8, 8);

LAB33:    xsi_set_current_line(92, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 12);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 2264);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB36;
    goto LAB1;

LAB29:    t21 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB30;

LAB31:    xsi_set_current_line(85, ng0);

LAB34:    xsi_set_current_line(86, ng0);
    t28 = (t0 + 1012);
    t29 = (t28 + 36U);
    t30 = *((char **)t29);
    t32 = (t0 + 1104);
    t33 = (t32 + 36U);
    t34 = *((char **)t33);
    xsi_vlogfile_write(1, 0, 0, ng4, 3, t0, (char)118, t30, 12, (char)118, t34, 8);
    goto LAB33;

LAB36:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = (t0 + 692U);
    t5 = *((char **)t2);
    t2 = (t0 + 600U);
    t6 = *((char **)t2);
    xsi_vlogtype_concat(t4, 8, 8, 3U, t6, 1, t5, 3, t3, 4);
    t2 = (t0 + 1104);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 8);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng9)));
    memset(t4, 0, 8);
    t7 = (t5 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t6);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB40;

LAB37:    if (t18 != 0)
        goto LAB39;

LAB38:    *((unsigned int *)t4) = 1;

LAB40:    t22 = (t4 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB41;

LAB42:    xsi_set_current_line(98, ng0);

LAB45:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 1012);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 1104);
    t7 = (t6 + 36U);
    t8 = *((char **)t7);
    xsi_vlogfile_write(1, 0, 0, ng5, 3, t0, (char)118, t5, 12, (char)118, t8, 8);

LAB43:    xsi_set_current_line(102, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 12);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 2264);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB46;
    goto LAB1;

LAB39:    t21 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB40;

LAB41:    xsi_set_current_line(95, ng0);

LAB44:    xsi_set_current_line(96, ng0);
    t28 = (t0 + 1012);
    t29 = (t28 + 36U);
    t30 = *((char **)t29);
    t32 = (t0 + 1104);
    t33 = (t32 + 36U);
    t34 = *((char **)t33);
    xsi_vlogfile_write(1, 0, 0, ng4, 3, t0, (char)118, t30, 12, (char)118, t34, 8);
    goto LAB43;

LAB46:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = (t0 + 692U);
    t5 = *((char **)t2);
    t2 = (t0 + 600U);
    t6 = *((char **)t2);
    xsi_vlogtype_concat(t4, 8, 8, 3U, t6, 1, t5, 3, t3, 4);
    t2 = (t0 + 1104);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 8);
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng8)));
    memset(t4, 0, 8);
    t7 = (t5 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t6);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB50;

LAB47:    if (t18 != 0)
        goto LAB49;

LAB48:    *((unsigned int *)t4) = 1;

LAB50:    t22 = (t4 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB51;

LAB52:    xsi_set_current_line(108, ng0);

LAB55:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 1012);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 1104);
    t7 = (t6 + 36U);
    t8 = *((char **)t7);
    xsi_vlogfile_write(1, 0, 0, ng5, 3, t0, (char)118, t5, 12, (char)118, t8, 8);

LAB53:    xsi_set_current_line(112, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 12);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 2264);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB56;
    goto LAB1;

LAB49:    t21 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB50;

LAB51:    xsi_set_current_line(105, ng0);

LAB54:    xsi_set_current_line(106, ng0);
    t28 = (t0 + 1012);
    t29 = (t28 + 36U);
    t30 = *((char **)t29);
    t32 = (t0 + 1104);
    t33 = (t32 + 36U);
    t34 = *((char **)t33);
    xsi_vlogfile_write(1, 0, 0, ng4, 3, t0, (char)118, t30, 12, (char)118, t34, 8);
    goto LAB53;

LAB56:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = (t0 + 692U);
    t5 = *((char **)t2);
    t2 = (t0 + 600U);
    t6 = *((char **)t2);
    xsi_vlogtype_concat(t4, 8, 8, 3U, t6, 1, t5, 3, t3, 4);
    t2 = (t0 + 1104);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 8);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng8)));
    memset(t4, 0, 8);
    t7 = (t5 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t6);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB60;

LAB57:    if (t18 != 0)
        goto LAB59;

LAB58:    *((unsigned int *)t4) = 1;

LAB60:    t22 = (t4 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB61;

LAB62:    xsi_set_current_line(118, ng0);

LAB65:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 1012);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 1104);
    t7 = (t6 + 36U);
    t8 = *((char **)t7);
    xsi_vlogfile_write(1, 0, 0, ng5, 3, t0, (char)118, t5, 12, (char)118, t8, 8);

LAB63:    xsi_set_current_line(122, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 12);
    xsi_set_current_line(123, ng0);
    t2 = (t0 + 2264);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB66;
    goto LAB1;

LAB59:    t21 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB60;

LAB61:    xsi_set_current_line(115, ng0);

LAB64:    xsi_set_current_line(116, ng0);
    t28 = (t0 + 1012);
    t29 = (t28 + 36U);
    t30 = *((char **)t29);
    t32 = (t0 + 1104);
    t33 = (t32 + 36U);
    t34 = *((char **)t33);
    xsi_vlogfile_write(1, 0, 0, ng4, 3, t0, (char)118, t30, 12, (char)118, t34, 8);
    goto LAB63;

LAB66:    xsi_set_current_line(124, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = (t0 + 692U);
    t5 = *((char **)t2);
    t2 = (t0 + 600U);
    t6 = *((char **)t2);
    xsi_vlogtype_concat(t4, 8, 8, 3U, t6, 1, t5, 3, t3, 4);
    t2 = (t0 + 1104);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 8);
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng12)));
    memset(t4, 0, 8);
    t7 = (t5 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t6);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB70;

LAB67:    if (t18 != 0)
        goto LAB69;

LAB68:    *((unsigned int *)t4) = 1;

LAB70:    t22 = (t4 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB71;

LAB72:    xsi_set_current_line(128, ng0);

LAB75:    xsi_set_current_line(129, ng0);
    t2 = (t0 + 1012);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 1104);
    t7 = (t6 + 36U);
    t8 = *((char **)t7);
    xsi_vlogfile_write(1, 0, 0, ng5, 3, t0, (char)118, t5, 12, (char)118, t8, 8);

LAB73:    xsi_set_current_line(132, ng0);
    t2 = ((char*)((ng13)));
    memset(t4, 0, 8);
    xsi_vlog_signed_unary_minus(t4, 32, t2, 32);
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 12);
    xsi_set_current_line(133, ng0);
    t2 = (t0 + 2264);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB76;
    goto LAB1;

LAB69:    t21 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB70;

LAB71:    xsi_set_current_line(125, ng0);

LAB74:    xsi_set_current_line(126, ng0);
    t28 = (t0 + 1012);
    t29 = (t28 + 36U);
    t30 = *((char **)t29);
    t32 = (t0 + 1104);
    t33 = (t32 + 36U);
    t34 = *((char **)t33);
    xsi_vlogfile_write(1, 0, 0, ng4, 3, t0, (char)118, t30, 12, (char)118, t34, 8);
    goto LAB73;

LAB76:    xsi_set_current_line(134, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = (t0 + 692U);
    t5 = *((char **)t2);
    t2 = (t0 + 600U);
    t6 = *((char **)t2);
    xsi_vlogtype_concat(t4, 8, 8, 3U, t6, 1, t5, 3, t3, 4);
    t2 = (t0 + 1104);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 8);
    xsi_set_current_line(135, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng14)));
    memset(t4, 0, 8);
    t7 = (t5 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t6);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB80;

LAB77:    if (t18 != 0)
        goto LAB79;

LAB78:    *((unsigned int *)t4) = 1;

LAB80:    t22 = (t4 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB81;

LAB82:    xsi_set_current_line(138, ng0);

LAB85:    xsi_set_current_line(139, ng0);
    t2 = (t0 + 1012);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 1104);
    t7 = (t6 + 36U);
    t8 = *((char **)t7);
    xsi_vlogfile_write(1, 0, 0, ng5, 3, t0, (char)118, t5, 12, (char)118, t8, 8);

LAB83:    xsi_set_current_line(142, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 12);
    xsi_set_current_line(143, ng0);
    t2 = (t0 + 2264);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB86;
    goto LAB1;

LAB79:    t21 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB80;

LAB81:    xsi_set_current_line(135, ng0);

LAB84:    xsi_set_current_line(136, ng0);
    t28 = (t0 + 1012);
    t29 = (t28 + 36U);
    t30 = *((char **)t29);
    t32 = (t0 + 1104);
    t33 = (t32 + 36U);
    t34 = *((char **)t33);
    xsi_vlogfile_write(1, 0, 0, ng4, 3, t0, (char)118, t30, 12, (char)118, t34, 8);
    goto LAB83;

LAB86:    xsi_set_current_line(144, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = (t0 + 692U);
    t5 = *((char **)t2);
    t2 = (t0 + 600U);
    t6 = *((char **)t2);
    xsi_vlogtype_concat(t4, 8, 8, 3U, t6, 1, t5, 3, t3, 4);
    t2 = (t0 + 1104);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 8);
    xsi_set_current_line(145, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng15)));
    memset(t4, 0, 8);
    t7 = (t5 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t6);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB90;

LAB87:    if (t18 != 0)
        goto LAB89;

LAB88:    *((unsigned int *)t4) = 1;

LAB90:    t22 = (t4 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB91;

LAB92:    xsi_set_current_line(148, ng0);

LAB95:    xsi_set_current_line(149, ng0);
    t2 = (t0 + 1012);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 1104);
    t7 = (t6 + 36U);
    t8 = *((char **)t7);
    xsi_vlogfile_write(1, 0, 0, ng5, 3, t0, (char)118, t5, 12, (char)118, t8, 8);

LAB93:    xsi_set_current_line(152, ng0);
    t2 = ((char*)((ng16)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 12);
    xsi_set_current_line(153, ng0);
    t2 = (t0 + 2264);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB96;
    goto LAB1;

LAB89:    t21 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB90;

LAB91:    xsi_set_current_line(145, ng0);

LAB94:    xsi_set_current_line(146, ng0);
    t28 = (t0 + 1012);
    t29 = (t28 + 36U);
    t30 = *((char **)t29);
    t32 = (t0 + 1104);
    t33 = (t32 + 36U);
    t34 = *((char **)t33);
    xsi_vlogfile_write(1, 0, 0, ng4, 3, t0, (char)118, t30, 12, (char)118, t34, 8);
    goto LAB93;

LAB96:    xsi_set_current_line(154, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = (t0 + 692U);
    t5 = *((char **)t2);
    t2 = (t0 + 600U);
    t6 = *((char **)t2);
    xsi_vlogtype_concat(t4, 8, 8, 3U, t6, 1, t5, 3, t3, 4);
    t2 = (t0 + 1104);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 8);
    xsi_set_current_line(155, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng17)));
    memset(t4, 0, 8);
    t7 = (t5 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t6);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB100;

LAB97:    if (t18 != 0)
        goto LAB99;

LAB98:    *((unsigned int *)t4) = 1;

LAB100:    t22 = (t4 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB101;

LAB102:    xsi_set_current_line(158, ng0);

LAB105:    xsi_set_current_line(159, ng0);
    t2 = (t0 + 1012);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 1104);
    t7 = (t6 + 36U);
    t8 = *((char **)t7);
    xsi_vlogfile_write(1, 0, 0, ng5, 3, t0, (char)118, t5, 12, (char)118, t8, 8);

LAB103:    xsi_set_current_line(162, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 12);
    xsi_set_current_line(163, ng0);
    t2 = (t0 + 2264);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB106;
    goto LAB1;

LAB99:    t21 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB100;

LAB101:    xsi_set_current_line(155, ng0);

LAB104:    xsi_set_current_line(156, ng0);
    t28 = (t0 + 1012);
    t29 = (t28 + 36U);
    t30 = *((char **)t29);
    t32 = (t0 + 1104);
    t33 = (t32 + 36U);
    t34 = *((char **)t33);
    xsi_vlogfile_write(1, 0, 0, ng4, 3, t0, (char)118, t30, 12, (char)118, t34, 8);
    goto LAB103;

LAB106:    xsi_set_current_line(164, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = (t0 + 692U);
    t5 = *((char **)t2);
    t2 = (t0 + 600U);
    t6 = *((char **)t2);
    xsi_vlogtype_concat(t4, 8, 8, 3U, t6, 1, t5, 3, t3, 4);
    t2 = (t0 + 1104);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 8);
    xsi_set_current_line(165, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng19)));
    memset(t4, 0, 8);
    t7 = (t5 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t6);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB110;

LAB107:    if (t18 != 0)
        goto LAB109;

LAB108:    *((unsigned int *)t4) = 1;

LAB110:    t22 = (t4 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB111;

LAB112:    xsi_set_current_line(168, ng0);

LAB115:    xsi_set_current_line(169, ng0);
    t2 = (t0 + 1012);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 1104);
    t7 = (t6 + 36U);
    t8 = *((char **)t7);
    xsi_vlogfile_write(1, 0, 0, ng5, 3, t0, (char)118, t5, 12, (char)118, t8, 8);

LAB113:    xsi_set_current_line(172, ng0);
    t2 = ((char*)((ng20)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 12);
    xsi_set_current_line(173, ng0);
    t2 = (t0 + 2264);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB116;
    goto LAB1;

LAB109:    t21 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB110;

LAB111:    xsi_set_current_line(165, ng0);

LAB114:    xsi_set_current_line(166, ng0);
    t28 = (t0 + 1012);
    t29 = (t28 + 36U);
    t30 = *((char **)t29);
    t32 = (t0 + 1104);
    t33 = (t32 + 36U);
    t34 = *((char **)t33);
    xsi_vlogfile_write(1, 0, 0, ng4, 3, t0, (char)118, t30, 12, (char)118, t34, 8);
    goto LAB113;

LAB116:    xsi_set_current_line(174, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = (t0 + 692U);
    t5 = *((char **)t2);
    t2 = (t0 + 600U);
    t6 = *((char **)t2);
    xsi_vlogtype_concat(t4, 8, 8, 3U, t6, 1, t5, 3, t3, 4);
    t2 = (t0 + 1104);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 8);
    xsi_set_current_line(175, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng21)));
    memset(t4, 0, 8);
    t7 = (t5 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t6);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB120;

LAB117:    if (t18 != 0)
        goto LAB119;

LAB118:    *((unsigned int *)t4) = 1;

LAB120:    t22 = (t4 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB121;

LAB122:    xsi_set_current_line(178, ng0);

LAB125:    xsi_set_current_line(179, ng0);
    t2 = (t0 + 1012);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 1104);
    t7 = (t6 + 36U);
    t8 = *((char **)t7);
    xsi_vlogfile_write(1, 0, 0, ng5, 3, t0, (char)118, t5, 12, (char)118, t8, 8);

LAB123:    xsi_set_current_line(182, ng0);
    t2 = ((char*)((ng22)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 12);
    xsi_set_current_line(183, ng0);
    t2 = (t0 + 2264);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB126;
    goto LAB1;

LAB119:    t21 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB120;

LAB121:    xsi_set_current_line(175, ng0);

LAB124:    xsi_set_current_line(176, ng0);
    t28 = (t0 + 1012);
    t29 = (t28 + 36U);
    t30 = *((char **)t29);
    t32 = (t0 + 1104);
    t33 = (t32 + 36U);
    t34 = *((char **)t33);
    xsi_vlogfile_write(1, 0, 0, ng4, 3, t0, (char)118, t30, 12, (char)118, t34, 8);
    goto LAB123;

LAB126:    xsi_set_current_line(184, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = (t0 + 692U);
    t5 = *((char **)t2);
    t2 = (t0 + 600U);
    t6 = *((char **)t2);
    xsi_vlogtype_concat(t4, 8, 8, 3U, t6, 1, t5, 3, t3, 4);
    t2 = (t0 + 1104);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 8);
    xsi_set_current_line(185, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng23)));
    memset(t4, 0, 8);
    t7 = (t5 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t6);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB130;

LAB127:    if (t18 != 0)
        goto LAB129;

LAB128:    *((unsigned int *)t4) = 1;

LAB130:    t22 = (t4 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB131;

LAB132:    xsi_set_current_line(188, ng0);

LAB135:    xsi_set_current_line(189, ng0);
    t2 = (t0 + 1012);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 1104);
    t7 = (t6 + 36U);
    t8 = *((char **)t7);
    xsi_vlogfile_write(1, 0, 0, ng5, 3, t0, (char)118, t5, 12, (char)118, t8, 8);

LAB133:    xsi_set_current_line(194, ng0);
    xsi_set_current_line(194, ng0);
    t2 = ((char*)((ng13)));
    memset(t4, 0, 8);
    xsi_vlog_signed_unary_minus(t4, 32, t2, 32);
    t3 = ((char*)((ng24)));
    t5 = ((char*)((ng25)));
    memset(t31, 0, 8);
    xsi_vlog_signed_power(t31, 32, t3, 32, t5, 32, 1);
    memset(t36, 0, 8);
    xsi_vlog_signed_multiply(t36, 32, t4, 32, t31, 32);
    t6 = (t0 + 1196);
    xsi_vlogvar_assign_value(t6, t36, 0, 0, 32);

LAB136:    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng13)));
    memset(t4, 0, 8);
    xsi_vlog_signed_unary_minus(t4, 32, t6, 32);
    t7 = ((char*)((ng26)));
    memset(t31, 0, 8);
    xsi_vlog_signed_multiply(t31, 32, t4, 32, t7, 32);
    t8 = ((char*)((ng24)));
    t21 = ((char*)((ng27)));
    memset(t36, 0, 8);
    xsi_vlog_signed_power(t36, 32, t8, 32, t21, 32, 1);
    memset(t37, 0, 8);
    xsi_vlog_signed_multiply(t37, 32, t31, 32, t36, 32);
    memset(t38, 0, 8);
    xsi_vlog_signed_leq(t38, 32, t5, 32, t37, 32);
    t22 = (t38 + 4);
    t9 = *((unsigned int *)t22);
    t10 = (~(t9));
    t11 = *((unsigned int *)t38);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB137;

LAB138:    xsi_set_current_line(204, ng0);
    xsi_set_current_line(204, ng0);
    t2 = ((char*)((ng26)));
    t3 = ((char*)((ng24)));
    t5 = ((char*)((ng27)));
    memset(t4, 0, 8);
    xsi_vlog_signed_power(t4, 32, t3, 32, t5, 32, 1);
    memset(t31, 0, 8);
    xsi_vlog_signed_multiply(t31, 32, t2, 32, t4, 32);
    t6 = (t0 + 1196);
    xsi_vlogvar_assign_value(t6, t31, 0, 0, 32);

LAB149:    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng24)));
    t7 = ((char*)((ng25)));
    memset(t4, 0, 8);
    xsi_vlog_signed_power(t4, 32, t6, 32, t7, 32, 1);
    memset(t31, 0, 8);
    xsi_vlog_signed_less(t31, 32, t5, 32, t4, 32);
    t8 = (t31 + 4);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t31);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB150;

LAB151:    xsi_set_current_line(213, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 1288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(214, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(215, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 1472);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(216, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1564);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(217, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 1656);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(222, ng0);
    xsi_set_current_line(222, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB162:    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng26)));
    t7 = ((char*)((ng24)));
    t8 = ((char*)((ng27)));
    memset(t4, 0, 8);
    xsi_vlog_signed_power(t4, 32, t7, 32, t8, 32, 1);
    memset(t31, 0, 8);
    xsi_vlog_signed_multiply(t31, 32, t6, 32, t4, 32);
    memset(t36, 0, 8);
    xsi_vlog_signed_less(t36, 32, t5, 32, t31, 32);
    t21 = (t36 + 4);
    t9 = *((unsigned int *)t21);
    t10 = (~(t9));
    t11 = *((unsigned int *)t36);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB163;

LAB164:    xsi_set_current_line(251, ng0);
    t2 = ((char*)((ng14)));
    t3 = (t0 + 1288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(252, ng0);
    t2 = ((char*)((ng30)));
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(253, ng0);
    t2 = ((char*)((ng14)));
    t3 = (t0 + 1472);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(254, ng0);
    t2 = ((char*)((ng13)));
    memset(t4, 0, 8);
    xsi_vlog_signed_unary_minus(t4, 32, t2, 32);
    t3 = (t0 + 1564);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    xsi_set_current_line(255, ng0);
    t2 = ((char*)((ng24)));
    memset(t4, 0, 8);
    xsi_vlog_signed_unary_minus(t4, 32, t2, 32);
    t3 = (t0 + 1656);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    xsi_set_current_line(257, ng0);
    xsi_set_current_line(257, ng0);
    t2 = ((char*)((ng13)));
    memset(t4, 0, 8);
    xsi_vlog_signed_unary_minus(t4, 32, t2, 32);
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);

LAB194:    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng13)));
    memset(t4, 0, 8);
    xsi_vlog_signed_unary_minus(t4, 32, t6, 32);
    t7 = ((char*)((ng26)));
    memset(t31, 0, 8);
    xsi_vlog_signed_multiply(t31, 32, t4, 32, t7, 32);
    t8 = ((char*)((ng24)));
    t21 = ((char*)((ng27)));
    memset(t36, 0, 8);
    xsi_vlog_signed_power(t36, 32, t8, 32, t21, 32, 1);
    memset(t37, 0, 8);
    xsi_vlog_signed_multiply(t37, 32, t31, 32, t36, 32);
    memset(t38, 0, 8);
    xsi_vlog_signed_greater(t38, 32, t5, 32, t37, 32);
    t22 = (t38 + 4);
    t9 = *((unsigned int *)t22);
    t10 = (~(t9));
    t11 = *((unsigned int *)t38);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB195;

LAB196:    goto LAB1;

LAB129:    t21 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB130;

LAB131:    xsi_set_current_line(185, ng0);

LAB134:    xsi_set_current_line(186, ng0);
    t28 = (t0 + 1012);
    t29 = (t28 + 36U);
    t30 = *((char **)t29);
    t32 = (t0 + 1104);
    t33 = (t32 + 36U);
    t34 = *((char **)t33);
    xsi_vlogfile_write(1, 0, 0, ng4, 3, t0, (char)118, t30, 12, (char)118, t34, 8);
    goto LAB133;

LAB137:    xsi_set_current_line(194, ng0);

LAB139:    xsi_set_current_line(195, ng0);
    t28 = (t0 + 1196);
    t29 = (t28 + 36U);
    t30 = *((char **)t29);
    t32 = (t0 + 1012);
    xsi_vlogvar_assign_value(t32, t30, 0, 0, 12);
    xsi_set_current_line(196, ng0);
    t2 = (t0 + 2264);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB140;
    goto LAB1;

LAB140:    xsi_set_current_line(197, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = (t0 + 692U);
    t5 = *((char **)t2);
    t2 = (t0 + 600U);
    t6 = *((char **)t2);
    xsi_vlogtype_concat(t4, 8, 8, 3U, t6, 1, t5, 3, t3, 4);
    t2 = (t0 + 1104);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 8);
    xsi_set_current_line(198, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng21)));
    memset(t4, 0, 8);
    t7 = (t5 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t6);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB142;

LAB141:    if (t18 != 0)
        goto LAB143;

LAB144:    t22 = (t4 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB145;

LAB146:
LAB147:    xsi_set_current_line(194, ng0);
    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng13)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t7 = (t0 + 1196);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 32);
    goto LAB136;

LAB142:    *((unsigned int *)t4) = 1;
    goto LAB144;

LAB143:    t21 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB144;

LAB145:    xsi_set_current_line(198, ng0);

LAB148:    xsi_set_current_line(199, ng0);
    t28 = (t0 + 1012);
    t29 = (t28 + 36U);
    t30 = *((char **)t29);
    t32 = (t0 + 1104);
    t33 = (t32 + 36U);
    t34 = *((char **)t33);
    xsi_vlogfile_write(1, 0, 0, ng5, 3, t0, (char)118, t30, 12, (char)118, t34, 8);
    goto LAB147;

LAB150:    xsi_set_current_line(204, ng0);

LAB152:    xsi_set_current_line(205, ng0);
    t21 = (t0 + 1196);
    t22 = (t21 + 36U);
    t28 = *((char **)t22);
    t29 = (t0 + 1012);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 12);
    xsi_set_current_line(206, ng0);
    t2 = (t0 + 2264);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB153;
    goto LAB1;

LAB153:    xsi_set_current_line(207, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = (t0 + 692U);
    t5 = *((char **)t2);
    t2 = (t0 + 600U);
    t6 = *((char **)t2);
    xsi_vlogtype_concat(t4, 8, 8, 3U, t6, 1, t5, 3, t3, 4);
    t2 = (t0 + 1104);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 8);
    xsi_set_current_line(208, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng23)));
    memset(t4, 0, 8);
    t7 = (t5 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t6);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB155;

LAB154:    if (t18 != 0)
        goto LAB156;

LAB157:    t22 = (t4 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB158;

LAB159:
LAB160:    xsi_set_current_line(204, ng0);
    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng13)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t7 = (t0 + 1196);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 32);
    goto LAB149;

LAB155:    *((unsigned int *)t4) = 1;
    goto LAB157;

LAB156:    t21 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB157;

LAB158:    xsi_set_current_line(208, ng0);

LAB161:    xsi_set_current_line(209, ng0);
    t28 = (t0 + 1012);
    t29 = (t28 + 36U);
    t30 = *((char **)t29);
    t32 = (t0 + 1104);
    t33 = (t32 + 36U);
    t34 = *((char **)t33);
    xsi_vlogfile_write(1, 0, 0, ng5, 3, t0, (char)118, t30, 12, (char)118, t34, 8);
    goto LAB160;

LAB163:    xsi_set_current_line(222, ng0);

LAB165:    xsi_set_current_line(223, ng0);
    t22 = (t0 + 1196);
    t28 = (t22 + 36U);
    t29 = *((char **)t28);
    t30 = (t0 + 1012);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 12);
    xsi_set_current_line(224, ng0);
    t2 = (t0 + 2264);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB166;
    goto LAB1;

LAB166:    xsi_set_current_line(225, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = (t0 + 692U);
    t5 = *((char **)t2);
    t2 = (t0 + 600U);
    t6 = *((char **)t2);
    xsi_vlogtype_concat(t4, 8, 8, 3U, t6, 1, t5, 3, t3, 4);
    t2 = (t0 + 1104);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 8);
    xsi_set_current_line(226, ng0);
    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 1656);
    t7 = (t6 + 36U);
    t8 = *((char **)t7);
    memset(t4, 0, 8);
    xsi_vlog_signed_equal(t4, 32, t5, 32, t8, 32);
    t21 = (t4 + 4);
    t9 = *((unsigned int *)t21);
    t10 = (~(t9));
    t11 = *((unsigned int *)t4);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB167;

LAB168:
LAB169:    xsi_set_current_line(240, ng0);
    t2 = (t0 + 1656);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 1196);
    t7 = (t6 + 36U);
    t8 = *((char **)t7);
    memset(t4, 0, 8);
    xsi_vlog_signed_minus(t4, 32, t5, 32, t8, 32);
    t21 = (t0 + 1196);
    t22 = (t21 + 36U);
    t28 = *((char **)t22);
    t29 = (t0 + 1564);
    t30 = (t29 + 36U);
    t32 = *((char **)t30);
    memset(t31, 0, 8);
    xsi_vlog_signed_minus(t31, 32, t28, 32, t32, 32);
    memset(t36, 0, 8);
    xsi_vlog_signed_leq(t36, 32, t4, 32, t31, 32);
    t33 = (t36 + 4);
    t9 = *((unsigned int *)t33);
    t10 = (~(t9));
    t11 = *((unsigned int *)t36);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB181;

LAB182:    xsi_set_current_line(243, ng0);

LAB185:    xsi_set_current_line(244, ng0);
    t2 = (t0 + 1288);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 1472);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 8);

LAB183:    xsi_set_current_line(246, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 1472);
    t7 = (t6 + 36U);
    t8 = *((char **)t7);
    memset(t4, 0, 8);
    t21 = (t5 + 4);
    t22 = (t8 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t8);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t21);
    t13 = *((unsigned int *)t22);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t21);
    t17 = *((unsigned int *)t22);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB187;

LAB186:    if (t18 != 0)
        goto LAB188;

LAB189:    t29 = (t4 + 4);
    t23 = *((unsigned int *)t29);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB190;

LAB191:
LAB192:    xsi_set_current_line(222, ng0);
    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng13)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t7 = (t0 + 1196);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 32);
    goto LAB162;

LAB167:    xsi_set_current_line(226, ng0);

LAB170:    xsi_set_current_line(227, ng0);
    t22 = (t0 + 1656);
    t28 = (t22 + 36U);
    t29 = *((char **)t28);
    t30 = (t0 + 1564);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 32);
    xsi_set_current_line(228, ng0);
    t2 = (t0 + 1380);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 1288);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 8);
    xsi_set_current_line(229, ng0);
    t2 = (t0 + 1288);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng13)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t5, 8, t6, 32);
    t7 = (t0 + 1380);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 8);
    xsi_set_current_line(230, ng0);
    t2 = (t0 + 1380);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 4);
    *((unsigned int *)t4) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 4);
    *((unsigned int *)t6) = t12;
    t13 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t13 & 7U);
    t14 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t14 & 7U);
    t8 = (t0 + 1748);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 4);
    xsi_set_current_line(231, ng0);
    t2 = (t0 + 1380);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 0);
    *((unsigned int *)t4) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 0);
    *((unsigned int *)t6) = t12;
    t13 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t13 & 15U);
    t14 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t14 & 15U);
    t8 = (t0 + 1840);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 5);
    xsi_set_current_line(232, ng0);
    t2 = (t0 + 1840);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng1)));
    memset(t4, 0, 8);
    t7 = (t5 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t6);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB174;

LAB171:    if (t18 != 0)
        goto LAB173;

LAB172:    *((unsigned int *)t4) = 1;

LAB174:    t22 = (t4 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB175;

LAB176:
LAB177:    xsi_set_current_line(236, ng0);
    t2 = ((char*)((ng24)));
    t3 = (t0 + 1748);
    t5 = (t3 + 36U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    xsi_vlog_unsigned_power(t4, 32, t2, 32, t6, 4, 0);
    t7 = (t0 + 1840);
    t8 = (t7 + 36U);
    t21 = *((char **)t8);
    memset(t31, 0, 8);
    xsi_vlog_unsigned_multiply(t31, 32, t4, 32, t21, 5);
    t22 = (t0 + 1656);
    xsi_vlogvar_assign_value(t22, t31, 0, 0, 32);
    goto LAB169;

LAB173:    t21 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB174;

LAB175:    xsi_set_current_line(232, ng0);

LAB178:    xsi_set_current_line(233, ng0);
    t28 = ((char*)((ng17)));
    t29 = (t0 + 1840);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 5);
    xsi_set_current_line(234, ng0);
    t2 = (t0 + 1840);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 1380);
    t7 = (t0 + 1380);
    t8 = (t7 + 44U);
    t21 = *((char **)t8);
    t22 = ((char*)((ng28)));
    t28 = ((char*)((ng1)));
    xsi_vlog_convert_partindices(t4, t31, t36, ((int*)(t21)), 2, t22, 32, 1, t28, 32, 1);
    t29 = (t4 + 4);
    t9 = *((unsigned int *)t29);
    t39 = (!(t9));
    t30 = (t31 + 4);
    t10 = *((unsigned int *)t30);
    t40 = (!(t10));
    t41 = (t39 && t40);
    t32 = (t36 + 4);
    t11 = *((unsigned int *)t32);
    t42 = (!(t11));
    t43 = (t41 && t42);
    if (t43 == 1)
        goto LAB179;

LAB180:    goto LAB177;

LAB179:    t12 = *((unsigned int *)t36);
    t44 = (t12 + 0);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t31);
    t45 = (t13 - t14);
    t46 = (t45 + 1);
    xsi_vlogvar_assign_value(t6, t5, t44, *((unsigned int *)t31), t46);
    goto LAB180;

LAB181:    xsi_set_current_line(240, ng0);

LAB184:    xsi_set_current_line(241, ng0);
    t34 = (t0 + 1380);
    t35 = (t34 + 36U);
    t47 = *((char **)t35);
    t48 = (t0 + 1472);
    xsi_vlogvar_assign_value(t48, t47, 0, 0, 8);
    goto LAB183;

LAB187:    *((unsigned int *)t4) = 1;
    goto LAB189;

LAB188:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB189;

LAB190:    xsi_set_current_line(246, ng0);

LAB193:    xsi_set_current_line(247, ng0);
    t30 = (t0 + 1012);
    t32 = (t30 + 36U);
    t33 = *((char **)t32);
    t34 = (t0 + 1104);
    t35 = (t34 + 36U);
    t47 = *((char **)t35);
    t48 = (t0 + 1564);
    t49 = (t48 + 36U);
    t50 = *((char **)t49);
    t51 = (t0 + 1196);
    t52 = (t51 + 36U);
    t53 = *((char **)t52);
    xsi_vlogfile_write(1, 0, 0, ng29, 5, t0, (char)118, t33, 12, (char)118, t47, 8, (char)119, t50, 32, (char)119, t53, 32);
    goto LAB192;

LAB195:    xsi_set_current_line(257, ng0);

LAB197:    xsi_set_current_line(258, ng0);
    t28 = (t0 + 1196);
    t29 = (t28 + 36U);
    t30 = *((char **)t29);
    t32 = (t0 + 1012);
    xsi_vlogvar_assign_value(t32, t30, 0, 0, 12);
    xsi_set_current_line(259, ng0);
    t2 = (t0 + 2264);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB198;
    goto LAB1;

LAB198:    xsi_set_current_line(260, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = (t0 + 692U);
    t5 = *((char **)t2);
    t2 = (t0 + 600U);
    t6 = *((char **)t2);
    xsi_vlogtype_concat(t4, 8, 8, 3U, t6, 1, t5, 3, t3, 4);
    t2 = (t0 + 1104);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 8);
    xsi_set_current_line(261, ng0);
    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 1656);
    t7 = (t6 + 36U);
    t8 = *((char **)t7);
    memset(t4, 0, 8);
    xsi_vlog_signed_equal(t4, 32, t5, 32, t8, 32);
    t21 = (t4 + 4);
    t9 = *((unsigned int *)t21);
    t10 = (~(t9));
    t11 = *((unsigned int *)t4);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB199;

LAB200:
LAB201:    xsi_set_current_line(275, ng0);
    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 1656);
    t7 = (t6 + 36U);
    t8 = *((char **)t7);
    memset(t4, 0, 8);
    xsi_vlog_signed_minus(t4, 32, t5, 32, t8, 32);
    t21 = (t0 + 1564);
    t22 = (t21 + 36U);
    t28 = *((char **)t22);
    t29 = (t0 + 1196);
    t30 = (t29 + 36U);
    t32 = *((char **)t30);
    memset(t31, 0, 8);
    xsi_vlog_signed_minus(t31, 32, t28, 32, t32, 32);
    memset(t36, 0, 8);
    xsi_vlog_signed_leq(t36, 32, t4, 32, t31, 32);
    t33 = (t36 + 4);
    t9 = *((unsigned int *)t33);
    t10 = (~(t9));
    t11 = *((unsigned int *)t36);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB213;

LAB214:    xsi_set_current_line(278, ng0);

LAB217:    xsi_set_current_line(279, ng0);
    t2 = (t0 + 1288);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 1472);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 8);

LAB215:    xsi_set_current_line(281, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 1472);
    t7 = (t6 + 36U);
    t8 = *((char **)t7);
    memset(t4, 0, 8);
    t21 = (t5 + 4);
    t22 = (t8 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t8);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t21);
    t13 = *((unsigned int *)t22);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t21);
    t17 = *((unsigned int *)t22);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB219;

LAB218:    if (t18 != 0)
        goto LAB220;

LAB221:    t29 = (t4 + 4);
    t23 = *((unsigned int *)t29);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB222;

LAB223:
LAB224:    xsi_set_current_line(257, ng0);
    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng13)));
    memset(t4, 0, 8);
    xsi_vlog_signed_minus(t4, 32, t5, 32, t6, 32);
    t7 = (t0 + 1196);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 32);
    goto LAB194;

LAB199:    xsi_set_current_line(261, ng0);

LAB202:    xsi_set_current_line(262, ng0);
    t22 = (t0 + 1656);
    t28 = (t22 + 36U);
    t29 = *((char **)t28);
    t30 = (t0 + 1564);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 32);
    xsi_set_current_line(263, ng0);
    t2 = (t0 + 1380);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 1288);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 8);
    xsi_set_current_line(264, ng0);
    t2 = (t0 + 1288);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng13)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t5, 8, t6, 32);
    t7 = (t0 + 1380);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 8);
    xsi_set_current_line(265, ng0);
    t2 = (t0 + 1380);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 4);
    *((unsigned int *)t4) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 4);
    *((unsigned int *)t6) = t12;
    t13 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t13 & 7U);
    t14 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t14 & 7U);
    t8 = (t0 + 1748);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 4);
    xsi_set_current_line(266, ng0);
    t2 = (t0 + 1380);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 0);
    *((unsigned int *)t4) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 0);
    *((unsigned int *)t6) = t12;
    t13 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t13 & 15U);
    t14 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t14 & 15U);
    t8 = (t0 + 1840);
    xsi_vlogvar_assign_value(t8, t4, 0, 0, 5);
    xsi_set_current_line(267, ng0);
    t2 = (t0 + 1840);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng1)));
    memset(t4, 0, 8);
    t7 = (t5 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t6);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB206;

LAB203:    if (t18 != 0)
        goto LAB205;

LAB204:    *((unsigned int *)t4) = 1;

LAB206:    t22 = (t4 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB207;

LAB208:
LAB209:    xsi_set_current_line(271, ng0);
    t2 = ((char*)((ng13)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_unary_minus(t4, 32, t2, 32);
    t3 = ((char*)((ng24)));
    t5 = (t0 + 1748);
    t6 = (t5 + 36U);
    t7 = *((char **)t6);
    memset(t31, 0, 8);
    xsi_vlog_unsigned_power(t31, 32, t3, 32, t7, 4, 0);
    memset(t36, 0, 8);
    xsi_vlog_unsigned_multiply(t36, 32, t4, 32, t31, 32);
    t8 = (t0 + 1840);
    t21 = (t8 + 36U);
    t22 = *((char **)t21);
    memset(t37, 0, 8);
    xsi_vlog_unsigned_multiply(t37, 32, t36, 32, t22, 5);
    t28 = (t0 + 1656);
    xsi_vlogvar_assign_value(t28, t37, 0, 0, 32);
    goto LAB201;

LAB205:    t21 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB206;

LAB207:    xsi_set_current_line(267, ng0);

LAB210:    xsi_set_current_line(268, ng0);
    t28 = ((char*)((ng17)));
    t29 = (t0 + 1840);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 5);
    xsi_set_current_line(269, ng0);
    t2 = (t0 + 1840);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 1380);
    t7 = (t0 + 1380);
    t8 = (t7 + 44U);
    t21 = *((char **)t8);
    t22 = ((char*)((ng28)));
    t28 = ((char*)((ng1)));
    xsi_vlog_convert_partindices(t4, t31, t36, ((int*)(t21)), 2, t22, 32, 1, t28, 32, 1);
    t29 = (t4 + 4);
    t9 = *((unsigned int *)t29);
    t39 = (!(t9));
    t30 = (t31 + 4);
    t10 = *((unsigned int *)t30);
    t40 = (!(t10));
    t41 = (t39 && t40);
    t32 = (t36 + 4);
    t11 = *((unsigned int *)t32);
    t42 = (!(t11));
    t43 = (t41 && t42);
    if (t43 == 1)
        goto LAB211;

LAB212:    goto LAB209;

LAB211:    t12 = *((unsigned int *)t36);
    t44 = (t12 + 0);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t31);
    t45 = (t13 - t14);
    t46 = (t45 + 1);
    xsi_vlogvar_assign_value(t6, t5, t44, *((unsigned int *)t31), t46);
    goto LAB212;

LAB213:    xsi_set_current_line(275, ng0);

LAB216:    xsi_set_current_line(276, ng0);
    t34 = (t0 + 1380);
    t35 = (t34 + 36U);
    t47 = *((char **)t35);
    t48 = (t0 + 1472);
    xsi_vlogvar_assign_value(t48, t47, 0, 0, 8);
    goto LAB215;

LAB219:    *((unsigned int *)t4) = 1;
    goto LAB221;

LAB220:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB221;

LAB222:    xsi_set_current_line(281, ng0);

LAB225:    xsi_set_current_line(282, ng0);
    t30 = (t0 + 1012);
    t32 = (t30 + 36U);
    t33 = *((char **)t32);
    t34 = (t0 + 1104);
    t35 = (t34 + 36U);
    t47 = *((char **)t35);
    t48 = (t0 + 1564);
    t49 = (t48 + 36U);
    t50 = *((char **)t49);
    t51 = (t0 + 1196);
    t52 = (t51 + 36U);
    t53 = *((char **)t52);
    t54 = (t0 + 1472);
    t55 = (t54 + 36U);
    t56 = *((char **)t55);
    xsi_vlogfile_write(1, 0, 0, ng31, 6, t0, (char)118, t33, 12, (char)118, t47, 8, (char)119, t50, 32, (char)119, t53, 32, (char)118, t56, 8);
    goto LAB224;

}


extern void work_m_00000000002147463769_3671711236_init()
{
	static char *pe[] = {(void *)Initial_55_0};
	xsi_register_didat("work_m_00000000002147463769_3671711236", "isim/tb_isim_beh.exe.sim/work/m_00000000002147463769_3671711236.didat");
	xsi_register_executes(pe);
}
