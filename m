Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E1DB16C0D27
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Mar 2023 10:23:50 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EB5EC43CCC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Mar 2023 09:23:49 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id 0AFEB3E95E
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Mar 2023 09:23:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=BM3SozDI;
	spf=pass (lists.linaro.org: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
	dmarc=pass (policy=quarantine) header.from=collabora.com
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id DAECC66015F1;
	Mon, 20 Mar 2023 09:23:35 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1679304216;
	bh=kLvg39Gaq3ED8iaOlpcmqwM+ANaZdEUpeHZ6xeDIhuU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=BM3SozDIU+HOpZ4vQEVxgOpyG3uXs4uOSCEw/s3e5vIlqAogkS0jXUEQcTW8oFysn
	 rfD7/qrIwRvJ9qge9FuEvzVcCG3/ebS3Iaw4S377uU0leeDvlecpJUoM2sqX6zwKGo
	 p+Q+T6eRn4M96IQunabLTIGGaR59+pMlE0yz8syY9jqbf/R1dtT2HpOpg3VrbsRRCD
	 9MLqJ8mcMNcBTZjnxrYg/TY55hEmLSmrP9YhA8hSTT8rhBR1tJvclYQs4GTiuuDmVQ
	 FHsc3qTrgdNOP9ZPkgm4A9Zq1he+gpnEeOql80mmuPijVi497gA732e5YEFE2PteTU
	 NpV293LM8BMxw==
Message-ID: <7a651e39-aab6-1723-c28f-756756ae74e3@collabora.com>
Date: Mon, 20 Mar 2023 10:23:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Yongqiang Niu <yongqiang.niu@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, CK Hu <ck.hu@mediatek.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
References: <20230320030449.5397-1-yongqiang.niu@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230320030449.5397-1-yongqiang.niu@mediatek.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0AFEB3E95E
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.40 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,quarantine];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.172];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	RCVD_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linaro.org,cerno.tech,suse.de,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,lists.linaro.org,mediatek.com,chromium.org];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[]
Message-ID-Hash: BKJLMC43VNKNMSXZ6E2BUEQRSHLHTQLF
X-Message-ID-Hash: BKJLMC43VNKNMSXZ6E2BUEQRSHLHTQLF
X-MailFrom: angelogioacchino.delregno@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Maxime Ripard <maxime@cerno.tech>, Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Project_Global_Chrome_Upstream_Group@mediatek.com, Hsin-Yi Wang <hsinyi@chromium.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [v3, PATCH] drm/mediatek: add dma buffer control for drm plane disable
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BKJLMC43VNKNMSXZ6E2BUEQRSHLHTQLF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Il 20/03/23 04:04, Yongqiang Niu ha scritto:
> Fixes: 41016fe1028e4 (drm: Rename plane->state variables in atomic update and disable)
> dma buffer release before overlay disable, that will cause
> m4u translation fault warning.
> 
> add dma buffer control flow in mediatek driver:
> get dma buffer when drm plane disable
> put dma buffer when overlay really disable
> 

The Fixes tag currently has wrong format, and it goes here, not at the beginning;
Please fix.

P.S. The right format is:
Fixes: commitid ("commit title")

> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>


Regards,
Angelo

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
