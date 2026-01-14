Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B99BDD1DB84
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Jan 2026 10:52:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ACE4440145
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Jan 2026 09:52:41 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
	by lists.linaro.org (Postfix) with ESMTPS id 7841340145
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Jan 2026 09:52:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=ihyXgY2Y;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 192.198.163.17 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768384354; x=1799920354;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=agacMnmeYUrLp/UPUCqfFq2xNpFBHamuE1mee+9eS5o=;
  b=ihyXgY2Yp6aK9WEijsnSyN0GWCWRG8oYhjw6jxaHcpW/MnZGpINiwnXF
   K4xdWcYmRBptqwwhYSFxr22zhqaEHieu3YLKx/o6Q4koJnJo2Xgx+pLjt
   ocCcXTaJndeEyV67slZYBb/ux6jQ+a7BvRYwY85jIDwg10m5QAc0J4iCG
   RjvItKkkloCgnRlCJmQH729eXsOn4ZGtWbprM+GXtTR/koE1bkeI3io9O
   qrk2JfXbjHNjamKtBxaVrfX+pWInKPmKQkNjj66da6oZmFn4a/7EdHZFB
   sqGdIXrR4PLwDNSSRXPJl25xFAfFDQwWIHUKasW42rZJ8XkP8hks4q9T0
   A==;
X-CSE-ConnectionGUID: xwbC6vS4Rc2EtYcG9jvk1w==
X-CSE-MsgGUID: h2RefnxsRzqIY9hGrHxehQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="69588713"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800";
   d="scan'208";a="69588713"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 01:52:33 -0800
X-CSE-ConnectionGUID: G9bV8ggqSX+hh14WYQFw1A==
X-CSE-MsgGUID: 8kzsbPJvTpGz2kACxGG3Gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800";
   d="scan'208";a="205058563"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
  by fmviesa009.fm.intel.com with ESMTP; 14 Jan 2026 01:52:31 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vfxYC-00000000GAy-3Pky;
	Wed, 14 Jan 2026 09:52:28 +0000
Date: Wed, 14 Jan 2026 17:52:03 +0800
From: kernel test robot <lkp@intel.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	phasta@mailbox.org, tursulin@ursulin.net, matthew.brost@intel.com,
	sumit.semwal@linaro.org
Message-ID: <202601141704.EpvIhy4M-lkp@intel.com>
References: <20260113152125.47380-2-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260113152125.47380-2-christian.koenig@amd.com>
X-Rspamd-Queue-Id: 7841340145
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.70 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[192.198.163.17:from];
	R_SPF_ALLOW(-0.20)[+ip4:192.198.163.0/26];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:4983, ipnet:192.198.162.0/23, country:US];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	DWL_DNSWL_BLOCKED(0.00)[intel.com:dkim];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,mailbox.org,ursulin.net,intel.com,linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: LHJAK7XF6TY4G36KM752TS2MF6CBSIMW
X-Message-ID-Hash: LHJAK7XF6TY4G36KM752TS2MF6CBSIMW
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 01/10] dma-buf: protected fence ops by RCU v5
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LHJAK7XF6TY4G36KM752TS2MF6CBSIMW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Christian,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-misc/drm-misc-next]
[also build test WARNING on drm-xe/drm-xe-next daeinki-drm-exynos/exynos-dr=
m-next drm/drm-next drm-tip/drm-tip next-20260114]
[cannot apply to drm-i915/for-linux-next drm-i915/for-linux-next-fixes linu=
s/master v6.19-rc5]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Christian-K-nig/dma-=
buf-add-dma_fence_is_initialized-function/20260114-001656
base:   https://gitlab.freedesktop.org/drm/misc/kernel.git drm-misc-next
patch link:    https://lore.kernel.org/r/20260113152125.47380-2-christian.k=
oenig%40amd.com
patch subject: [PATCH 01/10] dma-buf: protected fence ops by RCU v5
config: x86_64-randconfig-122-20260114 (https://download.01.org/0day-ci/arc=
hive/20260114/202601141704.EpvIhy4M-lkp@intel.com/config)
compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f022=
7cb60147a26a1eeb4fb06e3b505e9c7261)
rustc: rustc 1.88.0 (6b00bc388 2025-06-23)
reproduce (this is a W=3D1 build): (https://download.01.org/0day-ci/archive=
/20260114/202601141704.EpvIhy4M-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new versio=
n of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202601141704.EpvIhy4M-lkp@i=
ntel.com/

sparse warnings: (new ones prefixed by >>)
   drivers/dma-buf/dma-fence-unwrap.c: note: in included file:
>> include/linux/dma-fence.h:717:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const *
--
   drivers/dma-buf/dma-fence-array.c: note: in included file (through inclu=
de/linux/dma-fence-array.h):
   include/linux/dma-fence.h:706:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const *
   include/linux/dma-fence.h:706:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const *
   include/linux/dma-fence.h:706:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const *
   include/linux/dma-fence.h:706:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const *
   include/linux/dma-fence.h:706:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const *
>> include/linux/dma-fence.h:717:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const *
   include/linux/dma-fence.h:706:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const *
   include/linux/dma-fence.h:706:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const *
   include/linux/dma-fence.h:706:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const *
   include/linux/dma-fence.h:706:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const *
--
   drivers/dma-buf/dma-fence-chain.c: note: in included file (through inclu=
de/linux/dma-fence-chain.h):
>> include/linux/dma-fence.h:717:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const *
>> include/linux/dma-fence.h:717:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const *
>> include/linux/dma-fence.h:717:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const *
>> include/linux/dma-fence.h:717:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const *
>> include/linux/dma-fence.h:717:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const *
>> include/linux/dma-fence.h:717:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const *
>> include/linux/dma-fence.h:717:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const *
>> include/linux/dma-fence.h:717:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const *
>> include/linux/dma-fence.h:717:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const *
>> include/linux/dma-fence.h:717:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const *
>> include/linux/dma-fence.h:717:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const *
>> include/linux/dma-fence.h:717:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const *
--
   drivers/dma-buf/dma-resv.c: note: in included file (through include/linu=
x/dma-resv.h):
   include/linux/dma-fence.h:706:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const *
>> include/linux/dma-fence.h:717:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const *
--
   drivers/dma-buf/dma-fence.c:1042:38: sparse: sparse: incorrect type in i=
nitializer (different address spaces) @@     expected char const [noderef] =
__rcu *timeline @@     got char * @@
   drivers/dma-buf/dma-fence.c:1042:38: sparse:     expected char const [no=
deref] __rcu *timeline
   drivers/dma-buf/dma-fence.c:1042:38: sparse:     got char *
   drivers/dma-buf/dma-fence.c:1043:36: sparse: sparse: incorrect type in i=
nitializer (different address spaces) @@     expected char const [noderef] =
__rcu *driver @@     got char * @@
   drivers/dma-buf/dma-fence.c:1043:36: sparse:     expected char const [no=
deref] __rcu *driver
   drivers/dma-buf/dma-fence.c:1043:36: sparse:     got char *
   drivers/dma-buf/dma-fence.c:1160:44: sparse: sparse: incorrect type in r=
eturn expression (different address spaces) @@     expected char const [nod=
eref] __rcu * @@     got char const * @@
   drivers/dma-buf/dma-fence.c:1160:44: sparse:     expected char const [no=
deref] __rcu *
   drivers/dma-buf/dma-fence.c:1160:44: sparse:     got char const *
   drivers/dma-buf/dma-fence.c:1162:24: sparse: sparse: incorrect type in r=
eturn expression (different address spaces) @@     expected char const [nod=
eref] __rcu * @@     got char * @@
   drivers/dma-buf/dma-fence.c:1162:24: sparse:     expected char const [no=
deref] __rcu *
   drivers/dma-buf/dma-fence.c:1162:24: sparse:     got char *
   drivers/dma-buf/dma-fence.c:1193:46: sparse: sparse: incorrect type in r=
eturn expression (different address spaces) @@     expected char const [nod=
eref] __rcu * @@     got char const * @@
   drivers/dma-buf/dma-fence.c:1193:46: sparse:     expected char const [no=
deref] __rcu *
   drivers/dma-buf/dma-fence.c:1193:46: sparse:     got char const *
   drivers/dma-buf/dma-fence.c:1195:24: sparse: sparse: incorrect type in r=
eturn expression (different address spaces) @@     expected char const [nod=
eref] __rcu * @@     got char * @@
   drivers/dma-buf/dma-fence.c:1195:24: sparse:     expected char const [no=
deref] __rcu *
   drivers/dma-buf/dma-fence.c:1195:24: sparse:     got char *
   drivers/dma-buf/dma-fence.c: note: in included file (through include/tra=
ce/trace_events.h, include/trace/define_trace.h, include/trace/events/dma_f=
ence.h):
   include/trace/events/dma_fence.h:12:1: sparse: sparse: incorrect type in=
 argument 1 (different address spaces) @@     expected char const *str @@  =
   got char const [noderef] __rcu * @@
   include/trace/events/dma_fence.h:12:1: sparse:     expected char const *=
str
   include/trace/events/dma_fence.h:12:1: sparse:     got char const [noder=
ef] __rcu *
   include/trace/events/dma_fence.h:12:1: sparse: sparse: incorrect type in=
 argument 1 (different address spaces) @@     expected char const *str @@  =
   got char const [noderef] __rcu * @@
   include/trace/events/dma_fence.h:12:1: sparse:     expected char const *=
str
   include/trace/events/dma_fence.h:12:1: sparse:     got char const [noder=
ef] __rcu *
   include/trace/events/dma_fence.h:12:1: sparse: sparse: incorrect type in=
 argument 1 (different address spaces) @@     expected char const *str @@  =
   got char const [noderef] __rcu * @@
   include/trace/events/dma_fence.h:12:1: sparse:     expected char const *=
str
   include/trace/events/dma_fence.h:12:1: sparse:     got char const [noder=
ef] __rcu *
   include/trace/events/dma_fence.h:12:1: sparse: sparse: incorrect type in=
 assignment (different address spaces) @@     expected void const *driver_p=
tr_ @@     got char const [noderef] __rcu * @@
   include/trace/events/dma_fence.h:12:1: sparse:     expected void const *=
driver_ptr_
   include/trace/events/dma_fence.h:12:1: sparse:     got char const [noder=
ef] __rcu *
   include/trace/events/dma_fence.h:12:1: sparse: sparse: incorrect type in=
 argument 1 (different address spaces) @@     expected char const *str @@  =
   got char const [noderef] __rcu * @@
   include/trace/events/dma_fence.h:12:1: sparse:     expected char const *=
str
   include/trace/events/dma_fence.h:12:1: sparse:     got char const [noder=
ef] __rcu *
   include/trace/events/dma_fence.h:12:1: sparse: sparse: incorrect type in=
 argument 1 (different address spaces) @@     expected char const *str @@  =
   got char const [noderef] __rcu * @@
   include/trace/events/dma_fence.h:12:1: sparse:     expected char const *=
str
   include/trace/events/dma_fence.h:12:1: sparse:     got char const [noder=
ef] __rcu *
   include/trace/events/dma_fence.h:12:1: sparse: sparse: incorrect type in=
 argument 1 (different address spaces) @@     expected char const *str @@  =
   got char const [noderef] __rcu * @@
   include/trace/events/dma_fence.h:12:1: sparse:     expected char const *=
str
   include/trace/events/dma_fence.h:12:1: sparse:     got char const [noder=
ef] __rcu *
   include/trace/events/dma_fence.h:12:1: sparse: sparse: incorrect type in=
 assignment (different address spaces) @@     expected void const *timeline=
_ptr_ @@     got char const [noderef] __rcu * @@
   include/trace/events/dma_fence.h:12:1: sparse:     expected void const *=
timeline_ptr_
   include/trace/events/dma_fence.h:12:1: sparse:     got char const [noder=
ef] __rcu *
>> include/trace/events/dma_fence.h:42:1: sparse: sparse: dereference of no=
deref expression
>> include/trace/events/dma_fence.h:42:1: sparse: sparse: dereference of no=
deref expression
>> include/trace/events/dma_fence.h:42:1: sparse: sparse: dereference of no=
deref expression
>> include/trace/events/dma_fence.h:42:1: sparse: sparse: dereference of no=
deref expression
>> include/trace/events/dma_fence.h:42:1: sparse: sparse: dereference of no=
deref expression
>> include/trace/events/dma_fence.h:42:1: sparse: sparse: dereference of no=
deref expression
>> include/trace/events/dma_fence.h:42:1: sparse: sparse: dereference of no=
deref expression
>> include/trace/events/dma_fence.h:42:1: sparse: sparse: dereference of no=
deref expression
   include/trace/events/dma_fence.h:12:1: sparse: sparse: incorrect type in=
 argument 1 (different address spaces) @@     expected char const *str @@  =
   got char const [noderef] __rcu * @@
   include/trace/events/dma_fence.h:12:1: sparse:     expected char const *=
str
   include/trace/events/dma_fence.h:12:1: sparse:     got char const [noder=
ef] __rcu *
   include/trace/events/dma_fence.h:12:1: sparse: sparse: incorrect type in=
 argument 1 (different address spaces) @@     expected char const *str @@  =
   got char const [noderef] __rcu * @@
   include/trace/events/dma_fence.h:12:1: sparse:     expected char const *=
str
   include/trace/events/dma_fence.h:12:1: sparse:     got char const [noder=
ef] __rcu *
   include/trace/events/dma_fence.h:12:1: sparse: sparse: incorrect type in=
 argument 1 (different address spaces) @@     expected char const *str @@  =
   got char const [noderef] __rcu * @@
   include/trace/events/dma_fence.h:12:1: sparse:     expected char const *=
str
   include/trace/events/dma_fence.h:12:1: sparse:     got char const [noder=
ef] __rcu *
   include/trace/events/dma_fence.h:12:1: sparse: sparse: incorrect type in=
 assignment (different address spaces) @@     expected void const *driver_p=
tr_ @@     got char const [noderef] __rcu * @@
   include/trace/events/dma_fence.h:12:1: sparse:     expected void const *=
driver_ptr_
   include/trace/events/dma_fence.h:12:1: sparse:     got char const [noder=
ef] __rcu *
   include/trace/events/dma_fence.h:12:1: sparse: sparse: incorrect type in=
 argument 1 (different address spaces) @@     expected char const *str @@  =
   got char const [noderef] __rcu * @@
   include/trace/events/dma_fence.h:12:1: sparse:     expected char const *=
str
   include/trace/events/dma_fence.h:12:1: sparse:     got char const [noder=
ef] __rcu *
   include/trace/events/dma_fence.h:12:1: sparse: sparse: incorrect type in=
 argument 1 (different address spaces) @@     expected char const *str @@  =
   got char const [noderef] __rcu * @@
   include/trace/events/dma_fence.h:12:1: sparse:     expected char const *=
str
   include/trace/events/dma_fence.h:12:1: sparse:     got char const [noder=
ef] __rcu *
   include/trace/events/dma_fence.h:12:1: sparse: sparse: incorrect type in=
 argument 1 (different address spaces) @@     expected char const *str @@  =
   got char const [noderef] __rcu * @@
   include/trace/events/dma_fence.h:12:1: sparse:     expected char const *=
str
   include/trace/events/dma_fence.h:12:1: sparse:     got char const [noder=
ef] __rcu *
   include/trace/events/dma_fence.h:12:1: sparse: sparse: incorrect type in=
 assignment (different address spaces) @@     expected void const *timeline=
_ptr_ @@     got char const [noderef] __rcu * @@
   include/trace/events/dma_fence.h:12:1: sparse:     expected void const *=
timeline_ptr_
   include/trace/events/dma_fence.h:12:1: sparse:     got char const [noder=
ef] __rcu *
>> include/trace/events/dma_fence.h:42:1: sparse: sparse: dereference of no=
deref expression
>> include/trace/events/dma_fence.h:42:1: sparse: sparse: dereference of no=
deref expression
>> include/trace/events/dma_fence.h:42:1: sparse: sparse: dereference of no=
deref expression
>> include/trace/events/dma_fence.h:42:1: sparse: sparse: dereference of no=
deref expression
>> include/trace/events/dma_fence.h:42:1: sparse: sparse: dereference of no=
deref expression
>> include/trace/events/dma_fence.h:42:1: sparse: sparse: dereference of no=
deref expression
>> include/trace/events/dma_fence.h:42:1: sparse: sparse: dereference of no=
deref expression
>> include/trace/events/dma_fence.h:42:1: sparse: sparse: dereference of no=
deref expression
--
>> drivers/gpu/drm/drm_crtc.c:161:9: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   drivers/gpu/drm/drm_crtc.c:161:9: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   drivers/gpu/drm/drm_crtc.c:161:9: sparse:    struct dma_fence_ops const *
--
   drivers/gpu/drm/drm_syncobj.c: note: in included file (through include/l=
inux/sync_file.h):
>> include/linux/dma-fence.h:717:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const *
>> include/linux/dma-fence.h:717:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const *
--
   drivers/gpu/drm/ttm/ttm_bo.c:1203:31: sparse: sparse: symbol 'ttm_swap_o=
ps' was not declared. Should it be static?
>> drivers/gpu/drm/ttm/ttm_bo.c:226:27: sparse: sparse: dereference of node=
ref expression
--
   drivers/gpu/drm/scheduler/sched_fence.c:241:1: sparse: sparse: bad integ=
er constant expression
   drivers/gpu/drm/scheduler/sched_fence.c:241:1: sparse: sparse: static as=
sertion failed: "MODULE_INFO(description, ...) contains embedded NUL byte"
   drivers/gpu/drm/scheduler/sched_fence.c:242:1: sparse: sparse: bad integ=
er constant expression
   drivers/gpu/drm/scheduler/sched_fence.c:242:1: sparse: sparse: static as=
sertion failed: "MODULE_INFO(file, ...) contains embedded NUL byte"
   drivers/gpu/drm/scheduler/sched_fence.c:242:1: sparse: sparse: bad integ=
er constant expression
   drivers/gpu/drm/scheduler/sched_fence.c:242:1: sparse: sparse: static as=
sertion failed: "MODULE_INFO(license, ...) contains embedded NUL byte"
>> drivers/gpu/drm/scheduler/sched_fence.c:198:20: sparse: sparse: incompat=
ible types in comparison expression (different address spaces):
   drivers/gpu/drm/scheduler/sched_fence.c:198:20: sparse:    struct dma_fe=
nce_ops const [noderef] __rcu *
   drivers/gpu/drm/scheduler/sched_fence.c:198:20: sparse:    struct dma_fe=
nce_ops const *
   drivers/gpu/drm/scheduler/sched_fence.c:201:20: sparse: sparse: incompat=
ible types in comparison expression (different address spaces):
   drivers/gpu/drm/scheduler/sched_fence.c:201:20: sparse:    struct dma_fe=
nce_ops const [noderef] __rcu *
   drivers/gpu/drm/scheduler/sched_fence.c:201:20: sparse:    struct dma_fe=
nce_ops const *
--
   drivers/gpu/drm/radeon/radeon_fence.c:73:40: sparse: sparse: incorrect t=
ype in assignment (different base types) @@     expected unsigned int volat=
ile [usertype] @@     got restricted __le32 [usertype] @@
   drivers/gpu/drm/radeon/radeon_fence.c:73:40: sparse:     expected unsign=
ed int volatile [usertype]
   drivers/gpu/drm/radeon/radeon_fence.c:73:40: sparse:     got restricted =
__le32 [usertype]
   drivers/gpu/drm/radeon/radeon_fence.c:95:31: sparse: sparse: cast to res=
tricted __le32
   drivers/gpu/drm/radeon/radeon_fence.c: note: in included file:
>> drivers/gpu/drm/radeon/radeon.h:2492:27: sparse: sparse: incompatible ty=
pes in comparison expression (different address spaces):
   drivers/gpu/drm/radeon/radeon.h:2492:27: sparse:    struct dma_fence_ops=
 const [noderef] __rcu *
   drivers/gpu/drm/radeon/radeon.h:2492:27: sparse:    struct dma_fence_ops=
 const *
>> drivers/gpu/drm/radeon/radeon.h:2492:27: sparse: sparse: incompatible ty=
pes in comparison expression (different address spaces):
   drivers/gpu/drm/radeon/radeon.h:2492:27: sparse:    struct dma_fence_ops=
 const [noderef] __rcu *
   drivers/gpu/drm/radeon/radeon.h:2492:27: sparse:    struct dma_fence_ops=
 const *
>> drivers/gpu/drm/radeon/radeon.h:2492:27: sparse: sparse: incompatible ty=
pes in comparison expression (different address spaces):
   drivers/gpu/drm/radeon/radeon.h:2492:27: sparse:    struct dma_fence_ops=
 const [noderef] __rcu *
   drivers/gpu/drm/radeon/radeon.h:2492:27: sparse:    struct dma_fence_ops=
 const *
>> drivers/gpu/drm/radeon/radeon.h:2492:27: sparse: sparse: incompatible ty=
pes in comparison expression (different address spaces):
   drivers/gpu/drm/radeon/radeon.h:2492:27: sparse:    struct dma_fence_ops=
 const [noderef] __rcu *
   drivers/gpu/drm/radeon/radeon.h:2492:27: sparse:    struct dma_fence_ops=
 const *
>> drivers/gpu/drm/radeon/radeon.h:2492:27: sparse: sparse: incompatible ty=
pes in comparison expression (different address spaces):
   drivers/gpu/drm/radeon/radeon.h:2492:27: sparse:    struct dma_fence_ops=
 const [noderef] __rcu *
   drivers/gpu/drm/radeon/radeon.h:2492:27: sparse:    struct dma_fence_ops=
 const *
--
   drivers/gpu/drm/radeon/radeon_display.c: note: in included file:
>> drivers/gpu/drm/radeon/radeon.h:2492:27: sparse: sparse: incompatible ty=
pes in comparison expression (different address spaces):
   drivers/gpu/drm/radeon/radeon.h:2492:27: sparse:    struct dma_fence_ops=
 const [noderef] __rcu *
   drivers/gpu/drm/radeon/radeon.h:2492:27: sparse:    struct dma_fence_ops=
 const *
--
   drivers/gpu/drm/radeon/radeon_sync.c: note: in included file:
>> drivers/gpu/drm/radeon/radeon.h:2492:27: sparse: sparse: incompatible ty=
pes in comparison expression (different address spaces):
   drivers/gpu/drm/radeon/radeon.h:2492:27: sparse:    struct dma_fence_ops=
 const [noderef] __rcu *
   drivers/gpu/drm/radeon/radeon.h:2492:27: sparse:    struct dma_fence_ops=
 const *
--
   drivers/gpu/drm/amd/amdgpu/amdgpu_sync.c: note: in included file (throug=
h drivers/gpu/drm/amd/amdgpu/amdgpu_virt.h, drivers/gpu/drm/amd/amdgpu/amdg=
pu.h):
   drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h:499:49: sparse: sparse: stat=
ic assertion failed: "amd_sriov_msg_vf2pf_info must be 1 KB"
   drivers/gpu/drm/amd/amdgpu/amdgpu_sync.c: note: in included file (throug=
h include/linux/dma-fence-chain.h):
>> include/linux/dma-fence.h:717:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const *
--
>> drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_fence.c:93:20: sparse: sparse: =
incompatible types in comparison expression (different address spaces):
   drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_fence.c:93:20: sparse:    struc=
t dma_fence_ops const [noderef] __rcu *
   drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_fence.c:93:20: sparse:    struc=
t dma_fence_ops const *
--
   drivers/gpu/drm/i915/gem/i915_gem_busy.c: note: in included file (throug=
h include/linux/dma-fence-array.h):
   include/linux/dma-fence.h:706:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const *
   include/linux/dma-fence.h:706:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const *
   drivers/gpu/drm/i915/gem/i915_gem_busy.c: note: in included file (throug=
h drivers/gpu/drm/i915/gt/intel_engine.h):
>> drivers/gpu/drm/i915/i915_request.h:369:27: sparse: sparse: incompatible=
 types in comparison expression (different address spaces):
   drivers/gpu/drm/i915/i915_request.h:369:27: sparse:    struct dma_fence_=
ops const [noderef] __rcu *
   drivers/gpu/drm/i915/i915_request.h:369:27: sparse:    struct dma_fence_=
ops const *
>> drivers/gpu/drm/i915/i915_request.h:369:27: sparse: sparse: incompatible=
 types in comparison expression (different address spaces):
   drivers/gpu/drm/i915/i915_request.h:369:27: sparse:    struct dma_fence_=
ops const [noderef] __rcu *
   drivers/gpu/drm/i915/i915_request.h:369:27: sparse:    struct dma_fence_=
ops const *
   drivers/gpu/drm/i915/gem/i915_gem_busy.c: note: in included file (throug=
h include/linux/dma-fence-array.h):
   include/linux/dma-fence.h:706:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const *
   include/linux/dma-fence.h:706:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const *
   drivers/gpu/drm/i915/gem/i915_gem_busy.c: note: in included file (throug=
h drivers/gpu/drm/i915/gt/intel_engine.h):
>> drivers/gpu/drm/i915/i915_request.h:369:27: sparse: sparse: incompatible=
 types in comparison expression (different address spaces):
   drivers/gpu/drm/i915/i915_request.h:369:27: sparse:    struct dma_fence_=
ops const [noderef] __rcu *
   drivers/gpu/drm/i915/i915_request.h:369:27: sparse:    struct dma_fence_=
ops const *
>> drivers/gpu/drm/i915/i915_request.h:369:27: sparse: sparse: incompatible=
 types in comparison expression (different address spaces):
   drivers/gpu/drm/i915/i915_request.h:369:27: sparse:    struct dma_fence_=
ops const [noderef] __rcu *
   drivers/gpu/drm/i915/i915_request.h:369:27: sparse:    struct dma_fence_=
ops const *
--
   drivers/gpu/drm/i915/gem/i915_gem_wait.c: note: in included file (throug=
h drivers/gpu/drm/i915/gt/intel_engine.h):
>> drivers/gpu/drm/i915/i915_request.h:369:27: sparse: sparse: incompatible=
 types in comparison expression (different address spaces):
   drivers/gpu/drm/i915/i915_request.h:369:27: sparse:    struct dma_fence_=
ops const [noderef] __rcu *
   drivers/gpu/drm/i915/i915_request.h:369:27: sparse:    struct dma_fence_=
ops const *
>> drivers/gpu/drm/i915/i915_request.h:369:27: sparse: sparse: incompatible=
 types in comparison expression (different address spaces):
   drivers/gpu/drm/i915/i915_request.h:369:27: sparse:    struct dma_fence_=
ops const [noderef] __rcu *
   drivers/gpu/drm/i915/i915_request.h:369:27: sparse:    struct dma_fence_=
ops const *
>> drivers/gpu/drm/i915/i915_request.h:369:27: sparse: sparse: incompatible=
 types in comparison expression (different address spaces):
   drivers/gpu/drm/i915/i915_request.h:369:27: sparse:    struct dma_fence_=
ops const [noderef] __rcu *
   drivers/gpu/drm/i915/i915_request.h:369:27: sparse:    struct dma_fence_=
ops const *
   drivers/gpu/drm/i915/gem/i915_gem_wait.c: note: in included file (throug=
h include/linux/dma-fence-array.h):
   include/linux/dma-fence.h:706:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const *
   include/linux/dma-fence.h:706:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const *
>> include/linux/dma-fence.h:717:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const *
>> include/linux/dma-fence.h:717:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const *
--
   drivers/gpu/drm/i915/i915_request.c: note: in included file (through inc=
lude/linux/dma-fence-array.h):
>> include/linux/dma-fence.h:717:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const *
>> include/linux/dma-fence.h:717:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:717:27: sparse:    struct dma_fence_ops const *
   drivers/gpu/drm/i915/i915_request.c: note: in included file (through dri=
vers/gpu/drm/i915/i915_active.h, drivers/gpu/drm/i915/gt/intel_context.h, .=
..):
>> drivers/gpu/drm/i915/i915_request.h:369:27: sparse: sparse: incompatible=
 types in comparison expression (different address spaces):
   drivers/gpu/drm/i915/i915_request.h:369:27: sparse:    struct dma_fence_=
ops const [noderef] __rcu *
   drivers/gpu/drm/i915/i915_request.h:369:27: sparse:    struct dma_fence_=
ops const *
   drivers/gpu/drm/i915/i915_request.c: note: in included file (through inc=
lude/linux/dma-fence-array.h):
   include/linux/dma-fence.h:706:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const *
   include/linux/dma-fence.h:706:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const *
   drivers/gpu/drm/i915/i915_request.c: note: in included file (through dri=
vers/gpu/drm/i915/i915_active.h, drivers/gpu/drm/i915/gt/intel_context.h, .=
..):
>> drivers/gpu/drm/i915/i915_request.h:369:27: sparse: sparse: incompatible=
 types in comparison expression (different address spaces):
   drivers/gpu/drm/i915/i915_request.h:369:27: sparse:    struct dma_fence_=
ops const [noderef] __rcu *
   drivers/gpu/drm/i915/i915_request.h:369:27: sparse:    struct dma_fence_=
ops const *
   drivers/gpu/drm/i915/i915_request.c: note: in included file (through inc=
lude/linux/dma-fence-array.h):
   include/linux/dma-fence.h:706:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const *
   include/linux/dma-fence.h:706:27: sparse: sparse: incompatible types in =
comparison expression (different address spaces):
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const =
[noderef] __rcu *
   include/linux/dma-fence.h:706:27: sparse:    struct dma_fence_ops const *
   drivers/gpu/drm/i915/i915_request.c: note: in included file (through dri=
vers/gpu/drm/i915/i915_active.h, drivers/gpu/drm/i915/gt/intel_context.h, .=
..):
>> drivers/gpu/drm/i915/i915_request.h:369:27: sparse: sparse: incompatible=
 types in comparison expression (different address spaces):
   drivers/gpu/drm/i915/i915_request.h:369:27: sparse:    struct dma_fence_=
ops const [noderef] __rcu *
   drivers/gpu/drm/i915/i915_request.h:369:27: sparse:    struct dma_fence_=
ops const *
--
   drivers/gpu/drm/i915/display/intel_display_rps.c: note: in included file=
 (through drivers/gpu/drm/i915/display/intel_display_types.h):
   include/linux/pwm.h:13:1: sparse: sparse: bad integer constant expression
   include/linux/pwm.h:13:1: sparse: sparse: static assertion failed: "MODU=
LE_INFO(import_ns, ...) contains embedded NUL byte"
   drivers/gpu/drm/i915/display/intel_display_rps.c: note: in included file=
 (through drivers/gpu/drm/i915/gt/intel_engine.h, drivers/gpu/drm/i915/i915=
_drv.h):
>> drivers/gpu/drm/i915/i915_request.h:369:27: sparse: sparse: incompatible=
 types in comparison expression (different address spaces):
   drivers/gpu/drm/i915/i915_request.h:369:27: sparse:    struct dma_fence_=
ops const [noderef] __rcu *
   drivers/gpu/drm/i915/i915_request.h:369:27: sparse:    struct dma_fence_=
ops const *

vim +717 include/linux/dma-fence.h

976b6d97c62347 Christian K=F6nig 2022-01-19  708 =20
976b6d97c62347 Christian K=F6nig 2022-01-19  709  /**
976b6d97c62347 Christian K=F6nig 2022-01-19  710   * dma_fence_is_chain - c=
heck if a fence is from the chain subclass
976b6d97c62347 Christian K=F6nig 2022-01-19  711   * @fence: the fence to t=
est
976b6d97c62347 Christian K=F6nig 2022-01-19  712   *
976b6d97c62347 Christian K=F6nig 2022-01-19  713   * Return true if it is a=
 dma_fence_chain and false otherwise.
976b6d97c62347 Christian K=F6nig 2022-01-19  714   */
976b6d97c62347 Christian K=F6nig 2022-01-19  715  static inline bool dma_fe=
nce_is_chain(struct dma_fence *fence)
976b6d97c62347 Christian K=F6nig 2022-01-19  716  {
976b6d97c62347 Christian K=F6nig 2022-01-19 @717  	return fence->ops =3D=3D=
 &dma_fence_chain_ops;
976b6d97c62347 Christian K=F6nig 2022-01-19  718  }
976b6d97c62347 Christian K=F6nig 2022-01-19  719 =20

--=20
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
