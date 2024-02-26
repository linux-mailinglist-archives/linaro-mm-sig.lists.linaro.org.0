Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 63CA9867538
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Feb 2024 13:39:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 771ED40F54
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Feb 2024 12:39:43 +0000 (UTC)
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	by lists.linaro.org (Postfix) with ESMTPS id 1176B40F54
	for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Feb 2024 12:39:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=IoK2SJZK;
	spf=pass (lists.linaro.org: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.194 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
	dmarc=pass (policy=quarantine) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1708951158;
	bh=ssUCrohjGs4Ygd/5Qap/4ztBIgAopUsbSegnQlFXBuc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=IoK2SJZKpm0P3y5QWkmCT+CPMGfrpZr35MgbrCienTK3RajBgjOuKBbToeXDXD/ce
	 oUGse1nuo0B8diR26ZyyFpJXIRE37sM+EO4Nxh2B1EBp2jjOaeQoMe3DI5ZoRzwW1D
	 wS8mmdYYMNWm8Mh8BeiNyO8jx/4E0cDJYs6LzeOtFFglldRUVBTKXq3WjgrC/UQuL8
	 +62I+DlDPILBrBWAQcezRfq3HN/pQLVJsnhynHwMu5taQquVn+/tXUx++MA0yIf5QL
	 VLEemCo2cSf6+Kmr2/46hl5nT8l9Vv/2ulhu76SjstCIYeKCp7Kf9egfusb/C8SqRH
	 PZa+CLRCsuaCA==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 0501A37820CF;
	Mon, 26 Feb 2024 12:39:16 +0000 (UTC)
Message-ID: <4a17e974-ca9c-41b4-aa5c-2d41598120a6@collabora.com>
Date: Mon, 26 Feb 2024 13:39:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Shawn Sung <shawn.sung@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>
References: <20240226085059.26850-1-shawn.sung@mediatek.com>
 <20240226085059.26850-10-shawn.sung@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20240226085059.26850-10-shawn.sung@mediatek.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1176B40F54
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.39 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
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
Message-ID-Hash: DUZEELEGBZ6JEY2V5TCUNH42ZJVGV2YJ
X-Message-ID-Hash: DUZEELEGBZ6JEY2V5TCUNH42ZJVGV2YJ
X-MailFrom: angelogioacchino.delregno@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Philipp Zabel <p.zabel@pengutronix.de>, Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Hsiao Chien Sung <shawn.sung@mediatek.corp-partner.google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 09/11] drm/mediatek: Rename files "mtk_drm_gem.*" to "mtk_gem.*"
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DUZEELEGBZ6JEY2V5TCUNH42ZJVGV2YJ/>
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
> Rename files mtk_drm_gem.* to mtk_gem.*.
> 
> Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.corp-partner.google.com>

Reviewed-by: AngeloGiaocchino Del Regno <angelogioacchino.delregno@collabora.com>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
