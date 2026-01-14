Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BF61DD1EA2E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Jan 2026 13:05:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D31D1401B1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Jan 2026 12:05:03 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
	by lists.linaro.org (Postfix) with ESMTPS id 0611C3E90F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Jan 2026 12:04:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=bTleEYBv;
	spf=pass (lists.linaro.org: domain of jani.nikula@intel.com designates 198.175.65.21 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768392297; x=1799928297;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=8Vys6z8x451y8jCfmv4tHJdqji+vE+8qZ4G6/y7V1fs=;
  b=bTleEYBvTPwiLQ7JdoJfPVn5CnnqxLFhU0cJXLT/WCocWWV+IrIsxH9Y
   m0O+NZ88XyF+18CNPzRXV+VuIKzKFJndh2UouFGnHK9RfHykWen8hM8Im
   PECNs5SOYDUMPhMAWf8HbHONDZDsw9jmPT9dqONtaIK1DCp6WyyL82VuX
   Zz+6jMwMlMN02c2QjbeqHSXes9D9feSJOieYOPG5rpAUDvOI6rLE7hGLU
   bjjZ/Z/vDvGUICwkPtxPbV8EW/++9bKIrK8N4YTpLbW8kU1guoQY1ubiV
   7p7sjp6LuDgrBeVkI0uCHxM5QBqbrGD/Fka48fmiW5GEl6U2SqTahuao1
   A==;
X-CSE-ConnectionGUID: wA+RBVQyQ5C8MC6ksC9cug==
X-CSE-MsgGUID: F28DnXlPR8Kw8VEoLaiMIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="69608379"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800";
   d="scan'208";a="69608379"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 04:04:56 -0800
X-CSE-ConnectionGUID: L5TFJIbzQHuz1awGSe6Qmg==
X-CSE-MsgGUID: UaaRHJhvTS+nCq8qGoc/sQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800";
   d="scan'208";a="242205696"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.246.94])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 04:04:48 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Nishanth Menon <nm@ti.com>,
 "Andrew F. Davis" <afd@ti.com>, Randolph Sapp <rs@ti.com>, Jonathan
 Humphreys <j-humphreys@ti.com>, Andrei Aldea <a-aldea@ti.com>, Chirag
 Shilwant <c-shilwant@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Oded
 Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Sumit
 Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?Q?K=C3=B6nig?=
 <christian.koenig@amd.com>
In-Reply-To: <20260113-thames-v1-4-99390026937c@tomeuvizoso.net>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260113-thames-v1-0-99390026937c@tomeuvizoso.net>
 <20260113-thames-v1-4-99390026937c@tomeuvizoso.net>
Date: Wed, 14 Jan 2026 14:04:44 +0200
Message-ID: <1acdffd8f05eae0a3531d43d3919d8bd4558f37a@intel.com>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 0611C3E90F
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.90 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[99.99%];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	FORGED_SENDER(0.30)[jani.nikula@linux.intel.com,jani.nikula@intel.com];
	RCVD_IN_DNSWL_MED(-0.20)[198.175.65.21:from];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[24];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,jani.nikula@intel.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DWL_DNSWL_BLOCKED(0.00)[intel.com:dkim];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:4983, ipnet:198.175.64.0/23, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: Z3QIZLHGNVELWHLXHYTBZU6U3OJB6DRN
X-Message-ID-Hash: Z3QIZLHGNVELWHLXHYTBZU6U3OJB6DRN
X-MailFrom: jani.nikula@intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/5] accel/thames: Add IOCTL for job submission
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Z3QIZLHGNVELWHLXHYTBZU6U3OJB6DRN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 13 Jan 2026, Tomeu Vizoso <tomeu@tomeuvizoso.net> wrote:
> +#include "linux/dev_printk.h"

Random drive-by comment, please use <> instead of "" for include/
headers.

> +#include <drm/drm_file.h>
> +#include <drm/drm_gem.h>
> +#include <drm/drm_print.h>
> +#include <drm/thames_accel.h>
> +#include <linux/platform_device.h>

In general, I think it will make everyone's life easier in the long run
if the include directives are grouped and sorted.

BR,
Jani.


-- 
Jani Nikula, Intel
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
