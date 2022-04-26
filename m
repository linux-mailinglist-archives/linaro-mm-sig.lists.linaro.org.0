Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EA550FBE5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Apr 2022 13:24:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8A67B4800B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Apr 2022 11:24:11 +0000 (UTC)
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by lists.linaro.org (Postfix) with ESMTPS id C4E6946570
	for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Apr 2022 11:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1650972246; x=1682508246;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=T7i7L2KegkqO2tC7i2wJS6jE33RflZWgdhR+pL1K13o=;
  b=YcD8EJH0Wm7nWv7+FMWxIITlii+8MiUJDF6fgILS7wSwIuOFGJgwqNoz
   xUhD32prqtdO3zzFaIA7nJExObrlQ9Ub3yiw+pbMKQQuz1doTC1IQyPEW
   Cv/guh5AXFoLJTxkNAkfVYvipkkp/CQPpAto9o+CVff1lo6TB2CeX9b1j
   4f2AC8m0yQyPRfKmBKDpDSLFK5x/BcUgGEM56u+8et9E6pjiBftdYkpZ/
   Sa2W8KDKQ594Qqz7wUrSD7P9nHp0LdzWMWjpojv0iULqsO4H8ceC3Iuqx
   V8lqJ5K3eSW8o3RzCP+Eza/BWUVqd+ngucwxrbpik64eZd64TDkWH7zrA
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10328"; a="351988236"
X-IronPort-AV: E=Sophos;i="5.90,290,1643702400";
   d="scan'208";a="351988236"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Apr 2022 04:24:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,290,1643702400";
   d="scan'208";a="874412474"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 26 Apr 2022 04:24:02 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1njJIY-0003U6-1q;
	Tue, 26 Apr 2022 11:24:02 +0000
Date: Tue, 26 Apr 2022 19:23:56 +0800
From: kernel test robot <lkp@intel.com>
To: Cai Huoqing <cai.huoqing@linux.dev>
Message-ID: <202204261945.UCAr92eM-lkp@intel.com>
References: <20220426060808.78225-5-cai.huoqing@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220426060808.78225-5-cai.huoqing@linux.dev>
Message-ID-Hash: BTUOYGJJUWSD22URTK23INOMGYYWT4QN
X-Message-ID-Hash: BTUOYGJJUWSD22URTK23INOMGYYWT4QN
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: kbuild-all@lists.01.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 4/4] drm/nvdla/uapi: Add UAPI of NVDLA driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BTUOYGJJUWSD22URTK23INOMGYYWT4QN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Cai,

I love your patch! Yet something to improve:

[auto build test ERROR on drm/drm-next]
[also build test ERROR on linus/master linux/master v5.18-rc4 next-20220422]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Cai-Huoqing/drm-nvdla-Add-driver-support-for-NVDLA/20220426-141148
base:   git://anongit.freedesktop.org/drm/drm drm-next
config: ia64-randconfig-r021-20220425 (https://download.01.org/0day-ci/archive/20220426/202204261945.UCAr92eM-lkp@intel.com/config)
compiler: ia64-linux-gcc (GCC) 11.3.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/a54587f7637b8ee11ad624794af3b409e6306e07
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Cai-Huoqing/drm-nvdla-Add-driver-support-for-NVDLA/20220426-141148
        git checkout a54587f7637b8ee11ad624794af3b409e6306e07
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.3.0 make.cross W=1 O=build_dir ARCH=ia64 prepare

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> error: include/uapi/drm/nvdla_drm.h: missing "WITH Linux-syscall-note" for SPDX-License-Identifier
   make[2]: *** [scripts/Makefile.headersinst:63: usr/include/drm/nvdla_drm.h] Error 1
   make[2]: Target '__headers' not remade because of errors.
   make[1]: *** [Makefile:1280: headers] Error 2
   arch/ia64/kernel/asm-offsets.c:23:6: warning: no previous prototype for 'foo' [-Wmissing-prototypes]
      23 | void foo(void)
         |      ^~~
   <stdin>:1517:2: warning: #warning syscall clone3 not implemented [-Wcpp]
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:219: __sub-make] Error 2
   make: Target 'prepare' not remade because of errors.

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
