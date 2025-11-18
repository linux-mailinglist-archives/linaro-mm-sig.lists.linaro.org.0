Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D0676C6A2B9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Nov 2025 16:00:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 01C823F907
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Nov 2025 15:00:33 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
	by lists.linaro.org (Postfix) with ESMTPS id 658D33F777
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Nov 2025 15:00:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=csuTPeA1;
	spf=pass (lists.linaro.org: domain of thomas.hellstrom@linux.intel.com designates 198.175.65.9 as permitted sender) smtp.mailfrom=thomas.hellstrom@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1763478018; x=1795014018;
  h=message-id:subject:from:to:cc:date:in-reply-to:
   references:content-transfer-encoding:mime-version;
  bh=Zz9YWiBTLV0B0EhGOFmhpjfs0b4houvXiVpjgI8aT8E=;
  b=csuTPeA1PdaU9rM9QZC6tW/pSP9aM09DsCVJ3mwggj1tkDbiNkeJKUC4
   YfBQb+Lrcm7iShvNiZC2U8iNMY8AXv5jp6+UnVSQkzje6oFHnBfFFUQSX
   YdQ3V/xUpHUZlz5uHakw/s/prhR2CVfjmn6GPSqpeT6XG22xw0eyE+GNt
   d6lJduzy6HLw7iVYG0sUk7UTGbvl1ewjneaVAQxGSsOKugzuNzApRQguZ
   KXOFXRtK0vQZM7fLGrJGspEoHYT3S9w8yXh1ywokh4GhkQUGr/psrc8ae
   LWG6DfQOS6McQFonNHruNELqvU1zT2Bx6ItxrC+p577XfTVtMerRtOmop
   Q==;
X-CSE-ConnectionGUID: 8BKKAhacS2StRPeXC/hhfg==
X-CSE-MsgGUID: vhHHlw1oSdGo0kcZRrsK5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11617"; a="88151657"
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000";
   d="scan'208";a="88151657"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Nov 2025 07:00:16 -0800
X-CSE-ConnectionGUID: srJjTBFPTNCsvAFsGMnVzg==
X-CSE-MsgGUID: fGCuAn9pSpC8wbsDghrqMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000";
   d="scan'208";a="190931473"
Received: from inaky-mobl1.amr.corp.intel.com (HELO [10.245.245.166]) ([10.245.245.166])
  by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Nov 2025 07:00:12 -0800
Message-ID: <471b61ae7b130ea05b509a5fb0b7f3a4de59531a.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, Alex
 Deucher <alexander.deucher@amd.com>, Christian =?ISO-8859-1?Q?K=F6nig?=
 <christian.koenig@amd.com>,  David Airlie <airlied@gmail.com>, Simona
 Vetter <simona@ffwll.ch>, Huang Rui <ray.huang@amd.com>, Matthew Auld
 <matthew.auld@intel.com>, Matthew Brost <matthew.brost@intel.com>, Maarten
 Lankhorst	 <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>,  Thomas Zimmermann <tzimmermann@suse.de>, Sumit
 Semwal <sumit.semwal@linaro.org>
Date: Tue, 18 Nov 2025 16:00:10 +0100
In-Reply-To: <20251113160632.5889-3-pierre-eric.pelloux-prayer@amd.com>
References: <20251113160632.5889-1-pierre-eric.pelloux-prayer@amd.com>
	 <20251113160632.5889-3-pierre-eric.pelloux-prayer@amd.com>
Organization: Intel Sweden AB, Registration Number: 556189-6027
User-Agent: Evolution 3.54.3 (3.54.3-2.fc41) 
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.43 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-2.43)[97.37%];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,gmail.com,ffwll.ch,intel.com,linux.intel.com,kernel.org,suse.de,linaro.org];
	HAS_ORG_HEADER(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[intel.com:dkim,mgamail.intel.com:rdns,mgamail.intel.com:helo];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 658D33F777
X-Spamd-Bar: ------
Message-ID-Hash: 4KWXUBENUAPYXUKTE2X4KW3M2TMVVQQA
X-Message-ID-Hash: 4KWXUBENUAPYXUKTE2X4KW3M2TMVVQQA
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 02/20] drm/ttm: rework pipelined eviction fence handling
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4KWXUBENUAPYXUKTE2X4KW3M2TMVVQQA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi, Pierre-Eric

On Thu, 2025-11-13 at 17:05 +0100, Pierre-Eric Pelloux-Prayer wrote:
> Until now ttm stored a single pipelined eviction fence which means
> drivers had to use a single entity for these evictions.
> 
> To lift this requirement, this commit allows up to 8 entities to
> be used.
> 
> Ideally a dma_resv object would have been used as a container of
> the eviction fences, but the locking rules makes it complex.
> dma_resv all have the same ww_class, which means "Attempting to
> lock more mutexes after ww_acquire_done." is an error.
> 
> One alternative considered was to introduced a 2nd ww_class for
> specific resv to hold a single "transient" lock (= the resv lock
> would only be held for a short period, without taking any other
> locks).

Wouldn't it be possible to use lockdep_set_class_and_name() to modify
the resv lock class for these particular resv objects after they are
allocated? Reusing the resv code certainly sounds attractive.

Thanks,
Thomas

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
