Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4B7C5CE93
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Nov 2025 12:44:50 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 41A6E3F802
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Nov 2025 11:44:49 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
	by lists.linaro.org (Postfix) with ESMTPS id 281D33F75F
	for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Nov 2025 11:44:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=LIU9hSRG;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 198.175.65.13 as permitted sender) smtp.mailfrom=lkp@intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1763120674; x=1794656674;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=C6iS0bMosv9bMtQrB6VTtO2CE57nGf0I7IUZKqbCHsg=;
  b=LIU9hSRG2z7h3cDk2pfMR49ZV1m1yCaFvQVQT27X2HA7UvoZJvznRaAF
   qUdUNt4TnEiBgm7irVGkTmIp6NrftNTeU3HsLWybvzb6pZLjZALo+jxhV
   U4KNytOVWRHbtDMhmWFGEbNFrqB02vVKYynCVHiert1fIJJIk+67dkIp9
   5/Y8nMEHhiWS7cCXEH8Tf/8beqtYL6fXyyIYq4+cn2OM0DvmSu3h/wHQp
   fcrsCQ56BmCrdpXsQVhb3QncijFo8D5mXbn4C0WVoWh79bYz/n7XLNvKP
   2AjZbpcyg76hQVk2y4c7kSlZvH9hhrZF2GSq+01Vs2/nfXBtZXmxiWiTH
   w==;
X-CSE-ConnectionGUID: PP4R3QBsQxS1X2qKrGfDZw==
X-CSE-MsgGUID: N42mTk2xQymvAZGr5ywZmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="76315370"
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000";
   d="scan'208";a="76315370"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Nov 2025 03:44:33 -0800
X-CSE-ConnectionGUID: k05ZyNWSRdSWUWWN+wzi4Q==
X-CSE-MsgGUID: k5dDaxgPQPehRRpgUwtnNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000";
   d="scan'208";a="227107753"
Received: from lkp-server01.sh.intel.com (HELO 7b01c990427b) ([10.239.97.150])
  by orviesa001.jf.intel.com with ESMTP; 14 Nov 2025 03:44:30 -0800
Received: from kbuild by 7b01c990427b with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1vJsE7-0006XX-35;
	Fri, 14 Nov 2025 11:44:27 +0000
Date: Fri, 14 Nov 2025 19:43:58 +0800
From: kernel test robot <lkp@intel.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	phasta@mailbox.org, alexdeucher@gmail.com, simona.vetter@ffwll.ch,
	tursulin@ursulin.net, matthew.brost@intel.com,
	dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org
Message-ID: <202511141921.NxnbQ4Zt-lkp@intel.com>
References: <20251113145332.16805-14-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251113145332.16805-14-christian.koenig@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 281D33F75F
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:4983, ipnet:198.175.64.0/23, country:US];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,mailbox.org,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: NAOFEWE42XKNHTGD43KGMJLZAWV2EH2Q
X-Message-ID-Hash: NAOFEWE42XKNHTGD43KGMJLZAWV2EH2Q
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 13/18] drm/amdgpu: independence for the amdkfd_fence! v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NAOFEWE42XKNHTGD43KGMJLZAWV2EH2Q/>
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
[cannot apply to drm-xe/drm-xe-next linus/master v6.18-rc5 v6.18-rc4 v6.18-rc3 v6.18-rc5]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Christian-K-nig/dma-buf-protected-fence-ops-by-RCU-v3/20251113-235209
base:   next-20251113
patch link:    https://lore.kernel.org/r/20251113145332.16805-14-christian.koenig%40amd.com
patch subject: [PATCH 13/18] drm/amdgpu: independence for the amdkfd_fence! v2
config: riscv-randconfig-001-20251114 (https://download.01.org/0day-ci/archive/20251114/202511141921.NxnbQ4Zt-lkp@intel.com/config)
compiler: riscv64-linux-gcc (GCC) 13.4.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251114/202511141921.NxnbQ4Zt-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202511141921.NxnbQ4Zt-lkp@intel.com/

All error/warnings (new ones prefixed by >>):

   drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_fence.c: In function 'amdkfd_fence_signal':
>> drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_fence.c:162:9: error: implicit declaration of function 'dma_fence_lock_irqsafe'; did you mean 'dma_fence_lock_irqsave'? [-Werror=implicit-function-declaration]
     162 |         dma_fence_lock_irqsafe(f, flags)
         |         ^~~~~~~~~~~~~~~~~~~~~~
         |         dma_fence_lock_irqsave
>> drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_fence.c:162:41: error: expected ';' before 'if'
     162 |         dma_fence_lock_irqsafe(f, flags)
         |                                         ^
         |                                         ;
     163 |         if (fence->mm) {
         |         ~~                               
>> drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_fence.c:169:1: error: expected ';' before '}' token
     169 | }
         | ^
>> drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_fence.c:159:37: warning: unused variable 'fence' [-Wunused-variable]
     159 |         struct amdgpu_amdkfd_fence *fence = to_amdgpu_amdkfd_fence(f);
         |                                     ^~~~~
   cc1: some warnings being treated as errors


vim +162 drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_fence.c

   156	
   157	void amdkfd_fence_signal(struct dma_fence *f)
   158	{
 > 159		struct amdgpu_amdkfd_fence *fence = to_amdgpu_amdkfd_fence(f);
   160		long flags;
   161	
 > 162		dma_fence_lock_irqsafe(f, flags)
   163		if (fence->mm) {
   164			mmdrop(fence->mm);
   165			fence->mm = NULL;
   166		}
   167		dma_fence_signal_locked(f);
   168		dma_fence_unlock_irqrestore(f, flags)
 > 169	}
   170	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
