Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8468396C5AA
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Sep 2024 19:46:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8C48040EBF
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Sep 2024 17:46:44 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
	by lists.linaro.org (Postfix) with ESMTPS id DEF903EF8D
	for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Sep 2024 17:46:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=RQhWDfSN;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 192.198.163.12 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1725472000; x=1757008000;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=g+aKd92QBiENZVDRm1kM4shr9AJRa9pBGs1fZNeJD5w=;
  b=RQhWDfSN2ick7U8PBS+GfZhcxNEI8jyKEJzMKVdR19qbD8NEy3nelsp8
   VpZzpilVIYPqqA5QzPk2oVBKMffIyxt235Q4XT05W6s0ciW52sn5/jWVx
   zSqNbOwVYWbCCkuNpB9QY6xczt1MblHC6jFn+PC5xzeZCaIu9Kt0k/e8O
   HRqW0YRNIxl6/+DRYVEt6qpMnfIKi7NrNwyL/jypXbZmsfBboFyub3COG
   NNmPQ4yWkAXO03bRmF0AYG5EYy4pvHfuq0av6gcwjSmH2qdpbDySsyyza
   RAyfRxlzpyxS7B9+sE/bkiW+5sFuH+Lep/+s4JGx09uG/PIDdE4TfK4rj
   Q==;
X-CSE-ConnectionGUID: J0kvlgLbQli2uJaVaG7O2A==
X-CSE-MsgGUID: JxnWqX0QS4Cn7GF9ZQZezQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="28036447"
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600";
   d="scan'208";a="28036447"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Sep 2024 10:46:39 -0700
X-CSE-ConnectionGUID: lVSsXXMjSSuLHn0Jyr1Niw==
X-CSE-MsgGUID: fZP5cHQZSlWbd8z0Q+RmCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600";
   d="scan'208";a="69502604"
Received: from lkp-server01.sh.intel.com (HELO 9c6b1c7d3b50) ([10.239.97.150])
  by fmviesa003.fm.intel.com with ESMTP; 04 Sep 2024 10:46:34 -0700
Received: from kbuild by 9c6b1c7d3b50 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1slu5Q-0008PB-1o;
	Wed, 04 Sep 2024 17:46:32 +0000
Date: Thu, 5 Sep 2024 01:45:35 +0800
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
Message-ID: <202409050134.uxrIkhqc-lkp@intel.com>
References: <20240903202541.430225-3-adrian.larumbe@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240903202541.430225-3-adrian.larumbe@collabora.com>
X-Rspamd-Action: no action
X-Spamd-Bar: ------
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DEF903EF8D
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
Message-ID-Hash: YWZKYEGTALVVY3DOGVS2U6PASRLUX3Y6
X-Message-ID-Hash: YWZKYEGTALVVY3DOGVS2U6PASRLUX3Y6
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, kernel@collabora.com, =?iso-8859-1?Q?Adri=E1n?= Larumbe <adrian.larumbe@collabora.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 2/4] drm/panthor: add DRM fdinfo support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YWZKYEGTALVVY3DOGVS2U6PASRLUX3Y6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Adri=E1n,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-misc/drm-misc-next]
[also build test WARNING on linus/master v6.11-rc6 next-20240904]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Adri-n-Larumbe/drm-p=
anthor-introduce-job-cycle-and-timestamp-accounting/20240904-042645
base:   git://anongit.freedesktop.org/drm/drm-misc drm-misc-next
patch link:    https://lore.kernel.org/r/20240903202541.430225-3-adrian.lar=
umbe%40collabora.com
patch subject: [PATCH v5 2/4] drm/panthor: add DRM fdinfo support
config: x86_64-buildonly-randconfig-002-20240904 (https://download.01.org/0=
day-ci/archive/20240905/202409050134.uxrIkhqc-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=3D1 build): (https://download.01.org/0day-ci/archive=
/20240905/202409050134.uxrIkhqc-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new versio=
n of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202409050134.uxrIkhqc-lkp@i=
ntel.com/

All warnings (new ones prefixed by >>):

   drivers/gpu/drm/panthor/panthor_sched.c:322: warning: Excess struct memb=
er 'runnable' description in 'panthor_scheduler'
   drivers/gpu/drm/panthor/panthor_sched.c:322: warning: Excess struct memb=
er 'idle' description in 'panthor_scheduler'
   drivers/gpu/drm/panthor/panthor_sched.c:322: warning: Excess struct memb=
er 'waiting' description in 'panthor_scheduler'
   drivers/gpu/drm/panthor/panthor_sched.c:322: warning: Excess struct memb=
er 'has_ref' description in 'panthor_scheduler'
   drivers/gpu/drm/panthor/panthor_sched.c:322: warning: Excess struct memb=
er 'in_progress' description in 'panthor_scheduler'
   drivers/gpu/drm/panthor/panthor_sched.c:322: warning: Excess struct memb=
er 'stopped_groups' description in 'panthor_scheduler'
   drivers/gpu/drm/panthor/panthor_sched.c:494: warning: Excess struct memb=
er 'mem' description in 'panthor_queue'
   drivers/gpu/drm/panthor/panthor_sched.c:494: warning: Excess struct memb=
er 'input' description in 'panthor_queue'
   drivers/gpu/drm/panthor/panthor_sched.c:494: warning: Excess struct memb=
er 'output' description in 'panthor_queue'
   drivers/gpu/drm/panthor/panthor_sched.c:494: warning: Excess struct memb=
er 'input_fw_va' description in 'panthor_queue'
   drivers/gpu/drm/panthor/panthor_sched.c:494: warning: Excess struct memb=
er 'output_fw_va' description in 'panthor_queue'
   drivers/gpu/drm/panthor/panthor_sched.c:494: warning: Excess struct memb=
er 'gpu_va' description in 'panthor_queue'
   drivers/gpu/drm/panthor/panthor_sched.c:494: warning: Excess struct memb=
er 'ref' description in 'panthor_queue'
   drivers/gpu/drm/panthor/panthor_sched.c:494: warning: Excess struct memb=
er 'gt' description in 'panthor_queue'
   drivers/gpu/drm/panthor/panthor_sched.c:494: warning: Excess struct memb=
er 'sync64' description in 'panthor_queue'
   drivers/gpu/drm/panthor/panthor_sched.c:494: warning: Excess struct memb=
er 'bo' description in 'panthor_queue'
   drivers/gpu/drm/panthor/panthor_sched.c:494: warning: Excess struct memb=
er 'offset' description in 'panthor_queue'
   drivers/gpu/drm/panthor/panthor_sched.c:494: warning: Excess struct memb=
er 'kmap' description in 'panthor_queue'
   drivers/gpu/drm/panthor/panthor_sched.c:494: warning: Excess struct memb=
er 'lock' description in 'panthor_queue'
   drivers/gpu/drm/panthor/panthor_sched.c:494: warning: Excess struct memb=
er 'id' description in 'panthor_queue'
   drivers/gpu/drm/panthor/panthor_sched.c:494: warning: Excess struct memb=
er 'seqno' description in 'panthor_queue'
   drivers/gpu/drm/panthor/panthor_sched.c:494: warning: Excess struct memb=
er 'last_fence' description in 'panthor_queue'
   drivers/gpu/drm/panthor/panthor_sched.c:494: warning: Excess struct memb=
er 'in_flight_jobs' description in 'panthor_queue'
   drivers/gpu/drm/panthor/panthor_sched.c:494: warning: Excess struct memb=
er 'slots' description in 'panthor_queue'
   drivers/gpu/drm/panthor/panthor_sched.c:494: warning: Excess struct memb=
er 'slot_count' description in 'panthor_queue'
   drivers/gpu/drm/panthor/panthor_sched.c:494: warning: Excess struct memb=
er 'profiling_seqno' description in 'panthor_queue'
>> drivers/gpu/drm/panthor/panthor_sched.c:689: warning: Excess struct memb=
er 'data' description in 'panthor_group'
>> drivers/gpu/drm/panthor/panthor_sched.c:689: warning: Excess struct memb=
er 'lock' description in 'panthor_group'
   drivers/gpu/drm/panthor/panthor_sched.c:822: warning: Function parameter=
 or struct member 'profiling_slot' not described in 'panthor_job'
   drivers/gpu/drm/panthor/panthor_sched.c:822: warning: Excess struct memb=
er 'start' description in 'panthor_job'
   drivers/gpu/drm/panthor/panthor_sched.c:822: warning: Excess struct memb=
er 'size' description in 'panthor_job'
   drivers/gpu/drm/panthor/panthor_sched.c:822: warning: Excess struct memb=
er 'latest_flush' description in 'panthor_job'
   drivers/gpu/drm/panthor/panthor_sched.c:822: warning: Excess struct memb=
er 'start' description in 'panthor_job'
   drivers/gpu/drm/panthor/panthor_sched.c:822: warning: Excess struct memb=
er 'end' description in 'panthor_job'
   drivers/gpu/drm/panthor/panthor_sched.c:822: warning: Excess struct memb=
er 'profile_slot' description in 'panthor_job'
   drivers/gpu/drm/panthor/panthor_sched.c:1745: warning: Function paramete=
r or struct member 'ptdev' not described in 'panthor_sched_report_fw_events'
   drivers/gpu/drm/panthor/panthor_sched.c:1745: warning: Function paramete=
r or struct member 'events' not described in 'panthor_sched_report_fw_event=
s'
   drivers/gpu/drm/panthor/panthor_sched.c:2637: warning: Function paramete=
r or struct member 'ptdev' not described in 'panthor_sched_report_mmu_fault'


vim +689 drivers/gpu/drm/panthor/panthor_sched.c

de85488138247d0 Boris Brezillon 2024-02-29  531 =20
de85488138247d0 Boris Brezillon 2024-02-29  532  /**
de85488138247d0 Boris Brezillon 2024-02-29  533   * struct panthor_group - =
Scheduling group object
de85488138247d0 Boris Brezillon 2024-02-29  534   */
de85488138247d0 Boris Brezillon 2024-02-29  535  struct panthor_group {
de85488138247d0 Boris Brezillon 2024-02-29  536  	/** @refcount: Reference =
count */
de85488138247d0 Boris Brezillon 2024-02-29  537  	struct kref refcount;
de85488138247d0 Boris Brezillon 2024-02-29  538 =20
de85488138247d0 Boris Brezillon 2024-02-29  539  	/** @ptdev: Device. */
de85488138247d0 Boris Brezillon 2024-02-29  540  	struct panthor_device *pt=
dev;
de85488138247d0 Boris Brezillon 2024-02-29  541 =20
de85488138247d0 Boris Brezillon 2024-02-29  542  	/** @vm: VM bound to the =
group. */
de85488138247d0 Boris Brezillon 2024-02-29  543  	struct panthor_vm *vm;
de85488138247d0 Boris Brezillon 2024-02-29  544 =20
de85488138247d0 Boris Brezillon 2024-02-29  545  	/** @compute_core_mask: M=
ask of shader cores that can be used for compute jobs. */
de85488138247d0 Boris Brezillon 2024-02-29  546  	u64 compute_core_mask;
de85488138247d0 Boris Brezillon 2024-02-29  547 =20
de85488138247d0 Boris Brezillon 2024-02-29  548  	/** @fragment_core_mask: =
Mask of shader cores that can be used for fragment jobs. */
de85488138247d0 Boris Brezillon 2024-02-29  549  	u64 fragment_core_mask;
de85488138247d0 Boris Brezillon 2024-02-29  550 =20
de85488138247d0 Boris Brezillon 2024-02-29  551  	/** @tiler_core_mask: Mas=
k of tiler cores that can be used for tiler jobs. */
de85488138247d0 Boris Brezillon 2024-02-29  552  	u64 tiler_core_mask;
de85488138247d0 Boris Brezillon 2024-02-29  553 =20
de85488138247d0 Boris Brezillon 2024-02-29  554  	/** @max_compute_cores: M=
aximum number of shader cores used for compute jobs. */
de85488138247d0 Boris Brezillon 2024-02-29  555  	u8 max_compute_cores;
de85488138247d0 Boris Brezillon 2024-02-29  556 =20
be7ffc821f5fc2e Liviu Dudau     2024-04-02  557  	/** @max_fragment_cores: =
Maximum number of shader cores used for fragment jobs. */
de85488138247d0 Boris Brezillon 2024-02-29  558  	u8 max_fragment_cores;
de85488138247d0 Boris Brezillon 2024-02-29  559 =20
de85488138247d0 Boris Brezillon 2024-02-29  560  	/** @max_tiler_cores: Max=
imum number of tiler cores used for tiler jobs. */
de85488138247d0 Boris Brezillon 2024-02-29  561  	u8 max_tiler_cores;
de85488138247d0 Boris Brezillon 2024-02-29  562 =20
de85488138247d0 Boris Brezillon 2024-02-29  563  	/** @priority: Group prio=
rity (check panthor_csg_priority). */
de85488138247d0 Boris Brezillon 2024-02-29  564  	u8 priority;
de85488138247d0 Boris Brezillon 2024-02-29  565 =20
de85488138247d0 Boris Brezillon 2024-02-29  566  	/** @blocked_queues: Bitm=
ask reflecting the blocked queues. */
de85488138247d0 Boris Brezillon 2024-02-29  567  	u32 blocked_queues;
de85488138247d0 Boris Brezillon 2024-02-29  568 =20
de85488138247d0 Boris Brezillon 2024-02-29  569  	/** @idle_queues: Bitmask=
 reflecting the idle queues. */
de85488138247d0 Boris Brezillon 2024-02-29  570  	u32 idle_queues;
de85488138247d0 Boris Brezillon 2024-02-29  571 =20
de85488138247d0 Boris Brezillon 2024-02-29  572  	/** @fatal_lock: Lock use=
d to protect access to fatal fields. */
de85488138247d0 Boris Brezillon 2024-02-29  573  	spinlock_t fatal_lock;
de85488138247d0 Boris Brezillon 2024-02-29  574 =20
de85488138247d0 Boris Brezillon 2024-02-29  575  	/** @fatal_queues: Bitmas=
k reflecting the queues that hit a fatal exception. */
de85488138247d0 Boris Brezillon 2024-02-29  576  	u32 fatal_queues;
de85488138247d0 Boris Brezillon 2024-02-29  577 =20
de85488138247d0 Boris Brezillon 2024-02-29  578  	/** @tiler_oom: Mask of q=
ueues that have a tiler OOM event to process. */
de85488138247d0 Boris Brezillon 2024-02-29  579  	atomic_t tiler_oom;
de85488138247d0 Boris Brezillon 2024-02-29  580 =20
de85488138247d0 Boris Brezillon 2024-02-29  581  	/** @queue_count: Number =
of queues in this group. */
de85488138247d0 Boris Brezillon 2024-02-29  582  	u32 queue_count;
de85488138247d0 Boris Brezillon 2024-02-29  583 =20
de85488138247d0 Boris Brezillon 2024-02-29  584  	/** @queues: Queues owned=
 by this group. */
de85488138247d0 Boris Brezillon 2024-02-29  585  	struct panthor_queue *que=
ues[MAX_CS_PER_CSG];
de85488138247d0 Boris Brezillon 2024-02-29  586 =20
de85488138247d0 Boris Brezillon 2024-02-29  587  	/**
de85488138247d0 Boris Brezillon 2024-02-29  588  	 * @csg_id: ID of the FW =
group slot.
de85488138247d0 Boris Brezillon 2024-02-29  589  	 *
de85488138247d0 Boris Brezillon 2024-02-29  590  	 * -1 when the group is n=
ot scheduled/active.
de85488138247d0 Boris Brezillon 2024-02-29  591  	 */
de85488138247d0 Boris Brezillon 2024-02-29  592  	int csg_id;
de85488138247d0 Boris Brezillon 2024-02-29  593 =20
de85488138247d0 Boris Brezillon 2024-02-29  594  	/**
de85488138247d0 Boris Brezillon 2024-02-29  595  	 * @destroyed: True when =
the group has been destroyed.
de85488138247d0 Boris Brezillon 2024-02-29  596  	 *
de85488138247d0 Boris Brezillon 2024-02-29  597  	 * If a group is destroye=
d it becomes useless: no further jobs can be submitted
de85488138247d0 Boris Brezillon 2024-02-29  598  	 * to its queues. We simp=
ly wait for all references to be dropped so we can
de85488138247d0 Boris Brezillon 2024-02-29  599  	 * release the group obje=
ct.
de85488138247d0 Boris Brezillon 2024-02-29  600  	 */
de85488138247d0 Boris Brezillon 2024-02-29  601  	bool destroyed;
de85488138247d0 Boris Brezillon 2024-02-29  602 =20
de85488138247d0 Boris Brezillon 2024-02-29  603  	/**
de85488138247d0 Boris Brezillon 2024-02-29  604  	 * @timedout: True when a=
 timeout occurred on any of the queues owned by
de85488138247d0 Boris Brezillon 2024-02-29  605  	 * this group.
de85488138247d0 Boris Brezillon 2024-02-29  606  	 *
de85488138247d0 Boris Brezillon 2024-02-29  607  	 * Timeouts can be report=
ed by drm_sched or by the FW. In any case, any
de85488138247d0 Boris Brezillon 2024-02-29  608  	 * timeout situation is u=
nrecoverable, and the group becomes useless.
de85488138247d0 Boris Brezillon 2024-02-29  609  	 * We simply wait for all=
 references to be dropped so we can release the
de85488138247d0 Boris Brezillon 2024-02-29  610  	 * group object.
de85488138247d0 Boris Brezillon 2024-02-29  611  	 */
de85488138247d0 Boris Brezillon 2024-02-29  612  	bool timedout;
de85488138247d0 Boris Brezillon 2024-02-29  613 =20
de85488138247d0 Boris Brezillon 2024-02-29  614  	/**
de85488138247d0 Boris Brezillon 2024-02-29  615  	 * @syncobjs: Pool of per=
-queue synchronization objects.
de85488138247d0 Boris Brezillon 2024-02-29  616  	 *
de85488138247d0 Boris Brezillon 2024-02-29  617  	 * One sync object per qu=
eue. The position of the sync object is
de85488138247d0 Boris Brezillon 2024-02-29  618  	 * determined by the queu=
e index.
de85488138247d0 Boris Brezillon 2024-02-29  619  	 */
de85488138247d0 Boris Brezillon 2024-02-29  620  	struct panthor_kernel_bo =
*syncobjs;
de85488138247d0 Boris Brezillon 2024-02-29  621 =20
d7baaf2591f58fc Adri=E1n Larumbe  2024-09-03  622  	/** @fdinfo: Per-file t=
otal cycle and timestamp values reference. */
d7baaf2591f58fc Adri=E1n Larumbe  2024-09-03  623  	struct {
d7baaf2591f58fc Adri=E1n Larumbe  2024-09-03  624  		/** @data: Pointer to =
actual per-file sample data. */
d7baaf2591f58fc Adri=E1n Larumbe  2024-09-03  625  		struct panthor_gpu_usa=
ge *data;
d7baaf2591f58fc Adri=E1n Larumbe  2024-09-03  626 =20
d7baaf2591f58fc Adri=E1n Larumbe  2024-09-03  627  		/**
d7baaf2591f58fc Adri=E1n Larumbe  2024-09-03  628  		 * @lock: Mutex to gov=
ern concurrent access from drm file's fdinfo callback
d7baaf2591f58fc Adri=E1n Larumbe  2024-09-03  629  		 * and job post-comple=
tion processing function
d7baaf2591f58fc Adri=E1n Larumbe  2024-09-03  630  		 */
d7baaf2591f58fc Adri=E1n Larumbe  2024-09-03  631  		struct mutex lock;
d7baaf2591f58fc Adri=E1n Larumbe  2024-09-03  632  	} fdinfo;
d7baaf2591f58fc Adri=E1n Larumbe  2024-09-03  633 =20
de85488138247d0 Boris Brezillon 2024-02-29  634  	/** @state: Group state. =
*/
de85488138247d0 Boris Brezillon 2024-02-29  635  	enum panthor_group_state =
state;
de85488138247d0 Boris Brezillon 2024-02-29  636 =20
de85488138247d0 Boris Brezillon 2024-02-29  637  	/**
de85488138247d0 Boris Brezillon 2024-02-29  638  	 * @suspend_buf: Suspend =
buffer.
de85488138247d0 Boris Brezillon 2024-02-29  639  	 *
de85488138247d0 Boris Brezillon 2024-02-29  640  	 * Stores the state of th=
e group and its queues when a group is suspended.
de85488138247d0 Boris Brezillon 2024-02-29  641  	 * Used at resume time to=
 restore the group in its previous state.
de85488138247d0 Boris Brezillon 2024-02-29  642  	 *
de85488138247d0 Boris Brezillon 2024-02-29  643  	 * The size of the suspen=
d buffer is exposed through the FW interface.
de85488138247d0 Boris Brezillon 2024-02-29  644  	 */
de85488138247d0 Boris Brezillon 2024-02-29  645  	struct panthor_kernel_bo =
*suspend_buf;
de85488138247d0 Boris Brezillon 2024-02-29  646 =20
de85488138247d0 Boris Brezillon 2024-02-29  647  	/**
de85488138247d0 Boris Brezillon 2024-02-29  648  	 * @protm_suspend_buf: Pr=
otection mode suspend buffer.
de85488138247d0 Boris Brezillon 2024-02-29  649  	 *
de85488138247d0 Boris Brezillon 2024-02-29  650  	 * Stores the state of th=
e group and its queues when a group that's in
de85488138247d0 Boris Brezillon 2024-02-29  651  	 * protection mode is sus=
pended.
de85488138247d0 Boris Brezillon 2024-02-29  652  	 *
de85488138247d0 Boris Brezillon 2024-02-29  653  	 * Used at resume time to=
 restore the group in its previous state.
de85488138247d0 Boris Brezillon 2024-02-29  654  	 *
de85488138247d0 Boris Brezillon 2024-02-29  655  	 * The size of the protec=
tion mode suspend buffer is exposed through the
de85488138247d0 Boris Brezillon 2024-02-29  656  	 * FW interface.
de85488138247d0 Boris Brezillon 2024-02-29  657  	 */
de85488138247d0 Boris Brezillon 2024-02-29  658  	struct panthor_kernel_bo =
*protm_suspend_buf;
de85488138247d0 Boris Brezillon 2024-02-29  659 =20
de85488138247d0 Boris Brezillon 2024-02-29  660  	/** @sync_upd_work: Work =
used to check/signal job fences. */
de85488138247d0 Boris Brezillon 2024-02-29  661  	struct work_struct sync_u=
pd_work;
de85488138247d0 Boris Brezillon 2024-02-29  662 =20
de85488138247d0 Boris Brezillon 2024-02-29  663  	/** @tiler_oom_work: Work=
 used to process tiler OOM events happening on this group. */
de85488138247d0 Boris Brezillon 2024-02-29  664  	struct work_struct tiler_=
oom_work;
de85488138247d0 Boris Brezillon 2024-02-29  665 =20
de85488138247d0 Boris Brezillon 2024-02-29  666  	/** @term_work: Work used=
 to finish the group termination procedure. */
de85488138247d0 Boris Brezillon 2024-02-29  667  	struct work_struct term_w=
ork;
de85488138247d0 Boris Brezillon 2024-02-29  668 =20
de85488138247d0 Boris Brezillon 2024-02-29  669  	/**
de85488138247d0 Boris Brezillon 2024-02-29  670  	 * @release_work: Work us=
ed to release group resources.
de85488138247d0 Boris Brezillon 2024-02-29  671  	 *
de85488138247d0 Boris Brezillon 2024-02-29  672  	 * We need to postpone th=
e group release to avoid a deadlock when
de85488138247d0 Boris Brezillon 2024-02-29  673  	 * the last ref is releas=
ed in the tick work.
de85488138247d0 Boris Brezillon 2024-02-29  674  	 */
de85488138247d0 Boris Brezillon 2024-02-29  675  	struct work_struct releas=
e_work;
de85488138247d0 Boris Brezillon 2024-02-29  676 =20
de85488138247d0 Boris Brezillon 2024-02-29  677  	/**
de85488138247d0 Boris Brezillon 2024-02-29  678  	 * @run_node: Node used t=
o insert the group in the
de85488138247d0 Boris Brezillon 2024-02-29  679  	 * panthor_group::groups:=
:{runnable,idle} and
de85488138247d0 Boris Brezillon 2024-02-29  680  	 * panthor_group::reset.s=
topped_groups lists.
de85488138247d0 Boris Brezillon 2024-02-29  681  	 */
de85488138247d0 Boris Brezillon 2024-02-29  682  	struct list_head run_node;
de85488138247d0 Boris Brezillon 2024-02-29  683 =20
de85488138247d0 Boris Brezillon 2024-02-29  684  	/**
de85488138247d0 Boris Brezillon 2024-02-29  685  	 * @wait_node: Node used =
to insert the group in the
de85488138247d0 Boris Brezillon 2024-02-29  686  	 * panthor_group::groups:=
:waiting list.
de85488138247d0 Boris Brezillon 2024-02-29  687  	 */
de85488138247d0 Boris Brezillon 2024-02-29  688  	struct list_head wait_nod=
e;
de85488138247d0 Boris Brezillon 2024-02-29 @689  };
de85488138247d0 Boris Brezillon 2024-02-29  690 =20

--=20
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
