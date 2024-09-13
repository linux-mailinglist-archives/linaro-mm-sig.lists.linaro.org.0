Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E75E7978AE1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 13 Sep 2024 23:54:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 542E7443CE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 13 Sep 2024 21:54:39 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
	by lists.linaro.org (Postfix) with ESMTPS id 902A63F0A8
	for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Sep 2024 21:54:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=B4r6uBwx;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 198.175.65.14 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1726264475; x=1757800475;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=u2Ahxvhg/4cmIB2NS2TyIW6kyvQjVb+fS+f9vi5tKR4=;
  b=B4r6uBwx51vTDq7EAv1rHQo9dmv1hyZnzn4bJov7FL06mgoE84vvB1xX
   +hqnQ0jSB5oHc8GWff5DsUd/EIvvvhmQufDgXrxb6v3SAJZIjepv2kzT/
   FQoLBA5SvQnWGW5tj0eU/RdD17/IsVNwo6ktBP8sbMB+5vmFUUvo9SHMb
   pTOWRIvt7J0/bOW03aOPt9HEaioQFiiJXCvyMB2R6gg+4lwD+KDyftsnC
   0BqimDM63BVWfi7jetj13/KUFrJZJitKmCXD4klWassz+x1/Ip8B1KpKo
   WLWVH6rHZyNPRxjART5UOCccvGADO1qXWYEw9AdPIADgla7VwwbU+kSaF
   A==;
X-CSE-ConnectionGUID: MRobDkA7S2qd14LoVv+Rtg==
X-CSE-MsgGUID: 1RZkFlKMQzO+32ydYKrskQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11194"; a="28964298"
X-IronPort-AV: E=Sophos;i="6.10,227,1719903600";
   d="scan'208";a="28964298"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Sep 2024 14:54:33 -0700
X-CSE-ConnectionGUID: lco3PineQ0qLLO2xIY9tnw==
X-CSE-MsgGUID: l+nYzBSmT9SL+8H7GUXq/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,227,1719903600";
   d="scan'208";a="72802512"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
  by fmviesa004.fm.intel.com with ESMTP; 13 Sep 2024 14:54:28 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1spEFF-00074i-29;
	Fri, 13 Sep 2024 21:54:25 +0000
Date: Sat, 14 Sep 2024 05:53:57 +0800
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
Message-ID: <202409140506.OBoqSiVk-lkp@intel.com>
References: <20240913124857.389630-2-adrian.larumbe@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240913124857.389630-2-adrian.larumbe@collabora.com>
X-Rspamd-Action: no action
X-Spamd-Bar: ------
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 902A63F0A8
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
Message-ID-Hash: BZZLYNA7BQR73DI6BXFVX542UT66I2TH
X-Message-ID-Hash: BZZLYNA7BQR73DI6BXFVX542UT66I2TH
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, kernel@collabora.com, =?iso-8859-1?Q?Adri=E1n?= Larumbe <adrian.larumbe@collabora.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 1/5] drm/panthor: introduce job cycle and timestamp accounting
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BZZLYNA7BQR73DI6BXFVX542UT66I2TH/>
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

[auto build test WARNING on linus/master]
[also build test WARNING on v6.11-rc7 next-20240913]
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
config: alpha-allyesconfig (https://download.01.org/0day-ci/archive/2024091=
4/202409140506.OBoqSiVk-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 13.3.0
reproduce (this is a W=3D1 build): (https://download.01.org/0day-ci/archive=
/20240914/202409140506.OBoqSiVk-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new versio=
n of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202409140506.OBoqSiVk-lkp@i=
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
>> drivers/gpu/drm/panthor/panthor_sched.c:494: warning: Function parameter=
 or struct member 'profiling' not described in 'panthor_queue'
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
>> drivers/gpu/drm/panthor/panthor_sched.c:494: warning: Excess struct memb=
er 'profiling_info' description in 'panthor_queue'
   drivers/gpu/drm/panthor/panthor_sched.c:494: warning: Excess struct memb=
er 'slots' description in 'panthor_queue'
   drivers/gpu/drm/panthor/panthor_sched.c:494: warning: Excess struct memb=
er 'slot_count' description in 'panthor_queue'
   drivers/gpu/drm/panthor/panthor_sched.c:494: warning: Excess struct memb=
er 'profiling_seqno' description in 'panthor_queue'
   drivers/gpu/drm/panthor/panthor_sched.c:813: warning: Excess struct memb=
er 'start' description in 'panthor_job'
   drivers/gpu/drm/panthor/panthor_sched.c:813: warning: Excess struct memb=
er 'size' description in 'panthor_job'
   drivers/gpu/drm/panthor/panthor_sched.c:813: warning: Excess struct memb=
er 'latest_flush' description in 'panthor_job'
   drivers/gpu/drm/panthor/panthor_sched.c:813: warning: Excess struct memb=
er 'start' description in 'panthor_job'
   drivers/gpu/drm/panthor/panthor_sched.c:813: warning: Excess struct memb=
er 'end' description in 'panthor_job'
>> drivers/gpu/drm/panthor/panthor_sched.c:813: warning: Excess struct memb=
er 'mask' description in 'panthor_job'
>> drivers/gpu/drm/panthor/panthor_sched.c:813: warning: Excess struct memb=
er 'slot' description in 'panthor_job'
   drivers/gpu/drm/panthor/panthor_sched.c:1734: warning: Function paramete=
r or struct member 'ptdev' not described in 'panthor_sched_report_fw_events'
   drivers/gpu/drm/panthor/panthor_sched.c:1734: warning: Function paramete=
r or struct member 'events' not described in 'panthor_sched_report_fw_event=
s'
   drivers/gpu/drm/panthor/panthor_sched.c:2626: warning: Function paramete=
r or struct member 'ptdev' not described in 'panthor_sched_report_mmu_fault'


vim +494 drivers/gpu/drm/panthor/panthor_sched.c

de85488138247d Boris Brezillon 2024-02-29  397 =20
de85488138247d Boris Brezillon 2024-02-29  398  	/** @ringbuf: Command stre=
am ring-buffer. */
de85488138247d Boris Brezillon 2024-02-29  399  	struct panthor_kernel_bo *=
ringbuf;
de85488138247d Boris Brezillon 2024-02-29  400 =20
de85488138247d Boris Brezillon 2024-02-29  401  	/** @iface: Firmware inter=
face. */
de85488138247d Boris Brezillon 2024-02-29  402  	struct {
de85488138247d Boris Brezillon 2024-02-29  403  		/** @mem: FW memory alloc=
ated for this interface. */
de85488138247d Boris Brezillon 2024-02-29  404  		struct panthor_kernel_bo =
*mem;
de85488138247d Boris Brezillon 2024-02-29  405 =20
de85488138247d Boris Brezillon 2024-02-29  406  		/** @input: Input interfa=
ce. */
de85488138247d Boris Brezillon 2024-02-29  407  		struct panthor_fw_ringbuf=
_input_iface *input;
de85488138247d Boris Brezillon 2024-02-29  408 =20
de85488138247d Boris Brezillon 2024-02-29  409  		/** @output: Output inter=
face. */
de85488138247d Boris Brezillon 2024-02-29  410  		const struct panthor_fw_r=
ingbuf_output_iface *output;
de85488138247d Boris Brezillon 2024-02-29  411 =20
de85488138247d Boris Brezillon 2024-02-29  412  		/** @input_fw_va: FW virt=
ual address of the input interface buffer. */
de85488138247d Boris Brezillon 2024-02-29  413  		u32 input_fw_va;
de85488138247d Boris Brezillon 2024-02-29  414 =20
de85488138247d Boris Brezillon 2024-02-29  415  		/** @output_fw_va: FW vir=
tual address of the output interface buffer. */
de85488138247d Boris Brezillon 2024-02-29  416  		u32 output_fw_va;
de85488138247d Boris Brezillon 2024-02-29  417  	} iface;
de85488138247d Boris Brezillon 2024-02-29  418 =20
de85488138247d Boris Brezillon 2024-02-29  419  	/**
de85488138247d Boris Brezillon 2024-02-29  420  	 * @syncwait: Stores infor=
mation about the synchronization object this
de85488138247d Boris Brezillon 2024-02-29  421  	 * queue is waiting on.
de85488138247d Boris Brezillon 2024-02-29  422  	 */
de85488138247d Boris Brezillon 2024-02-29  423  	struct {
de85488138247d Boris Brezillon 2024-02-29  424  		/** @gpu_va: GPU address =
of the synchronization object. */
de85488138247d Boris Brezillon 2024-02-29  425  		u64 gpu_va;
de85488138247d Boris Brezillon 2024-02-29  426 =20
de85488138247d Boris Brezillon 2024-02-29  427  		/** @ref: Reference value=
 to compare against. */
de85488138247d Boris Brezillon 2024-02-29  428  		u64 ref;
de85488138247d Boris Brezillon 2024-02-29  429 =20
de85488138247d Boris Brezillon 2024-02-29  430  		/** @gt: True if this is =
a greater-than test. */
de85488138247d Boris Brezillon 2024-02-29  431  		bool gt;
de85488138247d Boris Brezillon 2024-02-29  432 =20
de85488138247d Boris Brezillon 2024-02-29  433  		/** @sync64: True if this=
 is a 64-bit sync object. */
de85488138247d Boris Brezillon 2024-02-29  434  		bool sync64;
de85488138247d Boris Brezillon 2024-02-29  435 =20
de85488138247d Boris Brezillon 2024-02-29  436  		/** @bo: Buffer object ho=
lding the synchronization object. */
de85488138247d Boris Brezillon 2024-02-29  437  		struct drm_gem_object *ob=
j;
de85488138247d Boris Brezillon 2024-02-29  438 =20
de85488138247d Boris Brezillon 2024-02-29  439  		/** @offset: Offset of th=
e synchronization object inside @bo. */
de85488138247d Boris Brezillon 2024-02-29  440  		u64 offset;
de85488138247d Boris Brezillon 2024-02-29  441 =20
de85488138247d Boris Brezillon 2024-02-29  442  		/**
de85488138247d Boris Brezillon 2024-02-29  443  		 * @kmap: Kernel mapping =
of the buffer object holding the
de85488138247d Boris Brezillon 2024-02-29  444  		 * synchronization object.
de85488138247d Boris Brezillon 2024-02-29  445  		 */
de85488138247d Boris Brezillon 2024-02-29  446  		void *kmap;
de85488138247d Boris Brezillon 2024-02-29  447  	} syncwait;
de85488138247d Boris Brezillon 2024-02-29  448 =20
de85488138247d Boris Brezillon 2024-02-29  449  	/** @fence_ctx: Fence cont=
ext fields. */
de85488138247d Boris Brezillon 2024-02-29  450  	struct {
de85488138247d Boris Brezillon 2024-02-29  451  		/** @lock: Used to protec=
t access to all fences allocated by this context. */
de85488138247d Boris Brezillon 2024-02-29  452  		spinlock_t lock;
de85488138247d Boris Brezillon 2024-02-29  453 =20
de85488138247d Boris Brezillon 2024-02-29  454  		/**
de85488138247d Boris Brezillon 2024-02-29  455  		 * @id: Fence context ID.
de85488138247d Boris Brezillon 2024-02-29  456  		 *
de85488138247d Boris Brezillon 2024-02-29  457  		 * Allocated with dma_fen=
ce_context_alloc().
de85488138247d Boris Brezillon 2024-02-29  458  		 */
de85488138247d Boris Brezillon 2024-02-29  459  		u64 id;
de85488138247d Boris Brezillon 2024-02-29  460 =20
de85488138247d Boris Brezillon 2024-02-29  461  		/** @seqno: Sequence numb=
er of the last initialized fence. */
de85488138247d Boris Brezillon 2024-02-29  462  		atomic64_t seqno;
de85488138247d Boris Brezillon 2024-02-29  463 =20
7b6f9ec6ad5112 Boris Brezillon 2024-07-03  464  		/**
7b6f9ec6ad5112 Boris Brezillon 2024-07-03  465  		 * @last_fence: Fence of =
the last submitted job.
7b6f9ec6ad5112 Boris Brezillon 2024-07-03  466  		 *
7b6f9ec6ad5112 Boris Brezillon 2024-07-03  467  		 * We return this fence w=
hen we get an empty command stream.
7b6f9ec6ad5112 Boris Brezillon 2024-07-03  468  		 * This way, we are guara=
nteed that all earlier jobs have completed
7b6f9ec6ad5112 Boris Brezillon 2024-07-03  469  		 * when drm_sched_job::s_=
fence::finished without having to feed
7b6f9ec6ad5112 Boris Brezillon 2024-07-03  470  		 * the CS ring buffer wit=
h a dummy job that only signals the fence.
7b6f9ec6ad5112 Boris Brezillon 2024-07-03  471  		 */
7b6f9ec6ad5112 Boris Brezillon 2024-07-03  472  		struct dma_fence *last_fe=
nce;
7b6f9ec6ad5112 Boris Brezillon 2024-07-03  473 =20
de85488138247d Boris Brezillon 2024-02-29  474  		/**
de85488138247d Boris Brezillon 2024-02-29  475  		 * @in_flight_jobs: List =
containing all in-flight jobs.
de85488138247d Boris Brezillon 2024-02-29  476  		 *
de85488138247d Boris Brezillon 2024-02-29  477  		 * Used to keep track and=
 signal panthor_job::done_fence when the
de85488138247d Boris Brezillon 2024-02-29  478  		 * synchronization object=
 attached to the queue is signaled.
de85488138247d Boris Brezillon 2024-02-29  479  		 */
de85488138247d Boris Brezillon 2024-02-29  480  		struct list_head in_fligh=
t_jobs;
de85488138247d Boris Brezillon 2024-02-29  481  	} fence_ctx;
a706810cebb072 Adri=E1n Larumbe  2024-09-13  482 =20
a706810cebb072 Adri=E1n Larumbe  2024-09-13  483  	/** @profiling_info: Job=
 profiling data slots and access information. */
a706810cebb072 Adri=E1n Larumbe  2024-09-13  484  	struct {
a706810cebb072 Adri=E1n Larumbe  2024-09-13  485  		/** @slots: Kernel BO h=
olding the slots. */
a706810cebb072 Adri=E1n Larumbe  2024-09-13  486  		struct panthor_kernel_b=
o *slots;
a706810cebb072 Adri=E1n Larumbe  2024-09-13  487 =20
a706810cebb072 Adri=E1n Larumbe  2024-09-13  488  		/** @slot_count: Number=
 of jobs ringbuffer can hold at once. */
a706810cebb072 Adri=E1n Larumbe  2024-09-13  489  		u32 slot_count;
a706810cebb072 Adri=E1n Larumbe  2024-09-13  490 =20
a706810cebb072 Adri=E1n Larumbe  2024-09-13  491  		/** @profiling_seqno: I=
ndex of the next available profiling information slot. */
a706810cebb072 Adri=E1n Larumbe  2024-09-13  492  		u32 seqno;
a706810cebb072 Adri=E1n Larumbe  2024-09-13  493  	} profiling;
de85488138247d Boris Brezillon 2024-02-29 @494  };
de85488138247d Boris Brezillon 2024-02-29  495 =20

--=20
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
