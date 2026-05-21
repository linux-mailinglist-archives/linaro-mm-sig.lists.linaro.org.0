Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kIf/GmTUDmo9CgYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 11:46:12 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0718A5A29A9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 11:46:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B589340976
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 09:46:10 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
	by lists.linaro.org (Postfix) with ESMTPS id 83DD540446
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 May 2026 09:45:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=DrvUa2kB;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 198.175.65.16 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1779356760; x=1810892760;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=TCZTrJrBdgiRh4gqQvmMTY8x6g99ouQ5GXQCNVm/HPI=;
  b=DrvUa2kBdnjfLyVcq1eocXWFs/6BFglNj97tGyow94jr8VsbMwBE3UwJ
   Adtio4M4UCFdg0At8/U8Nm5P6/uCuBafTN4FTl3KNATu/SyizE9EA6W46
   um65qyFtTI5jP8pipZCqkmOjNFFBp3kMw1etaXwPEP2DWFEqhI9k4z3M4
   aUm+Vsgnj6Jpxg8RxNQ3GomqBYm8h/k63U3wmB6mUWfsMPKZ8uJ79L2hw
   WM30csp5Uy29eP7k+RXUCky4Xpgoe1P6+7loNp7SeAUg/OswvK36CWngD
   xinkSpT1j0Z2mSfoDIXk/utvM63ux6hAj1I5PCixb7JA+9Y0mFKuBdDtJ
   A==;
X-CSE-ConnectionGUID: nLp/67+uTDaY8SMEAYqx2g==
X-CSE-MsgGUID: +ZMw+qOQRAu4NPjU8m5SzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11792"; a="80450412"
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000";
   d="scan'208";a="80450412"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 May 2026 02:45:59 -0700
X-CSE-ConnectionGUID: +rUo7ROgQlyofsz/e5I0oA==
X-CSE-MsgGUID: /nQHP1Q7QSCozMJLtKgr9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000";
   d="scan'208";a="240347284"
Received: from igk-lkp-server01.igk.intel.com (HELO bdf09bfdbd5f) ([10.211.93.152])
  by orviesa008.jf.intel.com with ESMTP; 21 May 2026 02:45:55 -0700
Received: from kbuild by bdf09bfdbd5f with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1wPzyT-00000000Aq7-0tKX;
	Thu, 21 May 2026 09:45:53 +0000
Date: Thu, 21 May 2026 11:45:42 +0200
From: kernel test robot <lkp@intel.com>
To: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>,
	amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org
Message-ID: <202605211112.xlUYDZeM-lkp@intel.com>
References: <20260520151741.50575-3-mikhail.v.gavrilov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260520151741.50575-3-mikhail.v.gavrilov@gmail.com>
X-Spamd-Bar: ------
Message-ID-Hash: XGIILH2LEWHHHHFIITZI4LVVTGJJM24D
X-Message-ID-Hash: XGIILH2LEWHHHHFIITZI4LVVTGJJM24D
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, Alex Deucher <alexander.deucher@amd.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 2/2] drm/amdgpu: fix recursive ww_mutex acquire in amdgpu_devcoredump_format
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XGIILH2LEWHHHHFIITZI4LVVTGJJM24D/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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
	FREEMAIL_CC(0.00)[lists.linux.dev,amd.com,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 0718A5A29A9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Mikhail,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-misc/drm-misc-next]
[also build test WARNING on drm/drm-next drm-i915/for-linux-next drm-i915/for-linux-next-fixes drm-tip/drm-tip next-20260520]
[cannot apply to linus/master v6.16-rc1]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Mikhail-Gavrilov/drm-amdgpu-convert-amdgpu_vm_lock_by_pasid-to-drm_exec/20260520-231931
base:   https://gitlab.freedesktop.org/drm/misc/kernel.git drm-misc-next
patch link:    https://lore.kernel.org/r/20260520151741.50575-3-mikhail.v.gavrilov%40gmail.com
patch subject: [PATCH v3 2/2] drm/amdgpu: fix recursive ww_mutex acquire in amdgpu_devcoredump_format
compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
docutils: docutils (Docutils 0.21.2, Python 3.13.5, on linux)
reproduce: (https://download.01.org/0day-ci/archive/20260521/202605211112.xlUYDZeM-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202605211112.xlUYDZeM-lkp@intel.com/

All warnings (new ones prefixed by >>):

   AMD plane color pipeline
   ------------------------ [docutils]
>> Documentation/gpu/amdgpu/driver-core:225: ./drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:2958: WARNING: Inline emphasis start-string without end-string. [docutils]
   Documentation/gpu/driver-uapi:31: ./include/uapi/drm/xe_drm.h:2538: ERROR: Unexpected section title.

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
