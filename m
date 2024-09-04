Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C72696C391
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Sep 2024 18:11:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4425D4008F
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Sep 2024 16:11:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
	by lists.linaro.org (Postfix) with ESMTPS id 949744008F
	for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Sep 2024 16:11:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=GImkfraZ;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 198.175.65.15 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1725466293; x=1757002293;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=wY8MEtsxZvN4Mzjntd70BSHgqkRNh05pCy8yVjjzynQ=;
  b=GImkfraZiw5fvFQDdOTOV3n14RxYiAYvWsej6YoZbSZg8hQ7BMmFa4Hn
   sEtw3THgMj9jTp/DIr+eycYxsi31FS3c8WnazJdk72EE/qwS9B3ZU6Hdq
   B0nFnnqd+84gDHg4yycq1xwnLn6c25Uy1ikOAHVcHTGQxsz6PeIwe51yc
   Rup15X7lrQbicr9RJHw4FnaN7tkvnLTX7D07nECMHCI9yyVz42k702lt6
   /2ofwuApzipSXFqPaTD/8CrNYJ0CI7oKxRNCWft7N61MKEHcKgnluFtFg
   BDAAi2X2uJ+c01oRBzlJsCokYiGZhOPFJkNTSY6yH/8MDZCjkhKeTtp1a
   Q==;
X-CSE-ConnectionGUID: k79wEOP5QuaOQK+Aq6amew==
X-CSE-MsgGUID: P0hAlZ8HR4e6JyojEXCa5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="27897989"
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600";
   d="scan'208";a="27897989"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Sep 2024 09:11:32 -0700
X-CSE-ConnectionGUID: v1tYzAk2QeOvgFAQTdafWw==
X-CSE-MsgGUID: Da7JnitvTCunJasxl+eu6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600";
   d="scan'208";a="69724824"
Received: from lkp-server01.sh.intel.com (HELO 9c6b1c7d3b50) ([10.239.97.150])
  by fmviesa005.fm.intel.com with ESMTP; 04 Sep 2024 09:11:28 -0700
Received: from kbuild by 9c6b1c7d3b50 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1slsbO-0008Ip-0c;
	Wed, 04 Sep 2024 16:11:26 +0000
Date: Thu, 5 Sep 2024 00:10:45 +0800
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
Message-ID: <202409042317.CRCMb6bs-lkp@intel.com>
References: <20240903202541.430225-2-adrian.larumbe@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240903202541.430225-2-adrian.larumbe@collabora.com>
X-Rspamd-Action: no action
X-Spamd-Bar: ------
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 949744008F
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26];
	MIME_GOOD(-0.10)[text/plain];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:4983, ipnet:198.175.64.0/23, country:US];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	MISSING_XM_UA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[198.175.65.15:from];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[collabora.com,kernel.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
Message-ID-Hash: 7BBKLGDSE5I2FLL7LPKEFS2Z3GL2H76S
X-Message-ID-Hash: 7BBKLGDSE5I2FLL7LPKEFS2Z3GL2H76S
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, kernel@collabora.com, =?iso-8859-1?Q?Adri=E1n?= Larumbe <adrian.larumbe@collabora.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/4] drm/panthor: introduce job cycle and timestamp accounting
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7BBKLGDSE5I2FLL7LPKEFS2Z3GL2H76S/>
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
patch link:    https://lore.kernel.org/r/20240903202541.430225-2-adrian.lar=
umbe%40collabora.com
patch subject: [PATCH v5 1/4] drm/panthor: introduce job cycle and timestam=
p accounting
config: x86_64-buildonly-randconfig-002-20240904 (https://download.01.org/0=
day-ci/archive/20240904/202409042317.CRCMb6bs-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce (this is a W=3D1 build): (https://download.01.org/0day-ci/archive=
/20240904/202409042317.CRCMb6bs-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new versio=
n of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202409042317.CRCMb6bs-lkp@i=
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
>> drivers/gpu/drm/panthor/panthor_sched.c:494: warning: Excess struct memb=
er 'slots' description in 'panthor_queue'
>> drivers/gpu/drm/panthor/panthor_sched.c:494: warning: Excess struct memb=
er 'slot_count' description in 'panthor_queue'
>> drivers/gpu/drm/panthor/panthor_sched.c:494: warning: Excess struct memb=
er 'profiling_seqno' description in 'panthor_queue'
>> drivers/gpu/drm/panthor/panthor_sched.c:810: warning: Function parameter=
 or struct member 'profiling_slot' not described in 'panthor_job'
   drivers/gpu/drm/panthor/panthor_sched.c:810: warning: Excess struct memb=
er 'start' description in 'panthor_job'
   drivers/gpu/drm/panthor/panthor_sched.c:810: warning: Excess struct memb=
er 'size' description in 'panthor_job'
   drivers/gpu/drm/panthor/panthor_sched.c:810: warning: Excess struct memb=
er 'latest_flush' description in 'panthor_job'
   drivers/gpu/drm/panthor/panthor_sched.c:810: warning: Excess struct memb=
er 'start' description in 'panthor_job'
   drivers/gpu/drm/panthor/panthor_sched.c:810: warning: Excess struct memb=
er 'end' description in 'panthor_job'
>> drivers/gpu/drm/panthor/panthor_sched.c:810: warning: Excess struct memb=
er 'profile_slot' description in 'panthor_job'
   drivers/gpu/drm/panthor/panthor_sched.c:1731: warning: Function paramete=
r or struct member 'ptdev' not described in 'panthor_sched_report_fw_events'
   drivers/gpu/drm/panthor/panthor_sched.c:1731: warning: Function paramete=
r or struct member 'events' not described in 'panthor_sched_report_fw_event=
s'
   drivers/gpu/drm/panthor/panthor_sched.c:2623: warning: Function paramete=
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
6f64890b41a576 Adri=E1n Larumbe  2024-09-03  482 =20
6f64890b41a576 Adri=E1n Larumbe  2024-09-03  483  	/** @profiling_info: Job=
 profiling data slots and access information. */
6f64890b41a576 Adri=E1n Larumbe  2024-09-03  484  	struct {
6f64890b41a576 Adri=E1n Larumbe  2024-09-03  485  		/** @slots: Kernel BO h=
olding the slots. */
6f64890b41a576 Adri=E1n Larumbe  2024-09-03  486  		struct panthor_kernel_b=
o *slots;
6f64890b41a576 Adri=E1n Larumbe  2024-09-03  487 =20
6f64890b41a576 Adri=E1n Larumbe  2024-09-03  488  		/** @slot_count: Number=
 of jobs ringbuffer can hold at once. */
6f64890b41a576 Adri=E1n Larumbe  2024-09-03  489  		u32 slot_count;
6f64890b41a576 Adri=E1n Larumbe  2024-09-03  490 =20
6f64890b41a576 Adri=E1n Larumbe  2024-09-03  491  		/** @profiling_seqno: I=
ndex of the next available profiling information slot. */
6f64890b41a576 Adri=E1n Larumbe  2024-09-03  492  		u32 profiling_seqno;
6f64890b41a576 Adri=E1n Larumbe  2024-09-03  493  	} profiling_info;
de85488138247d Boris Brezillon 2024-02-29 @494  };
de85488138247d Boris Brezillon 2024-02-29  495 =20

--=20
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
