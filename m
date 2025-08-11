Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE13B200DA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Aug 2025 09:53:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A93CA459B2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Aug 2025 07:53:00 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lists.linaro.org (Postfix) with ESMTPS id EFC9A43BDA
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Aug 2025 07:52:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=sntech.de header.s=gloria202408 header.b=SxXGZdtQ;
	spf=pass (lists.linaro.org: domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) smtp.mailfrom=heiko@sntech.de;
	dmarc=pass (policy=none) header.from=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=o/TAwYgz0ngg4OZwy8ia8COP26JschOwB0HVHE21DAo=; b=SxXGZdtQyMxVwztNjnje48NwIx
	XaQaPQlAFvFfiS6IlDPIeQMvlKPgHgQqqLGrZ4R2g0IitbB6dbDHTto16Pp1ddSAobTmniULWRNzl
	BexPQ0ZFnRcOgjUSdki0l99Lr2pnWuqHmy52zl621XqRWKy5viH8Pb3fPt9GmlblgoAPAVVylH243
	4zzixJvbmlYB36lFr1prCfqgUkJigDVR9cKjV/8UGaSsEwVXzVrBSmJMLXxGRzYyQdsFWmoFJ4gon
	Q6FJhthMt6ar6kMBaIY3TKu5dpzbnVRwS2Wzsgj5njlP2DWDzHN1ihnT0+sLBay9pqGWozkbvqrSu
	xB0lx96A==;
Received: from i53875a0c.versanet.de ([83.135.90.12] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ulNKN-0007Ro-TK; Mon, 11 Aug 2025 09:52:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Oded Gabbay <ogabbay@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Daniel Stone <daniel@fooishbar.org>,
	Da Xue <da@libre.computer>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Jeff Hugo <jeff.hugo@oss.qualcomm.com>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Mon, 11 Aug 2025 09:52:06 +0200
Message-ID: <175489870472.808197.2800921191556391028.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250721-6-10-rocket-v9-0-77ebd484941e@tomeuvizoso.net>
References: <20250721-6-10-rocket-v9-0-77ebd484941e@tomeuvizoso.net>
MIME-Version: 1.0
X-Spamd-Result: default: False [-2.30 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,none];
	R_SPF_ALLOW(-0.20)[+ip4:185.11.138.130];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:48823, ipnet:185.11.136.0/22, country:DE];
	RCPT_COUNT_TWELVE(0.00)[32];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_TLS_ALL(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,lwn.net,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,collabora.com,rock-chips.com,arm.com,fooishbar.org,libre.computer,pengutronix.de,oss.qualcomm.com,tomeuvizoso.net];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[sntech.de:mid,sntech.de:dkim,sntech.de:email,gloria.sntech.de:rdns,gloria.sntech.de:helo];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[sntech.de:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: EFC9A43BDA
X-Spamd-Bar: --
Message-ID-Hash: AMXQPM4IE2SOOYCVRUXJ5ZXJKA3I7Y23
X-Message-ID-Hash: AMXQPM4IE2SOOYCVRUXJ5ZXJKA3I7Y23
X-MailFrom: heiko@sntech.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Robert Foss <rfoss@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: (subset) [PATCH v9 00/10] New DRM accel driver for Rockchip's RKNN NPU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AMXQPM4IE2SOOYCVRUXJ5ZXJKA3I7Y23/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


On Mon, 21 Jul 2025 11:17:27 +0200, Tomeu Vizoso wrote:
> This series adds a new driver for the NPU that Rockchip includes in its
> newer SoCs, developed by them on the NVDLA base.
> 
> In its current form, it supports the specific NPU in the RK3588 SoC.
> 
> The userspace driver is part of Mesa and an initial draft can be found at:
> 
> [...]

Applied, thanks!

[07/10] arm64: dts: rockchip: add pd_npu label for RK3588 power domains
        commit: 6d64bceb97a1c93b3cc2131f7e023ef2f9cf33f2
[08/10] arm64: dts: rockchip: Add nodes for NPU and its MMU to rk3588-base
        commit: a31dfc060a747f08705ace36d8de006bc13318fa
[09/10] arm64: dts: rockchip: Enable the NPU on quartzpro64
        commit: 640366d644b1e282771a09c72be37162b6eda438
[10/10] arm64: dts: rockchip: enable NPU on ROCK 5B
        commit: 3af6a83fc85033e44ce5cd0e1de54dc20b7e15af

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
