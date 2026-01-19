Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EFDDD3AA69
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 14:33:37 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 618953F961
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 13:33:36 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 40BC53F79D
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 13:33:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=fM35nSQV;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A7BFD4343B;
	Mon, 19 Jan 2026 13:33:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0DE28C116C6;
	Mon, 19 Jan 2026 13:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768829610;
	bh=8fGKbiXSuaskQQ0Ap4cVCYo2PGF9Yb15kLd9rCnoU/I=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=fM35nSQV7rbCwksZUGPNHyGEGUnzIgJOtDWs+YQj4OFjlFKRORqcz0C2Otv3ngylx
	 0FAJxuMD/tjvkIXEmah8j2c54cNpUToyOfutqfTFTHNM84sHhwzw5yxnhm5D/xM6Qe
	 PeYKy/isphedVoYtMkJYq7Vh661dhBSROPh5BqGppx7LeA6vXemQDIc/DOlunwFmBu
	 I9WMX/qc62Rh4zI/zA7cjCNFKAEYxToKFs53xdc0psKCTA3GrdEJpgCkBd1zI5WA92
	 aO9y51hkEs3pG+RDyyWmZMekthM34dorjwExHjdfyTRwrIQUsxLa4Ks3qn1B2mGny1
	 ubUtaNBngS9bA==
Message-ID: <d4a199738a7de363a50e349ad6a9a26e@kernel.org>
Date: Mon, 19 Jan 2026 13:33:27 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Eric Chanudet" <echanude@redhat.com>
In-Reply-To: <20260116-dmabuf-heap-system-memcg-v3-0-ecc6b62cc446@redhat.com>
References: <20260116-dmabuf-heap-system-memcg-v3-0-ecc6b62cc446@redhat.com>
X-Rspamd-Queue-Id: 40BC53F79D
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[99.98%];
	MISSING_MIME_VERSION(2.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	DNSWL_BLOCKED(0.00)[172.234.252.31:from];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 36MLM3TKT6J65SAGB6PV2IBWFOAPDMPH
X-Message-ID-Hash: 36MLM3TKT6J65SAGB6PV2IBWFOAPDMPH
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, =?utf-8?b?Q2hyaXN0aWFuIEvDtm5pZw==?= <christian.koenig@amd.com>, John Stultz <jstultz@google.com>, Maxime Ripard <mripard@kernel.org>, Maxime Ripard <mripard@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, "T.J. Mercier" <tjmercier@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 0/2] dma-buf: system_heap: account for system heap allocation in memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/36MLM3TKT6J65SAGB6PV2IBWFOAPDMPH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, 16 Jan 2026 15:05:37 -0500, Eric Chanudet wrote:
> Capture dmabuf system heap allocations in memcg following prior
> conversations[1][2]. Disable this behavior by default unless configured
> by "dma_heap.mem_accounting" module parameter.
> 
> [1] https://lore.kernel.org/dri-devel/Z-5GZ3kJDbhgVBPG@phenom.ffwll.local/
> 
> [ ... ]

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
