Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CKWJFMXAmWlDWgMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 21 Feb 2026 15:27:17 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBE316D069
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 21 Feb 2026 15:27:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A23F6401EA
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 21 Feb 2026 14:27:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
	by lists.linaro.org (Postfix) with ESMTPS id 9F109401EA
	for <linaro-mm-sig@lists.linaro.org>; Sat, 21 Feb 2026 14:27:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=QfxRrLBc;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 192.198.163.16 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771684032; x=1803220032;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=7qmlvR0Yq0nrTCBBuGiyvxnV7w579oImjS5HrfNKpuQ=;
  b=QfxRrLBcb/b1yg4l7rMZG/eDEofcA0mdYZuXAyINUF72bDcDR3yMGzgQ
   hNOGMQbqrPf0Ny3vaEKWifzyTAsaZM4CFt2ExnUafmplWURJLL3z5VL04
   EwP3Ys71G0a3qGjxe0j/r8R1ZUx+2X1pGboXocBWFhSgJ3wcTgYBQr4op
   KtakUoQdHI9XL0wOWFHB7WrQPasI68XYTb1egiWoADw1+FC6Pc905kWi6
   TvMaU3xaYze16RN6lG6UMtmr+7QljurBQcALaxZUz7LRR02WzXEiONlbu
   99CPvI0p29FWDqqyhRravRSp94QXvdMFFYInwP/yuwntOd0DtHh7xiqRt
   Q==;
X-CSE-ConnectionGUID: eCaz+qtnQre3CEmc91cEvw==
X-CSE-MsgGUID: 5Q1RjYiEQYmPXb3W3AOOqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11708"; a="60322792"
X-IronPort-AV: E=Sophos;i="6.21,304,1763452800";
   d="scan'208";a="60322792"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Feb 2026 06:27:11 -0800
X-CSE-ConnectionGUID: 0rvlshFARF2eV5jB7Xv0XQ==
X-CSE-MsgGUID: lFBHB36jS8WwZ9Rzjgyl8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,304,1763452800";
   d="scan'208";a="214217038"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
  by orviesa006.jf.intel.com with ESMTP; 21 Feb 2026 06:27:09 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vtnwo-000000014xw-3qfK;
	Sat, 21 Feb 2026 14:27:06 +0000
Date: Sat, 21 Feb 2026 22:26:41 +0800
From: kernel test robot <lkp@intel.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	phasta@mailbox.org, matthew.brost@intel.com,
	sumit.semwal@linaro.org
Message-ID: <202602212224.vH1Jr91w-lkp@intel.com>
References: <20260219160822.1529-2-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260219160822.1529-2-christian.koenig@amd.com>
X-Spamd-Bar: ------
Message-ID-Hash: WDTXOM6FRVWX3IRMMPVG4M6XE57VBTLC
X-Message-ID-Hash: WDTXOM6FRVWX3IRMMPVG4M6XE57VBTLC
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/8] dma-buf: protected fence ops by RCU v7
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WDTXOM6FRVWX3IRMMPVG4M6XE57VBTLC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,mailbox.org,intel.com,linaro.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.973];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[intel.com:-];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[01.org:url,gitlab.freedesktop.org:url,git-scm.com:url,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: DFBE316D069
X-Rspamd-Action: no action

Hi Christian,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-misc/drm-misc-next]
[cannot apply to drm-i915/for-linux-next drm-i915/for-linux-next-fixes drm-xe/drm-xe-next linus/master v6.19 next-20260220]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Christian-K-nig/dma-buf-detach-fence-ops-on-signal-v2/20260220-010804
base:   https://gitlab.freedesktop.org/drm/misc/kernel.git drm-misc-next
patch link:    https://lore.kernel.org/r/20260219160822.1529-2-christian.koenig%40amd.com
patch subject: [PATCH 1/8] dma-buf: protected fence ops by RCU v7
config: m68k-randconfig-r111-20260221 (https://download.01.org/0day-ci/archive/20260221/202602212224.vH1Jr91w-lkp@intel.com/config)
compiler: m68k-linux-gcc (GCC) 8.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260221/202602212224.vH1Jr91w-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202602212224.vH1Jr91w-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/gpu/drm/drm_crtc.c:161:9: sparse: sparse: incompatible types in comparison expression (different address spaces):
   drivers/gpu/drm/drm_crtc.c:161:9: sparse:    struct dma_fence_ops const [noderef] __rcu *
   drivers/gpu/drm/drm_crtc.c:161:9: sparse:    struct dma_fence_ops const *
--
   drivers/gpu/drm/scheduler/sched_fence.c:241:1: sparse: sparse: bad integer constant expression
   drivers/gpu/drm/scheduler/sched_fence.c:241:1: sparse: sparse: static assertion failed: "MODULE_INFO(description, ...) contains embedded NUL byte"
   drivers/gpu/drm/scheduler/sched_fence.c:242:1: sparse: sparse: bad integer constant expression
   drivers/gpu/drm/scheduler/sched_fence.c:242:1: sparse: sparse: static assertion failed: "MODULE_INFO(license, ...) contains embedded NUL byte"
>> drivers/gpu/drm/scheduler/sched_fence.c:198:20: sparse: sparse: incompatible types in comparison expression (different address spaces):
   drivers/gpu/drm/scheduler/sched_fence.c:198:20: sparse:    struct dma_fence_ops const [noderef] __rcu *
   drivers/gpu/drm/scheduler/sched_fence.c:198:20: sparse:    struct dma_fence_ops const *
   drivers/gpu/drm/scheduler/sched_fence.c:201:20: sparse: sparse: incompatible types in comparison expression (different address spaces):
   drivers/gpu/drm/scheduler/sched_fence.c:201:20: sparse:    struct dma_fence_ops const [noderef] __rcu *
   drivers/gpu/drm/scheduler/sched_fence.c:201:20: sparse:    struct dma_fence_ops const *

vim +161 drivers/gpu/drm/drm_crtc.c

35f8cc3b9a92c6 Gustavo Padovan 2016-12-06  158  
6d6003c4b613c9 Gustavo Padovan 2016-11-15  159  static struct drm_crtc *fence_to_crtc(struct dma_fence *fence)
6d6003c4b613c9 Gustavo Padovan 2016-11-15  160  {
6d6003c4b613c9 Gustavo Padovan 2016-11-15 @161  	BUG_ON(fence->ops != &drm_crtc_fence_ops);
6d6003c4b613c9 Gustavo Padovan 2016-11-15  162  	return container_of(fence->lock, struct drm_crtc, fence_lock);
6d6003c4b613c9 Gustavo Padovan 2016-11-15  163  }
6d6003c4b613c9 Gustavo Padovan 2016-11-15  164  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
