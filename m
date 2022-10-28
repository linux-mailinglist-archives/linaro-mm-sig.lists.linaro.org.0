Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B284C610ADB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Oct 2022 08:59:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B6A413F59F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Oct 2022 06:59:32 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lists.linaro.org (Postfix) with ESMTPS id C8C7C3ED39
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Oct 2022 06:59:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=mSPEaNog;
	spf=pass (lists.linaro.org: domain of mark-pk.tsai@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=mark-pk.tsai@mediatek.com;
	dmarc=pass (policy=quarantine) header.from=mediatek.com
X-UUID: d3bea96e79d54aaf922f9cb260ba74ea-20221028
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=0VYCNGu5up7oXK9iByzpPm+c/SezPGc55UX86NGHyoQ=;
	b=mSPEaNogr8FD3RF1QwodsxmV51YaONLGGP3pm4J7D7FlPj+I4hvu612hd4OG/vb8iUZs7jvjQXcKJqMud1DjkMA4PX/KkvSQ7lUuOAzrh8V4pXpYWTGN7P3NSRNzAT5FHGihjpmTJsnQio+PPlaXQSpxJxRM8+96/zZSZl7oJLg=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.12,REQID:233c8d5a-d8f1-4e7e-baad-6510913e37fa,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:62cd327,CLOUDID:e720f2e4-e572-4957-be22-d8f73f3158f9,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:-5,EDM:-3,IP:nil,
	URL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: d3bea96e79d54aaf922f9cb260ba74ea-20221028
Received: from mtkmbs10n2.mediatek.inc [(172.21.101.183)] by mailgw01.mediatek.com
	(envelope-from <mark-pk.tsai@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 783513712; Fri, 28 Oct 2022 14:59:08 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.792.15; Fri, 28 Oct 2022 14:59:07 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.792.15 via Frontend Transport; Fri, 28 Oct 2022 14:59:07 +0800
From: Mark-PK Tsai <mark-pk.tsai@mediatek.com>
To: <bagasdotme@gmail.com>
Date: Fri, 28 Oct 2022 14:59:06 +0800
Message-ID: <20221028065907.23954-1-mark-pk.tsai@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <Y1tSWo+eRvkVofbv@debian.me>
References: <Y1tSWo+eRvkVofbv@debian.me>
MIME-Version: 1.0
X-MTK: N
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: --
X-Rspamd-Queue-Id: C8C7C3ED39
X-Spamd-Result: default: False [-3.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[mediatek.com,quarantine];
	R_DKIM_ALLOW(-0.20)[mediatek.com:s=dk];
	R_SPF_ALLOW(-0.20)[+ip4:60.244.123.138/32:c];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[arm.com,collabora.com,amd.com,lists.freedesktop.org,google.com,redhat.com,lists.linaro.org,lists.infradead.org,vger.kernel.org,codeaurora.org,mediatek.com,gmail.com,linaro.org];
	ASN(0.00)[asn:24154, ipnet:60.244.123.0/24, country:TW];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[mediatek.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[60.244.123.138:from]
Message-ID-Hash: G5FV45GHFPZRWTZU6GXSJVDXLYOGFVX3
X-Message-ID-Hash: G5FV45GHFPZRWTZU6GXSJVDXLYOGFVX3
X-MailFrom: mark-pk.tsai@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Brian.Starkey@arm.com, benjamin.gaignard@collabora.com, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, jstultz@google.com, labbott@redhat.com, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-mediatek@lists.infradead.org, lmark@codeaurora.org, mark-pk.tsai@mediatek.com, matthias.bgg@gmail.com, sumit.semwal@linaro.org, yj.chiang@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: cma_heap: Fix typo in comment
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/G5FV45GHFPZRWTZU6GXSJVDXLYOGFVX3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> [-- Attachment #1: Type: text/plain, Size: 349 bytes --]
> 
> On Fri, Oct 28, 2022 at 09:44:17AM +0800, Mark-PK Tsai wrote:
> > Remove duplicated "by" from comment in cma_heap_allocate().
> > 
> 
> This patch isn't typofix but duplicate word stripping, right? If so, the
> patch subject should be "dma-buf: cma_heap: Remove duplicated 'by'".

Okay, I've update the title in v3.
Sorry for the horrible commit description.
Thanks.

> 
> Thanks.
> 
> -- 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
