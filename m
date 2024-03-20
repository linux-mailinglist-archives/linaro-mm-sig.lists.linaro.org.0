Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA97880E4D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Mar 2024 10:08:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 12D253F463
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Mar 2024 09:08:41 +0000 (UTC)
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	by lists.linaro.org (Postfix) with ESMTPS id DF8A63F463
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 Mar 2024 09:08:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=uiCYaqVU;
	dmarc=pass (policy=quarantine) header.from=collabora.com;
	spf=pass (lists.linaro.org: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.194 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1710925716;
	bh=0pLI0L5jQtxzcpdywVIifeQcG2pw2/Wr4GhCFKwu9uQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=uiCYaqVUV8qdI13Y/tOKLHPQhu5i6nOwDEC321w6keVmWgCjyw0VmAjj5GRSxwjz0
	 yvMEuRJKxXITdz19QVhKXxTaFb9rRm9Ha0wcbiXvAS/nOUAf0YsInuuLxlnyeDnCpK
	 KXaIaqQkj9wkBlz/oNJ9Cp8NIeU6Q0AUVqOHrAmc5GGUOS4o/lQh1uuWx8RYUaGUHl
	 70oCjHV8h6zrIYNN3ZUHkMSZhZjLGSS2HiVySP2drmm3AYSQeIZ7cVybNL4gxT8VLS
	 qY5ZeH96WEONwZ/qm5TGHQSoOsi66GcCqfBdaW6Od9LeMo/5qj1sqiUaQAbrnrkW7D
	 QmIS3L+BVuU4g==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 9AE8F37813C4;
	Wed, 20 Mar 2024 09:08:35 +0000 (UTC)
Message-ID: <2812525d-9c17-4758-bc4f-e3093cc26ef7@collabora.com>
Date: Wed, 20 Mar 2024 10:08:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Shawn Sung <shawn.sung@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>
References: <20240320024222.14234-1-shawn.sung@mediatek.com>
 <20240320024222.14234-8-shawn.sung@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20240320024222.14234-8-shawn.sung@mediatek.com>
X-Rspamd-Queue-Id: DF8A63F463
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.39 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.194];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	XM_UA_NO_VERSION(0.01)[];
	ARC_NA(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DNSWL_BLOCKED(0.00)[195.201.22.229:received,46.235.227.194:from];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,lists.linaro.org,mediatek.corp-partner.google.com];
	TAGGED_RCPT(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: STYQWAZW4JFNJOOMOGK2MVYETSTXBM3I
X-Message-ID-Hash: STYQWAZW4JFNJOOMOGK2MVYETSTXBM3I
X-MailFrom: angelogioacchino.delregno@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Philipp Zabel <p.zabel@pengutronix.de>, Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Hsiao Chien Sung <shawn.sung@mediatek.corp-partner.google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 07/14] drm/mediatek: Rename files "mtk_drm_crtc.c" to "mtk_crtc.c"
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/STYQWAZW4JFNJOOMOGK2MVYETSTXBM3I/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Il 20/03/24 03:42, Shawn Sung ha scritto:
> From: Hsiao Chien Sung <shawn.sung@mediatek.corp-partner.google.com>
> 
> Rename files mtk_drm_crtc.c to mtk_crtc.c and
> modify the Makefile accordingly.
> 
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.corp-partner.google.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
