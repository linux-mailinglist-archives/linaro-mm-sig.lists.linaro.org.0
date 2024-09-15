Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B937979776
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 15 Sep 2024 17:23:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BD55B42B38
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 15 Sep 2024 15:22:55 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
	by lists.linaro.org (Postfix) with ESMTPS id AFB023EF01
	for <linaro-mm-sig@lists.linaro.org>; Sun, 15 Sep 2024 15:22:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=ah82fA33;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 198.175.65.21 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1726413774; x=1757949774;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=NVlaJRwu5MkrPgwa92PGxeVbjk47p31EDUshxyzMVr4=;
  b=ah82fA33+nvsGEZbYnwgz8g7xmSC0btPK+Ou03xOZ9Pk+kpcqLaxDh7p
   tsBMvfmZlUNAeCH5LgkyXQE8+CfBjHCIV8F8rbY0imgTjALbVyjskykrb
   C/VhZxdsByuVwFdv7IguTiA9/toISber0pFBMLcURnKA1wMVKG6WYlu43
   n3H8fQ5CR4apZeXzEBZf2LrCT/2OluE78ePJMM1CyGFk3aIVoV+9vZgQS
   DCwAEEl8sO2W2QFKmTvXf7OvcvSh+VJX3sPdaH9Hsuh8MYlGgtBzHCnE/
   TERigT5OkhPJNwZ73e4SAJjPksLjlpP0RJEbbTwODLJfrkmYuJoyocqb2
   A==;
X-CSE-ConnectionGUID: KH/oPfnxRoepU+yv5X86xg==
X-CSE-MsgGUID: J05a3MPcREyCVUyI7N2PPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11196"; a="25194615"
X-IronPort-AV: E=Sophos;i="6.10,231,1719903600";
   d="scan'208";a="25194615"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Sep 2024 08:22:53 -0700
X-CSE-ConnectionGUID: aFJRiIn4TjSfak9xpvgJrw==
X-CSE-MsgGUID: qS48OZcoQZScV1N2DFmNqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,231,1719903600";
   d="scan'208";a="106088082"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
  by orviesa001.jf.intel.com with ESMTP; 15 Sep 2024 08:22:48 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1spr5K-0008m2-0b;
	Sun, 15 Sep 2024 15:22:46 +0000
Date: Sun, 15 Sep 2024 23:22:11 +0800
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
Message-ID: <202409152243.r3t2jdOJ-lkp@intel.com>
References: <20240913124857.389630-2-adrian.larumbe@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240913124857.389630-2-adrian.larumbe@collabora.com>
X-Rspamd-Action: no action
X-Spamd-Bar: -----
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: AFB023EF01
X-Spamd-Result: default: False [-6.00 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[99.99%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:4983, ipnet:198.175.64.0/23, country:US];
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
Message-ID-Hash: HTGEZEY37CCPQKORCGB7K5IXJY6OLAY7
X-Message-ID-Hash: HTGEZEY37CCPQKORCGB7K5IXJY6OLAY7
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, kernel@collabora.com, =?iso-8859-1?Q?Adri=E1n?= Larumbe <adrian.larumbe@collabora.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 1/5] drm/panthor: introduce job cycle and timestamp accounting
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HTGEZEY37CCPQKORCGB7K5IXJY6OLAY7/>
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
[also build test ERROR on v6.11-rc7 next-20240913]
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
config: i386-buildonly-randconfig-003-20240915 (https://download.01.org/0da=
y-ci/archive/20240915/202409152243.r3t2jdOJ-lkp@intel.com/config)
compiler: clang version 18.1.8 (https://github.com/llvm/llvm-project 3b5b5c=
1ec4a3095ab096dd780e84d7ab81f3d7ff)
reproduce (this is a W=3D1 build): (https://download.01.org/0day-ci/archive=
/20240915/202409152243.r3t2jdOJ-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new versio=
n of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202409152243.r3t2jdOJ-lkp@i=
ntel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/panthor/panthor_sched.c:2885:12: error: call to '__compi=
letime_assert_371' declared with 'error' attribute: min(ringbuf_size - star=
t, size) signedness error
    2885 |         written =3D min(ringbuf_size - start, size);
         |                   ^
   include/linux/minmax.h:129:19: note: expanded from macro 'min'
     129 | #define min(x, y)       __careful_cmp(min, x, y)
         |                         ^
   include/linux/minmax.h:105:2: note: expanded from macro '__careful_cmp'
     105 |         __careful_cmp_once(op, x, y, __UNIQUE_ID(x_), __UNIQUE_I=
D(y_))
         |         ^
   include/linux/minmax.h:100:2: note: expanded from macro '__careful_cmp_o=
nce'
     100 |         BUILD_BUG_ON_MSG(!__types_ok(x,y,ux,uy),        \
         |         ^
   note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=
=3D0 to see all)
   include/linux/compiler_types.h:498:2: note: expanded from macro '_compil=
etime_assert'
     498 |         __compiletime_assert(condition, msg, prefix, suffix)
         |         ^
   include/linux/compiler_types.h:491:4: note: expanded from macro '__compi=
letime_assert'
     491 |                         prefix ## suffix();                     =
        \
         |                         ^
   <scratch space>:68:1: note: expanded from here
      68 | __compiletime_assert_371
         | ^
   1 error generated.


vim +2885 drivers/gpu/drm/panthor/panthor_sched.c

  2862=09
  2863	#define JOB_INSTR(__prof, __instr) \
  2864		{ \
  2865			.profile_mask =3D __prof, \
  2866			.instr =3D __instr, \
  2867		}
  2868=09
  2869	static void
  2870	copy_instrs_to_ringbuf(struct panthor_queue *queue,
  2871			       struct panthor_job *job,
  2872			       struct panthor_job_ringbuf_instrs *instrs)
  2873	{
  2874		ssize_t ringbuf_size =3D panthor_kernel_bo_size(queue->ringbuf);
  2875		u32 start =3D job->ringbuf.start & (ringbuf_size - 1);
  2876		ssize_t size, written;
  2877=09
  2878		/*
  2879		 * We need to write a whole slot, including any trailing zeroes
  2880		 * that may come at the end of it. Also, because instrs.buffer has
  2881		 * been zero-initialised, there's no need to pad it with 0's
  2882		 */
  2883		instrs->count =3D ALIGN(instrs->count, NUM_INSTRS_PER_CACHE_LINE);
  2884		size =3D instrs->count * sizeof(u64);
> 2885		written =3D min(ringbuf_size - start, size);
  2886=09
  2887		memcpy(queue->ringbuf->kmap + start, instrs->buffer, written);
  2888=09
  2889		if (written < size)
  2890			memcpy(queue->ringbuf->kmap,
  2891			       &instrs->buffer[(ringbuf_size - start)/sizeof(u64)],
  2892			       size - written);
  2893	}
  2894=09

--=20
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
