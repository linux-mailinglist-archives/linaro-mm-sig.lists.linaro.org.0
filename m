Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 609667A603F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Sep 2023 12:54:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 13BD03F95F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Sep 2023 10:54:12 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id EA4C43F95F
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Sep 2023 10:54:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b="WBGWu/Ab";
	spf=pass (lists.linaro.org: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
	dmarc=pass (policy=quarantine) header.from=collabora.com
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 40B8966071A9;
	Tue, 19 Sep 2023 11:54:08 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695120849;
	bh=YIL8CVeCu2phmjTNYbQbVDRE1/tG7w/T7zljvP0+8Uc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=WBGWu/Ab+USWrsW0Z0Uhl+RO5yYIJvHCGPrih+x7pbvCqkRg8r1OfBvmX9xwJAh21
	 4HnvcLBXESSY49rYXVpBZAM3+yKFi/+UytYdQAh1lcX56O1gaC8+VghudX9akkIEBl
	 ++O1Yv7neVxSA7fS2HLIgL4TbofYMrBtt5eGmBk9FUgucvoUgZIsWgwLnHiQlXraQN
	 JPRO1TJQfvU0HSowGaZPUjJ2z/YuFMXkldlIVOm9Dbu8KFf6IHZavvNPt1KT2vssWB
	 8fuHSC2uShhJF67yNVYKBpV3y7KFMT0doAKk+qoFuChJtfNTgkrHbKlQt6/ApoQvk4
	 Hf/FQTa1KdsAQ==
Message-ID: <766b1ac5-f2c4-0e58-24ff-dafde8e5995b@collabora.com>
Date: Tue, 19 Sep 2023 12:54:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US
To: "Jason-JH.Lin" <jason-jh.lin@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>
References: <20230919030345.8629-1-jason-jh.lin@mediatek.com>
 <20230919030345.8629-11-jason-jh.lin@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230919030345.8629-11-jason-jh.lin@mediatek.com>
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.40 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[2.237.20.237:received,46.235.227.172:from];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,quarantine];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.172];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_TLS_ALL(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[mediatek.com,kernel.org,linaro.org,gmail.com];
	TAGGED_RCPT(0.00)[dt];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[collabora.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: EA4C43F95F
Message-ID-Hash: DDUYFOG7WWXFPBJ3YLCEVKMI6WTLCTQN
X-Message-ID-Hash: DDUYFOG7WWXFPBJ3YLCEVKMI6WTLCTQN
X-MailFrom: angelogioacchino.delregno@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Jason-ch Chen <jason-ch.chen@mediatek.com>, Johnson Wang <johnson.wang@mediatek.com>, Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, Shawn Sung <shawn.sung@mediatek.com>, Project_Global_Chrome_Upstream_Group@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 10/10] arm64: dts: mt8195-cherry: Add secure mbox settings for vdosys
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DDUYFOG7WWXFPBJ3YLCEVKMI6WTLCTQN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Il 19/09/23 05:03, Jason-JH.Lin ha scritto:
> Add a secure mailbox channel to support secure video path on
> vdosys0 and vdosys1.
> 
> Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
> ---
>   arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi | 10 ++++++++++
>   1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> index 37a3e9de90ff..9b838b2cdb3e 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> @@ -1147,6 +1147,16 @@
>   	status = "okay";
>   };
>   
> +&vdosys0 {
> +	mboxes = <&gce0 0 CMDQ_THR_PRIO_4>,
> +		 <&gce0 8 CMDQ_THR_PRIO_4>; /* secure mbox */
> +};
> +
> +&vdosys1 {
> +	mboxes = <&gce0 1 CMDQ_THR_PRIO_4>,
> +		 <&gce0 9 CMDQ_THR_PRIO_4>; /* secure mbox */
> +};
> +

Is the secure mailbox number firmware dependant?
Otherwise this could go in mt8195.dtsi.

Regards,
Angelo

>   &xhci0 {
>   	status = "okay";
>   


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
