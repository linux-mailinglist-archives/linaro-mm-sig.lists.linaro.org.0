Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MKdtJOXnB2reOAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 05:43:33 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F80555A093
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 05:43:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7B475404BB
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 16 May 2026 03:43:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
	by lists.linaro.org (Postfix) with ESMTPS id 9E38240144
	for <linaro-mm-sig@lists.linaro.org>; Sat, 16 May 2026 03:43:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=FocGsEqu;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 192.198.163.14 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1778902999; x=1810438999;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ID9tdn2gYJjBbnWVxJgcOf7EQejKZETrIpsg4qqVtHY=;
  b=FocGsEqucluF9DZUzeu+jx+wX09b6hGCsNxQDwr/FU7v0iuTXfE27Lcr
   iOhMHSzXlz6v2rpuA4zjGDmM5dWVgy7yEtskAJOcK79ueb4aFtgeX4bXB
   01Qqe9KxU3S5zLkc8IJhxFayOzvrJt5vA6Eti2CDtKC+zkIYkoac8lwIV
   uxbznXfjWKFMdTiIIcTeiyjldyvHQYhWdlX8AIxkwQN50tccIbqeLL/Yz
   7RBnEN5S7EHECb5hOAlS0TdudomM9yejQg3aRIGbmMt7MuoTUZ261znMa
   ubHSZYdGW0rE4jdsjELR6lVFlLKeQXP4VCK9tU47MvEPWih7HqMEcQe4S
   g==;
X-CSE-ConnectionGUID: 3zwKSbFXT2SOzmnMeACqBg==
X-CSE-MsgGUID: O/vr9ZrDQsiEeqxlYRN+lQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11787"; a="79886299"
X-IronPort-AV: E=Sophos;i="6.23,237,1770624000";
   d="scan'208";a="79886299"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 May 2026 20:43:18 -0700
X-CSE-ConnectionGUID: s5Ygh37dSiCMUGCwRldduA==
X-CSE-MsgGUID: 3wjoSGchQBmh5FEgL/7rQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,237,1770624000";
   d="scan'208";a="276974691"
Received: from lkp-server01.sh.intel.com (HELO d94e5e629b2d) ([10.239.97.150])
  by orviesa001.jf.intel.com with ESMTP; 15 May 2026 20:43:14 -0700
Received: from kbuild by d94e5e629b2d with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1wO5vj-000000000RJ-1Wna;
	Sat, 16 May 2026 03:43:11 +0000
Date: Sat, 16 May 2026 11:43:03 +0800
From: kernel test robot <lkp@intel.com>
To: Lizhi Hou <lizhi.hou@amd.com>, ogabbay@kernel.org,
	quic_jhugo@quicinc.com, mario.limonciello@amd.com,
	karol.wachowski@linux.intel.com
Message-ID: <202605161116.6FTLJOlI-lkp@intel.com>
References: <20260515155332.743097-1-lizhi.hou@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260515155332.743097-1-lizhi.hou@amd.com>
X-Spamd-Bar: -----
Message-ID-Hash: YHULLWUMCVQSQ2RJFMHU6W533V3IPKGC
X-Message-ID-Hash: YHULLWUMCVQSQ2RJFMHU6W533V3IPKGC
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, Lizhi Hou <lizhi.hou@amd.com>, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, christian.koenig@amd.com, simona@ffwll.ch, max.zhen@amd.com, sonal.santan@amd.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V1] accel/amdxdna: Remove mmap and export support for ubuf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YHULLWUMCVQSQ2RJFMHU6W533V3IPKGC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 1F80555A093
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.59 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_HAM(-0.00)[-0.023];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,git-scm.com:url,gitlab.freedesktop.org:url,01.org:url,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Action: no action

Hi Lizhi,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-misc/drm-misc-next]
[also build test WARNING on linus/master v7.1-rc3 next-20260508]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Lizhi-Hou/accel-amdxdna-Remove-mmap-and-export-support-for-ubuf/20260516-000523
base:   https://gitlab.freedesktop.org/drm/misc/kernel.git drm-misc-next
patch link:    https://lore.kernel.org/r/20260515155332.743097-1-lizhi.hou%40amd.com
patch subject: [PATCH V1] accel/amdxdna: Remove mmap and export support for ubuf
config: x86_64-randconfig-002-20260516 (https://download.01.org/0day-ci/archive/20260516/202605161116.6FTLJOlI-lkp@intel.com/config)
compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260516/202605161116.6FTLJOlI-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202605161116.6FTLJOlI-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/accel/amdxdna/amdxdna_ubuf.c:86:42: warning: unused variable 'amdxdna_ubuf_vm_ops' [-Wunused-const-variable]
      86 | static const struct vm_operations_struct amdxdna_ubuf_vm_ops = {
         |                                          ^~~~~~~~~~~~~~~~~~~
   1 warning generated.


vim +/amdxdna_ubuf_vm_ops +86 drivers/accel/amdxdna/amdxdna_ubuf.c

bd72d4acda1069 Lizhi Hou 2025-07-16  85  
bd72d4acda1069 Lizhi Hou 2025-07-16 @86  static const struct vm_operations_struct amdxdna_ubuf_vm_ops = {
bd72d4acda1069 Lizhi Hou 2025-07-16  87  	.fault = amdxdna_ubuf_vm_fault,
bd72d4acda1069 Lizhi Hou 2025-07-16  88  };
bd72d4acda1069 Lizhi Hou 2025-07-16  89  

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
