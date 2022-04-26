Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D7350F9F2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Apr 2022 12:14:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AFCFA48016
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Apr 2022 10:14:06 +0000 (UTC)
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by lists.linaro.org (Postfix) with ESMTPS id 8CAD647FA2
	for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Apr 2022 10:14:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1650968041; x=1682504041;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=s3e2Mol8Q7Ae9bok6W3oQgnE6nys4q61z67ZOj7oV0U=;
  b=TPE/OvlPR+ZQP7IuhGEVk0sGp3fsOGhD16gg1WGhRI/lEM6JTNU8VppR
   QH6TiLquYVh0CNCNE24ZpHluehEAq9CwTVZiWOml1opA4CkRVIf9FpF3I
   uUc7ZoW+SH6S4dwygb2dYMwoFoesN+bdEgbQboqoTD3+FNlhAz1RJ4dEG
   1gCaSmJkzlRXg79nwDcPkKlfHnt6Q+DPy75rZ9X0jsQiQYCwNUdptQ+8C
   dVQx3QbTsraXPb6eJHKoJaerjMgodKVBKablUPBkZtfBl5FFgSYbmk9Fj
   n/JIkvmtsoNMdmcupdLIm/49DfJh6emg1XIQtBS0j8+Iq4tr4hbujlmYK
   g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10328"; a="351972291"
X-IronPort-AV: E=Sophos;i="5.90,290,1643702400";
   d="scan'208";a="351972291"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Apr 2022 03:14:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,290,1643702400";
   d="scan'208";a="595693115"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 26 Apr 2022 03:13:56 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1njICh-0003Py-RN;
	Tue, 26 Apr 2022 10:13:55 +0000
Date: Tue, 26 Apr 2022 18:12:58 +0800
From: kernel test robot <lkp@intel.com>
To: Cai Huoqing <cai.huoqing@linux.dev>
Message-ID: <202204261827.CMHZCsOI-lkp@intel.com>
References: <20220426060808.78225-5-cai.huoqing@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220426060808.78225-5-cai.huoqing@linux.dev>
Message-ID-Hash: CER5UYGFSN6DTO3MVXMOCVK6RIPKDKXR
X-Message-ID-Hash: CER5UYGFSN6DTO3MVXMOCVK6RIPKDKXR
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: llvm@lists.linux.dev, kbuild-all@lists.01.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 4/4] drm/nvdla/uapi: Add UAPI of NVDLA driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CER5UYGFSN6DTO3MVXMOCVK6RIPKDKXR/>
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
config: i386-randconfig-a003-20220425 (https://download.01.org/0day-ci/archive/20220426/202204261827.CMHZCsOI-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project 1cddcfdc3c683b393df1a5c9063252eb60e52818)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/a54587f7637b8ee11ad624794af3b409e6306e07
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Cai-Huoqing/drm-nvdla-Add-driver-support-for-NVDLA/20220426-141148
        git checkout a54587f7637b8ee11ad624794af3b409e6306e07
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 prepare

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> error: include/uapi/drm/nvdla_drm.h: missing "WITH Linux-syscall-note" for SPDX-License-Identifier
   make[2]: *** [scripts/Makefile.headersinst:63: usr/include/drm/nvdla_drm.h] Error 1
   make[2]: Target '__headers' not remade because of errors.
   make[1]: *** [Makefile:1280: headers] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:219: __sub-make] Error 2
   make: Target 'prepare' not remade because of errors.

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
