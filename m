Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C781AFECFA
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Jul 2025 17:03:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B8F6045739
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  9 Jul 2025 15:03:19 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
	by lists.linaro.org (Postfix) with ESMTPS id F1B4443BFB
	for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Jul 2025 15:02:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=Xti7dCmR;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 192.198.163.9 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1752073370; x=1783609370;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=UmvOJsqQeOZo6uv2hXfptlbOgxzKjfEBeTjZ5Q0Wrbk=;
  b=Xti7dCmRGe/emyFj6larF/be3LQjGY35LjBdjMpDuAlOdvf5lW92+ABy
   soEDeBOYHVetFACzR39o/73BMh7GIJXHG3mnmFcedfuO6HrrWp0D//LWS
   z5kGe3U/8tm3DotRxBzqN6bIfovDY3YMoR9PuUtqmBxvq8TN43zYYPfnb
   P98rpBZACIm4RqDOwulC7Sc2I8XE2iN0aDNb+VU9gQ2hfJrZBlgFMHv7Q
   AZ/wyLA8CUMHUF8Brho6DIEFmX98JpOo/VAVTmoIH5K2tWJqlN7PCMtYK
   b8Wwt0zleFpID3llvv/+QkrqCldYbRQd0ziBWrCK2Y36EFC1As+3RtKBD
   A==;
X-CSE-ConnectionGUID: 87yHIxPpTFSlJP0QP2CG6A==
X-CSE-MsgGUID: htgHu9L1SbCCqNPN7krt/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11489"; a="65035758"
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600";
   d="scan'208";a="65035758"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jul 2025 08:02:49 -0700
X-CSE-ConnectionGUID: jQGMFmdxT2arjTPo/Z/l4A==
X-CSE-MsgGUID: m/zVlW8/THqyehHj9WGIWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600";
   d="scan'208";a="155431612"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
  by fmviesa007.fm.intel.com with ESMTP; 09 Jul 2025 08:02:40 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1uZWJh-0003eF-2o;
	Wed, 09 Jul 2025 15:02:37 +0000
Date: Wed, 9 Jul 2025 23:02:27 +0800
From: kernel test robot <lkp@intel.com>
To: LiangCheng Wang <zaq14760@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Wig Cheng <onlywig@gmail.com>
Message-ID: <202507092231.FtZkMync-lkp@intel.com>
References: <20250708-drm-v1-2-45055fdadc8a@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250708-drm-v1-2-45055fdadc8a@gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: F1B4443BFB
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
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:4983, ipnet:192.198.162.0/23, country:US];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.linux.dev,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_RCPT(0.00)[dt];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linux.intel.com,suse.de,ffwll.ch,linaro.org,amd.com];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[intel.com:dkim];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: V6X7TUF6L2PFZ6OQHCKK7E3ICWJ7MJRR
X-Message-ID-Hash: V6X7TUF6L2PFZ6OQHCKK7E3ICWJ7MJRR
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, LiangCheng Wang <zaq14760@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/3] drm: tiny: Add support for Mayqueen Pixpaper e-ink panel
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V6X7TUF6L2PFZ6OQHCKK7E3ICWJ7MJRR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi LiangCheng,

kernel test robot noticed the following build warnings:

[auto build test WARNING on d7b8f8e20813f0179d8ef519541a3527e7661d3a]

url:    https://github.com/intel-lab-lkp/linux/commits/LiangCheng-Wang/dt-bindings-vendor-prefixes-Add-Mayqueen-name/20250708-180933
base:   d7b8f8e20813f0179d8ef519541a3527e7661d3a
patch link:    https://lore.kernel.org/r/20250708-drm-v1-2-45055fdadc8a%40gmail.com
patch subject: [PATCH 2/3] drm: tiny: Add support for Mayqueen Pixpaper e-ink panel
config: sparc-randconfig-r112-20250709 (https://download.01.org/0day-ci/archive/20250709/202507092231.FtZkMync-lkp@intel.com/config)
compiler: sparc64-linux-gcc (GCC) 14.3.0
reproduce: (https://download.01.org/0day-ci/archive/20250709/202507092231.FtZkMync-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202507092231.FtZkMync-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/gpu/drm/tiny/pixpaper.c:85:10: sparse: sparse: Initializer entry defined twice
   drivers/gpu/drm/tiny/pixpaper.c:86:9: sparse:   also defined here
   drivers/gpu/drm/tiny/pixpaper.c:601:10: sparse: sparse: Initializer entry defined twice
   drivers/gpu/drm/tiny/pixpaper.c:606:10: sparse:   also defined here

vim +85 drivers/gpu/drm/tiny/pixpaper.c

    80	
    81	static const struct drm_plane_funcs pixpaper_plane_funcs = {
    82		.update_plane = drm_atomic_helper_update_plane,
    83		.disable_plane = drm_atomic_helper_disable_plane,
    84		.destroy = drm_plane_cleanup,
  > 85		.reset = drm_atomic_helper_plane_reset,
    86		DRM_GEM_SHADOW_PLANE_FUNCS,
    87	};
    88	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
