Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A44880E52
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Mar 2024 10:09:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4B6A63F463
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 20 Mar 2024 09:09:11 +0000 (UTC)
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	by lists.linaro.org (Postfix) with ESMTPS id A929A3F463
	for <linaro-mm-sig@lists.linaro.org>; Wed, 20 Mar 2024 09:09:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=1cicMcx3;
	dmarc=pass (policy=quarantine) header.from=collabora.com;
	spf=pass (lists.linaro.org: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.194 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1710925748;
	bh=WL++lSiQWnN695SrxzJhseXDuycH02PQhHRdBX9Zm3c=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=1cicMcx3GHSFdlgc4r0/Nix5DLRLaFVACMk05mRRdZKAbxS5nSRXiKiGA4MG7Lp4b
	 Er4sL+Jpu1KpJtf0c3OHDrZdiVuUuK/I0sADlM1/2KSvy9g1HQq53bTpEoxmUaxcF4
	 qDTT9gfNWqpFLlX4fwyKOJW9dgP5VsvMhEAmcvgpt8UvOeNDxKWiOSbMTGLzgzu7N3
	 az+QNeyMsn2HJbWgA9TS/skPXJhDSJ/V6qtL8WTipHpawktrmzwtgVH8TdgeUp3qpq
	 iDfihMUMIIMJk4LqJ8KB1pwH4sUO9X0fhyPCxTuFCc0DPzrHKjXKNzsmMf1BIdbSB0
	 aiRpukMe0KDzQ==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id A713D37813C4;
	Wed, 20 Mar 2024 09:09:07 +0000 (UTC)
Message-ID: <1bc3e804-50c4-45b4-b227-1099e50f4fc6@collabora.com>
Date: Wed, 20 Mar 2024 10:09:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Shawn Sung <shawn.sung@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>
References: <20240320024222.14234-1-shawn.sung@mediatek.com>
 <20240320024222.14234-10-shawn.sung@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20240320024222.14234-10-shawn.sung@mediatek.com>
X-Rspamd-Queue-Id: A929A3F463
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.39 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,quarantine];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.194:c];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	XM_UA_NO_VERSION(0.01)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	RCVD_TLS_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,lists.linaro.org,mediatek.corp-partner.google.com];
	TAGGED_RCPT(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DNSWL_BLOCKED(0.00)[46.235.227.194:from,195.201.22.229:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: U2XM5KON7I7XSBUDA3AOFNRLS6H372SF
X-Message-ID-Hash: U2XM5KON7I7XSBUDA3AOFNRLS6H372SF
X-MailFrom: angelogioacchino.delregno@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Philipp Zabel <p.zabel@pengutronix.de>, Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Hsiao Chien Sung <shawn.sung@mediatek.corp-partner.google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 09/14] drm/mediatek: Rename files "mtk_drm_ddp_comp.c" to "mtk_ddp_comp.c"
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/U2XM5KON7I7XSBUDA3AOFNRLS6H372SF/>
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
> Rename files mtk_drm_ddp_comp.c to mtk_ddp_comp.c and
> modify the Makefile accordingly.
> 
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.corp-partner.google.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
