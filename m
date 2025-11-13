Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E17EC5A024
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 21:50:26 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2EEE73F866
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 13 Nov 2025 20:50:25 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
	by lists.linaro.org (Postfix) with ESMTPS id 60BB93F85A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 20:50:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=BIW7k8kd;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 192.198.163.19 as permitted sender) smtp.mailfrom=lkp@intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1763067010; x=1794603010;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=c14Im5Ycw0cJ83G30ozwTETFt4r0l7bFAsL/iOYSZDY=;
  b=BIW7k8kdqIjmxylY2yOCkgYljbvxExqX87EfnZzYn4sexAG5T8zWGtev
   M7IJLle4iBVU1BOh3vC2SiLwSGK2eoLlSdS3y2JH3xWVwGaplbBbRxjb7
   XBdQ7C9f8xjKAqvlY1PabgG21R2n25EjwOfOqIUF75yhDMPxYuqDAVK/2
   iCOMouQBMUAcZ307yaWr3n86wPxUEnOjSRzpwhXcRH+psMjsZxyoEmONN
   IqoaDDvUgsq79rh92Mz1TVmkZLfHkAkObn5s3Uaelc0HVbbnsyKIqzaVC
   u5i4BjSjDbMiVI/BQRgyKQCKxPStpMQibSMiYXTShw/ggXC2Gx11HhAHN
   A==;
X-CSE-ConnectionGUID: iSrtN2qbTte811wlxb5iEw==
X-CSE-MsgGUID: hTPDJvKQTRuQ25NJ6gfLFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="64165038"
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000";
   d="scan'208";a="64165038"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Nov 2025 12:50:09 -0800
X-CSE-ConnectionGUID: zCf4xlQuQzOoYE5SoOHg8Q==
X-CSE-MsgGUID: kOJv2nQJTP+JB47h3uDyxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000";
   d="scan'208";a="194044028"
Received: from lkp-server01.sh.intel.com (HELO 7b01c990427b) ([10.239.97.150])
  by orviesa004.jf.intel.com with ESMTP; 13 Nov 2025 12:50:05 -0800
Received: from kbuild by 7b01c990427b with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1vJeGY-0005qx-0p;
	Thu, 13 Nov 2025 20:50:02 +0000
Date: Fri, 14 Nov 2025 04:49:30 +0800
From: kernel test robot <lkp@intel.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	phasta@mailbox.org, alexdeucher@gmail.com, simona.vetter@ffwll.ch,
	tursulin@ursulin.net, matthew.brost@intel.com,
	dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org
Message-ID: <202511140459.HpT5i7v9-lkp@intel.com>
References: <20251113145332.16805-5-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251113145332.16805-5-christian.koenig@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 60BB93F85A
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:192.198.163.0/26];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,mailbox.org,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: UMO3VCWV7OPI7XG4DX4GETJCACPL4GGR
X-Message-ID-Hash: UMO3VCWV7OPI7XG4DX4GETJCACPL4GGR
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 04/18] dma-buf: inline spinlock for fence protection v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UMO3VCWV7OPI7XG4DX4GETJCACPL4GGR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Christian,

kernel test robot noticed the following build errors:

[auto build test ERROR on next-20251113]
[also build test ERROR on v6.18-rc5]
[cannot apply to drm-xe/drm-xe-next linus/master v6.18-rc5 v6.18-rc4 v6.18-rc3]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Christian-K-nig/dma-buf-protected-fence-ops-by-RCU-v3/20251113-235209
base:   next-20251113
patch link:    https://lore.kernel.org/r/20251113145332.16805-5-christian.koenig%40amd.com
patch subject: [PATCH 04/18] dma-buf: inline spinlock for fence protection v2
config: openrisc-randconfig-r072-20251114 (https://download.01.org/0day-ci/archive/20251114/202511140459.HpT5i7v9-lkp@intel.com/config)
compiler: or1k-linux-gcc (GCC) 14.3.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251114/202511140459.HpT5i7v9-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202511140459.HpT5i7v9-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/dma-buf/st-dma-fence.c: In function '__wait_for_callbacks':
>> drivers/dma-buf/st-dma-fence.c:454:24: error: 'struct dma_fence' has no member named 'lock'
     454 |         spin_lock_irq(f->lock);
         |                        ^~
   drivers/dma-buf/st-dma-fence.c:455:26: error: 'struct dma_fence' has no member named 'lock'
     455 |         spin_unlock_irq(f->lock);
         |                          ^~


vim +454 drivers/dma-buf/st-dma-fence.c

2989f6451084ae Chris Wilson 2019-08-19  451  
2989f6451084ae Chris Wilson 2019-08-19  452  static void __wait_for_callbacks(struct dma_fence *f)
2989f6451084ae Chris Wilson 2019-08-19  453  {
2989f6451084ae Chris Wilson 2019-08-19 @454  	spin_lock_irq(f->lock);
2989f6451084ae Chris Wilson 2019-08-19  455  	spin_unlock_irq(f->lock);
2989f6451084ae Chris Wilson 2019-08-19  456  }
2989f6451084ae Chris Wilson 2019-08-19  457  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
