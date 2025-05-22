Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CFEEAC04E6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 May 2025 08:56:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1326E446AA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 May 2025 06:56:57 +0000 (UTC)
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	by lists.linaro.org (Postfix) with ESMTPS id B9C454159B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 May 2025 06:56:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=xX8hjOvX;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.167.180 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3f6dccdcadaso5892600b6e.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 21 May 2025 23:56:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747897003; x=1748501803; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WeKMC6ZBMvoz5mZGPjKGgi0Ohr2T8fh1E4A0BZHhyCM=;
        b=xX8hjOvXSKWA1R9wCviufDlIyMHHRiF3Q2cQctHy4HvdZtJLlIWTkoOMDu5NLFd+2/
         pvKKRZZNGf4CTBwaq2eLKmQd1Yts9LzjVWWYrAO/UhDVtIB0Wfj8wM/spIxHXOKC4AVH
         c2RWMn8yZ2i7tvusMztAAtKW78yDrFKtFAXl0LaNfQroqFNyaArQpyaLpihIWRS4wNEl
         l4D+a1MiglJQjlZz9VoBeZ7KXJwWcXPeTN4mG9j2dTtRkrWsB5AhYc1Bz58HpSheWaM+
         a7AqcnBLBRTsIF1fOl5ohblrsQO5VaEHLFWiaICXxWt1X3D/0sivQnNZKsiSocQp5NSR
         D5jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747897003; x=1748501803;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WeKMC6ZBMvoz5mZGPjKGgi0Ohr2T8fh1E4A0BZHhyCM=;
        b=ai7CJ1AIfHeMfdav90Zv/plBS+P1Hz/RC9jiWf9/UfGZ/645kAfuyNNQ/ZCGUsOi2X
         CqFNDl7n/tVJagazn0zLtVUnL50CvLqhygNTDkJLDuBEN3JREdtHsUrCQQBitYOyTK5H
         3yx+rEzerocVB8HVLK1NE4IkhFnIvJopErdMDj71Iud3GGqsgQ/X+iGwkvyguHHD9rh1
         +5hFC7zGpd46RuDFq7GUA7PJiev2BfAhinsoChlEblwk96MpOpYjm6NT7vETuoFuKDnd
         59krVX+EaBRrYRBjaCgW653vbqLhoJcH7kqeWPL/xanWWNiGWs0R+uUos1HmPZfeNeZQ
         dsyg==
X-Forwarded-Encrypted: i=1; AJvYcCVdZwpD6+ln9HGSgElFm+UQlFGJ5Sz3y36oX9GIOvQ+opq0mpbcCRpS/zl5MGxGb/bs5oInVUabkZHUKcC7@lists.linaro.org
X-Gm-Message-State: AOJu0YwecwIVSn249o1GABUpg8VuqTanVjeISSzwu6D7lLRMOOhkhbCq
	BygcYMwzCsGSUQyXzv0SvyTWNWVYyXWbEnBNhDNT99bnTFOySKwj5swaVDBMW3xNutpjlFFqjni
	RigxF0CMAHhelANPIPW1jm1GrkHoRNtAoslKHOLinZ7xw
X-Gm-Gg: ASbGnctFUPSquDvyPsL9VeGch8mG554Kd3EpA1LmZGJZs0uoM+/Sg2SrucXAui6Me3f
	1sCOVtPPSm7CxTQ8PHIq9bB3xfYbi36JkkbPTT8rTxu3UM9WA4PM5b8yHOpcczVC5x7Plfso+Nq
	vwQh+gob3nwEk45Ksj9B5Y/HmUoh4xJHj1iw==
X-Google-Smtp-Source: AGHT+IHkFUemf1YsBa7Ra5vRLLSyYkClMUJvfuEYqOo7C5Q/HY7RUEskcqp+LiC0Z8m9NvJveoTaK0UdZlaYOd03Who=
X-Received: by 2002:a05:6808:6410:b0:3f7:ff67:1d8c with SMTP id
 5614622812f47-404d88d532amr14478281b6e.36.1747897003075; Wed, 21 May 2025
 23:56:43 -0700 (PDT)
MIME-Version: 1.0
References: <20250520152436.474778-1-jens.wiklander@linaro.org>
 <20250520152436.474778-3-jens.wiklander@linaro.org> <dffbd709-def0-47af-93ff-a48686f04153@amd.com>
In-Reply-To: <dffbd709-def0-47af-93ff-a48686f04153@amd.com>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Thu, 22 May 2025 08:56:31 +0200
X-Gm-Features: AX0GCFsuHYqDh1JYpWH8r8xDir4J3V2XXHJjiARqLynYHFcDQxMIIZpQ5oYhZd4
Message-ID: <CAHUa44Ec0+GPoDkcEG+Vg9_TY1NC=nh3yr0F=ezHMbaeX_A0Bg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.180:from];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_RCPT(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.167.180:from];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Queue-Id: B9C454159B
X-Spamd-Bar: ------
Message-ID-Hash: MDBN4IQUUYHLLOOZ6XV5JWRSZMTP54U2
X-Message-ID-Hash: MDBN4IQUUYHLLOOZ6XV5JWRSZMTP54U2
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 2/9] dma-buf: dma-heap: export declared functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MDBN4IQUUYHLLOOZ6XV5JWRSZMTP54U2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBNYXkgMjEsIDIwMjUgYXQgOToxM+KAr0FNIENocmlzdGlhbiBLw7ZuaWcNCjxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPiBPbiA1LzIwLzI1IDE3OjE2LCBKZW5z
IFdpa2xhbmRlciB3cm90ZToNCj4gPiBFeHBvcnQgdGhlIGRtYS1idWYgaGVhcCBmdW5jdGlvbnMg
ZGVjbGFyZWQgaW4gPGxpbnV4L2RtYS1oZWFwLmg+Lg0KPg0KPiBUaGF0IGlzIHdoYXQgdGhpcyBw
YXRjaCBkb2VzIGFuZCB0aGF0IHNob3VsZCBiZSBvYnZpb3VzIGJ5IGxvb2tpbmcgYXQgaXQuIFlv
dSBuZWVkIHRvIGV4cGxhaW4gd2h5IHlvdSBkbyB0aGlzLg0KPg0KPiBMb29raW5nIGF0IHRoZSBy
ZXN0IG9mIHRoZSBzZXJpZXMgaXQncyBtb3N0IGxpa2VseSBvaywgYnV0IHRoaXMgY29tbWl0IG1l
c3NhZ2Ugc2hvdWxkIHJlYWxseSBiZSBpbXByb3ZlZC4NCg0KSSdtIGNvbnNpZGVyaW5nIHNvbWV0
aGluZyBsaWtlIHRoaXMgZm9yIHRoZSBuZXh0IHZlcnNpb246DQpFeHBvcnQgdGhlIGRtYS1idWYg
aGVhcCBmdW5jdGlvbnMgZGVjbGFyZWQgaW4gPGxpbnV4L2RtYS1oZWFwLmg+IHRvIGFsbG93DQp0
aGVtIHRvIGJlIHVzZWQgYnkga2VybmVsIG1vZHVsZXMuIFRoaXMgd2lsbCBlbmFibGUgZHJpdmVy
cyBsaWtlIHRoZSBPUC1URUUNCmRyaXZlciwgdG8gdXRpbGl6ZSB0aGVzZSBpbnRlcmZhY2VzIGZv
ciByZWdpc3RlcmluZyBhbmQgbWFuYWdpbmcgdGhlaXINCnNwZWNpZmljIERNQSBoZWFwcy4NCg0K
VGhhbmtzLA0KSmVucw0KDQo+DQo+IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4NCj4NCj4gPg0KPiA+
IFNpZ25lZC1vZmYtYnk6IEplbnMgV2lrbGFuZGVyIDxqZW5zLndpa2xhbmRlckBsaW5hcm8ub3Jn
Pg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYyB8IDMgKysrDQo+ID4g
IDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jDQo+
ID4gaW5kZXggM2NiZTg3ZDRhNDY0Li5jZGRkZjBlMjRkY2UgMTAwNjQ0DQo+ID4gLS0tIGEvZHJp
dmVycy9kbWEtYnVmL2RtYS1oZWFwLmMNCj4gPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWhl
YXAuYw0KPiA+IEBAIC0yMDIsNiArMjAyLDcgQEAgdm9pZCAqZG1hX2hlYXBfZ2V0X2RydmRhdGEo
c3RydWN0IGRtYV9oZWFwICpoZWFwKQ0KPiA+ICB7DQo+ID4gICAgICAgcmV0dXJuIGhlYXAtPnBy
aXY7DQo+ID4gIH0NCj4gPiArRVhQT1JUX1NZTUJPTChkbWFfaGVhcF9nZXRfZHJ2ZGF0YSk7DQo+
ID4NCj4gPiAgLyoqDQo+ID4gICAqIGRtYV9oZWFwX2dldF9uYW1lIC0gZ2V0IGhlYXAgbmFtZQ0K
PiA+IEBAIC0yMTQsNiArMjE1LDcgQEAgY29uc3QgY2hhciAqZG1hX2hlYXBfZ2V0X25hbWUoc3Ry
dWN0IGRtYV9oZWFwICpoZWFwKQ0KPiA+ICB7DQo+ID4gICAgICAgcmV0dXJuIGhlYXAtPm5hbWU7
DQo+ID4gIH0NCj4gPiArRVhQT1JUX1NZTUJPTChkbWFfaGVhcF9nZXRfbmFtZSk7DQo+ID4NCj4g
PiAgLyoqDQo+ID4gICAqIGRtYV9oZWFwX2FkZCAtIGFkZHMgYSBoZWFwIHRvIGRtYWJ1ZiBoZWFw
cw0KPiA+IEBAIC0zMDMsNiArMzA1LDcgQEAgc3RydWN0IGRtYV9oZWFwICpkbWFfaGVhcF9hZGQo
Y29uc3Qgc3RydWN0IGRtYV9oZWFwX2V4cG9ydF9pbmZvICpleHBfaW5mbykNCj4gPiAgICAgICBr
ZnJlZShoZWFwKTsNCj4gPiAgICAgICByZXR1cm4gZXJyX3JldDsNCj4gPiAgfQ0KPiA+ICtFWFBP
UlRfU1lNQk9MKGRtYV9oZWFwX2FkZCk7DQo+ID4NCj4gPiAgc3RhdGljIGNoYXIgKmRtYV9oZWFw
X2Rldm5vZGUoY29uc3Qgc3RydWN0IGRldmljZSAqZGV2LCB1bW9kZV90ICptb2RlKQ0KPiA+ICB7
DQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
