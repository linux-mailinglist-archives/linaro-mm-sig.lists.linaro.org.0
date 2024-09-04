Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE4596C4A6
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Sep 2024 19:02:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1CFD344618
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Sep 2024 17:02:39 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
	by lists.linaro.org (Postfix) with ESMTPS id E95D440B40
	for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Sep 2024 17:02:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=mC5IZNl5;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 192.198.163.10 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1725469357; x=1757005357;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=US8Ynb10iF9xYswNwvpB7BFfvlXZRqfZaVbdnQchArQ=;
  b=mC5IZNl5DMNdgL2MMYhgrDSM9LScwoQtanXs/lZBMHOTdt0POcNjJj6T
   8ncSNOHgj20CTj0jH6JZhpe02naDR4zmYC5VqttDCCvb0OQ6XNlpFEB1b
   GdmBuL6OjSKM52cx+KXrVePzDyObqNQg4gD7GgIwrktZBPA3dp3PNOAHW
   5QbknFntgF/CpDgvRrYnrvC2GHBjED07fpteyFxKXcZwFAjUJTGDuwFHu
   hB6/5crea4PlHcNkYAQEmoZfnc4gPfpx2w4iv/xO2fjfBjA1hzDLaweNJ
   xXAmHfEoAawDGyGrxibLKPEdmX0qb3mxFkhlV6ndrvWOoXxAe3oxB1Y9A
   Q==;
X-CSE-ConnectionGUID: LocGIvfYTsucKwoyXMiTHQ==
X-CSE-MsgGUID: zPAeEM6ARjeX2yXnKkm0VA==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="35533042"
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600";
   d="scan'208";a="35533042"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Sep 2024 10:02:35 -0700
X-CSE-ConnectionGUID: FLcKVKEESdSxQg/aSf7D6A==
X-CSE-MsgGUID: 0tp3ZtA7QuCfz06etye05w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600";
   d="scan'208";a="65389153"
Received: from lkp-server01.sh.intel.com (HELO 9c6b1c7d3b50) ([10.239.97.150])
  by fmviesa008.fm.intel.com with ESMTP; 04 Sep 2024 10:02:32 -0700
Received: from kbuild by 9c6b1c7d3b50 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sltOn-0008Mj-0n;
	Wed, 04 Sep 2024 17:02:29 +0000
Date: Thu, 5 Sep 2024 01:02:01 +0800
From: kernel test robot <lkp@intel.com>
To: =?iso-8859-1?Q?Adri=E1n?= Larumbe <adrian.larumbe@collabora.com>,
	Boris Brezillon <bbrezillon@kernel.org>,
	Steven Price <steven.price@arm.com>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <202409050054.oRwtzLQ4-lkp@intel.com>
References: <20240903202541.430225-2-adrian.larumbe@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240903202541.430225-2-adrian.larumbe@collabora.com>
X-Rspamd-Action: no action
X-Spamd-Bar: ------
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E95D440B40
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:192.198.163.0/26];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:4983, ipnet:192.198.162.0/23, country:US];
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
Message-ID-Hash: QVVIU7PJZ4VC2YQV3S3ZOZ3SZMXP3XLP
X-Message-ID-Hash: QVVIU7PJZ4VC2YQV3S3ZOZ3SZMXP3XLP
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, kernel@collabora.com, =?iso-8859-1?Q?Adri=E1n?= Larumbe <adrian.larumbe@collabora.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/4] drm/panthor: introduce job cycle and timestamp accounting
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QVVIU7PJZ4VC2YQV3S3ZOZ3SZMXP3XLP/>
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

[auto build test ERROR on drm-misc/drm-misc-next]
[also build test ERROR on linus/master v6.11-rc6 next-20240904]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Adri-n-Larumbe/drm-p=
anthor-introduce-job-cycle-and-timestamp-accounting/20240904-042645
base:   git://anongit.freedesktop.org/drm/drm-misc drm-misc-next
patch link:    https://lore.kernel.org/r/20240903202541.430225-2-adrian.lar=
umbe%40collabora.com
patch subject: [PATCH v5 1/4] drm/panthor: introduce job cycle and timestam=
p accounting
config: arc-allmodconfig (https://download.01.org/0day-ci/archive/20240905/=
202409050054.oRwtzLQ4-lkp@intel.com/config)
compiler: arceb-elf-gcc (GCC) 13.2.0
reproduce (this is a W=3D1 build): (https://download.01.org/0day-ci/archive=
/20240905/202409050054.oRwtzLQ4-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new versio=
n of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202409050054.oRwtzLQ4-lkp@i=
ntel.com/

All errors (new ones prefixed by >>):

   In file included from <command-line>:
   In function 'copy_instrs_to_ringbuf',
       inlined from 'queue_run_job' at drivers/gpu/drm/panthor/panthor_sche=
d.c:3089:2:
>> include/linux/compiler_types.h:510:45: error: call to '__compiletime_ass=
ert_435' declared with attribute error: min(ringbuf_size - start, size) sig=
nedness error
     510 |         _compiletime_assert(condition, msg, __compiletime_assert=
_, __COUNTER__)
         |                                             ^
   include/linux/compiler_types.h:491:25: note: in definition of macro '__c=
ompiletime_assert'
     491 |                         prefix ## suffix();                     =
        \
         |                         ^~~~~~
   include/linux/compiler_types.h:510:9: note: in expansion of macro '_comp=
iletime_assert'
     510 |         _compiletime_assert(condition, msg, __compiletime_assert=
_, __COUNTER__)
         |         ^~~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:39:37: note: in expansion of macro 'compiletim=
e_assert'
      39 | #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), =
msg)
         |                                     ^~~~~~~~~~~~~~~~~~
   include/linux/minmax.h:100:9: note: in expansion of macro 'BUILD_BUG_ON_=
MSG'
     100 |         BUILD_BUG_ON_MSG(!__types_ok(x,y,ux,uy),        \
         |         ^~~~~~~~~~~~~~~~
   include/linux/minmax.h:105:9: note: in expansion of macro '__careful_cmp=
_once'
     105 |         __careful_cmp_once(op, x, y, __UNIQUE_ID(x_), __UNIQUE_I=
D(y_))
         |         ^~~~~~~~~~~~~~~~~~
   include/linux/minmax.h:129:25: note: in expansion of macro '__careful_cm=
p'
     129 | #define min(x, y)       __careful_cmp(min, x, y)
         |                         ^~~~~~~~~~~~~
   drivers/gpu/drm/panthor/panthor_sched.c:2882:19: note: in expansion of m=
acro 'min'
    2882 |         written =3D min(ringbuf_size - start, size);
         |                   ^~~


vim +/__compiletime_assert_435 +510 include/linux/compiler_types.h

eb5c2d4b45e3d2 Will Deacon 2020-07-21  496 =20
eb5c2d4b45e3d2 Will Deacon 2020-07-21  497  #define _compiletime_assert(con=
dition, msg, prefix, suffix) \
eb5c2d4b45e3d2 Will Deacon 2020-07-21  498  	__compiletime_assert(condition=
, msg, prefix, suffix)
eb5c2d4b45e3d2 Will Deacon 2020-07-21  499 =20
eb5c2d4b45e3d2 Will Deacon 2020-07-21  500  /**
eb5c2d4b45e3d2 Will Deacon 2020-07-21  501   * compiletime_assert - break b=
uild and emit msg if condition is false
eb5c2d4b45e3d2 Will Deacon 2020-07-21  502   * @condition: a compile-time c=
onstant condition to check
eb5c2d4b45e3d2 Will Deacon 2020-07-21  503   * @msg:       a message to emi=
t if condition is false
eb5c2d4b45e3d2 Will Deacon 2020-07-21  504   *
eb5c2d4b45e3d2 Will Deacon 2020-07-21  505   * In tradition of POSIX assert=
, this macro will break the build if the
eb5c2d4b45e3d2 Will Deacon 2020-07-21  506   * supplied condition is *false=
*, emitting the supplied error message if the
eb5c2d4b45e3d2 Will Deacon 2020-07-21  507   * compiler has support to do s=
o.
eb5c2d4b45e3d2 Will Deacon 2020-07-21  508   */
eb5c2d4b45e3d2 Will Deacon 2020-07-21  509  #define compiletime_assert(cond=
ition, msg) \
eb5c2d4b45e3d2 Will Deacon 2020-07-21 @510  	_compiletime_assert(condition,=
 msg, __compiletime_assert_, __COUNTER__)
eb5c2d4b45e3d2 Will Deacon 2020-07-21  511 =20

--=20
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
