Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D15B850692E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Apr 2022 12:55:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B98D7402E3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Apr 2022 10:55:56 +0000 (UTC)
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by lists.linaro.org (Postfix) with ESMTPS id 9B6D13EC38
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Apr 2022 10:55:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1650365751; x=1681901751;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=gnCLH4lm2+rH4RGr2p3YES7i2mqlnp69sILQ57gm7V8=;
  b=JCJBeZ0fx57EbMZNicw+aQBfyhfuo9FRlTei5tZLJtBO26ZkocDywS73
   DMKWQ9EnX+oOeIdVS+1ZyKvKDzMHopCAI2YzwFI+JSerFSakTMD+QrdaJ
   UXL2pDy2NO3RqmmNOqsMBJ7Q4R1Y1X0m6qVzvSSURJ9+hi0UJHN73zBsm
   vodEr8Il0sWyHfmXZcdhSLci9m/SKCGvsSGNzOjQoBQQBpYM5LDwapRlB
   K4dNmCTQHmrfIZd5k/Sy3fojzKuytNOOn2rhg6Ip/QVJbSerZeBeK9678
   f2IRC8WU+CVRDrJWY7hvftXy4B4i1kRz4YcExyaKbAJESLJrlJvsaw7fN
   g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10321"; a="263495778"
X-IronPort-AV: E=Sophos;i="5.90,272,1643702400";
   d="scan'208";a="263495778"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Apr 2022 03:55:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,272,1643702400";
   d="scan'208";a="613956926"
Received: from lkp-server01.sh.intel.com (HELO 3abc53900bec) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 19 Apr 2022 03:55:48 -0700
Received: from kbuild by 3abc53900bec with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1nglWN-0005gE-Uv;
	Tue, 19 Apr 2022 10:55:47 +0000
Date: Tue, 19 Apr 2022 18:54:55 +0800
From: kernel test robot <lkp@intel.com>
To: Andrew Morton <akpm@linux-foundation.org>
Message-ID: <625e94ff.voZpnIYfkSSS0rno%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: TZMBXQOBJFKLGLL3TRLGHLE67LUVPIG6
X-Message-ID-Hash: TZMBXQOBJFKLGLL3TRLGHLE67LUVPIG6
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, Linux Memory Management List <linux-mm@kvack.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [linux-next:pending-fixes] BUILD REGRESSION 4604e2bc18b6af1d84e18b4da451fac9bf70f952
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TZMBXQOBJFKLGLL3TRLGHLE67LUVPIG6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git pending-fixes
branch HEAD: 4604e2bc18b6af1d84e18b4da451fac9bf70f952  Merge branch 'for-linux-next-fixes' of git://anongit.freedesktop.org/drm/drm-misc

Unverified Error/Warning (likely false positive, please contact us if interested):

drivers/dma-buf/st-dma-fence-unwrap.c:261:1: internal compiler error: Segmentation fault

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
`-- riscv-randconfig-r042-20220417
    `-- drivers-dma-buf-st-dma-fence-unwrap.c:internal-compiler-error:Segmentation-fault

elapsed time: 722m

configs tested: 142
configs skipped: 3

gcc tested configs:
arm                                 defconfig
arm                              allmodconfig
arm                              allyesconfig
arm64                               defconfig
arm64                            allyesconfig
i386                          randconfig-c001
mips                 randconfig-c004-20220418
i386                 randconfig-c001-20220418
parisc                           allyesconfig
alpha                            allyesconfig
nios2                            allyesconfig
arc                              allyesconfig
h8300                       h8s-sim_defconfig
m68k                       m5208evb_defconfig
mips                     decstation_defconfig
m68k                       m5475evb_defconfig
arm                          exynos_defconfig
powerpc                      ep88xc_defconfig
sh                               alldefconfig
xtensa                generic_kc705_defconfig
sh                        sh7785lcr_defconfig
sh                        edosk7705_defconfig
arm                         vf610m4_defconfig
m68k                          hp300_defconfig
sh                   secureedge5410_defconfig
sh                               j2_defconfig
sh                            hp6xx_defconfig
arm                         nhk8815_defconfig
m68k                          amiga_defconfig
mips                       capcella_defconfig
powerpc                 mpc8540_ads_defconfig
ia64                          tiger_defconfig
sh                 kfr2r09-romimage_defconfig
powerpc                     ep8248e_defconfig
powerpc                         wii_defconfig
powerpc                      ppc40x_defconfig
ia64                             alldefconfig
powerpc                       maple_defconfig
riscv                               defconfig
h8300                               defconfig
m68k                        stmark2_defconfig
arm                          badge4_defconfig
mips                       bmips_be_defconfig
sh                          urquell_defconfig
arm                  randconfig-c002-20220418
x86_64               randconfig-c001-20220418
x86_64                        randconfig-c001
arm                  randconfig-c002-20220419
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
nios2                               defconfig
csky                                defconfig
alpha                               defconfig
arc                                 defconfig
sh                               allmodconfig
h8300                            allyesconfig
xtensa                           allyesconfig
parisc                              defconfig
parisc64                            defconfig
s390                             allmodconfig
s390                                defconfig
s390                             allyesconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
i386                 randconfig-a002-20220418
i386                 randconfig-a004-20220418
i386                 randconfig-a001-20220418
i386                 randconfig-a006-20220418
i386                 randconfig-a005-20220418
i386                 randconfig-a003-20220418
x86_64               randconfig-a003-20220418
x86_64               randconfig-a004-20220418
x86_64               randconfig-a006-20220418
x86_64               randconfig-a001-20220418
x86_64               randconfig-a002-20220418
x86_64               randconfig-a005-20220418
arc                  randconfig-r043-20220418
arc                  randconfig-r043-20220417
s390                 randconfig-r044-20220417
riscv                randconfig-r042-20220417
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                          rv32_defconfig
riscv                            allyesconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                                  kexec
x86_64                          rhel-8.3-func
x86_64                               rhel-8.3
x86_64                         rhel-8.3-kunit

clang tested configs:
arm                  randconfig-c002-20220419
powerpc              randconfig-c003-20220419
x86_64                        randconfig-c007
mips                 randconfig-c004-20220419
i386                          randconfig-c001
s390                 randconfig-c005-20220419
riscv                randconfig-c006-20220419
arm                           spitz_defconfig
mips                            e55_defconfig
mips                   sb1250_swarm_defconfig
powerpc               mpc834x_itxgp_defconfig
mips                         tb0219_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64               randconfig-a012-20220418
x86_64               randconfig-a013-20220418
x86_64               randconfig-a011-20220418
x86_64               randconfig-a015-20220418
x86_64               randconfig-a016-20220418
x86_64               randconfig-a014-20220418
i386                 randconfig-a011-20220418
i386                 randconfig-a015-20220418
i386                 randconfig-a016-20220418
i386                 randconfig-a012-20220418
i386                 randconfig-a013-20220418
i386                 randconfig-a014-20220418
riscv                randconfig-r042-20220418
hexagon              randconfig-r041-20220417
hexagon              randconfig-r041-20220418
hexagon              randconfig-r045-20220417
s390                 randconfig-r044-20220418
hexagon              randconfig-r045-20220418

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
