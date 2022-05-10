Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F32D522680
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 May 2022 23:55:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C8527480C0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 May 2022 21:55:50 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by lists.linaro.org (Postfix) with ESMTPS id 003F93ED52
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 May 2022 21:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1652219746; x=1683755746;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=4RYB0zZZfnXkXzP1aYf9qSZ/Jnp/XkShxgoTSmMnvzw=;
  b=VJYeECBkuUNz6dq+0EOCQi8AouBZ0FKxiiMLauFrzYH4bdPvnDqhfZTI
   m+WdFuPRHqY04c8sBoPRcf/MCPU5tHzuQv8rckdU/j5mTS/qI9oOrQB3C
   j9eP3HbdusXThwQiSM5mfKAwImF2gG0nUIAG9ybZmvxBiYD4/CXSElZ45
   be+FoJsuKh2OaIEYXlJAYJAARQDObHm3Luf4mpNCNE6gm+7aZPhrc+pGf
   Egr3lIFNUthbRbrTEmRxIqvMK1WedluUmWyq0bTxUdd2IypJSRjOzAXwh
   3rdYASlmGqu36UQbf1JRdbPvHU1oRA6YDZRg27P2LcgOUDnY3u8TRKOA5
   g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10343"; a="268353978"
X-IronPort-AV: E=Sophos;i="5.91,215,1647327600";
   d="scan'208";a="268353978"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 May 2022 14:55:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,215,1647327600";
   d="scan'208";a="565861866"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 10 May 2022 14:55:42 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1noXpV-000IQc-Cl;
	Tue, 10 May 2022 21:55:41 +0000
Date: Wed, 11 May 2022 05:55:05 +0800
From: kernel test robot <lkp@intel.com>
To: Charan Teja Kalla <quic_charante@quicinc.com>,
	gregkh@linuxfoundation.org, christian.koenig@amd.com,
	sumit.semwal@linaro.org, hridya@google.com, daniel.vetter@ffwll.ch,
	tjmercier@google.com
Message-ID: <202205110511.E0d8TXXC-lkp@intel.com>
References: <1652191562-18700-1-git-send-email-quic_charante@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1652191562-18700-1-git-send-email-quic_charante@quicinc.com>
Message-ID-Hash: OOSPDG6Z4TJJ5KGJDR3I64BT3V3U67TH
X-Message-ID-Hash: OOSPDG6Z4TJJ5KGJDR3I64BT3V3U67TH
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: kbuild-all@lists.01.org, linaro-mm-sig@lists.linaro.org, Charan Teja Kalla <quic_charante@quicinc.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V2] dmabuf: ensure unique directory name for dmabuf stats
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OOSPDG6Z4TJJ5KGJDR3I64BT3V3U67TH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Charan,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on linus/master]
[also build test WARNING on v5.18-rc6 next-20220510]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Charan-Teja-Kalla/dmabuf-ensure-unique-directory-name-for-dmabuf-stats/20220510-221009
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 9be9ed2612b5aedb52a2c240edb1630b6b743cb6
config: arc-allyesconfig (https://download.01.org/0day-ci/archive/20220511/202205110511.E0d8TXXC-lkp@intel.com/config)
compiler: arceb-elf-gcc (GCC) 11.3.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/1bc947824de94b4d4a87c48772c0d36872eaf731
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Charan-Teja-Kalla/dmabuf-ensure-unique-directory-name-for-dmabuf-stats/20220510-221009
        git checkout 1bc947824de94b4d4a87c48772c0d36872eaf731
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.3.0 make.cross W=1 O=build_dir ARCH=arc SHELL=/bin/bash drivers/dma-buf/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/dma-buf/dma-buf-sysfs-stats.c: In function 'dma_buf_stats_setup':
>> drivers/dma-buf/dma-buf-sysfs-stats.c:196:43: warning: format '%lu' expects argument of type 'long unsigned int', but argument 6 has type 's64' {aka 'long long int'} [-Wformat=]
     196 |                                    "%lu-%lu", file_inode(dmabuf->file)->i_ino,
         |                                         ~~^
         |                                           |
         |                                           long unsigned int
         |                                         %llu
     197 |                                    atomic64_add_return(1, &unique_id));
         |                                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
         |                                    |
         |                                    s64 {aka long long int}


vim +196 drivers/dma-buf/dma-buf-sysfs-stats.c

   170	
   171	int dma_buf_stats_setup(struct dma_buf *dmabuf)
   172	{
   173		struct dma_buf_sysfs_entry *sysfs_entry;
   174		int ret;
   175		static atomic64_t unique_id = ATOMIC_INIT(0);
   176	
   177		if (!dmabuf || !dmabuf->file)
   178			return -EINVAL;
   179	
   180		if (!dmabuf->exp_name) {
   181			pr_err("exporter name must not be empty if stats needed\n");
   182			return -EINVAL;
   183		}
   184	
   185		sysfs_entry = kzalloc(sizeof(struct dma_buf_sysfs_entry), GFP_KERNEL);
   186		if (!sysfs_entry)
   187			return -ENOMEM;
   188	
   189		sysfs_entry->kobj.kset = dma_buf_per_buffer_stats_kset;
   190		sysfs_entry->dmabuf = dmabuf;
   191	
   192		dmabuf->sysfs_entry = sysfs_entry;
   193	
   194		/* create the directory for buffer stats */
   195		ret = kobject_init_and_add(&sysfs_entry->kobj, &dma_buf_ktype, NULL,
 > 196					   "%lu-%lu", file_inode(dmabuf->file)->i_ino,

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
