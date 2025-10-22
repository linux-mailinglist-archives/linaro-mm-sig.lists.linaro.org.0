Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F25FBFB4FB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Oct 2025 12:08:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 28A083F7B4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Oct 2025 10:08:09 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
	by lists.linaro.org (Postfix) with ESMTPS id A890B3F77B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Oct 2025 10:07:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=YCGdaDoJ;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of jani.nikula@intel.com designates 192.198.163.8 as permitted sender) smtp.mailfrom=jani.nikula@intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1761127678; x=1792663678;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=2gWgs3JtkqrQlNaMUerxSTz5OsBLRFl9X1Eoptbmj+U=;
  b=YCGdaDoJKozd0+6OS69i1GAu6Y9JjNHRJiawQ3JVAxdXqxk1TzlBiu47
   2E9hlvb34CWxUiEzgt+K/5LQVwuuJ//1Xjath8vQ94zhjiO70jLDPIrtm
   lG93s8m8WXyUGCDi6AkE/Kq6Phbrjf1Q4CCAE0PsQ1VXRDTapJM7D5SyW
   dJP0oa2XYCVpJLRW1eyFFM8giWKlqkcs5k4EKx4LP2VAQG4bLEsfHei6N
   6uFNMa9osCCiO3ZWZrQVxb5g5qcHoQrvIshv5UxHdeqxsWIza6XuPDMCK
   CTEgDB3zUSywD7piFrJTrFO9imW9SAaYyfMAvBrdMK54QIadaRAzz+XFN
   A==;
X-CSE-ConnectionGUID: g2u19O0sTD+9g22+Y+oLyA==
X-CSE-MsgGUID: SELJdXOHSfSJLVrga70ywg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="80892859"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000";
   d="scan'208";a="80892859"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Oct 2025 03:07:57 -0700
X-CSE-ConnectionGUID: sOQyO88fRPmnmtVCeanZ6w==
X-CSE-MsgGUID: waVFlqmcTgeaiFoWUxhojg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000";
   d="scan'208";a="207506486"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.246.104])
  by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Oct 2025 03:07:53 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Biancaa Ramesh <biancaa2210329@ssn.edu.in>, sumit.semwal@linaro.org
In-Reply-To: <20251022043108.7197-1-biancaa2210329@ssn.edu.in>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251022043108.7197-1-biancaa2210329@ssn.edu.in>
Date: Wed, 22 Oct 2025 13:07:51 +0300
Message-ID: <bc4356efa91d65d5a2407ea8a2cfd54bb697cf4b@intel.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A890B3F77B
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.20 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	DWL_DNSWL_MED(-2.00)[intel.com:dkim];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	FORGED_SENDER(0.30)[jani.nikula@linux.intel.com,jani.nikula@intel.com];
	R_SPF_ALLOW(-0.20)[+ip4:192.198.163.0/26];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	BAYES_HAM(-0.00)[12.15%];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,jani.nikula@intel.com];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[192.198.163.8:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: CLA3X3NSSM5I6V2Q2XZPHTE25CSYDPME
X-Message-ID-Hash: CLA3X3NSSM5I6V2Q2XZPHTE25CSYDPME
X-MailFrom: jani.nikula@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: christian.koenig@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, lkp@intel.com, Biancaa Ramesh <biancaa2210329@ssn.edu.in>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] Signed-off-by: Biancaa Ramesh <biancaa2210329@ssn.edu.in>
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CLA3X3NSSM5I6V2Q2XZPHTE25CSYDPME/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, 22 Oct 2025, Biancaa Ramesh <biancaa2210329@ssn.edu.in> wrote:
> -- 
> ::DISCLAIMER::
> 
> ---------------------------------------------------------------------
> The 
> contents of this e-mail and any attachment(s) are confidential and
> intended 
> for the named recipient(s) only. Views or opinions, if any,
> presented in 
> this email are solely those of the author and may not
> necessarily reflect 
> the views or opinions of SSN Institutions (SSN) or its
> affiliates. Any form 
> of reproduction, dissemination, copying, disclosure,
> modification, 
> distribution and / or publication of this message without the
> prior written 
> consent of authorized representative of SSN is strictly
> prohibited. If you 
> have received this email in error please delete it and
> notify the sender 
> immediately.

There are some obvious issues in the patch itself, but please do figure
out how to send patches and generally list email without disclaimers
like this first. Or use the b4 web submission endpoint [1].

BR,
Jani.


[1] https://b4.docs.kernel.org/en/latest/contributor/send.html

-- 
Jani Nikula, Intel
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
