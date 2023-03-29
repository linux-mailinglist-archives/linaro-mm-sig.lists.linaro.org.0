Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DAC26CDAC2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Mar 2023 15:27:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8327F3EC5F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Mar 2023 13:27:10 +0000 (UTC)
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by lists.linaro.org (Postfix) with ESMTPS id 3616C3EC33
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Mar 2023 13:26:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=ibjDglRP;
	spf=none (lists.linaro.org: domain of tvrtko.ursulin@linux.intel.com has no SPF policy when checking 134.134.136.126) smtp.mailfrom=tvrtko.ursulin@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1680096419; x=1711632419;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=m6FLnDpgkhlXNUMmZtqLdiaUxH+Hm0aC8mTZPwF4soE=;
  b=ibjDglRPyxXmsLurcUlzvV/V+fDNdnuvjXePQzFWIGI/G/d2znJVAjl6
   NKD34/fq+moa6Ug0/Gs/M48FdTW3Sd9amzAJB0r/ON9R7bcTf63ZOLdL4
   xomTFB4W8bIMv/tFI/kU3zVoulruDWw5ehLf9b4CLkv/aYhoQ7H+6L01x
   ECKZjptUdTjlgZ9FzLT1C9cPqJ4gr9Hgv4LgswBlzIS49Wkxyc1Yyb9pK
   enUjGdE4MT3Jd1krYoXxMncqBPuUVm4kjkMu/ybz/UrhZJJI1jEaCgIkL
   0efSd3BYNk00xhn/3uBhwHGp4SEC2QKSO709G89BwQ/iEbD+rHnhsuB1n
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="324778084"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400";
   d="scan'208";a="324778084"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Mar 2023 06:26:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="930323217"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400";
   d="scan'208";a="930323217"
Received: from jabolger-mobl2.ger.corp.intel.com (HELO [10.213.199.158]) ([10.213.199.158])
  by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Mar 2023 06:26:56 -0700
Message-ID: <80f5338a-30de-86fe-d316-25d3c4e357fa@linux.intel.com>
Date: Wed, 29 Mar 2023 14:26:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Daniel Vetter <daniel@ffwll.ch>, Rob Clark <robdclark@gmail.com>
References: <CAF6AEGvoP9_FERdL6U8S2O-BVt-oAUgAytbE6RvygsoAOwOHvw@mail.gmail.com>
 <ZCMhhToEdWVAEtBh@phenom.ffwll.local>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <ZCMhhToEdWVAEtBh@phenom.ffwll.local>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3616C3EC33
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.30 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	RCVD_IN_DNSWL_HI(-0.50)[134.134.136.126:from];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[ffwll.ch,gmail.com];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:4983, ipnet:134.134.136.0/24, country:US];
	R_SPF_NA(0.00)[no SPF record];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_ALL(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[]
Message-ID-Hash: RHCY6UXSEBQ4SLOKPUJFVSYDLURYCO4Q
X-Message-ID-Hash: RHCY6UXSEBQ4SLOKPUJFVSYDLURYCO4Q
X-MailFrom: tvrtko.ursulin@linux.intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, dri-devel <dri-devel@lists.freedesktop.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [pull] drm: dma-fence-deadline-core for v6.4
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RHCY6UXSEBQ4SLOKPUJFVSYDLURYCO4Q/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit


On 28/03/2023 18:19, Daniel Vetter wrote:
> On Sat, Mar 25, 2023 at 11:24:56AM -0700, Rob Clark wrote:
>> Hi Dave and Daniel,
>>
>> Here is the series for dma-fence deadline hint, without driver
>> specific patches, with the intent that it can be merged into drm-next
>> as well as -driver next trees to enable landing driver specific
>> support through their corresponding -next trees.
>>
>> The following changes since commit eeac8ede17557680855031c6f305ece2378af326:
>>
>>    Linux 6.3-rc2 (2023-03-12 16:36:44 -0700)
>>
>> are available in the Git repository at:
>>
>>    https://gitlab.freedesktop.org/drm/msm.git tags/dma-fence-deadline-core
>>
>> for you to fetch changes up to 0bcc8f52a8d9d1f9cd5af7f88c6599a89e64284a:
>>
>>    drm/atomic-helper: Set fence deadline for vblank (2023-03-25 10:55:08 -0700)
> 
> Ok apparently there's only igts for the sync_file uabi and the only only
> userspace for syncobj is the mesa mr that is still under discussion :-/
> 
> Yes I know there's a clearly established need for something like this, but
> also in drm we don't merge conjectured uabi. Especially with tricky stuff
> that's meant to improve best effort performance/tuning problems, where you
> really have to benchmark the entire thing and make sure you didn't screw
> up some interaction.

Would we consider bypassing any ABI concerns by going with my proposal* 
for the wait boost specific case?

Regards,

Tvrtko

*) https://patchwork.freedesktop.org/series/113846/


> 
> To make sure this isn't stuck another full cycle, is there a way to wittle
> this just down to the kms atomic flip boosting parts? That way we could at
> least start landing the core&driver bits ...
> -Daniel
> 
>>
>> ----------------------------------------------------------------
>> Immutable branch with dma-fence deadline hint support between drm-next
>> and driver -next trees.
>>
>> ----------------------------------------------------------------
>> Rob Clark (11):
>>        dma-buf/dma-fence: Add deadline awareness
>>        dma-buf/fence-array: Add fence deadline support
>>        dma-buf/fence-chain: Add fence deadline support
>>        dma-buf/dma-resv: Add a way to set fence deadline
>>        dma-buf/sync_file: Surface sync-file uABI
>>        dma-buf/sync_file: Add SET_DEADLINE ioctl
>>        dma-buf/sw_sync: Add fence deadline support
>>        drm/scheduler: Add fence deadline support
>>        drm/syncobj: Add deadline support for syncobj waits
>>        drm/vblank: Add helper to get next vblank time
>>        drm/atomic-helper: Set fence deadline for vblank
>>
>>   Documentation/driver-api/dma-buf.rst    | 16 ++++++-
>>   drivers/dma-buf/dma-fence-array.c       | 11 +++++
>>   drivers/dma-buf/dma-fence-chain.c       | 12 +++++
>>   drivers/dma-buf/dma-fence.c             | 60 ++++++++++++++++++++++++
>>   drivers/dma-buf/dma-resv.c              | 22 +++++++++
>>   drivers/dma-buf/sw_sync.c               | 81 +++++++++++++++++++++++++++++++++
>>   drivers/dma-buf/sync_debug.h            |  2 +
>>   drivers/dma-buf/sync_file.c             | 19 ++++++++
>>   drivers/gpu/drm/drm_atomic_helper.c     | 37 +++++++++++++++
>>   drivers/gpu/drm/drm_syncobj.c           | 64 ++++++++++++++++++++------
>>   drivers/gpu/drm/drm_vblank.c            | 53 +++++++++++++++++----
>>   drivers/gpu/drm/scheduler/sched_fence.c | 46 +++++++++++++++++++
>>   drivers/gpu/drm/scheduler/sched_main.c  |  2 +-
>>   include/drm/drm_vblank.h                |  1 +
>>   include/drm/gpu_scheduler.h             | 17 +++++++
>>   include/linux/dma-fence.h               | 22 +++++++++
>>   include/linux/dma-resv.h                |  2 +
>>   include/uapi/drm/drm.h                  | 17 +++++++
>>   include/uapi/linux/sync_file.h          | 59 +++++++++++++++---------
>>   19 files changed, 496 insertions(+), 47 deletions(-)
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
