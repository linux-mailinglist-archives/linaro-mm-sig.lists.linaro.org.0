Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AE62C47AA85
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Dec 2021 14:42:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 285906123A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Dec 2021 13:42:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A438F6104B; Mon, 20 Dec 2021 13:42:19 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3E96560FB6;
	Mon, 20 Dec 2021 13:42:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0CA2D60FA6
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Dec 2021 13:42:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F27A760FB6; Mon, 20 Dec 2021 13:42:14 +0000 (UTC)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by lists.linaro.org (Postfix) with ESMTPS id AA4DD60FA6
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Dec 2021 13:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640007732; x=1671543732;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=CncPVdtGApcxRcU6/VwWzk2H+dVxK8ATq00Lsjz+hXo=;
 b=RUd+NfYIluAOViOIlJC6xpmUh0ogb0urV1hNYR0L7GAYQrlsvAuiSF7J
 vJ96LYc3BUNXh37iDu/2gUN3wxGY7xdJayfSqwe3FeY7TWDovptN71IYN
 1PZDekhNfA7EQbezDLHjntbgrPoDuQO6NBN7KbRikAIMDhDbRoUrWkCUw
 TbbIJM5qPlwPZQ3XL5sshY9mYLKBQS1IVnQ4hJnrrGtPVl6VmGnvWHXgq
 rAfnoNp7hauYhR7hwWxeAFg1++V4cZD944DN13vnl4oe/6b0ZFnyTlgiM
 vLelE0zmajGh55dqhERiOLrIyKyOjmeVVDcsqYOXoocrlKeEt6O2kN9ex w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10203"; a="237704187"
X-IronPort-AV: E=Sophos;i="5.88,220,1635231600"; d="scan'208";a="237704187"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2021 05:42:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,220,1635231600"; d="scan'208";a="465941525"
Received: from lkp-server02.sh.intel.com (HELO 9f38c0981d9f) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 20 Dec 2021 05:42:07 -0800
Received: from kbuild by 9f38c0981d9f with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mzIvX-0007oJ-70; Mon, 20 Dec 2021 13:42:07 +0000
Date: Mon, 20 Dec 2021 21:41:17 +0800
From: kernel test robot <lkp@intel.com>
To: Xianting Tian <xianting.tian@linux.alibaba.com>, kraxel@redhat.com,
 sumit.semwal@linaro.org, christian.koenig@amd.com
Message-ID: <202112202114.4rnU3YZF-lkp@intel.com>
References: <20211220054333.3041893-1-xianting.tian@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211220054333.3041893-1-xianting.tian@linux.alibaba.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] udmabuf: put dmabuf in case of get fd
 failed
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: kbuild-all@lists.01.org, Xianting Tian <xianting.tian@linux.alibaba.com>,
 llvm@lists.linux.dev, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Hi Xianting,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on linus/master]
[also build test WARNING on v5.16-rc6 next-20211217]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Xianting-Tian/udmabuf-put-dmabuf-in-case-of-get-fd-failed/20211220-134433
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git a7904a538933c525096ca2ccde1e60d0ee62c08e
config: x86_64-randconfig-r024-20211220 (https://download.01.org/0day-ci/archive/20211220/202112202114.4rnU3YZF-lkp@intel.com/config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 555eacf75f21cd1dfc6363d73ad187b730349543)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/322781a4da9de4a3057afd933108d23ca7f5282e
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Xianting-Tian/udmabuf-put-dmabuf-in-case-of-get-fd-failed/20211220-134433
        git checkout 322781a4da9de4a3057afd933108d23ca7f5282e
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/dma-buf/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/dma-buf/udmabuf.c:293:1: error: function definition is not allowed here
   {
   ^
   drivers/dma-buf/udmabuf.c:312:1: error: function definition is not allowed here
   {
   ^
   drivers/dma-buf/udmabuf.c:334:1: error: function definition is not allowed here
   {
   ^
   drivers/dma-buf/udmabuf.c:353:20: error: use of undeclared identifier 'udmabuf_ioctl'
           .unlocked_ioctl = udmabuf_ioctl,
                             ^
   drivers/dma-buf/udmabuf.c:355:20: error: use of undeclared identifier 'udmabuf_ioctl'
           .compat_ioctl   = udmabuf_ioctl,
                             ^
   drivers/dma-buf/udmabuf.c:366:1: error: function definition is not allowed here
   {
   ^
   drivers/dma-buf/udmabuf.c:371:1: error: function definition is not allowed here
   {
   ^
   drivers/dma-buf/udmabuf.c:375:13: error: use of undeclared identifier 'udmabuf_dev_init'
   module_init(udmabuf_dev_init)
               ^
   drivers/dma-buf/udmabuf.c:375:13: error: use of undeclared identifier 'udmabuf_dev_init'
   drivers/dma-buf/udmabuf.c:376:13: error: use of undeclared identifier 'udmabuf_dev_exit'
   module_exit(udmabuf_dev_exit)
               ^
   drivers/dma-buf/udmabuf.c:379:26: error: expected '}'
   MODULE_LICENSE("GPL v2");
                            ^
   drivers/dma-buf/udmabuf.c:166:1: note: to match this '{'
   {
   ^
>> drivers/dma-buf/udmabuf.c:351:37: warning: ISO C90 forbids mixing declarations and code [-Wdeclaration-after-statement]
   static const struct file_operations udmabuf_fops = {
                                       ^
   1 warning and 11 errors generated.


vim +351 drivers/dma-buf/udmabuf.c

fbb0de79507819 Gerd Hoffmann          2018-08-27  350  
fbb0de79507819 Gerd Hoffmann          2018-08-27 @351  static const struct file_operations udmabuf_fops = {
fbb0de79507819 Gerd Hoffmann          2018-08-27  352  	.owner		= THIS_MODULE,
fbb0de79507819 Gerd Hoffmann          2018-08-27  353  	.unlocked_ioctl = udmabuf_ioctl,
d4a197f4047e01 Kristian H. Kristensen 2020-09-03  354  #ifdef CONFIG_COMPAT
d4a197f4047e01 Kristian H. Kristensen 2020-09-03  355  	.compat_ioctl   = udmabuf_ioctl,
d4a197f4047e01 Kristian H. Kristensen 2020-09-03  356  #endif
fbb0de79507819 Gerd Hoffmann          2018-08-27  357  };
fbb0de79507819 Gerd Hoffmann          2018-08-27  358  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
