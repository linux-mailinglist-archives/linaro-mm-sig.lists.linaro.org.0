Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5FA98D01C
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Oct 2024 11:27:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 78F9344990
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  2 Oct 2024 09:27:23 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
	by lists.linaro.org (Postfix) with ESMTPS id 69FAE44037
	for <linaro-mm-sig@lists.linaro.org>; Wed,  2 Oct 2024 09:26:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b="M/jfdI26";
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of jani.nikula@intel.com designates 198.175.65.16 as permitted sender) smtp.mailfrom=jani.nikula@intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1727861219; x=1759397219;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=x2Lea59cyav6s4rmBPsAfXbrLXjdvVugkrjeXsbGoM0=;
  b=M/jfdI266yA4sL4Ta4ATC11UoctgXRoMlUqd2mjQvjORzptKVrDK1RMR
   +OrqQiAAdVwxnbrjlQ9NNCb89LzyTyr+TpfHWuVmtdyqgZo5yhwLLxzbi
   EIxjbvyX/08fiBiXeO1gGP8f7CQ9w+qXSviqPEmDNkctJcpeVcYSp5TLq
   3jCbvzu1ZmB0t+1r8NRZ63mfICgTtGbays7nLbwV4ZkzmU3OpaH8uhw+H
   rAE8UKia+qUr4IZEGh1/fo5yZRdHYJTjVGjNth+5EUbR0bp7/9WpkCwV4
   1NPYe7GmXwjty/fTTZjUquHoKuqT7+5wBQ33jflydTo5zocBrN2UACdks
   A==;
X-CSE-ConnectionGUID: nvUEWVO7Q8ubE9Shhv3BrA==
X-CSE-MsgGUID: AQ1LIqmGQ+2Rp0n+zuWEIg==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="27111941"
X-IronPort-AV: E=Sophos;i="6.11,171,1725346800";
   d="scan'208";a="27111941"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Oct 2024 02:26:58 -0700
X-CSE-ConnectionGUID: pQ2E3cIVQYGGnj+wNhQSJA==
X-CSE-MsgGUID: XK7Z7LLWTPWKx/kgKAUymw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,171,1725346800";
   d="scan'208";a="104744897"
Received: from lbogdanm-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.246.49])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Oct 2024 02:26:53 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Boris Brezillon <boris.brezillon@collabora.com>, =?utf-8?Q?Adri=C3=A1n?=
 Larumbe
 <adrian.larumbe@collabora.com>
In-Reply-To: <20241002105715.18ec024c@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240923230912.2207320-1-adrian.larumbe@collabora.com>
 <20241002105715.18ec024c@collabora.com>
Date: Wed, 02 Oct 2024 12:26:49 +0300
Message-ID: <877caqvorq.fsf@intel.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 69FAE44037
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	FORGED_SENDER(0.30)[jani.nikula@linux.intel.com,jani.nikula@intel.com];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:4983, ipnet:198.175.64.0/23, country:US];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[arm.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,jani.nikula@intel.com];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: T7ZULHYD65DHT5Q4WEHZBEKONSRMNFDV
X-Message-ID-Hash: T7ZULHYD65DHT5Q4WEHZBEKONSRMNFDV
X-MailFrom: jani.nikula@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?Q?K=C3=B6nig?= <christian.koenig@amd.com>, kernel@collabora.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 0/5] Support fdinfo runtime and memory stats on Panthor
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T7ZULHYD65DHT5Q4WEHZBEKONSRMNFDV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, 02 Oct 2024, Boris Brezillon <boris.brezillon@collabora.com> wrote:
> Queued to drm-misc-next after applying the few modifications I
> mentioned. Also added Steve's ack (given on IRC) on the first patch.

Can we have the drm-tip rebuild conflict resolution too, please?

diff --cc drivers/gpu/drm/panthor/panthor_drv.c
index c520f156e2d7,f9b93f84d611..000000000000
--- a/drivers/gpu/drm/panthor/panthor_drv.c
+++ b/drivers/gpu/drm/panthor/panthor_drv.c
@@@ -1383,7 -1476,7 +1476,11 @@@ static const struct file_operations pan
        .read = drm_read,
        .llseek = noop_llseek,
        .mmap = panthor_mmap,
++<<<<<<< HEAD
 +      .fop_flags = FOP_UNSIGNED_OFFSET,
++=======
+       .show_fdinfo = drm_show_fdinfo,
++>>>>>>> drm-misc/drm-misc-next
  };
  
  #ifdef CONFIG_DEBUG_FS



>
>> 
>>  .../testing/sysfs-driver-panthor-profiling    |  10 +
>>  Documentation/gpu/panthor.rst                 |  46 +++
>>  drivers/gpu/drm/panthor/panthor_devfreq.c     |  18 +-
>>  drivers/gpu/drm/panthor/panthor_device.h      |  36 ++
>>  drivers/gpu/drm/panthor/panthor_drv.c         |  73 ++++
>>  drivers/gpu/drm/panthor/panthor_gem.c         |  12 +
>>  drivers/gpu/drm/panthor/panthor_sched.c       | 384 +++++++++++++++---
>>  drivers/gpu/drm/panthor/panthor_sched.h       |   2 +
>>  8 files changed, 531 insertions(+), 50 deletions(-)
>>  create mode 100644 Documentation/ABI/testing/sysfs-driver-panthor-profiling
>>  create mode 100644 Documentation/gpu/panthor.rst
>> 
>

-- 
Jani Nikula, Intel
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
