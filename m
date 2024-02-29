Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C54186CC11
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Feb 2024 15:52:03 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2E39D44251
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Feb 2024 14:52:02 +0000 (UTC)
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	by lists.linaro.org (Postfix) with ESMTPS id BC5C63F374
	for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Feb 2024 14:51:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=plEqwVnx;
	spf=pass (lists.linaro.org: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.194 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
	dmarc=pass (policy=quarantine) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1709218311;
	bh=wrjX1gCWYg6nSC7PmaC6lhYpHs6jGe36eMWuYBSxilk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=plEqwVnxYxepv2JEG/f9Bg/Gb93C9CmKhxp5jfucjO/sbNALZYICMpViFrBJ4r7xd
	 gnFN14JTKU2IOG3sbHdI0Az0Ckzapl0TEFAGw0oWyTtn8QdGUGmCMFvBdn8tvbPGQR
	 7JH4fOCOY4CkTB+0plwtFdBKVIVPMeKTa38Z6C8zBmXYXzK5BqBbTPAzDn+WXy0Caw
	 d4G5IXOdhVR/6XJy9Vie+p60BEEB02y7OTFGcWZugI0+83J3IHMPU7nzaG084tda0e
	 rLkJ7My88caQ6FW27ofQF45v6mM3g3wHuSj5EnOx+V5hkW/pWhRjmNSnPboOUzLOKp
	 ZZnJgmSZ8gb8Q==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 1EDE33782079;
	Thu, 29 Feb 2024 14:51:50 +0000 (UTC)
Message-ID: <9e7e840d-59bf-42fb-8e7b-224afb9f27d8@collabora.com>
Date: Thu, 29 Feb 2024 15:51:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Jason-JH.Lin" <jason-jh.lin@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>
References: <20240229144844.1688-1-jason-jh.lin@mediatek.com>
 <20240229144844.1688-2-jason-jh.lin@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20240229144844.1688-2-jason-jh.lin@mediatek.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BC5C63F374
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.39 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.194];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	XM_UA_NO_VERSION(0.01)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:email,collabora.com:email,collabora.com:dkim,mediatek.com:email,madrid.collaboradmins.com:rdns,madrid.collaboradmins.com:helo];
	FREEMAIL_TO(0.00)[mediatek.com,kernel.org,linaro.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: 2WPIYPUFBJEAB2VM6B47D3IWGBUBDFYF
X-Message-ID-Hash: 2WPIYPUFBJEAB2VM6B47D3IWGBUBDFYF
X-MailFrom: angelogioacchino.delregno@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jason-ch Chen <jason-ch.chen@mediatek.com>, Johnson Wang <johnson.wang@mediatek.com>, Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, Shawn Sung <shawn.sung@mediatek.com>, Project_Global_Chrome_Upstream_Group@mediatek.com, Fei Shao <fshao@chromium.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/3] dt-bindings: display: mediatek: gamma: Change MT8195 to single enum group
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2WPIYPUFBJEAB2VM6B47D3IWGBUBDFYF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Il 29/02/24 15:48, Jason-JH.Lin ha scritto:
> Since MT8195 gamma has multiple bank for 12 bits LUT and it is
> different from any other SoC LUT setting.
> 
> So we add MT8195 compatible to the single enum group to make its
> driver data settings can be reused by other SoC.
> 
> Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
