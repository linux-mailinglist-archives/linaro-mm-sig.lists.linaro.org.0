Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F48E867553
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Feb 2024 13:42:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 82BF24433D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Feb 2024 12:42:11 +0000 (UTC)
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	by lists.linaro.org (Postfix) with ESMTPS id CFFAF4433D
	for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Feb 2024 12:39:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=hruwiW9p;
	spf=pass (lists.linaro.org: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.194 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
	dmarc=pass (policy=quarantine) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1708951169;
	bh=WuE4kCD97wZ9bNjHBG7YNNj1l3uPwjiVFXgZ1NInp4w=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=hruwiW9pNWUrPMI0AD9IZzA/Y9miBS1AqGYeG1A93mG9LQcQ10Ia9jew8ZNEcDawX
	 z2OBZElqRRK3DCorbhKBZoyHyjBIwBA/RxUar/Yj3jUrxr5yPQTsqVoA9ZJsyqBCfO
	 ZZHSzru6f0uYG+SaC3GO+7DoPUxMliKkt+/iWBNtLejHWATUq1lIpomysLNwyhKKQC
	 EIDI/5VBBFNI/7V17e1FzY0YgdFt2y4Vn8VxTTuE0glp/eUpn4mzPFVqSaOyu0XgQq
	 COC7lTErNp+kg4igLcu882DuuMGyfXjVUNGZPxRgNh+yjGuhSWHNC9clYphHHXteDs
	 hmtw0XcRhVcJQ==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id DD07B37820CF;
	Mon, 26 Feb 2024 12:39:28 +0000 (UTC)
Message-ID: <e2f901aa-9d1b-4de9-ac18-7cfb57adb587@collabora.com>
Date: Mon, 26 Feb 2024 13:39:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Shawn Sung <shawn.sung@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>
References: <20240226085059.26850-1-shawn.sung@mediatek.com>
 <20240226085059.26850-12-shawn.sung@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20240226085059.26850-12-shawn.sung@mediatek.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CFFAF4433D
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.39 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.194:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	XM_UA_NO_VERSION(0.01)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_TLS_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,lists.linaro.org,mediatek.corp-partner.google.com];
	TAGGED_RCPT(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+]
Message-ID-Hash: IK4YSULJZ76KY2GWE76VW54QYBWQ4S5A
X-Message-ID-Hash: IK4YSULJZ76KY2GWE76VW54QYBWQ4S5A
X-MailFrom: angelogioacchino.delregno@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Philipp Zabel <p.zabel@pengutronix.de>, Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Hsiao Chien Sung <shawn.sung@mediatek.corp-partner.google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 11/11] drm/mediatek: Rename "pending_needs_vblank" to "needs_vblank"
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IK4YSULJZ76KY2GWE76VW54QYBWQ4S5A/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Il 26/02/24 09:50, Shawn Sung ha scritto:
> From: Hsiao Chien Sung <shawn.sung@mediatek.corp-partner.google.com>
> 
> Rename "pending_needs_vblank" to "needs_vblank" to reduce the code size.
> 

This decreases human readability though, so I would prefer that we omit this one.

Regards,
Angelo

> Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.corp-partner.google.com>
> ---
>   drivers/gpu/drm/mediatek/mtk_crtc.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_crtc.c b/drivers/gpu/drm/mediatek/mtk_crtc.c
> index 7fe234de83a3..a1fb6c67681d 100644
> --- a/drivers/gpu/drm/mediatek/mtk_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_crtc.c
> @@ -42,7 +42,7 @@ struct mtk_crtc {
>   	struct drm_crtc			base;
>   	bool				enabled;
>   
> -	bool				pending_needs_vblank;
> +	bool				needs_vblank;
>   	struct drm_pending_vblank_event	*event;
>   
>   	struct drm_plane		*planes;
> @@ -105,9 +105,9 @@ static void mtk_crtc_finish_page_flip(struct mtk_crtc *mtk_crtc)
>   static void mtk_drm_finish_page_flip(struct mtk_crtc *mtk_crtc)
>   {
>   	drm_crtc_handle_vblank(&mtk_crtc->base);
> -	if (!mtk_crtc->config_updating && mtk_crtc->pending_needs_vblank) {
> +	if (!mtk_crtc->config_updating && mtk_crtc->needs_vblank) {
>   		mtk_crtc_finish_page_flip(mtk_crtc);
> -		mtk_crtc->pending_needs_vblank = false;
> +		mtk_crtc->needs_vblank = false;
>   	}
>   }
>   
> @@ -571,7 +571,7 @@ static void mtk_crtc_update_config(struct mtk_crtc *mtk_crtc, bool needs_vblank)
>   	mutex_lock(&mtk_crtc->hw_lock);
>   	mtk_crtc->config_updating = true;
>   	if (needs_vblank)
> -		mtk_crtc->pending_needs_vblank = true;
> +		mtk_crtc->needs_vblank = true;
>   
>   	for (i = 0; i < mtk_crtc->layer_nr; i++) {
>   		struct drm_plane *plane = &mtk_crtc->planes[i];


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
