Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 252B9B44D87
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  5 Sep 2025 07:29:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 087D745D1F
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  5 Sep 2025 05:29:41 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
	by lists.linaro.org (Postfix) with ESMTPS id 1D73F3F719
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Sep 2025 05:29:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=W00GLw71;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 192.198.163.15 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1757050173; x=1788586173;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=+GGeWtzOnhlywY1SautnLIfVlb/W/eBi0k6tGAU9xmE=;
  b=W00GLw71hzfX2HfeNO36bLjsMZ4fccn1kxnzjObAlbgvl35oVfhCdSlj
   UtKkg8vxNwxVFnNIgPNxdhkbxTy6zKd27Ld90tulmFMC7G70IlF+ZzQA5
   /SpkC1URu8d3YB4b7r6IqG1NqKIk3rpSJNZurAOH6mQufWpKxHjNw1n5U
   YhjMc2bCBXUJ1TB9cJk4Q6JHJG2aRrAd0oh9W/HJtkYGcGcPwPArrMmcQ
   BeYxqImAMX1gisVliwj3SmgQgrxqo+w+a95Gs3MrND5yKaJrOnb4JsNA9
   rUURNtFq9OV2hAYQ6ds+toINuATdYHOXX26C5EzXkGGRZEJisJwKfgazY
   Q==;
X-CSE-ConnectionGUID: dT0/HeTnTW6YY5rFrum9wg==
X-CSE-MsgGUID: 6lsUnpQ7RS2t9s9hgIKxsg==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="59509170"
X-IronPort-AV: E=Sophos;i="6.18,240,1751266800";
   d="scan'208";a="59509170"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Sep 2025 22:29:32 -0700
X-CSE-ConnectionGUID: Zu57G14KQ228dbPwUZN39g==
X-CSE-MsgGUID: QRofuRMxRbCSJ9Zg5SFtLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,240,1751266800";
   d="scan'208";a="176412850"
Received: from lkp-server01.sh.intel.com (HELO 114d98da2b6c) ([10.239.97.150])
  by fmviesa005.fm.intel.com with ESMTP; 04 Sep 2025 22:29:27 -0700
Received: from kbuild by 114d98da2b6c with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1uuP0m-00003X-31;
	Fri, 05 Sep 2025 05:29:24 +0000
Date: Fri, 5 Sep 2025 13:29:20 +0800
From: kernel test robot <lkp@intel.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Sumit Semwal <sumit.semwal@linaro.org>
Message-ID: <202509051316.Hlzf9HAw-lkp@intel.com>
References: <20250902154630.4032984-6-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250902154630.4032984-6-thierry.reding@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1D73F3F719
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
	RCPT_COUNT_TWELVE(0.00)[21];
	ASN(0.00)[asn:4983, ipnet:192.198.162.0/23, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
Message-ID-Hash: KUTFA3FS44BLMSSBEJQQ6LINQUW4XQ73
X-Message-ID-Hash: KUTFA3FS44BLMSSBEJQQ6LINQUW4XQ73
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, Linux Memory Management List <linux-mm@kvack.org>, David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 5/9] dma-buf: heaps: Add support for Tegra VPR
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KUTFA3FS44BLMSSBEJQQ6LINQUW4XQ73/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Thierry,

kernel test robot noticed the following build errors:

[auto build test ERROR on next-20250902]
[also build test ERROR on v6.17-rc4]
[cannot apply to robh/for-next akpm-mm/mm-everything tegra/for-next linus/master v6.17-rc4 v6.17-rc3 v6.17-rc2]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Thierry-Reding/dt-bindings-reserved-memory-Document-Tegra-VPR/20250902-235038
base:   next-20250902
patch link:    https://lore.kernel.org/r/20250902154630.4032984-6-thierry.reding%40gmail.com
patch subject: [PATCH 5/9] dma-buf: heaps: Add support for Tegra VPR
config: s390-allmodconfig (https://download.01.org/0day-ci/archive/20250905/202509051316.Hlzf9HAw-lkp@intel.com/config)
compiler: clang version 18.1.8 (https://github.com/llvm/llvm-project 3b5b5c1ec4a3095ab096dd780e84d7ab81f3d7ff)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250905/202509051316.Hlzf9HAw-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202509051316.Hlzf9HAw-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/dma-buf/heaps/tegra-vpr.c:158:26: error: called object type 'void *' is not a function or function pointer
     158 |                 err = pm_generic_freeze(node->dev);
         |                       ~~~~~~~~~~~~~~~~~^
   drivers/dma-buf/heaps/tegra-vpr.c:175:24: error: called object type 'void *' is not a function or function pointer
     175 |                 err = pm_generic_thaw(node->dev);
         |                       ~~~~~~~~~~~~~~~^
   drivers/dma-buf/heaps/tegra-vpr.c:192:14: error: call to undeclared function '__ptep_get'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     192 |         pte_t pte = __ptep_get(ptep);
         |                     ^
   drivers/dma-buf/heaps/tegra-vpr.c:192:14: note: did you mean 'ptep_get'?
   include/linux/pgtable.h:338:21: note: 'ptep_get' declared here
     338 | static inline pte_t ptep_get(pte_t *ptep)
         |                     ^
   drivers/dma-buf/heaps/tegra-vpr.c:192:8: error: initializing 'pte_t' with an expression of incompatible type 'int'
     192 |         pte_t pte = __ptep_get(ptep);
         |               ^     ~~~~~~~~~~~~~~~~
   drivers/dma-buf/heaps/tegra-vpr.c:194:36: error: use of undeclared identifier 'PROT_NORMAL'; did you mean 'ZONE_NORMAL'?
     194 |         pte = clear_pte_bit(pte, __pgprot(PROT_NORMAL));
         |                                           ^~~~~~~~~~~
         |                                           ZONE_NORMAL
   arch/s390/include/asm/page.h:122:36: note: expanded from macro '__pgprot'
     122 | #define __pgprot(x)     ((pgprot_t) { (x) } )
         |                                        ^
   include/linux/mmzone.h:806:2: note: 'ZONE_NORMAL' declared here
     806 |         ZONE_NORMAL,
         |         ^
   drivers/dma-buf/heaps/tegra-vpr.c:195:34: error: use of undeclared identifier 'PROT_DEVICE_nGnRnE'
     195 |         pte = set_pte_bit(pte, __pgprot(PROT_DEVICE_nGnRnE));
         |                                         ^
   drivers/dma-buf/heaps/tegra-vpr.c:197:2: error: call to undeclared function '__set_pte'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     197 |         __set_pte(ptep, pte);
         |         ^
   drivers/dma-buf/heaps/tegra-vpr.c:197:2: note: did you mean 'set_pte'?
   arch/s390/include/asm/pgtable.h:1041:20: note: 'set_pte' declared here
    1041 | static inline void set_pte(pte_t *ptep, pte_t pte)
         |                    ^
   drivers/dma-buf/heaps/tegra-vpr.c:205:14: error: call to undeclared function '__ptep_get'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     205 |         pte_t pte = __ptep_get(ptep);
         |                     ^
   drivers/dma-buf/heaps/tegra-vpr.c:205:8: error: initializing 'pte_t' with an expression of incompatible type 'int'
     205 |         pte_t pte = __ptep_get(ptep);
         |               ^     ~~~~~~~~~~~~~~~~
   drivers/dma-buf/heaps/tegra-vpr.c:207:36: error: use of undeclared identifier 'PROT_DEVICE_nGnRnE'
     207 |         pte = clear_pte_bit(pte, __pgprot(PROT_DEVICE_nGnRnE));
         |                                           ^
   drivers/dma-buf/heaps/tegra-vpr.c:208:34: error: use of undeclared identifier 'PROT_NORMAL'; did you mean 'ZONE_NORMAL'?
     208 |         pte = set_pte_bit(pte, __pgprot(PROT_NORMAL));
         |                                         ^~~~~~~~~~~
         |                                         ZONE_NORMAL
   arch/s390/include/asm/page.h:122:36: note: expanded from macro '__pgprot'
     122 | #define __pgprot(x)     ((pgprot_t) { (x) } )
         |                                        ^
   include/linux/mmzone.h:806:2: note: 'ZONE_NORMAL' declared here
     806 |         ZONE_NORMAL,
         |         ^
   drivers/dma-buf/heaps/tegra-vpr.c:210:2: error: call to undeclared function '__set_pte'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     210 |         __set_pte(ptep, pte);
         |         ^
   12 errors generated.


vim +158 drivers/dma-buf/heaps/tegra-vpr.c

   135	
   136	static int tegra_vpr_resize(struct tegra_vpr *vpr)
   137	{
   138		struct tegra_vpr_device *node;
   139		phys_addr_t base, size;
   140		int err;
   141	
   142		err = tegra_vpr_get_extents(vpr, &base, &size);
   143		if (err < 0) {
   144			pr_err("%s(): failed to get VPR extents: %d\n", __func__, err);
   145			return err;
   146		}
   147	
   148		if (vpr->use_freezer) {
   149			err = freeze_processes();
   150			if (err < 0) {
   151				pr_err("%s(): failed to freeze processes: %d\n",
   152				       __func__, err);
   153				return err;
   154			}
   155		}
   156	
   157		list_for_each_entry(node, &vpr->devices, node) {
 > 158			err = pm_generic_freeze(node->dev);
   159			if (err < 0) {
   160				pr_err("failed to runtime suspend %s\n",
   161				       dev_name(node->dev));
   162				continue;
   163			}
   164		}
   165	
   166		trace_tegra_vpr_set(base, size);
   167	
   168		err = tegra_vpr_set(base, size);
   169		if (err < 0) {
   170			pr_err("failed to secure VPR: %d\n", err);
   171			return err;
   172		}
   173	
   174		list_for_each_entry(node, &vpr->devices, node) {
   175			err = pm_generic_thaw(node->dev);
   176			if (err < 0) {
   177				pr_err("failed to runtime resume %s\n",
   178				       dev_name(node->dev));
   179				continue;
   180			}
   181		}
   182	
   183		if (vpr->use_freezer)
   184			thaw_processes();
   185	
   186		return 0;
   187	}
   188	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
