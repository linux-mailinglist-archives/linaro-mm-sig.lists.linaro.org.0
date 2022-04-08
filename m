Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5E84F96C4
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  8 Apr 2022 15:35:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 252C4401BF
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  8 Apr 2022 13:35:34 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by lists.linaro.org (Postfix) with ESMTPS id 958A83EA28
	for <linaro-mm-sig@lists.linaro.org>; Fri,  8 Apr 2022 13:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1649424929; x=1680960929;
  h=date:from:to:cc:subject:message-id:mime-version:
   content-transfer-encoding;
  bh=8Jay/Ui0EC7xFbtFJoKbamhHuLeaHZ70pEoabfxqMVQ=;
  b=EPM5lBGHNCXyLHEkCucEaN641/LtQu/pVnZnWPXSpQN1E3dmYacxAwZn
   fofm68GM/OjDflKAuPqdF1eYqsN2xV8b3xOgTLNGlqeE/5+ARQrQC9klR
   ldpJ/Vg8y3j0qRDU+LKeZ5H/7TrFIwc4a8NXL9NO+PFFQySUXityzoFNO
   cSsoqsLyueG6UxWv844UBYE1Qs+VamcVItLQneGBSg1ugMfAo5wvj+IR+
   hEawJ6zQbv4XY4UpYlVGZO0nWcEvAnwITC6TpQUl2bm2fLzYY7u5UoEGD
   W7FZsHzxj9fBrIsV7kDTMKT7Mz0aEU5HcMln4kCDWVNtiNGADFVmrfOOp
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="261284050"
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400";
   d="scan'208";a="261284050"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Apr 2022 06:35:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400";
   d="scan'208";a="571490352"
Received: from lkp-server02.sh.intel.com (HELO 7e80bc2a00a0) ([10.239.97.151])
  by orsmga008.jf.intel.com with ESMTP; 08 Apr 2022 06:35:26 -0700
Received: from kbuild by 7e80bc2a00a0 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1ncolp-0000J5-QP;
	Fri, 08 Apr 2022 13:35:25 +0000
Date: Fri, 08 Apr 2022 21:35:14 +0800
From: kernel test robot <lkp@intel.com>
To: Andrew Morton <akpm@linux-foundation.org>
Message-ID: <62503a12.elUurkADGOBGC+Ma%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Message-ID-Hash: 3ZHZH2K7P44LPZEOR2Z6BR2FMHDAVIKQ
X-Message-ID-Hash: 3ZHZH2K7P44LPZEOR2Z6BR2FMHDAVIKQ
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, Linux Memory Management List <linux-mm@kvack.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [linux-next:pending-fixes] BUILD REGRESSION 02f3bd309a78c84c8e12ff44a3fd4de16d1180c3
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3ZHZH2K7P44LPZEOR2Z6BR2FMHDAVIKQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git pending-fixes
branch HEAD: 02f3bd309a78c84c8e12ff44a3fd4de16d1180c3  Merge branch 'for-linux-next-fixes' of git://anongit.freedesktop.org/drm/drm-misc

Unverified Error/Warning (likely false positive, please contact us if interested):

drivers/dma-buf/st-dma-fence-unwrap.c:261:1: internal compiler error: Segmentation fault

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
`-- riscv-randconfig-r042-20220406
    `-- drivers-dma-buf-st-dma-fence-unwrap.c:internal-compiler-error:Segmentation-fault

elapsed time: 726m

configs tested: 105
configs skipped: 3

gcc tested configs:
arm                              allyesconfig
arm                                 defconfig
arm64                               defconfig
arm                              allmodconfig
arm64                            allyesconfig
parisc                           allyesconfig
sh                               allmodconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                              allyesconfig
alpha                            allyesconfig
nios2                            allyesconfig
arm                      integrator_defconfig
powerpc                     taishan_defconfig
sh                          polaris_defconfig
sh                        dreamcast_defconfig
openrisc                    or1ksim_defconfig
sh                     sh7710voipgw_defconfig
arm                          gemini_defconfig
x86_64                           alldefconfig
ia64                        generic_defconfig
xtensa                           alldefconfig
sh                          sdk7780_defconfig
x86_64                        randconfig-c001
i386                          randconfig-c001
arm                  randconfig-c002-20220408
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nios2                               defconfig
alpha                               defconfig
csky                                defconfig
arc                                 defconfig
s390                                defconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
s390                             allyesconfig
sparc                               defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a006
x86_64                        randconfig-a004
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220408
riscv                randconfig-r042-20220408
s390                 randconfig-r044-20220408
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                          rhel-8.3-func
x86_64                               rhel-8.3
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests

clang tested configs:
powerpc                     mpc512x_defconfig
powerpc                   microwatt_defconfig
powerpc                    socrates_defconfig
arm                          pcm027_defconfig
riscv                             allnoconfig
arm                          collie_defconfig
powerpc                     powernv_defconfig
mips                           rs90_defconfig
arm                                 defconfig
arm                         socfpga_defconfig
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r045-20220408
hexagon              randconfig-r041-20220408

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
