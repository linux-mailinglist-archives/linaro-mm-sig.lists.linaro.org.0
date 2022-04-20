Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D47D750854F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Apr 2022 11:58:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D158240300
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Apr 2022 09:58:25 +0000 (UTC)
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by lists.linaro.org (Postfix) with ESMTPS id EB8A8402C9
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 Apr 2022 09:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1650448701; x=1681984701;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=trrHFL7bIpVdCRcSGzbp0komwu6+rthAc9Zo3KrMj/o=;
  b=COxeulhPAAJgiTHCPY9klMWHvu5KNQDE7+S9QxeISYJ02qiQ7QFL1eRW
   SvlfRum9ADZXGpon0tOvQg2/hznK79AlTnfIhBghK1/SgEjSNYAJ+YFuA
   uKy3+59S/SM+fnhULFiDspf2IkZrEWYyenxbvSpVA/DD1wFwnGa6a4h71
   TrJkNXrGa9/9PwlLKkn0mVDdz5gA/UxDJvWULdlwKQMIQi6B/+g9lz0ot
   XgexIUrM+BKN90yFxetbnYAKKJPOxKWUaNDzIfIYYhiH5B7rRLD1y8LFG
   TP8BoPHMV4Uy2Javb7a8jFSe1O7Og5+s8GUO5Y5lchdl1XOO3ekA3WDr5
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="289094419"
X-IronPort-AV: E=Sophos;i="5.90,275,1643702400";
   d="scan'208";a="289094419"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Apr 2022 02:58:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,275,1643702400";
   d="scan'208";a="562049243"
Received: from lkp-server01.sh.intel.com (HELO 3abc53900bec) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 20 Apr 2022 02:58:17 -0700
Received: from kbuild by 3abc53900bec with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1nh76G-0006qx-IU;
	Wed, 20 Apr 2022 09:58:16 +0000
Date: Wed, 20 Apr 2022 17:57:43 +0800
From: kernel test robot <lkp@intel.com>
To: Cai Huoqing <cai.huoqing@linux.dev>
Message-ID: <202204201710.5Gcg1PUu-lkp@intel.com>
References: <20220419135908.39606-3-cai.huoqing@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220419135908.39606-3-cai.huoqing@linux.dev>
User-Agent: Mutt/1.10.1 (2018-07-13)
Message-ID-Hash: 4TSYCK3TO443DRKMN4LGYIZ5UPSVL6MR
X-Message-ID-Hash: 4TSYCK3TO443DRKMN4LGYIZ5UPSVL6MR
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: kbuild-all@lists.01.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] drm/nvdla: Add driver support for NVDLA
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4TSYCK3TO443DRKMN4LGYIZ5UPSVL6MR/>
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
[also build test ERROR on drm-intel/for-linux-next drm-tip/drm-tip linus/master v5.18-rc3 next-20220419]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Cai-Huoqing/drm-nvdla-Add-driver-support-for-NVDLA/20220419-220255
base:   git://anongit.freedesktop.org/drm/drm drm-next
config: m68k-allmodconfig (https://download.01.org/0day-ci/archive/20220420/202204201710.5Gcg1PUu-lkp@intel.com/config)
compiler: m68k-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/7539e5487eb7d0c6f13c03bba596e51a2238106d
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Cai-Huoqing/drm-nvdla-Add-driver-support-for-NVDLA/20220419-220255
        git checkout 7539e5487eb7d0c6f13c03bba596e51a2238106d
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross W=1 O=build_dir ARCH=m68k SHELL=/bin/bash drivers/gpu/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> make[5]: *** No rule to make target 'drivers/gpu/drm/nvdla/nvdla_engine_data.o', needed by 'drivers/gpu/drm/nvdla/nvdla-drm.o'.
>> make[5]: *** No rule to make target 'drivers/gpu/drm/nvdla/nvdla_engine_debug.o', needed by 'drivers/gpu/drm/nvdla/nvdla-drm.o'.
   make[5]: Target '__build' not remade because of errors.

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
