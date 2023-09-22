Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D657AB900
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 Sep 2023 20:20:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D3FB43EA14
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 Sep 2023 18:20:02 +0000 (UTC)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	by lists.linaro.org (Postfix) with ESMTPS id 507463EA14
	for <linaro-mm-sig@lists.linaro.org>; Fri, 22 Sep 2023 18:19:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=13ZTNv9Q;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.219.170 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-d81d09d883dso2981782276.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 22 Sep 2023 11:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695406799; x=1696011599; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MJEfWMki53C0C9QhqoAya3sbRCJGrb7hvD0oAvB4tgE=;
        b=13ZTNv9QK0Xj/61gEQmgMpdfm3j9erBI0su9O4xC86afzattAxWMjf9OhBE5yf422M
         +z40cZS7dQAzvp1F7qAG92uFvSGTxkWYPGFZsO1ymXfTBFvafNZ2aJ3qV7OmX7UDdb7z
         Dv9X3kyjuDleITEimJ1LyGN9b0KrJEe1T93pL98Yf5fr/wsazL5xGciO6smGeuucg/jR
         pX0ElQaPchsZs/Twj93T4F3XmSfhxNsDsNPidExJ5UDKg1RJ7RIBkHN872EcTaciK0II
         AfW7pALOlujUa4VX2Ct53zUBZ6KMi0yjXMPy7q6WpJwzpzPkQRPVhshapVS+M6njS+yp
         eizQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695406799; x=1696011599;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MJEfWMki53C0C9QhqoAya3sbRCJGrb7hvD0oAvB4tgE=;
        b=Re12nFrOyGAUWiffC/K9tD+CU1pAKk5vUQ4eGH3Eyyj1PsCC3f0fy7TPX+SpwyrfWj
         3bWao56Zm7u/FqzFQythEoajsGpt+oBhBBuPVBfKOjPRDemrBHIVOs1rE3MRW9840v/3
         paPxVl5NMqJYFrKHUxatE08+kcrIGxSsbJZnzxshO7DypgXNOu7rRioSey4CYni/DBLG
         i2sFOt2BmIIpn8mu2EaCJYR0unA51+KqyFHlQUx91EcCwiyu72tgZQ77nwAITavKT4Ku
         wL+/KYNNBEjIqY8HkhrRrqX3NqLnWtnXtUQv7YeHjyKo3teY9fuw8a0l686Fp71bH/p3
         OGIw==
X-Gm-Message-State: AOJu0Yyom5jH7fmesBi7hmTBIZsQQCMA6HUeh4t40rg9zkiQhz4/PdOA
	mJx6s7HH8hwK3rfMZxobDcQmLMbWNbcuIkdEMYa9Dw==
X-Google-Smtp-Source: AGHT+IEHQohIXqITSfor/S743Ge1pG10gsNJCzDT+XFRdZSUhjj6xBKLS9Ve3hl88Y+oLZXD7F7ZDyjyqF5lKzjIhh8=
X-Received: by 2002:a25:9205:0:b0:d81:6344:540b with SMTP id
 b5-20020a259205000000b00d816344540bmr65049ybo.45.1695406798515; Fri, 22 Sep
 2023 11:19:58 -0700 (PDT)
MIME-Version: 1.0
References: <20230911023038.30649-1-yong.wu@mediatek.com> <20230911023038.30649-3-yong.wu@mediatek.com>
 <71c435a6-ba43-5d26-e658-f55bddbb8b98@amd.com>
In-Reply-To: <71c435a6-ba43-5d26-e658-f55bddbb8b98@amd.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Fri, 22 Sep 2023 11:19:46 -0700
Message-ID: <CABdmKX1-5ujRRVQHNVMkoC4Ls0mruxE8GCXNavRLyywD7SobOw@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.170:from];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-0.988];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[mediatek.com,kernel.org,linaro.org,gmail.com,collabora.com,arm.com,google.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 507463EA14
Message-ID-Hash: VETFYCVI5KU2YBJFIBBPBYANSMFO7G5D
X-Message-ID-Hash: VETFYCVI5KU2YBJFIBBPBYANSMFO7G5D
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/9] dma-heap: Add proper kref handling on dma-buf heaps
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VETFYCVI5KU2YBJFIBBPBYANSMFO7G5D/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBTZXAgMTEsIDIwMjMgYXQgMjo0OeKAr0FNIENocmlzdGlhbiBLw7ZuaWcNCjxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPiBBbSAxMS4wOS4yMyB1bSAwNDozMCBz
Y2hyaWViIFlvbmcgV3U6DQo+ID4gRnJvbTogSm9obiBTdHVsdHogPGpzdHVsdHpAZ29vZ2xlLmNv
bT4NCj4gPg0KPiA+IEFkZCBwcm9wZXIgcmVmY291bnRpbmcgb24gdGhlIGRtYV9oZWFwIHN0cnVj
dHVyZS4NCj4gPiBXaGlsZSBleGlzdGluZyBoZWFwcyBhcmUgYnVpbHQtaW4sIHdlIG1heSBldmVu
dHVhbGx5DQo+ID4gaGF2ZSBoZWFwcyBsb2FkZWQgZnJvbSBtb2R1bGVzLCBhbmQgd2UnbGwgbmVl
ZCB0byBiZQ0KPiA+IGFibGUgdG8gcHJvcGVybHkgaGFuZGxlIHRoZSByZWZlcmVuY2VzIHRvIHRo
ZSBoZWFwcw0KPiA+DQo+ID4gQWxzbyBtb3ZlcyBtaW5vciB0cmFja2luZyBpbnRvIHRoZSBoZWFw
IHN0cnVjdHVyZSBzbw0KPiA+IHdlIGNhbiBwcm9wZXJseSBmcmVlIHRoaW5ncy4NCj4NCj4gVGhp
cyBpcyBjb21wbGV0ZWx5IHVubmVjZXNzYXJ5LCBzZWUgYmVsb3cuDQo+DQo+ID4NCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBKb2huIFN0dWx0eiA8anN0dWx0ekBnb29nbGUuY29tPg0KPiA+IFNpZ25lZC1v
ZmYtYnk6IFQuSi4gTWVyY2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+DQo+ID4gU2lnbmVkLW9m
Zi1ieTogWW9uZyBXdSA8eW9uZy53dUBtZWRpYXRlay5jb20+DQo+ID4gW1lvbmc6IEp1c3QgYWRk
IGNvbW1lbnQgZm9yICJtaW5vciIgYW5kICJyZWZjb3VudCJdDQo+ID4gLS0tDQo+ID4gICBkcml2
ZXJzL2RtYS1idWYvZG1hLWhlYXAuYyB8IDM4ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKystLS0tDQo+ID4gICBpbmNsdWRlL2xpbnV4L2RtYS1oZWFwLmggICB8ICA2ICsrKysrKw0K
PiA+ICAgMiBmaWxlcyBjaGFuZ2VkLCA0MCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0K
PiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jIGIvZHJpdmVy
cy9kbWEtYnVmL2RtYS1oZWFwLmMNCj4gPiBpbmRleCA1MTAzMGY2YzlkNmUuLmRjYzBlMzhjNjFm
YSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYw0KPiA+ICsrKyBi
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jDQo+ID4gQEAgLTExLDYgKzExLDcgQEANCj4gPiAg
ICNpbmNsdWRlIDxsaW51eC9kbWEtYnVmLmg+DQo+ID4gICAjaW5jbHVkZSA8bGludXgvZG1hLWhl
YXAuaD4NCj4gPiAgICNpbmNsdWRlIDxsaW51eC9lcnIuaD4NCj4gPiArI2luY2x1ZGUgPGxpbnV4
L2tyZWYuaD4NCj4gPiAgICNpbmNsdWRlIDxsaW51eC9saXN0Lmg+DQo+ID4gICAjaW5jbHVkZSA8
bGludXgvbm9zcGVjLmg+DQo+ID4gICAjaW5jbHVkZSA8bGludXgvc3lzY2FsbHMuaD4NCj4gPiBA
QCAtMzAsNiArMzEsOCBAQA0KPiA+ICAgICogQGhlYXBfZGV2dDogICAgICAgICAgICAgIGhlYXAg
ZGV2aWNlIG5vZGUNCj4gPiAgICAqIEBsaXN0OiAgICAgICAgICAgbGlzdCBoZWFkIGNvbm5lY3Rp
bmcgdG8gbGlzdCBvZiBoZWFwcw0KPiA+ICAgICogQGhlYXBfY2RldjogICAgICAgICAgICAgIGhl
YXAgY2hhciBkZXZpY2UNCj4gPiArICogQG1pbm9yOiAgICAgICAgICAgaGVhcCBkZXZpY2Ugbm9k
ZSBtaW5vciBudW1iZXINCj4gPiArICogQHJlZmNvdW50OiAgICAgICAgICAgICAgICByZWZlcmVu
Y2UgY291bnRlciBmb3IgdGhpcyBoZWFwIGRldmljZQ0KPiA+ICAgICoNCj4gPiAgICAqIFJlcHJl
c2VudHMgYSBoZWFwIG9mIG1lbW9yeSBmcm9tIHdoaWNoIGJ1ZmZlcnMgY2FuIGJlIG1hZGUuDQo+
ID4gICAgKi8NCj4gPiBAQCAtNDAsNiArNDMsOCBAQCBzdHJ1Y3QgZG1hX2hlYXAgew0KPiA+ICAg
ICAgIGRldl90IGhlYXBfZGV2dDsNCj4gPiAgICAgICBzdHJ1Y3QgbGlzdF9oZWFkIGxpc3Q7DQo+
ID4gICAgICAgc3RydWN0IGNkZXYgaGVhcF9jZGV2Ow0KPiA+ICsgICAgIGludCBtaW5vcjsNCj4g
PiArICAgICBzdHJ1Y3Qga3JlZiByZWZjb3VudDsNCj4gPiAgIH07DQo+ID4NCj4gPiAgIHN0YXRp
YyBMSVNUX0hFQUQoaGVhcF9saXN0KTsNCj4gPiBAQCAtMjA1LDcgKzIxMCw2IEBAIHN0cnVjdCBk
bWFfaGVhcCAqZG1hX2hlYXBfYWRkKGNvbnN0IHN0cnVjdCBkbWFfaGVhcF9leHBvcnRfaW5mbyAq
ZXhwX2luZm8pDQo+ID4gICB7DQo+ID4gICAgICAgc3RydWN0IGRtYV9oZWFwICpoZWFwLCAqaCwg
KmVycl9yZXQ7DQo+ID4gICAgICAgc3RydWN0IGRldmljZSAqZGV2X3JldDsNCj4gPiAtICAgICB1
bnNpZ25lZCBpbnQgbWlub3I7DQo+ID4gICAgICAgaW50IHJldDsNCj4gPg0KPiA+ICAgICAgIGlm
ICghZXhwX2luZm8tPm5hbWUgfHwgIXN0cmNtcChleHBfaW5mby0+bmFtZSwgIiIpKSB7DQo+ID4g
QEAgLTIyMiwxMiArMjI2LDEzIEBAIHN0cnVjdCBkbWFfaGVhcCAqZG1hX2hlYXBfYWRkKGNvbnN0
IHN0cnVjdCBkbWFfaGVhcF9leHBvcnRfaW5mbyAqZXhwX2luZm8pDQo+ID4gICAgICAgaWYgKCFo
ZWFwKQ0KPiA+ICAgICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7DQo+ID4NCj4g
PiArICAgICBrcmVmX2luaXQoJmhlYXAtPnJlZmNvdW50KTsNCj4gPiAgICAgICBoZWFwLT5uYW1l
ID0gZXhwX2luZm8tPm5hbWU7DQo+ID4gICAgICAgaGVhcC0+b3BzID0gZXhwX2luZm8tPm9wczsN
Cj4gPiAgICAgICBoZWFwLT5wcml2ID0gZXhwX2luZm8tPnByaXY7DQo+ID4NCj4gPiAgICAgICAv
KiBGaW5kIHVudXNlZCBtaW5vciBudW1iZXIgKi8NCj4gPiAtICAgICByZXQgPSB4YV9hbGxvYygm
ZG1hX2hlYXBfbWlub3JzLCAmbWlub3IsIGhlYXAsDQo+ID4gKyAgICAgcmV0ID0geGFfYWxsb2Mo
JmRtYV9oZWFwX21pbm9ycywgJmhlYXAtPm1pbm9yLCBoZWFwLA0KPiA+ICAgICAgICAgICAgICAg
ICAgICAgIFhBX0xJTUlUKDAsIE5VTV9IRUFQX01JTk9SUyAtIDEpLCBHRlBfS0VSTkVMKTsNCj4g
PiAgICAgICBpZiAocmV0IDwgMCkgew0KPiA+ICAgICAgICAgICAgICAgcHJfZXJyKCJkbWFfaGVh
cDogVW5hYmxlIHRvIGdldCBtaW5vciBudW1iZXIgZm9yIGhlYXBcbiIpOw0KPiA+IEBAIC0yMzYs
NyArMjQxLDcgQEAgc3RydWN0IGRtYV9oZWFwICpkbWFfaGVhcF9hZGQoY29uc3Qgc3RydWN0IGRt
YV9oZWFwX2V4cG9ydF9pbmZvICpleHBfaW5mbykNCj4gPiAgICAgICB9DQo+ID4NCj4gPiAgICAg
ICAvKiBDcmVhdGUgZGV2aWNlICovDQo+ID4gLSAgICAgaGVhcC0+aGVhcF9kZXZ0ID0gTUtERVYo
TUFKT1IoZG1hX2hlYXBfZGV2dCksIG1pbm9yKTsNCj4gPiArICAgICBoZWFwLT5oZWFwX2RldnQg
PSBNS0RFVihNQUpPUihkbWFfaGVhcF9kZXZ0KSwgaGVhcC0+bWlub3IpOw0KPiA+DQo+ID4gICAg
ICAgY2Rldl9pbml0KCZoZWFwLT5oZWFwX2NkZXYsICZkbWFfaGVhcF9mb3BzKTsNCj4gPiAgICAg
ICByZXQgPSBjZGV2X2FkZCgmaGVhcC0+aGVhcF9jZGV2LCBoZWFwLT5oZWFwX2RldnQsIDEpOw0K
PiA+IEBAIC0yODAsMTIgKzI4NSwzNyBAQCBzdHJ1Y3QgZG1hX2hlYXAgKmRtYV9oZWFwX2FkZChj
b25zdCBzdHJ1Y3QgZG1hX2hlYXBfZXhwb3J0X2luZm8gKmV4cF9pbmZvKQ0KPiA+ICAgZXJyMjoN
Cj4gPiAgICAgICBjZGV2X2RlbCgmaGVhcC0+aGVhcF9jZGV2KTsNCj4gPiAgIGVycjE6DQo+ID4g
LSAgICAgeGFfZXJhc2UoJmRtYV9oZWFwX21pbm9ycywgbWlub3IpOw0KPiA+ICsgICAgIHhhX2Vy
YXNlKCZkbWFfaGVhcF9taW5vcnMsIGhlYXAtPm1pbm9yKTsNCj4gPiAgIGVycjA6DQo+ID4gICAg
ICAga2ZyZWUoaGVhcCk7DQo+ID4gICAgICAgcmV0dXJuIGVycl9yZXQ7DQo+ID4gICB9DQo+ID4N
Cj4gPiArc3RhdGljIHZvaWQgZG1hX2hlYXBfcmVsZWFzZShzdHJ1Y3Qga3JlZiAqcmVmKQ0KPiA+
ICt7DQo+ID4gKyAgICAgc3RydWN0IGRtYV9oZWFwICpoZWFwID0gY29udGFpbmVyX29mKHJlZiwg
c3RydWN0IGRtYV9oZWFwLCByZWZjb3VudCk7DQo+ID4gKw0KPiA+ICsgICAgIC8qIE5vdGUsIHdl
IGFscmVhZHkgaG9sZGluZyB0aGUgaGVhcF9saXN0X2xvY2sgaGVyZSAqLw0KPiA+ICsgICAgIGxp
c3RfZGVsKCZoZWFwLT5saXN0KTsNCj4gPiArDQo+ID4gKyAgICAgZGV2aWNlX2Rlc3Ryb3koZG1h
X2hlYXBfY2xhc3MsIGhlYXAtPmhlYXBfZGV2dCk7DQo+ID4gKyAgICAgY2Rldl9kZWwoJmhlYXAt
PmhlYXBfY2Rldik7DQo+ID4gKyAgICAgeGFfZXJhc2UoJmRtYV9oZWFwX21pbm9ycywgaGVhcC0+
bWlub3IpOw0KPg0KPiBZb3UgY2FuIGp1c3QgdXNlIE1JTk9SKGhlYXAtPmhlYXBfZGV2dCkgaGVy
ZSBpbnN0ZWFkLg0KPg0KR290IGl0LCB0aGFua3MuDQoNCj4gPiArDQo+ID4gKyAgICAga2ZyZWUo
aGVhcCk7DQo+ID4gK30NCj4gPiArDQo+ID4gK3ZvaWQgZG1hX2hlYXBfcHV0KHN0cnVjdCBkbWFf
aGVhcCAqaCkNCj4gPiArew0KPiA+ICsgICAgIC8qDQo+ID4gKyAgICAgICogVGFrZSB0aGUgaGVh
cF9saXN0X2xvY2sgbm93IHRvIGF2b2lkIHJhY2luZyB3aXRoIGNvZGUNCj4gPiArICAgICAgKiBz
Y2FubmluZyB0aGUgbGlzdCBhbmQgdGhlbiB0YWtpbmcgYSBrcmVmLg0KPiA+ICsgICAgICAqLw0K
Pg0KPiBUaGlzIGlzIHVzdWFsbHkgY29uc2lkZXJlZCBhIGJhZCBpZGVhIHNpbmNlIGl0IG1ha2Vz
IHRoZSBrcmVmIGFwcHJvYWNoDQo+IHN1cGVyZmx1b3VzLg0KPg0KPiBUaGVyZSBhcmUgbXVsdGlw
bGUgcG9zc2liaWxpdGllcyBob3cgaGFuZGxlIHRoaXMsIHRoZSBtb3N0IGNvbW1vbiBvbmUgaXMN
Cj4gdG8gdXNlIGtyZWZfZ2V0X3VubGVzc196ZXJvKCkgaW4geW91ciBsaXN0IHRyYXZlcnNhbCBj
b2RlIGFuZCBpZ25vcmUgdGhlDQo+IGVudHJ5IHdoZW4gdGhhdCBmYWlscy4NCj4NCj4gQWx0ZXJu
YXRpdmVseSB5b3UgY291bGQgdXNlIGtyZWZfcHV0X211dGV4KCkgaW5zdGVhZC4gVGhpcyBnaXZl
cyB5b3UgdGhlDQo+IHNhbWUgZnVuY3Rpb25hbGl0eSBhcyB0aGlzIGhlcmUsIGJ1dCBhcyBmYXIg
YXMgSSBrbm93IGl0J3Mgbm9ybWFsbHkgb25seQ0KPiB1c2VkIGluIGEgY291cGxlIG9mIHNwZWNp
YWwgY2FzZXMuDQo+DQpPaywgSSdsbCBtb3ZlIHRoaXMgbXV0ZXggYWNxdWlzaXRpb24gdG8gZG1h
X2hlYXBfcmVsZWFzZSBzbyB0aGF0IGl0DQpndWFyZHMganVzdCB0aGUgbGlzdF9kZWwsIGFuZCBj
aGFuZ2UgZG1hX2hlYXBfZmluZCB0byB1c2UNCmtyZWZfZ2V0X3VubGVzc196ZXJvLiBUaGFua3Mu
DQoNCj4gPiArICAgICBtdXRleF9sb2NrKCZoZWFwX2xpc3RfbG9jayk7DQo+ID4gKyAgICAga3Jl
Zl9wdXQoJmgtPnJlZmNvdW50LCBkbWFfaGVhcF9yZWxlYXNlKTsNCj4gPiArICAgICBtdXRleF91
bmxvY2soJmhlYXBfbGlzdF9sb2NrKTsNCj4gPiArfQ0KPiA+ICsNCj4gPiAgIHN0YXRpYyBjaGFy
ICpkbWFfaGVhcF9kZXZub2RlKGNvbnN0IHN0cnVjdCBkZXZpY2UgKmRldiwgdW1vZGVfdCAqbW9k
ZSkNCj4gPiAgIHsNCj4gPiAgICAgICByZXR1cm4ga2FzcHJpbnRmKEdGUF9LRVJORUwsICJkbWFf
aGVhcC8lcyIsIGRldl9uYW1lKGRldikpOw0KPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4
L2RtYS1oZWFwLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1oZWFwLmgNCj4gPiBpbmRleCBjN2MyOWI3
MjRhZDYuLmYzYzY3ODg5MmM1YyAxMDA2NDQNCj4gPiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1o
ZWFwLmgNCj4gPiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1oZWFwLmgNCj4gPiBAQCAtNjQsNCAr
NjQsMTAgQEAgY29uc3QgY2hhciAqZG1hX2hlYXBfZ2V0X25hbWUoc3RydWN0IGRtYV9oZWFwICpo
ZWFwKTsNCj4gPiAgICAqLw0KPiA+ICAgc3RydWN0IGRtYV9oZWFwICpkbWFfaGVhcF9hZGQoY29u
c3Qgc3RydWN0IGRtYV9oZWFwX2V4cG9ydF9pbmZvICpleHBfaW5mbyk7DQo+ID4NCj4gPiArLyoq
DQo+ID4gKyAqIGRtYV9oZWFwX3B1dCAtIGRyb3BzIGEgcmVmZXJlbmNlIHRvIGEgZG1hYnVmIGhl
YXAsIHBvdGVudGlhbGx5IGZyZWVpbmcgaXQNCj4gPiArICogQGhlYXA6IHRoZSBoZWFwIHdob3Nl
IHJlZmVyZW5jZSBjb3VudCB0byBkZWNyZW1lbnQNCj4gPiArICovDQo+DQo+IFBsZWFzZSBkb24n
dCBhZGQga2VybmVsZG9jIHRvIHRoZSBkZWZpbml0aW9uLCBhZGQgaXQgdG8gdGhlDQo+IGltcGxl
bWVudGF0aW9uIG9mIHRoZSBmdW5jdGlvbi4NCj4NCldpbGwgZml4Lg0KDQoNCg0KDQo+IFJlZ2Fy
ZHMsDQo+IENocmlzdGlhbi4NCj4NCj4gPiArdm9pZCBkbWFfaGVhcF9wdXQoc3RydWN0IGRtYV9o
ZWFwICpoZWFwKTsNCj4gPiArDQo+ID4gICAjZW5kaWYgLyogX0RNQV9IRUFQU19IICovDQo+DQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
