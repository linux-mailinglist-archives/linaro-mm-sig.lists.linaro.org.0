Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E114886869
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 Mar 2024 09:46:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 132833F94C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 Mar 2024 08:46:38 +0000 (UTC)
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	by lists.linaro.org (Postfix) with ESMTPS id 460653F94C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 22 Mar 2024 08:46:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b="jy/XB7tw";
	dmarc=pass (policy=quarantine) header.from=collabora.com;
	spf=pass (lists.linaro.org: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.194 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711097194;
	bh=Gs2UAC9Hy8VFwByHDlNC06xdCiz4QDNtsopwA8NrO4Q=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jy/XB7tw0FGS5tI0FcWpWhUzIrqIIeYInUM84WS16IpPsOCwNS4R96cgPgJzhUVRP
	 Eepi17JezOVmbuiLp8Fo5BbSCnDCvXiKAqbunTeSngJxLdItvJYUkrYmITlEBD7ps3
	 F4jlmQq41YUwav4f/MtGeRjSei/PyzDY7n7ADwI3IfGRczolHLEROndp7Qx5y2QuBp
	 S6cPVl1uX0msVhBDSiIuDoagk225ecXPhX9509482xD1yeNasazvucrvYRIr56j6vl
	 IWi9vY7VIbrrTD2Ws0ro9toDee2MVS91LpJ+Eu3ofSM7Q8jIyqwIiRTfC84vANaswp
	 Vqx4X6Y/NL5cA==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id E90AF37809D1;
	Fri, 22 Mar 2024 08:46:33 +0000 (UTC)
Message-ID: <e1d5d349-c9e3-4af9-a9b6-d563027a5974@collabora.com>
Date: Fri, 22 Mar 2024 09:46:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Shawn Sung <shawn.sung@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>
References: <20240322012808.26234-1-shawn.sung@mediatek.com>
 <20240322012808.26234-4-shawn.sung@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20240322012808.26234-4-shawn.sung@mediatek.com>
X-Rspamd-Queue-Id: 460653F94C
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.39 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.194];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	XM_UA_NO_VERSION(0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,lists.linaro.org,mediatek.corp-partner.google.com];
	TAGGED_RCPT(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DNSWL_BLOCKED(0.00)[195.201.22.229:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 6CCD3S2B5TO3KSDQUKDSOAAZSZJONWXD
X-Message-ID-Hash: 6CCD3S2B5TO3KSDQUKDSOAAZSZJONWXD
X-MailFrom: angelogioacchino.delregno@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Philipp Zabel <p.zabel@pengutronix.de>, Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Hsiao Chien Sung <shawn.sung@mediatek.corp-partner.google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 03/14] drm/mediatek: Rename "mtk_drm_plane" to "mtk_plane"
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6CCD3S2B5TO3KSDQUKDSOAAZSZJONWXD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Il 22/03/24 02:27, Shawn Sung ha scritto:
> From: Hsiao Chien Sung <shawn.sung@mediatek.corp-partner.google.com>
> 
> Rename all "mtk_drm_plane" to "mtk_plane":
> - To align the naming rule
> - To reduce the code size
> 
> Reviewed-by: AngeloGiaocchino Del Regno <angelogioacchino.delregno@collabora.com>

Shawn - please - can you fix my typo'ed name also here and on all of the
patches of this series?

Thanks.

> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.corp-partner.google.com>
> ---
>   drivers/gpu/drm/mediatek/mtk_drm_plane.c | 6 +++---
>   drivers/gpu/drm/mediatek/mtk_drm_plane.h | 4 ++--
>   2 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> index cbdb70677d305..43137c46fc148 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> @@ -93,8 +93,8 @@ static bool mtk_plane_format_mod_supported(struct drm_plane *plane,
>   	return true;
>   }
>   
> -static void mtk_drm_plane_destroy_state(struct drm_plane *plane,
> -					struct drm_plane_state *state)
> +static void mtk_plane_destroy_state(struct drm_plane *plane,
> +				    struct drm_plane_state *state)
>   {
>   	__drm_atomic_helper_plane_destroy_state(state);
>   	kfree(to_mtk_plane_state(state));
> @@ -241,7 +241,7 @@ static const struct drm_plane_funcs mtk_plane_funcs = {
>   	.destroy = drm_plane_cleanup,
>   	.reset = mtk_plane_reset,
>   	.atomic_duplicate_state = mtk_plane_duplicate_state,
> -	.atomic_destroy_state = mtk_drm_plane_destroy_state,
> +	.atomic_destroy_state = mtk_plane_destroy_state,
>   	.format_mod_supported = mtk_plane_format_mod_supported,
>   };
>   
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.h b/drivers/gpu/drm/mediatek/mtk_drm_plane.h
> index 99aff7da0831d..231bb7aac9473 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_plane.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.h
> @@ -4,8 +4,8 @@
>    * Author: CK Hu <ck.hu@mediatek.com>
>    */
>   
> -#ifndef _MTK_DRM_PLANE_H_
> -#define _MTK_DRM_PLANE_H_
> +#ifndef _MTK_PLANE_H_
> +#define _MTK_PLANE_H_
>   
>   #include <drm/drm_crtc.h>
>   #include <linux/types.h>


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
