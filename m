Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4177E80F32E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Dec 2023 17:36:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 377C143C84
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Dec 2023 16:36:57 +0000 (UTC)
Received: from mail-4317.proton.ch (mail-4317.proton.ch [185.70.43.17])
	by lists.linaro.org (Postfix) with ESMTPS id D779B3E917
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Dec 2023 16:36:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=emersion.fr header.s=protonmail2 header.b=WsFtlMCD;
	spf=pass (lists.linaro.org: domain of contact@emersion.fr designates 185.70.43.17 as permitted sender) smtp.mailfrom=contact@emersion.fr;
	dmarc=pass (policy=none) header.from=emersion.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
	s=protonmail2; t=1702399004; x=1702658204;
	bh=xQM8Ci95br6UpZv6S/P/yPue9VcluKR7oR4GJe65I2k=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=WsFtlMCDeErknnMmjq7MhuKXRdxIawCITzMkIK57U3gE2v39FzMn8u71o5f5OkEfP
	 BamfL6xfBjZHQM93MI4ViqRfDLuiA3YOk6oWMkYJ9/3GWX8RrRXH1Rs52gQuitseqZ
	 iT6q2AeS2MWMcfIOlQ6Pc0u5q47GRX4FUQeavG3+6C3E5sfi0sJF90EVA579039vhG
	 mg0LHb3jsUhwyqMrpkX9nxJq2xpviqfQ6wgxVell+MNGEN01K7UhrGwlB85L4DjzmY
	 FVpFmmfVSrSkQNYiYHSTTmGBYQT5PMmfYeKneXZkivzzxkQ8AHg2kJoVHSj4oLv4tQ
	 Rlj2PK7xD4Gzw==
Date: Tue, 12 Dec 2023 16:36:35 +0000
To: Yong Wu <yong.wu@mediatek.com>
From: Simon Ser <contact@emersion.fr>
Message-ID: <DPBmATfmfvSP8Cwjz99kj_JvCEiAqRfuMFJZEBF2aIgl8NZqWFR66eyPTX1E8bHyOlimBihEE3E80p9bfOJ-0SNu8pwoIzL9gD2Xae6r97g=@emersion.fr>
In-Reply-To: <20231212024607.3681-1-yong.wu@mediatek.com>
References: <20231212024607.3681-1-yong.wu@mediatek.com>
Feedback-ID: 1358184:user:proton
MIME-Version: 1.0
X-Rspamd-Queue-Id: D779B3E917
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.91 / 15.00];
	REPLY(-4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[emersion.fr,none];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[185.70.43.17:from];
	R_DKIM_ALLOW(-0.20)[emersion.fr:s=protonmail2];
	R_SPF_ALLOW(-0.20)[+ip4:185.70.43.0/24];
	MIME_GOOD(-0.10)[text/plain];
	BAYES_HAM(-0.01)[48.63%];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:62371, ipnet:185.70.43.0/24, country:CH];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	TAGGED_RCPT(0.00)[dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,amd.com,gmail.com,lists.freedesktop.org,google.com,collabora.com,quicinc.com,ndufresne.ca,mediatek.com,vger.kernel.org,lists.linaro.org,lists.infradead.org];
	RCVD_COUNT_ZERO(0.00)[0];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[emersion.fr:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: HGJBHECCQQI5QVZYYGW7ELI7S34DQF2A
X-Message-ID-Hash: HGJBHECCQQI5QVZYYGW7ELI7S34DQF2A
X-MailFrom: contact@emersion.fr
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rob Herring <robh+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Matthias Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org, John Stultz <jstultz@google.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Jeffrey Kardatzke <jkardatzke@google.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>, Nicolas Dufresne <nicolas@ndufresne.ca>, jianjiao.zeng@mediatek.com, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-mediatek@lists.infradead.org, Joakim Bech <joakim.bech@linaro.org>, tjmercier@google.com, linux-arm-kernel@lists.infradead.org, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 0/7] dma-buf: heaps: Add secure heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HGJBHECCQQI5QVZYYGW7ELI7S34DQF2A/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Is there a chance to pick a better name than "secure" here?

"Secure" is super overloaded, it's not clear at all what it means from
just the name. Something like "restricted" would be an improvement.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
