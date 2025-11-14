Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B1BDDC5BCA3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Nov 2025 08:31:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9662F3F75F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Nov 2025 07:31:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
	by lists.linaro.org (Postfix) with ESMTPS id 32B773F6F4
	for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Nov 2025 07:31:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=Rdlm948K;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 192.198.163.19 as permitted sender) smtp.mailfrom=lkp@intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1763105468; x=1794641468;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=YqUWGkPbN/V/TNvPETtR8gEtdGo82kPHsqkE8jDKi9Q=;
  b=Rdlm948Kq7rZqV2N7IMzs0fD0s2+m4vwGrdw72HFHkT9Muvf7KpReMcl
   kOavKIWIRvuH95v0f/R9BqFe6yenK+AQUThx6zx7+aRFJQb3zvp7BzBra
   GDsNDfxUUPuQDQBrgXpsD2P/xJrfBptMAAMZyowG7HZp/cWzhg4gked+b
   3ALYhrVDl6aZUZndq/EfWPfNBO/lpgXZ12wXqF8K1voylB/GrKQKQZe2z
   6FEWdKtj9yozWA8Ab0I1hWUPPeYGHytwPGf5oiD5p56Vl5SAHtUdUkZIE
   7TTxm20gJ4Zl/mIW48KlZQP7MgcrInKefHZjKtBpZnaga7d0sMzLEiyTE
   w==;
X-CSE-ConnectionGUID: 3qLDmA+JRM+9VsYxKIYQ1g==
X-CSE-MsgGUID: Qqgw7mtGQt+JgKlTwGhK/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="64201506"
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000";
   d="scan'208";a="64201506"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Nov 2025 23:31:07 -0800
X-CSE-ConnectionGUID: KJKJ9fdmQW63RP8Wa1dZ3w==
X-CSE-MsgGUID: mfThGXB1SpW2ZGEEWO0+1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000";
   d="scan'208";a="220572128"
Received: from lkp-server01.sh.intel.com (HELO 7b01c990427b) ([10.239.97.150])
  by fmviesa001.fm.intel.com with ESMTP; 13 Nov 2025 23:31:04 -0800
Received: from kbuild by 7b01c990427b with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1vJoGs-0006Ix-17;
	Fri, 14 Nov 2025 07:31:02 +0000
Date: Fri, 14 Nov 2025 15:30:22 +0800
From: kernel test robot <lkp@intel.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	phasta@mailbox.org, alexdeucher@gmail.com, simona.vetter@ffwll.ch,
	tursulin@ursulin.net, matthew.brost@intel.com,
	dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org
Message-ID: <202511141529.mZKt8xhV-lkp@intel.com>
References: <20251113145332.16805-5-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251113145332.16805-5-christian.koenig@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 32B773F6F4
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:192.198.163.0/26];
	MIME_GOOD(-0.10)[text/plain];
	DNSWL_BLOCKED(0.00)[192.198.163.19:from];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,mailbox.org,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: 44NI6VHAMCTPXKZTG4UVVQQORGDCTTOK
X-Message-ID-Hash: 44NI6VHAMCTPXKZTG4UVVQQORGDCTTOK
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 04/18] dma-buf: inline spinlock for fence protection v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/44NI6VHAMCTPXKZTG4UVVQQORGDCTTOK/>
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
config: arm-randconfig-004-20251114 (https://download.01.org/0day-ci/archive/20251114/202511141529.mZKt8xhV-lkp@intel.com/config)
compiler: clang version 22.0.0git (https://github.com/llvm/llvm-project 0bba1e76581bad04e7d7f09f5115ae5e2989e0d9)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251114/202511141529.mZKt8xhV-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202511141529.mZKt8xhV-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/dma-buf/st-dma-fence.c:454:19: error: no member named 'lock' in 'struct dma_fence'
     454 |         spin_lock_irq(f->lock);
         |                       ~  ^
   drivers/dma-buf/st-dma-fence.c:455:21: error: no member named 'lock' in 'struct dma_fence'
     455 |         spin_unlock_irq(f->lock);
         |                         ~  ^
   2 errors generated.


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
