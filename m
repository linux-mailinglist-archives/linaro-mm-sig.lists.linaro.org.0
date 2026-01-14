Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id ABDC7D1CB28
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Jan 2026 07:41:30 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7245540175
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Jan 2026 06:41:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
	by lists.linaro.org (Postfix) with ESMTPS id 4E7183F6FF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Jan 2026 06:41:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b="JqqY/iqe";
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 198.175.65.13 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768372882; x=1799908882;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=XpxsGPlLj5NM4VDI7W0Vxow+OTTiPnZzejvjUQVlmf8=;
  b=JqqY/iqeOOvWUvCigFwRkhVpZc34aXJyZd5rViw10xdmkbW7lXhNtsYy
   a1i+7HNdcTh9otvikbHVg9fT/1FvCQKjrE5XHDCI5jl+fwLMhjpOl1HMY
   eCthKGF/tY4WbzdhBtRBPiF+YCr1UyCYv1HZ7pzMWE9Ny3dCICSBZ6h4N
   VrVHprzQivOq2tH7XPFI2jlQAr2Ckpf8FvVCIcliBogC1hH5ejyX2N2w3
   aIdbS/HWMkifbcJxaMf7ZYjIvRIcNFlrx4UFeHZveB7DwLEOZv3CTE9ZH
   aTJVv3e0vziC0YwNLUlp5s9qKa6bESje+OVdijs5qWWEde+V/6CuzxAWl
   Q==;
X-CSE-ConnectionGUID: McGLA0I7TR+ANErR89Evvw==
X-CSE-MsgGUID: xMcJTsleSx20XoDEpugSNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="80777749"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800";
   d="scan'208";a="80777749"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jan 2026 22:41:20 -0800
X-CSE-ConnectionGUID: Li1sWpUOTPeHOoMTNEmoIw==
X-CSE-MsgGUID: k9fAY+zpRnqecC2vExlfZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800";
   d="scan'208";a="227745806"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
  by fmviesa002.fm.intel.com with ESMTP; 13 Jan 2026 22:41:17 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vfuZ9-00000000FwK-1ZET;
	Wed, 14 Jan 2026 06:41:15 +0000
Date: Wed, 14 Jan 2026 14:40:23 +0800
From: kernel test robot <lkp@intel.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	phasta@mailbox.org, tursulin@ursulin.net, matthew.brost@intel.com,
	sumit.semwal@linaro.org
Message-ID: <202601141517.1B4n6bXr-lkp@intel.com>
References: <20260113152125.47380-6-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260113152125.47380-6-christian.koenig@amd.com>
X-Rspamd-Queue-Id: 4E7183F6FF
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[gmail.com,mailbox.org,ursulin.net,intel.com,linaro.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:4983, ipnet:198.175.64.0/23, country:US];
	RCPT_COUNT_SEVEN(0.00)[9];
	DWL_DNSWL_BLOCKED(0.00)[intel.com:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DNSWL_BLOCKED(0.00)[198.175.65.13:from];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 2KY6M5TDTGPWMVN54NQWDVSOPV4UIA7T
X-Message-ID-Hash: 2KY6M5TDTGPWMVN54NQWDVSOPV4UIA7T
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 05/10] dma-buf: inline spinlock for fence protection v4
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2KY6M5TDTGPWMVN54NQWDVSOPV4UIA7T/>
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

[auto build test ERROR on drm-misc/drm-misc-next]
[also build test ERROR on drm-xe/drm-xe-next daeinki-drm-exynos/exynos-drm-next drm/drm-next drm-tip/drm-tip next-20260114]
[cannot apply to drm-i915/for-linux-next drm-i915/for-linux-next-fixes linus/master v6.19-rc5]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Christian-K-nig/dma-buf-add-dma_fence_is_initialized-function/20260114-001656
base:   https://gitlab.freedesktop.org/drm/misc/kernel.git drm-misc-next
patch link:    https://lore.kernel.org/r/20260113152125.47380-6-christian.koenig%40amd.com
patch subject: [PATCH 05/10] dma-buf: inline spinlock for fence protection v4
config: x86_64-rhel-9.4-rust (https://download.01.org/0day-ci/archive/20260114/202601141517.1B4n6bXr-lkp@intel.com/config)
compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
rustc: rustc 1.88.0 (6b00bc388 2025-06-23)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260114/202601141517.1B4n6bXr-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202601141517.1B4n6bXr-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:151:29: error: no member named 'lock' in 'struct dma_fence'
     151 |         lockdep_assert_held(fence->lock);
         |                             ~~~~~  ^
   include/linux/lockdep.h:392:46: note: expanded from macro 'lockdep_assert_held'
     392 | #define lockdep_assert_held(l)                  do { (void)(l); } while (0)
         |                                                             ^
   1 error generated.
--
>> drivers/gpu/drm/i915/i915_active.c:1048:27: error: no member named 'lock' in 'struct dma_fence'
    1048 |         spin_lock_irqsave(fence->lock, flags);
         |                           ~~~~~  ^
   include/linux/spinlock.h:381:39: note: expanded from macro 'spin_lock_irqsave'
     381 |         raw_spin_lock_irqsave(spinlock_check(lock), flags);     \
         |                                              ^~~~
   include/linux/spinlock.h:244:34: note: expanded from macro 'raw_spin_lock_irqsave'
     244 |                 flags = _raw_spin_lock_irqsave(lock);   \
         |                                                ^~~~
   drivers/gpu/drm/i915/i915_active.c:1050:26: error: no member named 'lock' in 'struct dma_fence'
    1050 |                 spin_lock_nested(prev->lock, SINGLE_DEPTH_NESTING);
         |                                  ~~~~  ^
   include/linux/spinlock.h:366:38: note: expanded from macro 'spin_lock_nested'
     366 |         raw_spin_lock_nested(spinlock_check(lock), subclass);   \
         |                                             ^~~~
   include/linux/spinlock.h:235:37: note: expanded from macro 'raw_spin_lock_nested'
     235 |         _raw_spin_lock(((void)(subclass), (lock)))
         |                                            ^~~~
   drivers/gpu/drm/i915/i915_active.c:1064:22: error: no member named 'lock' in 'struct dma_fence'
    1064 |                         spin_unlock(prev->lock);
         |                                     ~~~~  ^
   drivers/gpu/drm/i915/i915_active.c:1067:33: error: no member named 'lock' in 'struct dma_fence'
    1067 |                 spin_unlock_irqrestore(fence->lock, flags);
         |                                        ~~~~~  ^
   drivers/gpu/drm/i915/i915_active.c:1072:28: error: no member named 'lock' in 'struct dma_fence'
    1072 |                 spin_lock_irqsave(fence->lock, flags);
         |                                   ~~~~~  ^
   include/linux/spinlock.h:381:39: note: expanded from macro 'spin_lock_irqsave'
     381 |         raw_spin_lock_irqsave(spinlock_check(lock), flags);     \
         |                                              ^~~~
   include/linux/spinlock.h:244:34: note: expanded from macro 'raw_spin_lock_irqsave'
     244 |                 flags = _raw_spin_lock_irqsave(lock);   \
         |                                                ^~~~
   drivers/gpu/drm/i915/i915_active.c:1074:27: error: no member named 'lock' in 'struct dma_fence'
    1074 |                         spin_lock_nested(prev->lock, SINGLE_DEPTH_NESTING);
         |                                          ~~~~  ^
   include/linux/spinlock.h:366:38: note: expanded from macro 'spin_lock_nested'
     366 |         raw_spin_lock_nested(spinlock_check(lock), subclass);   \
         |                                             ^~~~
   include/linux/spinlock.h:235:37: note: expanded from macro 'raw_spin_lock_nested'
     235 |         _raw_spin_lock(((void)(subclass), (lock)))
         |                                            ^~~~
   drivers/gpu/drm/i915/i915_active.c:1091:21: error: no member named 'lock' in 'struct dma_fence'
    1091 |                 spin_unlock(prev->lock); /* serialise with prev->cb_list */
         |                             ~~~~  ^
   drivers/gpu/drm/i915/i915_active.c:1094:32: error: no member named 'lock' in 'struct dma_fence'
    1094 |         spin_unlock_irqrestore(fence->lock, flags);
         |                                ~~~~~  ^
   8 errors generated.


vim +151 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c

0152b3b3f49b36 Chris Wilson 2019-05-08  144  
0152b3b3f49b36 Chris Wilson 2019-05-08  145  static void
f2cb60e9a3881e Chris Wilson 2019-08-17  146  __dma_fence_signal__notify(struct dma_fence *fence,
f2cb60e9a3881e Chris Wilson 2019-08-17  147  			   const struct list_head *list)
0152b3b3f49b36 Chris Wilson 2019-05-08  148  {
0152b3b3f49b36 Chris Wilson 2019-05-08  149  	struct dma_fence_cb *cur, *tmp;
0152b3b3f49b36 Chris Wilson 2019-05-08  150  
0152b3b3f49b36 Chris Wilson 2019-05-08 @151  	lockdep_assert_held(fence->lock);
0152b3b3f49b36 Chris Wilson 2019-05-08  152  
f2cb60e9a3881e Chris Wilson 2019-08-17  153  	list_for_each_entry_safe(cur, tmp, list, node) {
0152b3b3f49b36 Chris Wilson 2019-05-08  154  		INIT_LIST_HEAD(&cur->node);
0152b3b3f49b36 Chris Wilson 2019-05-08  155  		cur->func(fence, cur);
0152b3b3f49b36 Chris Wilson 2019-05-08  156  	}
0152b3b3f49b36 Chris Wilson 2019-05-08  157  }
0152b3b3f49b36 Chris Wilson 2019-05-08  158  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
