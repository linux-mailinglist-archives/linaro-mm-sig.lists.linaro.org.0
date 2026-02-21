Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPaQMjC+mWkWWgMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 21 Feb 2026 15:16:16 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F1616D00C
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 21 Feb 2026 15:16:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8DA64401EA
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 21 Feb 2026 14:16:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
	by lists.linaro.org (Postfix) with ESMTPS id 00A4B401EA
	for <linaro-mm-sig@lists.linaro.org>; Sat, 21 Feb 2026 14:16:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=A2jLKPcJ;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 198.175.65.9 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771683372; x=1803219372;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=iv+wl5S8GMBKsfMadNR67SuYBnnFKiyhZHKRp4P+gEU=;
  b=A2jLKPcJ8dYdPxcTGkDNA2g95CAj/YhILPaDxAZPX1oqWmu6reeiwRu6
   dMLKyr8bcEWjS64ZpA2sZtLAVYAUw0Ipzb8wtWwoxRtBWKOv9y7oSAooy
   rUr34EZXECMhdhuYpHkXZ3oEJyB6BBo6xBau0Dft5sOtw8XLDqCQ9TNN6
   ntwgyRQXVV6J1tOwRqx3GcGP8Ms7vXmCWrCVzjSN4ijHKCBzmHDQC8+Q0
   5JIFh6DH0O5nJNfQuhx+TwILLYhFnkh8ltrNWXGtkQe6e1pAKNL522aOI
   usqp7YLgMVWoQt2PIr/JtNAFVjoLbpraqbgU+L8LI9ZpM5TljbVFJUW9I
   A==;
X-CSE-ConnectionGUID: dyqeFqn2QzKxjZMj7w81cQ==
X-CSE-MsgGUID: ZtimqEFxSyKofiwrQzBqFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11708"; a="95366847"
X-IronPort-AV: E=Sophos;i="6.21,304,1763452800";
   d="scan'208";a="95366847"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Feb 2026 06:16:11 -0800
X-CSE-ConnectionGUID: M0H7iOt8SCCXLakT/kPJPw==
X-CSE-MsgGUID: NnlVnJ2/RJ+r86aAjnjpXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,304,1763452800";
   d="scan'208";a="214090902"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
  by fmviesa008.fm.intel.com with ESMTP; 21 Feb 2026 06:16:09 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vtnmA-000000014xo-3YIC;
	Sat, 21 Feb 2026 14:16:06 +0000
Date: Sat, 21 Feb 2026 22:15:24 +0800
From: kernel test robot <lkp@intel.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	phasta@mailbox.org, matthew.brost@intel.com,
	sumit.semwal@linaro.org
Message-ID: <202602212248.xPSr8tt8-lkp@intel.com>
References: <20260219160822.1529-2-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260219160822.1529-2-christian.koenig@amd.com>
X-Spamd-Bar: -------
Message-ID-Hash: UCYTV25MHWIXKQ5KS3TP5JBVC7HKLHIR
X-Message-ID-Hash: UCYTV25MHWIXKQ5KS3TP5JBVC7HKLHIR
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/8] dma-buf: protected fence ops by RCU v7
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UCYTV25MHWIXKQ5KS3TP5JBVC7HKLHIR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
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
	FREEMAIL_TO(0.00)[gmail.com,mailbox.org,intel.com,linaro.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.973];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[intel.com:-];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[01.org:url,gitlab.freedesktop.org:url,linaro.org:email,intel.com:mid,intel.com:email,git-scm.com:url]
X-Rspamd-Queue-Id: 12F1616D00C
X-Rspamd-Action: no action

Hi Christian,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-misc/drm-misc-next]
[cannot apply to drm-i915/for-linux-next drm-i915/for-linux-next-fixes drm-=
xe/drm-xe-next linus/master v6.19 next-20260220]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Christian-K-nig/dma-=
buf-detach-fence-ops-on-signal-v2/20260220-010804
base:   https://gitlab.freedesktop.org/drm/misc/kernel.git drm-misc-next
patch link:    https://lore.kernel.org/r/20260219160822.1529-2-christian.ko=
enig%40amd.com
patch subject: [PATCH 1/8] dma-buf: protected fence ops by RCU v7
config: hexagon-randconfig-r121-20260221 (https://download.01.org/0day-ci/a=
rchive/20260221/202602212248.xPSr8tt8-lkp@intel.com/config)
compiler: clang version 23.0.0git (https://github.com/llvm/llvm-project e86=
750b29fa0ff207cd43213d66dabe565417638)
reproduce (this is a W=3D1 build): (https://download.01.org/0day-ci/archive=
/20260221/202602212248.xPSr8tt8-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new versio=
n of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202602212248.xPSr8tt8-lkp@i=
ntel.com/

sparse warnings: (new ones prefixed by >>)
   drivers/dma-buf/dma-fence-array.c: note: in included file (through inclu=
de/linux/dma-fence-array.h):
>> include/linux/dma-fence.h:721:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:721:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:721:27: sparse:    struct dma_fence_ops const *
>> include/linux/dma-fence.h:721:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:721:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:721:27: sparse:    struct dma_fence_ops const *
>> include/linux/dma-fence.h:721:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:721:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:721:27: sparse:    struct dma_fence_ops const *
>> include/linux/dma-fence.h:721:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:721:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:721:27: sparse:    struct dma_fence_ops const *
>> include/linux/dma-fence.h:721:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:721:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:721:27: sparse:    struct dma_fence_ops const *
   include/linux/dma-fence.h:732:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:732:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:732:27: sparse:    struct dma_fence_ops const *
>> include/linux/dma-fence.h:721:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:721:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:721:27: sparse:    struct dma_fence_ops const *
>> include/linux/dma-fence.h:721:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:721:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:721:27: sparse:    struct dma_fence_ops const *
>> include/linux/dma-fence.h:721:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:721:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:721:27: sparse:    struct dma_fence_ops const *
>> include/linux/dma-fence.h:721:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:721:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:721:27: sparse:    struct dma_fence_ops const *
--
   drivers/dma-buf/dma-resv.c: note: in included file (through include/linu=
x/dma-resv.h):
>> include/linux/dma-fence.h:721:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:721:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:721:27: sparse:    struct dma_fence_ops const *
   include/linux/dma-fence.h:732:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:732:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:732:27: sparse:    struct dma_fence_ops const *
--
   drivers/dma-buf/dma-fence.c:1043:38: sparse: sparse: incorrect type in i=
nitializer (different address spaces) @@     expected char const [noderef] =
__rcu *timeline @@     got char * @@
   drivers/dma-buf/dma-fence.c:1043:38: sparse:     expected char const [no=
deref] __rcu *timeline
   drivers/dma-buf/dma-fence.c:1043:38: sparse:     got char *
   drivers/dma-buf/dma-fence.c:1044:36: sparse: sparse: incorrect type in i=
nitializer (different address spaces) @@     expected char const [noderef] =
__rcu *driver @@     got char * @@
   drivers/dma-buf/dma-fence.c:1044:36: sparse:     expected char const [no=
deref] __rcu *driver
   drivers/dma-buf/dma-fence.c:1044:36: sparse:     got char *
   drivers/dma-buf/dma-fence.c: note: in included file (through include/tra=
ce/trace_events.h, include/trace/define_trace.h, include/trace/events/dma_f=
ence.h):
>> include/trace/events/dma_fence.h:17:1: sparse: sparse: dereference of no=
deref expression
>> include/trace/events/dma_fence.h:17:1: sparse: sparse: dereference of no=
deref expression
>> include/trace/events/dma_fence.h:17:1: sparse: sparse: dereference of no=
deref expression
>> include/trace/events/dma_fence.h:17:1: sparse: sparse: dereference of no=
deref expression
>> include/trace/events/dma_fence.h:17:1: sparse: sparse: dereference of no=
deref expression
>> include/trace/events/dma_fence.h:17:1: sparse: sparse: dereference of no=
deref expression

vim +721 include/linux/dma-fence.h

976b6d97c62347 Christian K=F6nig 2022-01-19  712 =20
976b6d97c62347 Christian K=F6nig 2022-01-19  713  /**
976b6d97c62347 Christian K=F6nig 2022-01-19  714   * dma_fence_is_array - c=
heck if a fence is from the array subclass
976b6d97c62347 Christian K=F6nig 2022-01-19  715   * @fence: the fence to t=
est
976b6d97c62347 Christian K=F6nig 2022-01-19  716   *
976b6d97c62347 Christian K=F6nig 2022-01-19  717   * Return true if it is a=
 dma_fence_array and false otherwise.
976b6d97c62347 Christian K=F6nig 2022-01-19  718   */
976b6d97c62347 Christian K=F6nig 2022-01-19  719  static inline bool dma_fe=
nce_is_array(struct dma_fence *fence)
976b6d97c62347 Christian K=F6nig 2022-01-19  720  {
976b6d97c62347 Christian K=F6nig 2022-01-19 @721  	return fence->ops =3D=3D=
 &dma_fence_array_ops;
976b6d97c62347 Christian K=F6nig 2022-01-19  722  }
976b6d97c62347 Christian K=F6nig 2022-01-19  723 =20

--=20
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
