Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DF381C770
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 Dec 2023 10:40:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7A6AC40C36
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 Dec 2023 09:40:53 +0000 (UTC)
Received: from mail-4022.proton.ch (mail-4022.proton.ch [185.70.40.22])
	by lists.linaro.org (Postfix) with ESMTPS id E612E3F374
	for <linaro-mm-sig@lists.linaro.org>; Fri, 22 Dec 2023 09:40:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=emersion.fr header.s=protonmail2 header.b=KUeJEFF8;
	spf=pass (lists.linaro.org: domain of contact@emersion.fr designates 185.70.40.22 as permitted sender) smtp.mailfrom=contact@emersion.fr;
	dmarc=pass (policy=none) header.from=emersion.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
	s=protonmail2; t=1703238029; x=1703497229;
	bh=RvFPmQYSXCW++H17F3FBSpFjPOkodCCqULNpYKx/X4M=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=KUeJEFF8cS8NbUYEe1YI7C9RCUnb22uQFIsHpP6jjSohQf0y1mWvISCZss2RSG0cE
	 FpFbc+rRNMpRZSb13C1ahONUfnCzGKxUsUUXSsR5C+1R9ci2C5g3By5Mb251Zs9fVi
	 YFv/UAC1f8dJ2Vd22XeC0cShQ3exgbgm9qAvG5p0ggzE7Kr1Y++nvPWpA9zuiSt7oR
	 JeJvwrdg3px1mpjFK/Pb0+sldHag3128mqywcYp+5f8irYQA4y3n4J7ElJxPnbAZiR
	 03F5CEcznFJEOCNtxpJk+MYxgpv1yuAr1WVgq6nUByVZdezLQspZZ6YpOL8YNsVtZb
	 E9NXLgPNEemwQ==
Date: Fri, 22 Dec 2023 09:40:18 +0000
To: Pekka Paalanen <ppaalanen@gmail.com>
From: Simon Ser <contact@emersion.fr>
Message-ID: <9m8eC1j8YSwxu9Mr8vCXyzF0nfyCSHpFbfc__FtUjjKppew65jElBbUqa-nkzFTN-N_ME893w0YQRcb3r3UbIajQUP-Y5LxnHKKFoiBepSI=@emersion.fr>
In-Reply-To: <20231213161614.43e5bca8@eldfell>
References: <20231212024607.3681-1-yong.wu@mediatek.com> <DPBmATfmfvSP8Cwjz99kj_JvCEiAqRfuMFJZEBF2aIgl8NZqWFR66eyPTX1E8bHyOlimBihEE3E80p9bfOJ-0SNu8pwoIzL9gD2Xae6r97g=@emersion.fr> <20231213110517.6ce36aca@eldfell> <20231213101549.lioqfzjxcvmqxqu3@pop-os.localdomain> <20231213133825.0a329864@eldfell> <20231213132229.q3uxdhtdsxuzw3w6@pop-os.localdomain> <20231213161614.43e5bca8@eldfell>
Feedback-ID: 1358184:user:proton
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.42 / 15.00];
	BAYES_HAM(-1.52)[91.84%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[emersion.fr,none];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[185.70.40.22:from];
	R_DKIM_ALLOW(-0.20)[emersion.fr:s=protonmail2];
	R_SPF_ALLOW(-0.20)[+ip4:185.70.40.0/24];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	RCPT_COUNT_TWELVE(0.00)[26];
	ASN(0.00)[asn:62371, ipnet:185.70.40.0/24, country:CH];
	RCVD_COUNT_ZERO(0.00)[0];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,mediatek.com,kernel.org,amd.com,gmail.com,lists.freedesktop.org,google.com,collabora.com,quicinc.com,ndufresne.ca,vger.kernel.org,lists.linaro.org,lists.infradead.org];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[emersion.fr:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E612E3F374
X-Spamd-Bar: -
Message-ID-Hash: ERBUSVA27WBBHFMMUZ2UA44RMKZEFS3D
X-Message-ID-Hash: ERBUSVA27WBBHFMMUZ2UA44RMKZEFS3D
X-MailFrom: contact@emersion.fr
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Joakim Bech <joakim.bech@linaro.org>, Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Matthias Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org, John Stultz <jstultz@google.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Jeffrey Kardatzke <jkardatzke@google.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>, Nicolas Dufresne <nicolas@ndufresne.ca>, jianjiao.zeng@mediatek.com, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-mediatek@lists.infradead.org, tjmercier@google.com, linux-arm-kernel@lists.infradead.org, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 0/7] dma-buf: heaps: Add secure heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ERBUSVA27WBBHFMMUZ2UA44RMKZEFS3D/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wednesday, December 13th, 2023 at 15:16, Pekka Paalanen <ppaalanen@gmail.com> wrote:

> > > It is protected/shielded/fortified from all the kernel and userspace,
> > > but a more familiar word to describe that is inaccessible.
> > > "Inaccessible buffer" per se OTOH sounds like a useless concept.
> > > 
> > > It is not secure, because it does not involve security in any way. In
> > > fact, given it's so fragile, I'd classify it as mildly opposite of
> > > secure, as e.g. clients of a Wayland compositor can potentially DoS the
> > > compositor with it by simply sending such a dmabuf. Or DoS the whole
> > > system.
> > 
> > I hear what you are saying and DoS is a known problem and attack vector,
> > but regardless, we have use cases where we don't want to expose
> > information in the clear and where we also would like to have some
> > guarantees about correctness. That is where various secure elements and
> > more generally security is needed.
> > 
> > So, it sounds like we have two things here, the first is the naming and
> > the meaning behind it. I'm pretty sure the people following and
> > contributing to this thread can agree on a name that makes sense. Would
> > you personally be OK with "restricted" as the name? It sounds like that.
> 
> I would. I'm also just a by-stander, not a maintainer of kernel
> anything. I have no power to accept nor reject anything here.

I'd also personally be OK with "restricted", I think it's a lot better
than "secure".

In general I agree with everything Pekka said.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
