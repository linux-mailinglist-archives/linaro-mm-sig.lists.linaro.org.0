Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E48B60FBBF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Oct 2022 17:21:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 43EF53F577
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Oct 2022 15:21:52 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 3C4EA3ECD4
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Oct 2022 08:56:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=BBuplJME;
	spf=pass (lists.linaro.org: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 43D8366028C5;
	Thu, 27 Oct 2022 09:56:43 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666861004;
	bh=a6cv56mnR0Rt8cN4YKAatcPuhZ/rCh1tcmynK4XFuOg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=BBuplJME/3Ry9esnd85HoFScshBaCRJ3gPCteMWzG5cHItSysPoYVvyTxm/ztzz5j
	 Wds+Y58IPW17ZCZgy6GmiEDamt2BzaHBGx2IEK478u4jtpMgG43BrFEauMA3tZu/Ei
	 DRA6ATGcfILQBfMyhPLBO+eqQ/oCMQlyXVlJuuPdtSv0E4KUqqIi2g/PPXIMYya+KH
	 k/7XwwTo/ojIVEYTJwoy+rCxNBRR35O5RNtlPrGiheqky5MKtOIUm3eq4VBfdn/FMA
	 gvw8IUQvmPi7ryZ5tZiY6MxinnS1cDRqmMG6e3fpPs5cpv4qIiP0jjxIODZL/4HFXH
	 raqDX+y8f9VSg==
Message-ID: <54b9bf61-3db0-c2ca-9c30-f2434573be29@collabora.com>
Date: Thu, 27 Oct 2022 10:56:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Content-Language: en-US
To: Mark-PK Tsai <mark-pk.tsai@mediatek.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
References: <20221027072642.23787-1-mark-pk.tsai@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20221027072642.23787-1-mark-pk.tsai@mediatek.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ---
X-Rspamd-Queue-Id: 3C4EA3ECD4
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	RCVD_IN_DNSWL_HI(-0.50)[46.235.227.172:from];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.172];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[mediatek.com,linaro.org,collabora.com,codeaurora.org,redhat.com,arm.com,google.com,amd.com,gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_COUNT_TWO(0.00)[2];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_ALL(0.00)[]
X-MailFrom: angelogioacchino.delregno@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2WVA6V4DFENPQ2NHASSJQXKVVXVBG7U6
X-Message-ID-Hash: 2WVA6V4DFENPQ2NHASSJQXKVVXVBG7U6
X-Mailman-Approved-At: Thu, 27 Oct 2022 15:21:10 +0000
CC: yj.chiang@mediatek.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: cma_heap: Fix typo in comment
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2WVA6V4DFENPQ2NHASSJQXKVVXVBG7U6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Il 27/10/22 09:26, Mark-PK Tsai ha scritto:
> Fix typo in comment.
> 
> Signed-off-by: Mark-PK Tsai <mark-pk.tsai@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
