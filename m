Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJBFKhrZcmmqqAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jan 2026 03:12:42 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 06CAF6F79C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jan 2026 03:12:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E0AF5401BA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jan 2026 02:12:40 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
	by lists.linaro.org (Postfix) with ESMTPS id 693E23F7BA
	for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jan 2026 02:12:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b="Gjpx/6be";
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 198.175.65.12 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1769134355; x=1800670355;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Urg92rPlSCxkcW9xwWZMP1kRZiw/qhuHYe6F6frl7B0=;
  b=Gjpx/6be9g6FHWUhwmcmM3pScjKc3btUQ/ahJeeyWY9d6lItZvRy098A
   4sgrGLQsV31w+VehJG71Ocr8vjX6CjkifMwtNBogvYwnnwlPYo5TWVLiQ
   kChk+R8ONd2WVWylYtQXoniC8/y3/Dhgk5zM8pso29VlDnWXTwx41nBJc
   fvHTFhYvoO+6EFEJAvvSf4K7Rm4zcZz3hbk2GWWel3P+45OXfhcqLQjT4
   DvESIfAeqLDMOj4fnoZIyRXwiaLT2AnGGjPhCbGNaqPsW6KiE9cuXYGe/
   sfy0l3bl9Jbz6jnlVo2tVCcCjxhfJP8FdnB6AMHABPyPKJzCDl+xGzKif
   w==;
X-CSE-ConnectionGUID: 39ttU33gRc6+6hLpbYryTQ==
X-CSE-MsgGUID: UzSd95nJSFCyhsMvdKFdaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="81827752"
X-IronPort-AV: E=Sophos;i="6.21,247,1763452800";
   d="scan'208";a="81827752"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jan 2026 18:12:34 -0800
X-CSE-ConnectionGUID: ZXJ8HK+9RoiuAX4b/V1nhg==
X-CSE-MsgGUID: kenf7FazSm+yHFpZFug07w==
X-ExtLoop1: 1
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
  by fmviesa003.fm.intel.com with ESMTP; 22 Jan 2026 18:12:29 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vj6ew-00000000TQo-2Ia2;
	Fri, 23 Jan 2026 02:12:26 +0000
Date: Fri, 23 Jan 2026 10:11:33 +0800
From: kernel test robot <lkp@intel.com>
To: Thierry Reding <thierry.reding@kernel.org>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Sumit Semwal <sumit.semwal@linaro.org>
Message-ID: <202601231052.RfGOFd3g-lkp@intel.com>
References: <20260122161009.3865888-5-thierry.reding@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260122161009.3865888-5-thierry.reding@kernel.org>
X-Spamd-Bar: ------
Message-ID-Hash: FUX7U4NBCS2WPKLWN3XHSCLJUPUBLMTV
X-Message-ID-Hash: FUX7U4NBCS2WPKLWN3XHSCLJUPUBLMTV
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, Linux Memory Management List <linux-mm@kvack.org>, David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, Sumit Garg <sumit.garg@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 04/10] mm/cma: Allow dynamically creating CMA areas
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FUX7U4NBCS2WPKLWN3XHSCLJUPUBLMTV/>
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
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,ffwll.ch,linaro.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_HAM(-0.00)[-0.968];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,01.org:url,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 06CAF6F79C
X-Rspamd-Action: no action

Hi Thierry,

kernel test robot noticed the following build errors:

[auto build test ERROR on akpm-mm/mm-everything]
[also build test ERROR on next-20260122]
[cannot apply to drm-misc/drm-misc-next robh/for-next linus/master v6.19-rc6]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Thierry-Reding/dt-bindings-reserved-memory-Document-Tegra-VPR/20260123-001244
base:   https://git.kernel.org/pub/scm/linux/kernel/git/akpm/mm.git mm-everything
patch link:    https://lore.kernel.org/r/20260122161009.3865888-5-thierry.reding%40kernel.org
patch subject: [PATCH v2 04/10] mm/cma: Allow dynamically creating CMA areas
config: openrisc-randconfig-r072-20260123 (https://download.01.org/0day-ci/archive/20260123/202601231052.RfGOFd3g-lkp@intel.com/config)
compiler: or1k-linux-gcc (GCC) 15.2.0
smatch version: v0.5.0-8994-gd50c5a4c
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260123/202601231052.RfGOFd3g-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202601231052.RfGOFd3g-lkp@intel.com/

All errors (new ones prefixed by >>):

   mm/cma_sysfs.c: In function 'cma_sysfs_init':
>> mm/cma_sysfs.c:119:25: error: 'cma_area_count' undeclared (first use in this function); did you mean 'cma_early_area_count'?
     119 |         for (i = 0; i < cma_area_count; i++) {
         |                         ^~~~~~~~~~~~~~
         |                         cma_early_area_count
   mm/cma_sysfs.c:119:25: note: each undeclared identifier is reported only once for each function it appears in
>> mm/cma_sysfs.c:126:24: error: 'cma_areas' undeclared (first use in this function); did you mean 'cma_attrs'?
     126 |                 cma = &cma_areas[i];
         |                        ^~~~~~~~~
         |                        cma_attrs


vim +119 mm/cma_sysfs.c

43ca106fa8ec7d Minchan Kim 2021-05-04  107  
43ca106fa8ec7d Minchan Kim 2021-05-04  108  static int __init cma_sysfs_init(void)
43ca106fa8ec7d Minchan Kim 2021-05-04  109  {
43ca106fa8ec7d Minchan Kim 2021-05-04  110  	struct kobject *cma_kobj_root;
43ca106fa8ec7d Minchan Kim 2021-05-04  111  	struct cma_kobject *cma_kobj;
43ca106fa8ec7d Minchan Kim 2021-05-04  112  	struct cma *cma;
43ca106fa8ec7d Minchan Kim 2021-05-04  113  	int i, err;
43ca106fa8ec7d Minchan Kim 2021-05-04  114  
43ca106fa8ec7d Minchan Kim 2021-05-04  115  	cma_kobj_root = kobject_create_and_add("cma", mm_kobj);
43ca106fa8ec7d Minchan Kim 2021-05-04  116  	if (!cma_kobj_root)
43ca106fa8ec7d Minchan Kim 2021-05-04  117  		return -ENOMEM;
43ca106fa8ec7d Minchan Kim 2021-05-04  118  
43ca106fa8ec7d Minchan Kim 2021-05-04 @119  	for (i = 0; i < cma_area_count; i++) {
43ca106fa8ec7d Minchan Kim 2021-05-04  120  		cma_kobj = kzalloc(sizeof(*cma_kobj), GFP_KERNEL);
43ca106fa8ec7d Minchan Kim 2021-05-04  121  		if (!cma_kobj) {
43ca106fa8ec7d Minchan Kim 2021-05-04  122  			err = -ENOMEM;
43ca106fa8ec7d Minchan Kim 2021-05-04  123  			goto out;
43ca106fa8ec7d Minchan Kim 2021-05-04  124  		}
43ca106fa8ec7d Minchan Kim 2021-05-04  125  
43ca106fa8ec7d Minchan Kim 2021-05-04 @126  		cma = &cma_areas[i];

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
