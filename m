Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +MyoHoqf72kcDgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 19:40:26 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DAC477CD4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 19:40:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EF611404B1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 17:40:24 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by lists.linaro.org (Postfix) with ESMTPS id E69803F785
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Apr 2026 17:40:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=DdPfqrkR;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.54 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-488940ccfa6so4085e9.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Apr 2026 10:40:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777311621; cv=none;
        d=google.com; s=arc-20240605;
        b=O0HizkP1Kw2QflKEnnz6MQX8+/8OE5yTQMxui/59LkrTG3u7ecr3yIZUD8P9jELr5W
         2CN9q+dYJ/f119HciAhM1w9WcbbFil1VTHApZ6jbAX84zb2VEOwCwrsMpjNWcgmJvDDY
         jTnpZFyO8EalEcFuhERiUq5NuZ0vzZAObQBrv26WZSunLDNfTsxvyP/WmrcSG5ZrMrqC
         ozX3q80KSaNoBXvskUgjOgmIzMOXGbDBzFYb0zPL7p4rAjh2xVSg26l+Dj1yjos0QoB5
         b5m17jPYD7qWBkpMdZdb6x8Xw596iwOHEBsqORvc/51KmPt+eZCBt4x4SWfhQFVJDI2C
         YSdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=wQPYpl86S/o4OEYS0Pn9HHusXk6T/j3+DCtfMcETKIE=;
        fh=J3XzT0hiYsL5Tt3PNwv0OWOXQ8fpGm6F04FoOZUBs/A=;
        b=L2vneEdsdvTcGwzlPGSatXbumyIjLzompPWtpxgjUWeANmSsw01QuFmcRvgw+LWIyH
         M9Je9vgaB8/+HPRQSfkq0hyGkAZq8VXWRiBLbZd+pHLq5XsutBljsz2PBiddmQ8c9dxq
         bqi01GzhRtVs4bT0UTXpnx5yN9HcOdyHmg8yERUfwGH5rKFiqD4vvoa5sU0TJyPoxkVQ
         vuyA8lSkfpD2VrIhtqOtwTRleV2KvDHDEw6d/8Lq9iK1ARIjGI6Z8JEqCiTwH+fSl1QB
         FLIpXBmaGM9/uEL6xCo8m+tmoLilzXZsxsKT9iom+I3qUu+7C59A30sMOVDYmd+SER9V
         kWYA==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1777311621; x=1777916421; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wQPYpl86S/o4OEYS0Pn9HHusXk6T/j3+DCtfMcETKIE=;
        b=DdPfqrkR4RTY9u7VP9G5P1H/wr2uDLql/orqyHIUtpOU99eb/fBwNo71f9dZh6xy/Y
         om6y4mjlD10y3etiihT82r/F5QLUHS8xDVmCj2wzd+X52kZb8Gjlogfode8Ic1h2VfOJ
         ZgQvKcdtYWmat6qVC3AzE1LDZonOEs1TMbo1+/FcZNI8PiCX8AyJfKWVEboBgR/9e5sa
         8L6GdxhfaqmjYZEQ42C27NLcR5tixXPRN8mE2Hmx4AI36lzCyMMoQTg/ZeCQljyN5oNL
         a0Ek4UoQEg7gLLmiS/KnZf0+UvF3k1jd92GnfeYOK5DtkkHlPfA3dOU7JZ+Bviks9TG4
         YuBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777311621; x=1777916421;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wQPYpl86S/o4OEYS0Pn9HHusXk6T/j3+DCtfMcETKIE=;
        b=Q199Xqx33ZAn7I3t2gg91XeAOUO/CgoCWpzRHzPL3GQOQX7xcweusNZ7HcdeObITWY
         +rs0NqsnpmE2tjVnKd7cY1DaOLVibnP+m+Bn2PQdru0X5MwTmogafewhpmm68Ab9Y0pW
         WLMPVKF8atqrY23ZtsrakuBMhSDuxJZCioDIXpOaAMdjTpOQFRHbxmxwIBAHlIRGHNbk
         wuUC5yw+N+6jT5+m9755UPLvRWwUzsrxwITFqMKJpfjf0XY+BzjSv0gPAHEIq0bE6bLD
         UHN71G5FfbEc2au4Goa1WRYH0uZwW5q83Ew7kSaktmr7hpWd8Ib8I3vjBpqBQRwdxRF3
         RBvQ==
X-Forwarded-Encrypted: i=1; AFNElJ/i0MWSrjvGcNpPbXQSJGBgL2nL5zXCiWQ4t1gDPhpsDDpqC8+aNQCrBkVYnvJDR1JKMWGx4a2Yxq25Pbsq@lists.linaro.org
X-Gm-Message-State: AOJu0YztfpqpMEJL57avfuaw2ANswTESezAYpoNq4jwJhjiKUGGQ9iPD
	ov17baEwmPc6wm7tuJ9QPi4XrfvxSkjTSiQ4lEBqz9YNVTH9YKpY3FeJHQ/YlC1rSujayrjRT+Y
	8GOtFe0eaazp4cLtfJKfhkJW+0lT/swt6esRQiWP/
X-Gm-Gg: AeBDievV4WlSvTL6S6zrm471M6vW+dCQoHykWyoGwr+c275TZOnnjItU30hxiaCB1up
	6o2sSiR2lCumx/PBGDI0CtV6pDKJ0pr2vLAA+3dIlQmBXTJZWpDTR0cuP0lvhwfc2V2DBP4BEuJ
	trXO2dMkThMs/8k7D6w4r+dMCOIm7/JaUtr7QOnKpFsHZqmyAwxEK+H+eow09dc361JnYEHEU++
	9TWu993GcoNtuav3EI6DJwYeEsBRgoZxSsyp2tUthxBewddVOYUHc/M/VFj6o8+GQ0X0Geg7gP4
	Yetwz5/PcF73GuV2MTJ1CdhsL/uHHIo3XdFc0hki73JN4uR2AZBoBZKnGEc=
X-Received: by 2002:a05:600c:1e1c:b0:485:1a54:9407 with SMTP id
 5b1f17b1804b1-48a774024fbmr86295e9.0.1777311620577; Mon, 27 Apr 2026 10:40:20
 -0700 (PDT)
MIME-Version: 1.0
References: <20260427172519.417333-3-thorsten.blum@linux.dev>
In-Reply-To: <20260427172519.417333-3-thorsten.blum@linux.dev>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Mon, 27 Apr 2026 10:40:07 -0700
X-Gm-Features: AVHnY4KrC_-8s-6jQ3WU3OwQLdanE1VG9VKiglfUxWDdXiiJUp5ur2yhP2MZCrM
Message-ID: <CABdmKX1xp1=_EnicNGj1ZOp0dvma-YevvZk1_3V5FZ8ucUK32A@mail.gmail.com>
To: Thorsten Blum <thorsten.blum@linux.dev>
X-Spamd-Bar: -----
Message-ID-Hash: IH362UYEX7H3MAR56JY4HAANPNFFBR4W
X-Message-ID-Hash: IH362UYEX7H3MAR56JY4HAANPNFFBR4W
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: heaps: use max3() in dma_heap_ioctl
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IH362UYEX7H3MAR56JY4HAANPNFFBR4W/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 14DAC477CD4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.482];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,mail.gmail.com:mid,linux.dev:email]

T24gTW9uLCBBcHIgMjcsIDIwMjYgYXQgMTA6MjbigK9BTSBUaG9yc3RlbiBCbHVtIDx0aG9yc3Rl
bi5ibHVtQGxpbnV4LmRldj4gd3JvdGU6DQo+DQo+IFJlcGxhY2UgdHdvIG5lc3RlZCBtYXgoKSBj
YWxscyB3aXRoIGEgc2luZ2xlIG1heDMoKSBpbiBkbWFfaGVhcF9pb2N0bCgpLg0KPg0KPiBTaWdu
ZWQtb2ZmLWJ5OiBUaG9yc3RlbiBCbHVtIDx0aG9yc3Rlbi5ibHVtQGxpbnV4LmRldj4NCj4gLS0t
DQo+ICBkcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYyB8IDIgKy0NCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9kbWEtYnVmL2RtYS1oZWFwLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYw0KPiBpbmRl
eCBhYzVmODY4NWE2NDkuLjUyZWVjMmViYjJlOCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9kbWEt
YnVmL2RtYS1oZWFwLmMNCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMNCj4gQEAg
LTE1Myw3ICsxNTMsNyBAQCBzdGF0aWMgbG9uZyBkbWFfaGVhcF9pb2N0bChzdHJ1Y3QgZmlsZSAq
ZmlsZSwgdW5zaWduZWQgaW50IHVjbWQsDQo+ICAgICAgICAgICAgICAgICBpbl9zaXplID0gMDsN
Cj4gICAgICAgICBpZiAoKHVjbWQgJiBrY21kICYgSU9DX09VVCkgPT0gMCkNCj4gICAgICAgICAg
ICAgICAgIG91dF9zaXplID0gMDsNCj4gLSAgICAgICBrc2l6ZSA9IG1heChtYXgoaW5fc2l6ZSwg
b3V0X3NpemUpLCBkcnZfc2l6ZSk7DQo+ICsgICAgICAga3NpemUgPSBtYXgzKGluX3NpemUsIG91
dF9zaXplLCBkcnZfc2l6ZSk7DQoNCkhpLA0KDQpDb3VsZCB5b3UgYWRkICNpbmNsdWRlIDxsaW51
eC9taW5tYXguaD4gYXMgd2VsbD8gSXQncyBjdXJyZW50bHkgbWlzc2luZy4NCg0KV2l0aCB0aGF0
OiBSZXZpZXdlZC1ieTogVC5KLk1lcmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29tPg0KDQpUaGFu
a3MsDQpULkouDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
