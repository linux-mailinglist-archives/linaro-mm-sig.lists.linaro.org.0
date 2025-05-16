Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC0FAB97C7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 May 2025 10:34:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C586F455CE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 May 2025 08:34:21 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
	by lists.linaro.org (Postfix) with ESMTPS id 4771C4122D
	for <linaro-mm-sig@lists.linaro.org>; Fri, 16 May 2025 08:34:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=MIrGWhlY;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=none (lists.linaro.org: domain of thomas.hellstrom@linux.intel.com has no SPF policy when checking 192.198.163.14) smtp.mailfrom=thomas.hellstrom@linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1747384448; x=1778920448;
  h=message-id:subject:from:to:cc:date:
   content-transfer-encoding:mime-version;
  bh=ohXKdaEEEnFeXRwVN3z5Vo0k2EW73WN+C+6TLPl/UPE=;
  b=MIrGWhlYJPGl44OI/eWdXZMt8f3YrH+PMxZ2dVe1kPLKEz4hy7RJVaUV
   /Sf74Sm6YCGNiDsMK1aAfByCXqGbnFmK7N2qVhj6aO6zVcB3/40DSuiDY
   j0bhyNiZvfb6GNyuXzg0/8Jy2YASz4CP/vbHVM1OCuzoFa+mq+r1qFkmG
   GMz7eFomg9dWxy6H3wAR7D9fDcEGSCdlO7aHgv2oh42yvLQN+IO2Zj0Wz
   Imp61ywFxXSsD+c5U6hEsOxsI0aaDR6Bf9b6q+TQZ1XovdwkgPnehZuRk
   SfZuEa/tiO+Yrele9hmVHxU7mHAKyIo4YnLQh4UhH9wXwAg1vpxx/d1+L
   Q==;
X-CSE-ConnectionGUID: YuQFsysMSQOw/XNzLT6TFQ==
X-CSE-MsgGUID: zHClw+tISo2ph7xsXrtzew==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="49457303"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600";
   d="scan'208";a="49457303"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 May 2025 01:34:07 -0700
X-CSE-ConnectionGUID: PxTHOtOATpKCzjhNd7y5Pw==
X-CSE-MsgGUID: 8MbyUVixT4qjr2OlXdjfEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600";
   d="scan'208";a="138540501"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO [10.245.245.131]) ([10.245.245.131])
  by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 May 2025 01:34:05 -0700
Message-ID: <703610a4db0324db05ece8e83fff864717c2e6c2.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Date: Fri, 16 May 2025 10:33:49 +0200
Organization: Intel Sweden AB, Registration Number: 556189-6027
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4771C4122D
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	BAYES_HAM(-3.00)[99.98%];
	DWL_DNSWL_MED(-2.00)[intel.com:dkim];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[192.198.163.14:from];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	HAS_ORG_HEADER(0.00)[];
	ASN(0.00)[asn:4983, ipnet:192.198.162.0/23, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[mgamail.intel.com:helo,mgamail.intel.com:rdns];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,lists.freedesktop.org,lists.linaro.org];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: HZB5E3S7JBCUQGCFHR7NRE5QCINTY4LW
X-Message-ID-Hash: HZB5E3S7JBCUQGCFHR7NRE5QCINTY4LW
X-MailFrom: thomas.hellstrom@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Simona Vetter <simona.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org, DMA BUFFER SHARING FRAMEWORK <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Sharing dma-bufs using a driver-private interconnect
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HZB5E3S7JBCUQGCFHR7NRE5QCINTY4LW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi!

I previously discussed this with Simona on IRC but would like to get
some feedback also from a wider audience:

We're planning to share dma-bufs using a fast interconnect in a way
similar to pcie-p2p:

The rough plan is to identify dma-bufs capable of sharing this way by
looking at the address of either the dma-buf ops and / or the
importer_ops to conclude it's a device using the same driver (or
possibly child driver) and then take special action when the dma-
addresses are obtained. Nothing visible outside of the xe driver or its
child driver.

Are there any absolute "DON'T"s or recommendations to keep in mind WRT
to this approach?

Thanks,
Thomas

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
