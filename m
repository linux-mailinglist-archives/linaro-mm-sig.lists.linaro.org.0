Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aInlBSrMnGlHKQQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Feb 2026 22:52:42 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id AA12117DC8C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Feb 2026 22:52:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 74F6D40144
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Feb 2026 21:52:40 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 1599540144
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 21:52:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=itktZGAm;
	spf=pass (lists.linaro.org: domain of andersson@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=andersson@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 77B2A44540;
	Mon, 23 Feb 2026 21:52:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D72CC2BC86;
	Mon, 23 Feb 2026 21:52:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771883558;
	bh=/stCI5ijiZ7yMnH4o/+LgfD8ysmkT8zvJMlAlRyApjw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=itktZGAmcWMTx8XokiFfZPKu+31BcdMxHrphcVS9GjKORywe+FScSVJb08hfpx9lz
	 kAGmTJUPF+Rq6Ai3+nsFJn3VW26qLH1GLnotroUIwCo1D+j22+4g3loa99t+M5h3Aw
	 f2GkWVbHzLyZu9ziKMTRmoeLQlQlSrNLSZShGvgbShS/ZA7Q+5xVqohl3vhSsArRRn
	 ielYecXOETCBys8aYMFnZSg2hp/mvDybO7Ww4e8sKiCyNOgVDxFvQeXnclgWWBhuL7
	 9F3rPkqRrV3vgsqQBaDTWDcIQe8G3S0I2ICNjDJsf40h5ODMwYAKAHX48BbEOHvgcC
	 IRCxve5BqB9HA==
Date: Mon, 23 Feb 2026 15:52:34 -0600
From: Bjorn Andersson <andersson@kernel.org>
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
Message-ID: <elu44euja7d7nnnhdmdqgof76646b3m3isjmws5pr274gqhy2a@dbeq4hk74ebo>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-2-fe46a9c1a046@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260224-qda-firstpost-v1-2-fe46a9c1a046@oss.qualcomm.com>
X-Spamd-Bar: ---
Message-ID-Hash: NWMNDB5NTVCRBJNIVYIQLXZIJBIZ4KFG
X-Message-ID-Hash: NWMNDB5NTVCRBJNIVYIQLXZIJBIZ4KFG
X-MailFrom: andersson@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 02/18] accel/qda: Add Qualcomm DSP accelerator driver skeleton
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NWMNDB5NTVCRBJNIVYIQLXZIJBIZ4KFG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.linaro.org,oss.qualcomm.com,quicinc.com];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_NEQ_ENVFROM(0.00)[andersson@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Queue-Id: AA12117DC8C
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 12:38:56AM +0530, Ekansh Gupta wrote:
[..]
> diff --git a/drivers/accel/qda/qda_drv.c b/drivers/accel/qda/qda_drv.c
> new file mode 100644
> index 000000000000..18b0d3fb1598
> --- /dev/null
> +++ b/drivers/accel/qda/qda_drv.c
> @@ -0,0 +1,22 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> +#include <linux/module.h>
> +#include <linux/kernel.h>
> +
> +static int __init qda_core_init(void)
> +{
> +	pr_info("QDA: driver initialization complete\n");

This print is useless as soon as you make the driver do anything, please
don't include developmental debug logs.


In fact, this patch doesn't actually do anything, please squash things a
bit to give it some meat.

Regards,
Bjorn

> +	return 0;
> +}
> +
> +static void __exit qda_core_exit(void)
> +{
> +	pr_info("QDA: driver exit complete\n");
> +}
> +
> +module_init(qda_core_init);
> +module_exit(qda_core_exit);
> +
> +MODULE_AUTHOR("Qualcomm AI Infra Team");
> +MODULE_DESCRIPTION("Qualcomm DSP Accelerator Driver");
> +MODULE_LICENSE("GPL");
> 
> -- 
> 2.34.1
> 
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
