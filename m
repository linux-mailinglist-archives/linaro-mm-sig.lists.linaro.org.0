Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 018A67F26D4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Nov 2023 08:59:30 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C457A3F58D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Nov 2023 07:59:28 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
	by lists.linaro.org (Postfix) with ESMTPS id 1C0E93EFDA
	for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Nov 2023 07:59:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=nwTNATo0;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1700553558; x=1732089558;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=LDIc82kYebRFXXXKJLCrCsib1czP4FuMykMyYp82uag=;
  b=nwTNATo0Vh0MMSWIM4KyRL+Fgr4gsR7yRTljuT80DogecnVrg3Uhb96O
   Bg4ktTaqcIv8fM/zMMSXT9vc+DIlmGSmiQ5CiJ3lUvjN+s07xGAasJ5sy
   c1ks/MWE6VkxVnXEQc69LhBMJ0n4WLqbcoO0LHMvBLU67LJTy3ctQAoJT
   4rTT19cxtZWbYdnU7Imr9ITS98h2tv0+9Xma7pA12rRu3oCbFF/7CkDkc
   Ie8BLfseV627z519CZQHlvb7vlP79O4b/DGPWoRoI+DIcfz9d+8hQe9tR
   GygL6cjztTq7PdWxhNedfUn8zwNw6C5fJvjcvE13f40C92VqNrbdHU/vL
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="477992239"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600";
   d="scan'208";a="477992239"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Nov 2023 23:59:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="890174892"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600";
   d="scan'208";a="890174892"
Received: from lkp-server02.sh.intel.com (HELO b8de5498638e) ([10.239.97.151])
  by orsmga004.jf.intel.com with ESMTP; 20 Nov 2023 23:59:12 -0800
Received: from kbuild by b8de5498638e with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1r5Lez-0007X6-2K;
	Tue, 21 Nov 2023 07:59:07 +0000
Date: Tue, 21 Nov 2023 15:58:15 +0800
From: kernel test robot <lkp@intel.com>
To: Marco Pagani <marpagan@redhat.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian Koenig <christian.koenig@amd.com>
Message-ID: <202311211542.3ZrZO6J2-lkp@intel.com>
References: <20231120150339.104257-1-marpagan@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231120150339.104257-1-marpagan@redhat.com>
X-Rspamd-Queue-Id: 1C0E93EFDA
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:192.55.52.43/32];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:4983, ipnet:192.55.52.0/24, country:US];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[redhat.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[pgazz.com,gmail.com,lists.linux.dev,vger.kernel.org,lists.freedesktop.org,redhat.com,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: ZEZSCJTWTWBLAIWR3Y73XPCQ65XYK75M
X-Message-ID-Hash: ZEZSCJTWTWBLAIWR3Y73XPCQ65XYK75M
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Paul Gazzillo <paul@pgazz.com>, Necip Fazil Yildiran <fazilyildiran@gmail.com>, oe-kbuild-all@lists.linux.dev, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Marco Pagani <marpagan@redhat.com>, linaro-mm-sig@lists.linaro.org, Javier Martinez Canillas <javierm@redhat.com>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] drm/test: add a test suite for GEM objects backed by shmem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZEZSCJTWTWBLAIWR3Y73XPCQ65XYK75M/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Marco,

kernel test robot noticed the following build warnings:

[auto build test WARNING on c79b972eb88b077d2765e7790d0902b3dc94d55c]

url:    https://github.com/intel-lab-lkp/linux/commits/Marco-Pagani/drm-test-add-a-test-suite-for-GEM-objects-backed-by-shmem/20231120-230829
base:   c79b972eb88b077d2765e7790d0902b3dc94d55c
patch link:    https://lore.kernel.org/r/20231120150339.104257-1-marpagan%40redhat.com
patch subject: [PATCH v3] drm/test: add a test suite for GEM objects backed by shmem
config: arm-kismet-CONFIG_DRM_GEM_SHMEM_HELPER-CONFIG_DRM_KUNIT_TEST-0-0 (https://download.01.org/0day-ci/archive/20231121/202311211542.3ZrZO6J2-lkp@intel.com/config)
reproduce: (https://download.01.org/0day-ci/archive/20231121/202311211542.3ZrZO6J2-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202311211542.3ZrZO6J2-lkp@intel.com/

kismet warnings: (new ones prefixed by >>)
>> kismet: WARNING: unmet direct dependencies detected for DRM_GEM_SHMEM_HELPER when selected by DRM_KUNIT_TEST
   
   WARNING: unmet direct dependencies detected for DRM_GEM_SHMEM_HELPER
     Depends on [n]: HAS_IOMEM [=y] && DRM [=y] && MMU [=n]
     Selected by [y]:
     - DRM_KUNIT_TEST [=y] && HAS_IOMEM [=y] && DRM [=y] && KUNIT [=y]

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
