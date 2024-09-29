Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA49989220
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 29 Sep 2024 02:26:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1EC3843F38
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 29 Sep 2024 00:26:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
	by lists.linaro.org (Postfix) with ESMTPS id 0EBDB3F3CA
	for <linaro-mm-sig@lists.linaro.org>; Sun, 29 Sep 2024 00:26:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=WONjkGIM;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 198.175.65.20 as permitted sender) smtp.mailfrom=lkp@intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1727569569; x=1759105569;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=EwYvhotwgMeB4AfN253GUIcoDG6KLpKAA6s5FiZ2mT4=;
  b=WONjkGIMOzZrfV/kU7soA95tursdK+gGT9Dz/7RH1umceln1cqMixg9x
   /d16+A9Pu1iNlQj7Z9FG5z7EfDe4ycskGV/BhIRRO9W3WKRBe6D3kURfA
   acGghlD/L4zWMOnebL1d9XM7b1y+9rI0BmWRGD5IIzOEFtuvDFX7Ftl9z
   o4kRnYs24wcKAlb1yNri4Who/I78vgwaztdhX43Xl1Smj3fNVEYOCWPLg
   B21YvWIHGaXakhyrREyqi8qsLG3WO4FIc2h5KNw42R7raT9X4sRzhu3wL
   1CcbWUrrcnyPZwvuv9YxOm4LXXYqFMG1iDeDTy/+Uq3rfH+77cfDUUsVY
   A==;
X-CSE-ConnectionGUID: 90LNwEbzSiW9dASuWSkkeQ==
X-CSE-MsgGUID: RV8l53E6Rr2u4RJV59hgHg==
X-IronPort-AV: E=McAfee;i="6700,10204,11209"; a="26489604"
X-IronPort-AV: E=Sophos;i="6.11,162,1725346800";
   d="scan'208";a="26489604"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Sep 2024 17:26:07 -0700
X-CSE-ConnectionGUID: IJEpIeM8S9G5HFY76Z8rCQ==
X-CSE-MsgGUID: w7lS5/EoSa6dINB4l2OmVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,162,1725346800";
   d="scan'208";a="77427612"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
  by fmviesa004.fm.intel.com with ESMTP; 28 Sep 2024 17:26:03 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1suhlB-000NmF-1f;
	Sun, 29 Sep 2024 00:26:01 +0000
Date: Sun, 29 Sep 2024 08:25:38 +0800
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
Message-ID: <202409291048.zLqDeqpO-lkp@intel.com>
References: <20240923230912.2207320-4-adrian.larumbe@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240923230912.2207320-4-adrian.larumbe@collabora.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0EBDB3F3CA
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:4983, ipnet:198.175.64.0/23, country:US];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
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
X-Rspamd-Action: no action
Message-ID-Hash: QGAHNMHTZQGFZEEHLE4GPXJFCEQATMIZ
X-Message-ID-Hash: QGAHNMHTZQGFZEEHLE4GPXJFCEQATMIZ
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, kernel@collabora.com, =?iso-8859-1?Q?Adri=E1n?= Larumbe <adrian.larumbe@collabora.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 3/5] drm/panthor: add DRM fdinfo support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QGAHNMHTZQGFZEEHLE4GPXJFCEQATMIZ/>
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
[also build test ERROR on v6.11 next-20240927]
[cannot apply to drm-misc/drm-misc-next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Adri-n-Larumbe/drm-p=
anthor-introduce-job-cycle-and-timestamp-accounting/20240924-071018
base:   linus/master
patch link:    https://lore.kernel.org/r/20240923230912.2207320-4-adrian.la=
rumbe%40collabora.com
patch subject: [PATCH v8 3/5] drm/panthor: add DRM fdinfo support
config: arm-randconfig-002-20240929 (https://download.01.org/0day-ci/archiv=
e/20240929/202409291048.zLqDeqpO-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 14.1.0
reproduce (this is a W=3D1 build): (https://download.01.org/0day-ci/archive=
/20240929/202409291048.zLqDeqpO-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new versio=
n of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202409291048.zLqDeqpO-lkp@i=
ntel.com/

All errors (new ones prefixed by >>):

   In file included from include/linux/math64.h:6,
                    from include/linux/time.h:6,
                    from include/linux/stat.h:19,
                    from include/linux/module.h:13,
                    from drivers/gpu/drm/panthor/panthor_drv.c:7:
   drivers/gpu/drm/panthor/panthor_drv.c: In function 'panthor_gpu_show_fdi=
nfo':
>> drivers/gpu/drm/panthor/panthor_drv.c:1389:45: error: implicit declarati=
on of function 'arch_timer_get_cntfrq' [-Wimplicit-function-declaration]
    1389 |                                             arch_timer_get_cntfr=
q()));
         |                                             ^~~~~~~~~~~~~~~~~~~~~
   include/linux/math.h:40:39: note: in definition of macro 'DIV_ROUND_DOWN=
_ULL'
      40 |         ({ unsigned long long _tmp =3D (ll); do_div(_tmp, d); _t=
mp; })
         |                                       ^~
   drivers/gpu/drm/panthor/panthor_drv.c:1388:28: note: in expansion of mac=
ro 'DIV_ROUND_UP_ULL'
    1388 |                            DIV_ROUND_UP_ULL((pfile->stats.time *=
 NSEC_PER_SEC),
         |                            ^~~~~~~~~~~~~~~~


vim +/arch_timer_get_cntfrq +1389 drivers/gpu/drm/panthor/panthor_drv.c

  1377=09
  1378	static void panthor_gpu_show_fdinfo(struct panthor_device *ptdev,
  1379					    struct panthor_file *pfile,
  1380					    struct drm_printer *p)
  1381	{
  1382		if (ptdev->profile_mask & PANTHOR_DEVICE_PROFILING_ALL)
  1383			panthor_fdinfo_gather_group_samples(pfile);
  1384=09
  1385		if (ptdev->profile_mask & PANTHOR_DEVICE_PROFILING_TIMESTAMP) {
  1386	#ifdef CONFIG_ARM_ARCH_TIMER
  1387			drm_printf(p, "drm-engine-panthor:\t%llu ns\n",
  1388				   DIV_ROUND_UP_ULL((pfile->stats.time * NSEC_PER_SEC),
> 1389						    arch_timer_get_cntfrq()));
  1390	#endif
  1391		}
  1392		if (ptdev->profile_mask & PANTHOR_DEVICE_PROFILING_CYCLES)
  1393			drm_printf(p, "drm-cycles-panthor:\t%llu\n", pfile->stats.cycles);
  1394=09
  1395		drm_printf(p, "drm-maxfreq-panthor:\t%lu Hz\n", ptdev->fast_rate);
  1396		drm_printf(p, "drm-curfreq-panthor:\t%lu Hz\n", ptdev->current_freq=
uency);
  1397	}
  1398=09

--=20
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
