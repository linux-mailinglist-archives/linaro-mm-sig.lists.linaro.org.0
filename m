Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3919797D9
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 15 Sep 2024 18:44:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3BEED44016
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 15 Sep 2024 16:44:01 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
	by lists.linaro.org (Postfix) with ESMTPS id 09FAE43F92
	for <linaro-mm-sig@lists.linaro.org>; Sun, 15 Sep 2024 16:43:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=lIVac4Ux;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 192.198.163.9 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1726418637; x=1757954637;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=jtr1z9sq//ff08X+wS3ZIAFe7Sp8ILl0NmP39G+1LZo=;
  b=lIVac4UxyI5cY3+hHPZjrHvaxm85sFk6O/cmAdeI2mFn4HWiqna8OaOA
   xy0YfTgLLdlkabhfDS8P2U0nk5kW+aKv7uVyfWe3IoZdGHQSp8DEpGLc9
   3XeVHBLvWfREJTI133QeDGEPjbsf12bP7oHms5bA6se+WsDVs9fDllfSi
   oyrj4bBWSiHmeiCJqbhWoWk/85Khfga/0ToK6pvynoiuCY9FMuHJuS7D4
   zEz9vCmAEmURANvli7KLkjQrQwudciGiC6do3kiMXCiypILQD2iuxR2Xp
   IjK/TwXKzV+5eadD28wf02YAaiCcujhCMLj6CBzCf1Fe//ic+4XVC63+W
   g==;
X-CSE-ConnectionGUID: uTWHKFwYT5m17+vJIIQacw==
X-CSE-MsgGUID: 0EMSotq8SOua4H46MIokRQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11196"; a="35938944"
X-IronPort-AV: E=Sophos;i="6.10,231,1719903600";
   d="scan'208";a="35938944"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Sep 2024 09:43:55 -0700
X-CSE-ConnectionGUID: Ac/7OfB2S9Kj8B5ZUPZ0VQ==
X-CSE-MsgGUID: lf7J0Mv/TKS5oTaaBKo4uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,231,1719903600";
   d="scan'208";a="73255176"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
  by fmviesa004.fm.intel.com with ESMTP; 15 Sep 2024 09:43:52 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1spsLl-0008qk-23;
	Sun, 15 Sep 2024 16:43:49 +0000
Date: Mon, 16 Sep 2024 00:43:18 +0800
From: kernel test robot <lkp@intel.com>
To: =?iso-8859-1?Q?Adri=E1n?= Larumbe <adrian.larumbe@collabora.com>,
	Boris Brezillon <bbrezillon@kernel.org>,
	Steven Price <steven.price@arm.com>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <202409160050.m7VEd3pY-lkp@intel.com>
References: <20240913124857.389630-2-adrian.larumbe@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240913124857.389630-2-adrian.larumbe@collabora.com>
X-Rspamd-Action: no action
X-Spamd-Bar: -----
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 09FAE43F92
X-Spamd-Result: default: False [-6.00 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[99.99%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:192.198.163.0/26];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:4983, ipnet:192.198.162.0/23, country:US];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[collabora.com,kernel.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
Message-ID-Hash: ETRIJDGKZ4OYNSW5I52ELPX2RYGFY5UY
X-Message-ID-Hash: ETRIJDGKZ4OYNSW5I52ELPX2RYGFY5UY
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, kernel@collabora.com, =?iso-8859-1?Q?Adri=E1n?= Larumbe <adrian.larumbe@collabora.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 1/5] drm/panthor: introduce job cycle and timestamp accounting
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ETRIJDGKZ4OYNSW5I52ELPX2RYGFY5UY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Adri=E1n,

kernel test robot noticed the following build errors:

[auto build test ERROR on linus/master]
[also build test ERROR on v6.11 next-20240913]
[cannot apply to drm-misc/drm-misc-next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Adri-n-Larumbe/drm-p=
anthor-introduce-job-cycle-and-timestamp-accounting/20240913-205038
base:   linus/master
patch link:    https://lore.kernel.org/r/20240913124857.389630-2-adrian.lar=
umbe%40collabora.com
patch subject: [PATCH v6 1/5] drm/panthor: introduce job cycle and timestam=
p accounting
config: i386-buildonly-randconfig-002-20240915 (https://download.01.org/0da=
y-ci/archive/20240916/202409160050.m7VEd3pY-lkp@intel.com/config)
compiler: clang version 18.1.8 (https://github.com/llvm/llvm-project 3b5b5c=
1ec4a3095ab096dd780e84d7ab81f3d7ff)
reproduce (this is a W=3D1 build): (https://download.01.org/0day-ci/archive=
/20240916/202409160050.m7VEd3pY-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new versio=
n of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202409160050.m7VEd3pY-lkp@i=
ntel.com/

All errors (new ones prefixed by >>):

>> ld.lld: error: call to __compiletime_assert_341 marked "dontcall-error":=
 min(ringbuf_size - start, size) signedness error

--=20
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
