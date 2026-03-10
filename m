Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KI4gEPkqsGlHgwIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Mar 2026 15:30:17 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAAE251FE6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Mar 2026 15:30:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9C51E3F7EC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Mar 2026 14:30:15 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 155293F7EC
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Mar 2026 14:30:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Sy9fQPB5;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 78413438F7;
	Tue, 10 Mar 2026 14:30:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0803AC19423;
	Tue, 10 Mar 2026 14:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773153012;
	bh=2hF1/TJQ0EMpfcgsfRfJqcwXOTlDyJUIGvjZodxORSY=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=Sy9fQPB5UfGEbBoHee20IU0sAFBdQVwV5ZyBR5U4X19lu2i3AMLQ4R9HFLhMYlCdg
	 OxISyeNZvIM9FmkGcUdrsLW2GuxmRORGXdsRUZn6y/3it5ggQNyV51bj+rqCxzRGrR
	 4Zxl/X4fSpcaKF1u/wWjpGua86H44kgoDy2RZ7tmElJaZq4w7U5PvfWVNhJLTOl4UI
	 7tFdHPm4yt9q/TPQNNOwPhUtOmuo752Ne2EJyM/WZ3jxmyAzdX00uTydi8TDrqmIaE
	 jNC5dNtZEWUkeniWWf99rjSqdOnUWaFOpdi079Q0bAksZRq1ifMElhXUG02j8NAHxj
	 qAZi2sx9sNpsA==
Message-ID: <7a255d2193d15191c18a67a70df3e42f@kernel.org>
Date: Tue, 10 Mar 2026 14:30:09 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Linus Walleij" <linusw@kernel.org>
In-Reply-To: <20260310-cma-heap-clear-pages-v2-0-ecbbed3d7e6d@kernel.org>
References: <20260310-cma-heap-clear-pages-v2-0-ecbbed3d7e6d@kernel.org>
X-Spamd-Bar: -
Message-ID-Hash: T4IFIYS625VDCUSH6ITU52FOOD3KLR6E
X-Message-ID-Hash: T4IFIYS625VDCUSH6ITU52FOOD3KLR6E
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, =?utf-8?b?Q2hyaXN0aWFuIEvDtm5pZw==?= <christian.koenig@amd.com>, John Stultz <jstultz@google.com>, Maxime Ripard <mripard@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/2] dma-buf: heaps: Use page clearing helpers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T4IFIYS625VDCUSH6ITU52FOOD3KLR6E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: AEAAE251FE6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:-];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_HAM(-0.00)[-0.726];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Action: no action

On Tue, 10 Mar 2026 09:53:10 +0100, Linus Walleij wrote:
> Use clear_pages() and clear_highpage() properly in the
> DMA heap allocator.
> 
> Signed-off-by: Linus Walleij <linusw@kernel.org>

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
