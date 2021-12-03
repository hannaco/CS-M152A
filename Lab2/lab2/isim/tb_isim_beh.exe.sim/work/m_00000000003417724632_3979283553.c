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
static const char *ng0 = "E:/Lab2/lab2/floating_converter.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {11, 0};
static unsigned int ng4[] = {2047U, 0U};
static unsigned int ng5[] = {2047U, 1023U};
static unsigned int ng6[] = {1023U, 511U};
static int ng7[] = {2, 0};
static unsigned int ng8[] = {511U, 255U};
static int ng9[] = {3, 0};
static unsigned int ng10[] = {255U, 127U};
static int ng11[] = {4, 0};
static unsigned int ng12[] = {127U, 63U};
static int ng13[] = {5, 0};
static unsigned int ng14[] = {63U, 31U};
static int ng15[] = {6, 0};
static unsigned int ng16[] = {31U, 15U};
static int ng17[] = {7, 0};
static int ng18[] = {8, 0};
static unsigned int ng19[] = {15U, 0U};
static unsigned int ng20[] = {8U, 0U};



static void Always_31_0(char *t0)
{
    char t6[8];
    char t28[8];
    char t44[8];
    char t46[8];
    char t54[8];
    char t70[8];
    char t78[8];
    char t119[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
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
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    int t43;
    char *t45;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    unsigned int t52;
    char *t53;
    char *t55;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t69;
    char *t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    char *t82;
    char *t83;
    char *t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    char *t92;
    char *t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    char *t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    char *t115;
    char *t116;
    char *t117;
    char *t118;
    char *t120;
    char *t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    char *t134;
    char *t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    char *t141;
    char *t142;

LAB0:    t1 = (t0 + 1720U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1916);
    *((int *)t2) = 1;
    t3 = (t0 + 1748);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(31, ng0);

LAB5:    xsi_set_current_line(32, ng0);
    t4 = (t0 + 600U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t6 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 11);
    t10 = (t9 & 1);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 11);
    t13 = (t12 & 1);
    *((unsigned int *)t4) = t13;
    t14 = (t0 + 828);
    xsi_vlogvar_assign_value(t14, t6, 0, 0, 1);
    xsi_set_current_line(34, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 920);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(35, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(37, ng0);
    t2 = (t0 + 600U);
    t3 = *((char **)t2);
    t2 = (t0 + 1196);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 12);
    xsi_set_current_line(39, ng0);
    t2 = (t0 + 828);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t14 = (t5 + 4);
    t8 = *((unsigned int *)t4);
    t9 = *((unsigned int *)t5);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t7);
    t12 = *((unsigned int *)t14);
    t13 = (t11 ^ t12);
    t15 = (t10 | t13);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t14);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:
LAB12:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);

LAB24:    t5 = ((char*)((ng5)));
    t43 = xsi_vlog_unsigned_case_xcompare(t4, 12, t5, 12);
    if (t43 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng6)));
    t43 = xsi_vlog_unsigned_case_xcompare(t4, 12, t2, 12);
    if (t43 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng8)));
    t43 = xsi_vlog_unsigned_case_xcompare(t4, 12, t2, 12);
    if (t43 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng10)));
    t43 = xsi_vlog_unsigned_case_xcompare(t4, 12, t2, 12);
    if (t43 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng12)));
    t43 = xsi_vlog_unsigned_case_xcompare(t4, 12, t2, 12);
    if (t43 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng14)));
    t43 = xsi_vlog_unsigned_case_xcompare(t4, 12, t2, 12);
    if (t43 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng16)));
    t43 = xsi_vlog_unsigned_case_xcompare(t4, 12, t2, 12);
    if (t43 == 1)
        goto LAB37;

LAB38:
LAB40:
LAB39:    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 1104);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB41:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t7 = (t0 + 1104);
    t14 = (t7 + 36U);
    t21 = *((char **)t14);
    memset(t6, 0, 8);
    xsi_vlog_unsigned_lshift(t6, 12, t5, 12, t21, 32);
    t22 = (t0 + 1196);
    xsi_vlogvar_assign_value(t22, t6, 0, 0, 12);
    xsi_set_current_line(69, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 1104);
    t5 = (t3 + 36U);
    t7 = *((char **)t5);
    memset(t6, 0, 8);
    xsi_vlog_signed_minus(t6, 32, t2, 32, t7, 32);
    t14 = (t0 + 920);
    xsi_vlogvar_assign_value(t14, t6, 0, 0, 3);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t7 = (t0 + 1196);
    t14 = (t7 + 44U);
    t21 = *((char **)t14);
    t22 = ((char*)((ng17)));
    xsi_vlog_generic_get_index_select_value(t6, 32, t5, t21, 2, t22, 32, 1);
    t29 = ((char*)((ng2)));
    memset(t28, 0, 8);
    t30 = (t6 + 4);
    t31 = (t29 + 4);
    t8 = *((unsigned int *)t6);
    t9 = *((unsigned int *)t29);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t30);
    t12 = *((unsigned int *)t31);
    t13 = (t11 ^ t12);
    t15 = (t10 | t13);
    t16 = *((unsigned int *)t30);
    t17 = *((unsigned int *)t31);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB45;

LAB42:    if (t18 != 0)
        goto LAB44;

LAB43:    *((unsigned int *)t28) = 1;

LAB45:    memset(t44, 0, 8);
    t33 = (t28 + 4);
    t23 = *((unsigned int *)t33);
    t24 = (~(t23));
    t25 = *((unsigned int *)t28);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB46;

LAB47:    if (*((unsigned int *)t33) != 0)
        goto LAB48;

LAB49:    t45 = (t44 + 4);
    t34 = *((unsigned int *)t44);
    t35 = *((unsigned int *)t45);
    t36 = (t34 || t35);
    if (t36 > 0)
        goto LAB50;

LAB51:    memcpy(t78, t44, 8);

LAB52:    t109 = (t78 + 4);
    t110 = *((unsigned int *)t109);
    t111 = (~(t110));
    t112 = *((unsigned int *)t78);
    t113 = (t112 & t111);
    t114 = (t113 != 0);
    if (t114 > 0)
        goto LAB64;

LAB65:    xsi_set_current_line(81, ng0);

LAB77:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    memset(t6, 0, 8);
    t7 = (t6 + 4);
    t14 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 8);
    *((unsigned int *)t6) = t9;
    t10 = *((unsigned int *)t14);
    t11 = (t10 >> 8);
    *((unsigned int *)t7) = t11;
    t12 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t12 & 15U);
    t13 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t13 & 15U);
    t21 = (t0 + 1196);
    t22 = (t21 + 36U);
    t29 = *((char **)t22);
    t30 = (t0 + 1196);
    t31 = (t30 + 44U);
    t32 = *((char **)t31);
    t33 = ((char*)((ng17)));
    xsi_vlog_generic_get_index_select_value(t28, 4, t29, t32, 2, t33, 32, 1);
    memset(t44, 0, 8);
    xsi_vlog_unsigned_add(t44, 4, t6, 4, t28, 4);
    t42 = (t0 + 1012);
    xsi_vlogvar_assign_value(t42, t44, 0, 0, 4);

LAB66:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(39, ng0);

LAB13:    xsi_set_current_line(40, ng0);
    t29 = (t0 + 1196);
    t30 = (t29 + 36U);
    t31 = *((char **)t30);
    memset(t28, 0, 8);
    t32 = (t28 + 4);
    t33 = (t31 + 4);
    t34 = *((unsigned int *)t31);
    t35 = (~(t34));
    *((unsigned int *)t28) = t35;
    *((unsigned int *)t32) = 0;
    if (*((unsigned int *)t33) != 0)
        goto LAB15;

LAB14:    t40 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t40 & 4095U);
    t41 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t41 & 4095U);
    t42 = (t0 + 1196);
    xsi_vlogvar_assign_value(t42, t28, 0, 0, 12);
    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t4, 12, t5, 32);
    t7 = (t0 + 1196);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 12);
    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 1196);
    t7 = (t5 + 44U);
    t14 = *((char **)t7);
    t21 = ((char*)((ng3)));
    xsi_vlog_generic_get_index_select_value(t6, 32, t4, t14, 2, t21, 32, 1);
    t22 = ((char*)((ng2)));
    memset(t28, 0, 8);
    t29 = (t6 + 4);
    t30 = (t22 + 4);
    t8 = *((unsigned int *)t6);
    t9 = *((unsigned int *)t22);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t29);
    t12 = *((unsigned int *)t30);
    t13 = (t11 ^ t12);
    t15 = (t10 | t13);
    t16 = *((unsigned int *)t29);
    t17 = *((unsigned int *)t30);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB19;

LAB16:    if (t18 != 0)
        goto LAB18;

LAB17:    *((unsigned int *)t28) = 1;

LAB19:    t32 = (t28 + 4);
    t23 = *((unsigned int *)t32);
    t24 = (~(t23));
    t25 = *((unsigned int *)t28);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB20;

LAB21:
LAB22:    goto LAB12;

LAB15:    t36 = *((unsigned int *)t28);
    t37 = *((unsigned int *)t33);
    *((unsigned int *)t28) = (t36 | t37);
    t38 = *((unsigned int *)t32);
    t39 = *((unsigned int *)t33);
    *((unsigned int *)t32) = (t38 | t39);
    goto LAB14;

LAB18:    t31 = (t28 + 4);
    *((unsigned int *)t28) = 1;
    *((unsigned int *)t31) = 1;
    goto LAB19;

LAB20:    xsi_set_current_line(42, ng0);

LAB23:    xsi_set_current_line(43, ng0);
    t33 = ((char*)((ng4)));
    t42 = (t0 + 1196);
    xsi_vlogvar_assign_value(t42, t33, 0, 0, 12);
    goto LAB22;

LAB25:    xsi_set_current_line(50, ng0);
    t7 = ((char*)((ng2)));
    t14 = (t0 + 1104);
    xsi_vlogvar_assign_value(t14, t7, 0, 0, 32);
    goto LAB41;

LAB27:    xsi_set_current_line(52, ng0);
    t3 = ((char*)((ng7)));
    t5 = (t0 + 1104);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 32);
    goto LAB41;

LAB29:    xsi_set_current_line(54, ng0);
    t3 = ((char*)((ng9)));
    t5 = (t0 + 1104);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 32);
    goto LAB41;

LAB31:    xsi_set_current_line(56, ng0);
    t3 = ((char*)((ng11)));
    t5 = (t0 + 1104);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 32);
    goto LAB41;

LAB33:    xsi_set_current_line(58, ng0);
    t3 = ((char*)((ng13)));
    t5 = (t0 + 1104);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 32);
    goto LAB41;

LAB35:    xsi_set_current_line(60, ng0);
    t3 = ((char*)((ng15)));
    t5 = (t0 + 1104);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 32);
    goto LAB41;

LAB37:    xsi_set_current_line(62, ng0);
    t3 = ((char*)((ng17)));
    t5 = (t0 + 1104);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 32);
    goto LAB41;

LAB44:    t32 = (t28 + 4);
    *((unsigned int *)t28) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB45;

LAB46:    *((unsigned int *)t44) = 1;
    goto LAB49;

LAB48:    t42 = (t44 + 4);
    *((unsigned int *)t44) = 1;
    *((unsigned int *)t42) = 1;
    goto LAB49;

LAB50:    t47 = (t0 + 1196);
    t48 = (t47 + 36U);
    t49 = *((char **)t48);
    memset(t46, 0, 8);
    t50 = (t46 + 4);
    t51 = (t49 + 4);
    t37 = *((unsigned int *)t49);
    t38 = (t37 >> 8);
    *((unsigned int *)t46) = t38;
    t39 = *((unsigned int *)t51);
    t40 = (t39 >> 8);
    *((unsigned int *)t50) = t40;
    t41 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t41 & 15U);
    t52 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t52 & 15U);
    t53 = ((char*)((ng19)));
    memset(t54, 0, 8);
    t55 = (t46 + 4);
    t56 = (t53 + 4);
    t57 = *((unsigned int *)t46);
    t58 = *((unsigned int *)t53);
    t59 = (t57 ^ t58);
    t60 = *((unsigned int *)t55);
    t61 = *((unsigned int *)t56);
    t62 = (t60 ^ t61);
    t63 = (t59 | t62);
    t64 = *((unsigned int *)t55);
    t65 = *((unsigned int *)t56);
    t66 = (t64 | t65);
    t67 = (~(t66));
    t68 = (t63 & t67);
    if (t68 != 0)
        goto LAB56;

LAB53:    if (t66 != 0)
        goto LAB55;

LAB54:    *((unsigned int *)t54) = 1;

LAB56:    memset(t70, 0, 8);
    t71 = (t54 + 4);
    t72 = *((unsigned int *)t71);
    t73 = (~(t72));
    t74 = *((unsigned int *)t54);
    t75 = (t74 & t73);
    t76 = (t75 & 1U);
    if (t76 != 0)
        goto LAB57;

LAB58:    if (*((unsigned int *)t71) != 0)
        goto LAB59;

LAB60:    t79 = *((unsigned int *)t44);
    t80 = *((unsigned int *)t70);
    t81 = (t79 & t80);
    *((unsigned int *)t78) = t81;
    t82 = (t44 + 4);
    t83 = (t70 + 4);
    t84 = (t78 + 4);
    t85 = *((unsigned int *)t82);
    t86 = *((unsigned int *)t83);
    t87 = (t85 | t86);
    *((unsigned int *)t84) = t87;
    t88 = *((unsigned int *)t84);
    t89 = (t88 != 0);
    if (t89 == 1)
        goto LAB61;

LAB62:
LAB63:    goto LAB52;

LAB55:    t69 = (t54 + 4);
    *((unsigned int *)t54) = 1;
    *((unsigned int *)t69) = 1;
    goto LAB56;

LAB57:    *((unsigned int *)t70) = 1;
    goto LAB60;

LAB59:    t77 = (t70 + 4);
    *((unsigned int *)t70) = 1;
    *((unsigned int *)t77) = 1;
    goto LAB60;

LAB61:    t90 = *((unsigned int *)t78);
    t91 = *((unsigned int *)t84);
    *((unsigned int *)t78) = (t90 | t91);
    t92 = (t44 + 4);
    t93 = (t70 + 4);
    t94 = *((unsigned int *)t44);
    t95 = (~(t94));
    t96 = *((unsigned int *)t92);
    t97 = (~(t96));
    t98 = *((unsigned int *)t70);
    t99 = (~(t98));
    t100 = *((unsigned int *)t93);
    t101 = (~(t100));
    t43 = (t95 & t97);
    t102 = (t99 & t101);
    t103 = (~(t43));
    t104 = (~(t102));
    t105 = *((unsigned int *)t84);
    *((unsigned int *)t84) = (t105 & t103);
    t106 = *((unsigned int *)t84);
    *((unsigned int *)t84) = (t106 & t104);
    t107 = *((unsigned int *)t78);
    *((unsigned int *)t78) = (t107 & t103);
    t108 = *((unsigned int *)t78);
    *((unsigned int *)t78) = (t108 & t104);
    goto LAB63;

LAB64:    xsi_set_current_line(72, ng0);

LAB67:    xsi_set_current_line(73, ng0);
    t115 = (t0 + 920);
    t116 = (t115 + 36U);
    t117 = *((char **)t116);
    t118 = ((char*)((ng17)));
    memset(t119, 0, 8);
    t120 = (t117 + 4);
    t121 = (t118 + 4);
    t122 = *((unsigned int *)t117);
    t123 = *((unsigned int *)t118);
    t124 = (t122 ^ t123);
    t125 = *((unsigned int *)t120);
    t126 = *((unsigned int *)t121);
    t127 = (t125 ^ t126);
    t128 = (t124 | t127);
    t129 = *((unsigned int *)t120);
    t130 = *((unsigned int *)t121);
    t131 = (t129 | t130);
    t132 = (~(t131));
    t133 = (t128 & t132);
    if (t133 != 0)
        goto LAB69;

LAB68:    if (t131 != 0)
        goto LAB70;

LAB71:    t135 = (t119 + 4);
    t136 = *((unsigned int *)t135);
    t137 = (~(t136));
    t138 = *((unsigned int *)t119);
    t139 = (t138 & t137);
    t140 = (t139 != 0);
    if (t140 > 0)
        goto LAB72;

LAB73:    xsi_set_current_line(77, ng0);

LAB76:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    memset(t6, 0, 8);
    t7 = (t6 + 4);
    t14 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 8);
    *((unsigned int *)t6) = t9;
    t10 = *((unsigned int *)t14);
    t11 = (t10 >> 8);
    *((unsigned int *)t7) = t11;
    t12 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t12 & 15U);
    t13 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t13 & 15U);
    t21 = (t0 + 1012);
    xsi_vlogvar_assign_value(t21, t6, 0, 0, 4);

LAB74:    goto LAB66;

LAB69:    *((unsigned int *)t119) = 1;
    goto LAB71;

LAB70:    t134 = (t119 + 4);
    *((unsigned int *)t119) = 1;
    *((unsigned int *)t134) = 1;
    goto LAB71;

LAB72:    xsi_set_current_line(73, ng0);

LAB75:    xsi_set_current_line(74, ng0);
    t141 = ((char*)((ng20)));
    t142 = (t0 + 1012);
    xsi_vlogvar_assign_value(t142, t141, 0, 0, 4);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 920);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t7 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t5, 3, t7, 32);
    t14 = (t0 + 920);
    xsi_vlogvar_assign_value(t14, t6, 0, 0, 3);
    goto LAB74;

}


extern void work_m_00000000003417724632_3979283553_init()
{
	static char *pe[] = {(void *)Always_31_0};
	xsi_register_didat("work_m_00000000003417724632_3979283553", "isim/tb_isim_beh.exe.sim/work/m_00000000003417724632_3979283553.didat");
	xsi_register_executes(pe);
}
