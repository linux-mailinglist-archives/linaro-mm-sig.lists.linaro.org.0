Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 955F386C41C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Feb 2024 09:48:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A9A2A40C97
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Feb 2024 08:48:26 +0000 (UTC)
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	by lists.linaro.org (Postfix) with ESMTPS id E35FD40C97
	for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Feb 2024 08:48:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=QqUeHf2g;
	spf=pass (lists.linaro.org: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.194 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
	dmarc=pass (policy=quarantine) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1709196486;
	bh=9+dpCXx7x8UpSu3QuELJTExwI0UUO/emZ4rDeXtx924=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=QqUeHf2gm7ya25wnu6E/Surks4FtpIdhdpaTZtIqhLZqXWuCUT1rBSm4Fz3y7d51H
	 qiPLYiz55uYSQgit4TpXAEG795vs9TecMRbNmJA6lBvIS6WuFj40bGj3PvTX/ENsH1
	 3LkJ8YBut8oDlQjXc6MymbwST6AFCZbuQoBPhA1Q92Zz7BGQzIp4Cv0IbFW6JoGNNe
	 o9QnxE9hcQ1JoySzCi4ROL5ssEd6l5UC6w+Ni3Kia6CrJWtqSiTMTmmSxkcD0I5+zX
	 lL6i6Y+xIn0Tu+a2V0txcd6imogZVCvUX1jg1UssxaH5faNL9I4HFAj324mBBBjKMc
	 KjzC8ZLfoDOcA==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 39C3037810EF;
	Thu, 29 Feb 2024 08:48:04 +0000 (UTC)
Message-ID: <e1f772b3-cbe5-4d6b-b2cd-d6e10bd2121a@collabora.com>
Date: Thu, 29 Feb 2024 09:48:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Jason-JH.Lin" <jason-jh.lin@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>
References: <20240229023522.15870-1-jason-jh.lin@mediatek.com>
 <20240229023522.15870-4-jason-jh.lin@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20240229023522.15870-4-jason-jh.lin@mediatek.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E35FD40C97
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.39 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.194:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[mediatek.com,kernel.org,linaro.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_ALL(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[20];
	DNSWL_BLOCKED(0.00)[195.201.22.229:received,46.235.227.194:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: EBR65P4ADXXSWNWG674JKPRROHEE37GY
X-Message-ID-Hash: EBR65P4ADXXSWNWG674JKPRROHEE37GY
X-MailFrom: angelogioacchino.delregno@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jason-ch Chen <jason-ch.chen@mediatek.com>, Johnson Wang <johnson.wang@mediatek.com>, Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, Shawn Sung <shawn.sung@mediatek.com>, Project_Global_Chrome_Upstream_Group@mediatek.com, Fei Shao <fshao@chromium.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/3] drm/mediatek: Add gamma support for MT8195
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EBR65P4ADXXSWNWG674JKPRROHEE37GY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Il 29/02/24 03:35, Jason-JH.Lin ha scritto:
> Since MT8195 compatible is in the single enum group, we have to add its
> compatible into mediatek-drm component binding table to ensure that
> it can be bound as a ddp_comp.
> 

Reviewed-by: AngeloGioacchino Del Regno <angelogiaocchino.delregno@collabora.com>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
