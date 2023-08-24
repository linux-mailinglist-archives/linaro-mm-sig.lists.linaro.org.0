Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E84A786B06
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Aug 2023 11:03:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 172473F053
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Aug 2023 09:03:40 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
	by lists.linaro.org (Postfix) with ESMTPS id 1809043FDB
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Aug 2023 09:03:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=OpVVa49z;
	spf=pass (lists.linaro.org: domain of jani.nikula@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1692867814; x=1724403814;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=1ZAkSY/wD+Wa94fJkUCZoVioGpTkV1ceBb5QI3d2I6E=;
  b=OpVVa49zId/LeWzKHTgq/DvYcry70Orw4+z/bDhB8+FVKwhPIOd7vYpr
   xx3FhguG/2QIxzizt6lJmmwuRfph3TGajbrzPF4ZgXIYDubUZm3tdzN01
   J91bi37Mt4UhUsYSK7HgMtw7HOdWlqr3LYI3P7rH0bRt+cuqkWEfGEWCk
   6p+F7XrSm2ROwSH7DsKjSMEUq9OU4vGSSlwCaROxTYJgVl1aTMELf2d0f
   3dY+af6sQROUDM8MTvkMCDV9SxPP1uOYNYle8ga/3Zz+uS8MIuR/5j5ha
   /lHn4tvVyHVU5nljLq7+6f87qvr8++9hdFuWWzScKPUnuY0iBD8LHe1+q
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="364561593"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200";
   d="scan'208";a="364561593"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2023 02:03:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="736973743"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200";
   d="scan'208";a="736973743"
Received: from andrzejk-mobl.ger.corp.intel.com (HELO localhost) ([10.252.46.90])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2023 02:03:23 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lee Jones <lee@kernel.org>, lee@kernel.org
In-Reply-To: <20230824073710.2677348-1-lee@kernel.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230824073710.2677348-1-lee@kernel.org>
Date: Thu, 24 Aug 2023 12:03:20 +0300
Message-ID: <87wmxk4xt3.fsf@intel.com>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 1809043FDB
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.30 / 15.00];
	REPLY(-4.00)[];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	FORGED_SENDER(0.30)[jani.nikula@linux.intel.com,jani.nikula@intel.com];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:134.134.136.20/32];
	RWL_MAILSPIKE_GOOD(-0.10)[134.134.136.20:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,lists.freedesktop.org,nvidia.com,riseup.net,gmail.com,ideasonboard.com,linaro.org,amd.com,xilinx.com,vger.kernel.org,pengutronix.de,kernel.org,lists.linaro.org,nxp.com,lists.infradead.org,suse.de,freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,jani.nikula@intel.com];
	RCPT_COUNT_TWELVE(0.00)[37];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:4983, ipnet:134.134.136.0/24, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: XT4T6RZV3RW67DIBMLTBHGEXN46B64DR
X-Message-ID-Hash: XT4T6RZV3RW67DIBMLTBHGEXN46B64DR
X-MailFrom: jani.nikula@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Karol Herbst <kherbst@redhat.com>, nouveau@lists.freedesktop.org, dri-devel@lists.freedesktop.org, Mikko Perttunen <mperttunen@nvidia.com>, =?utf-8?Q?Ma=C3=ADra?= Canal <mairacanal@riseup.net>, Thierry Reding <thierry.reding@gmail.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Sumit Semwal <sumit.semwal@linaro.org>, Mario Limonciello <mario.limonciello@amd.com>, Shashank Sharma <shashank.sharma@amd.com>, Michal Simek <michal.simek@xilinx.com>, amd-gfx@lists.freedesktop.org, Jonathan Hunter <jonathanh@nvidia.com>, Luben Tuikov <luben.tuikov@amd.com>, Danilo Krummrich <dakr@redhat.com>, Ben Skeggs <bskeggs@redhat.com>, linux-media@vger.kernel.org, Stanley Yang <Stanley.Yang@amd.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>, Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-tegra@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org, Hyun Kwon <hyun.kwon@xilinx.com
 >, Thomas Zimmermann <tzimmermann@suse.de>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, linux-kernel@vger.kernel.org, Jerome Glisse <glisse@freedesktop.org>, Alex Deucher <alexander.deucher@amd.com>, Gourav Samaiya <gsamaiya@nvidia.com>, Shawn Guo <shawnguo@kernel.org>, Christian =?utf-8?Q?K=C3=B6nig?= <christian.koenig@amd.com>, Hawking Zhang <Hawking.Zhang@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH (set 1) 00/20] Rid W=1 warnings from GPU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XT4T6RZV3RW67DIBMLTBHGEXN46B64DR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, 24 Aug 2023, Lee Jones <lee@kernel.org> wrote:
> This set is part of a larger effort attempting to clean-up W=1
> kernel builds, which are currently overwhelmingly riddled with
> niggly little warnings.

The next question is, how do we keep it W=1 clean going forward?

Most people don't use W=1 because it's too noisy, so it's a bit of a
catch-22.

In i915, we enable a lot of W=1 warnings using subdir-ccflags-y in our
Makefile. For CI/developer use we also enable kernel-doc warnings by
default.

Should we start enabling some of those warning flags in drm/Makefile to
to keep the entire subsystem warning free?


BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
