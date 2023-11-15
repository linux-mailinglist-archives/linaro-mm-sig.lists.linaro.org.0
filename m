Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CA27ED817
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Nov 2023 00:23:38 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A8D3240F2D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Nov 2023 23:23:37 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	by lists.linaro.org (Postfix) with ESMTPS id 7396940EBF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Nov 2023 23:23:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b="hEbwq/3n";
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of jkardatzke@google.com designates 209.85.214.171 as permitted sender) smtp.mailfrom=jkardatzke@google.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-1cc30de471dso61845ad.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Nov 2023 15:23:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1700090598; x=1700695398; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ovisp4W0+ERVnEpLBxErrb/LVokI42Qjeftj4bEI+VQ=;
        b=hEbwq/3nNGbJKWsO4vsF+FuJ4cB6LHjNUEgxAFYZ3esqse31knLDpgJ4YAgFGPQZft
         ZvTBmOLNWFpYTy6UDHXDJ4bCfrTWMlqDzVfjx3/WLRwNvtjs5r39gTZdPUrmcbDbuk4n
         bdDLgJozHu+9ASCehRhdH+eB8uL56rCalh9vBBUMsOGKy4yPjVJfdP3YX/A7lUsuZQqO
         MnVA1ltJd/d20KWJrgnc538sb+Qer7M/4Gweo/Nh8CulujTEroCSwspblTRBtS58KEqt
         jTqHFrE+uQ6OeC+DmOKudL4bCcmRvvPGQOWvBPdjZE5qU5uTu2IuhndFPdukM0oBcCOd
         aDpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700090598; x=1700695398;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ovisp4W0+ERVnEpLBxErrb/LVokI42Qjeftj4bEI+VQ=;
        b=ot9lJPqOdQvZ69m1nY28rSWAAxNYOq2FSoOd49Wlp06LqQ21gPkVscTzO4CKOoZQBM
         GF4Xv++M2Uaey8bKFteHoacczBOfSnr6tcnRzCI4cYHroqquZPtbmKUYm3clJU+ZP8rJ
         4FXO/z68V6joeNG0WSsyvb875835OJ50b9yFuc+o2PlxHTgaZskxN6XvxaBbT7sctlo+
         /FdW1WOSPDETLynryzurBEStgmivm2/GQ11P0rbCXdswLqGQMLGbNSY9vI/nEbImy/2V
         7eiCMgJv88RuFZ98435AFYoniBBm720tA3U9ggf6kdQj1PWNPIYuQyuSTkKrNEGNRunV
         PWTQ==
X-Gm-Message-State: AOJu0Yy13x7LpbPbyg7plM8inFxq6+LXV1HHGohXNIlLFziLE8F+0K60
	Ko/Xbxi34i3xoU6vjS+ONg6OHjp2F5GzcnWTTQft
X-Google-Smtp-Source: AGHT+IErsHMGbRATNNKpz2Dt8JZ8b5ED9aDbgRj3Xs2d6cY3G6zsC74jYP7/fSZp+oEGV6/LrmKC5ZGMy/uRFCzoFYI=
X-Received: by 2002:a17:902:e74f:b0:1bd:9c78:8031 with SMTP id
 p15-20020a170902e74f00b001bd9c788031mr69374plf.9.1700090598298; Wed, 15 Nov
 2023 15:23:18 -0800 (PST)
MIME-Version: 1.0
References: <20231111111559.8218-1-yong.wu@mediatek.com> <20231111111559.8218-4-yong.wu@mediatek.com>
In-Reply-To: <20231111111559.8218-4-yong.wu@mediatek.com>
From: Jeffrey Kardatzke <jkardatzke@google.com>
Date: Wed, 15 Nov 2023 15:23:06 -0800
Message-ID: <CA+ddPcON2gBOsFk4KZS-tEFLKWxg6jH8Kf_xDObXMKbR=N+gzg@mail.gmail.com>
To: Yong Wu <yong.wu@mediatek.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7396940EBF
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.214.171:from];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,amd.com,gmail.com,collabora.com,arm.com,google.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,mediatek.com,quicinc.com,ndufresne.ca];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: G2V2HT7GYB44R3LI53GEXPDHP42IGH6S
X-Message-ID-Hash: G2V2HT7GYB44R3LI53GEXPDHP42IGH6S
X-MailFrom: jkardatzke@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rob Herring <robh+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Matthias Brugger <matthias.bgg@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com, Vijayanand Jitta <quic_vjitta@quicinc.com>, Joakim Bech <joakim.bech@linaro.org>, Nicolas Dufresne <nicolas@ndufresne.ca>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/8] dma-buf: heaps: secure_heap: Initialize tee session
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/G2V2HT7GYB44R3LI53GEXPDHP42IGH6S/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RXZlcnl0aGluZyBpbiB0aGlzIHBhdGNoIHNldCBzaG91bGQgbW92ZSBpbnRvIHRoZSBNVEsgc3Bl
Y2lmaWMNCmltcGxlbWVudGF0aW9uIEkgc3VnZ2VzdGVkIGluIHBhdGNoIDEgKHNlY3VyZV9oZWFw
X210ay5jKQ0KDQpPbiBTYXQsIE5vdiAxMSwgMjAyMyBhdCAzOjE34oCvQU0gWW9uZyBXdSA8eW9u
Zy53dUBtZWRpYXRlay5jb20+IHdyb3RlOg0KPg0KPiBUaGUgVEVFIHByb2JlIGxhdGVyIHRoYW4g
ZG1hLWJ1ZiBoZWFwLCBhbmQgUFJPQkVfREVERVIgZG9lc24ndCB3b3JrDQo+IGhlcmUgc2luY2Ug
dGhpcyBpcyBub3QgYSBwbGF0Zm9ybSBkcml2ZXIsIHRoZXJlZm9yZSBpbml0aWFsaXplIHRoZSBU
RUUNCj4gY29udGV4dC9zZXNzaW9uIHdoaWxlIHdlIGFsbG9jYXRlIHRoZSBmaXJzdCBzZWN1cmUg
YnVmZmVyLg0KPg0KPiBBZGQgb3VyIHNwZWNpYWwgVVVJRCBhbmQgdGVlIHR5cGUgaW4gdGhlIHBy
aXZhdGUgZGF0YS4NCj4NCj4gSWYgdGhlIHV1aWQgaXMgemVybywgaXQgbWVhbnMgdGhhdCBpdCBk
b2Vzbid0IGVudGVyIFRFRSB0byBwcm90ZWN0IHRoZQ0KPiBidWZmZXIsIHRoZXJlIG1heSBiZSBv
dGhlciB3YXlzIHRvIHByb3RlY3QgdGhlIGJ1ZmZlci4NCj4NCj4gQWxsIHRoZSBNVEsgY2hyb21l
IHByb2plY3RzIHVzZSB0aGlzIFVVSUQuIFRoZSBVVUlEIGlzIG9ubHkgdXNlZCBpbiB0aGUNCj4g
a2VybmVsc3BhY2Ugd2hpbGUgdXNlcnNwYWNlIG5ldmVyIHVzZSBpdC4gVGhlIHVzZXJzcGFjZSBj
b3VsZCBhbGxvY2F0ZSB0aGUNCj4gc2VjdXJlIG1lbW9yeSB2aWEgdGhlIGV4aXN0aW5nIGRtYS1i
dWYgaW9jdGwuDQo+DQo+IFNpZ25lZC1vZmYtYnk6IFlvbmcgV3UgPHlvbmcud3VAbWVkaWF0ZWsu
Y29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9zZWN1cmVfaGVhcC5jIHwgNzUg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA3NSBpbnNl
cnRpb25zKCspDQo+DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvaGVhcHMvc2VjdXJl
X2hlYXAuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9zZWN1cmVfaGVhcC5jDQo+IGluZGV4IDg3
YWMyMzA3MmU5ZS4uMmEwMzdmYzU0MDA0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYv
aGVhcHMvc2VjdXJlX2hlYXAuYw0KPiArKysgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvc2VjdXJl
X2hlYXAuYw0KPiBAQCAtMTAsNiArMTAsMTIgQEANCj4gICNpbmNsdWRlIDxsaW51eC9lcnIuaD4N
Cj4gICNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4NCj4gICNpbmNsdWRlIDxsaW51eC9zbGFiLmg+
DQo+ICsjaW5jbHVkZSA8bGludXgvdGVlX2Rydi5oPg0KPiArI2luY2x1ZGUgPGxpbnV4L3V1aWQu
aD4NCj4gKw0KPiArI2RlZmluZSBUWl9UQV9NRU1fVVVJRF9NVEsgICAgICAgICAgICAgIjQ0Nzc1
ODhhLTg0NzYtMTFlMi1hZDE1LWU0MWYxMzkwZDY3NiINCj4gKw0KPiArI2RlZmluZSBURUVfUEFS
QU1fTlVNICAgICAgICAgICAgICAgICAgNA0KPg0KPiAgZW51bSBzZWN1cmVfbWVtb3J5X3R5cGUg
ew0KPiAgICAgICAgIC8qDQo+IEBAIC0yNyw2ICszMyw5IEBAIHN0cnVjdCBzZWN1cmVfYnVmZmVy
IHsNCj4gIHN0cnVjdCBzZWN1cmVfaGVhcDsNCj4NCj4gIHN0cnVjdCBzZWN1cmVfaGVhcF9wcnZf
ZGF0YSB7DQo+ICsgICAgICAgY29uc3QgY2hhciAgICAgICAgICAgICAgICAgICAgICAqdXVpZDsN
Cj4gKyAgICAgICBjb25zdCBpbnQgICAgICAgICAgICAgICAgICAgICAgIHRlZV9pbXBsX2lkOw0K
PiArDQo+ICAgICAgICAgaW50ICAgICAoKm1lbW9yeV9hbGxvYykoc3RydWN0IHNlY3VyZV9oZWFw
ICpzZWNfaGVhcCwgc3RydWN0IHNlY3VyZV9idWZmZXIgKnNlY19idWYpOw0KPiAgICAgICAgIHZv
aWQgICAgKCptZW1vcnlfZnJlZSkoc3RydWN0IHNlY3VyZV9oZWFwICpzZWNfaGVhcCwgc3RydWN0
IHNlY3VyZV9idWZmZXIgKnNlY19idWYpOw0KPg0KPiBAQCAtMzksOSArNDgsNjIgQEAgc3RydWN0
IHNlY3VyZV9oZWFwIHsNCj4gICAgICAgICBjb25zdCBjaGFyICAgICAgICAgICAgICAgICAgICAg
ICpuYW1lOw0KPiAgICAgICAgIGNvbnN0IGVudW0gc2VjdXJlX21lbW9yeV90eXBlICAgbWVtX3R5
cGU7DQo+DQo+ICsgICAgICAgc3RydWN0IHRlZV9jb250ZXh0ICAgICAgICAgICAgICAqdGVlX2N0
eDsNCj4gKyAgICAgICB1MzIgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRlZV9zZXNzaW9u
Ow0KPiArDQo+ICAgICAgICAgY29uc3Qgc3RydWN0IHNlY3VyZV9oZWFwX3Bydl9kYXRhICpkYXRh
Ow0KPiAgfTsNCj4NCj4gK3N0YXRpYyBpbnQgdGVlX2N0eF9tYXRjaChzdHJ1Y3QgdGVlX2lvY3Rs
X3ZlcnNpb25fZGF0YSAqdmVyLCBjb25zdCB2b2lkICpkYXRhKQ0KPiArew0KPiArICAgICAgIGNv
bnN0IHN0cnVjdCBzZWN1cmVfaGVhcF9wcnZfZGF0YSAqZCA9IGRhdGE7DQo+ICsNCj4gKyAgICAg
ICByZXR1cm4gdmVyLT5pbXBsX2lkID09IGQtPnRlZV9pbXBsX2lkOw0KPiArfQ0KPiArDQo+ICtz
dGF0aWMgaW50IHNlY3VyZV9oZWFwX3RlZV9zZXNzaW9uX2luaXQoc3RydWN0IHNlY3VyZV9oZWFw
ICpzZWNfaGVhcCkNCj4gK3sNCj4gKyAgICAgICBzdHJ1Y3QgdGVlX3BhcmFtIHRfcGFyYW1bVEVF
X1BBUkFNX05VTV0gPSB7MH07DQo+ICsgICAgICAgc3RydWN0IHRlZV9pb2N0bF9vcGVuX3Nlc3Np
b25fYXJnIGFyZyA9IHswfTsNCj4gKyAgICAgICBjb25zdCBzdHJ1Y3Qgc2VjdXJlX2hlYXBfcHJ2
X2RhdGEgKmRhdGEgPSBzZWNfaGVhcC0+ZGF0YTsNCj4gKyAgICAgICB1dWlkX3QgdGFfbWVtX3V1
aWQ7DQo+ICsgICAgICAgaW50IHJldDsNCj4gKw0KPiArICAgICAgIHNlY19oZWFwLT50ZWVfY3R4
ID0gdGVlX2NsaWVudF9vcGVuX2NvbnRleHQoTlVMTCwgdGVlX2N0eF9tYXRjaCwgZGF0YSwgTlVM
TCk7DQo+ICsgICAgICAgaWYgKElTX0VSUihzZWNfaGVhcC0+dGVlX2N0eCkpIHsNCj4gKyAgICAg
ICAgICAgICAgIHByX2Vycl9vbmNlKCIlczogb3BlbiBjb250ZXh0IGZhaWxlZCwgcmV0PSVsZFxu
Iiwgc2VjX2hlYXAtPm5hbWUsDQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICBQVFJfRVJS
KHNlY19oZWFwLT50ZWVfY3R4KSk7DQo+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsN
Cj4gKyAgICAgICB9DQo+ICsNCj4gKyAgICAgICBhcmcubnVtX3BhcmFtcyA9IFRFRV9QQVJBTV9O
VU07DQo+ICsgICAgICAgYXJnLmNsbnRfbG9naW4gPSBURUVfSU9DVExfTE9HSU5fUFVCTElDOw0K
PiArICAgICAgIHJldCA9IHV1aWRfcGFyc2UoZGF0YS0+dXVpZCwgJnRhX21lbV91dWlkKTsNCj4g
KyAgICAgICBpZiAocmV0KQ0KPiArICAgICAgICAgICAgICAgZ290byBjbG9zZV9jb250ZXh0Ow0K
PiArICAgICAgIG1lbWNweSgmYXJnLnV1aWQsICZ0YV9tZW1fdXVpZC5iLCBzaXplb2YodGFfbWVt
X3V1aWQpKTsNCj4gKw0KPiArICAgICAgIHJldCA9IHRlZV9jbGllbnRfb3Blbl9zZXNzaW9uKHNl
Y19oZWFwLT50ZWVfY3R4LCAmYXJnLCB0X3BhcmFtKTsNCj4gKyAgICAgICBpZiAocmV0IDwgMCB8
fCBhcmcucmV0KSB7DQo+ICsgICAgICAgICAgICAgICBwcl9lcnJfb25jZSgiJXM6IG9wZW4gc2Vz
c2lvbiBmYWlsZWQsIHJldD0lZDolZFxuIiwNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
IHNlY19oZWFwLT5uYW1lLCByZXQsIGFyZy5yZXQpOw0KPiArICAgICAgICAgICAgICAgcmV0ID0g
LUVJTlZBTDsNCj4gKyAgICAgICAgICAgICAgIGdvdG8gY2xvc2VfY29udGV4dDsNCj4gKyAgICAg
ICB9DQo+ICsgICAgICAgc2VjX2hlYXAtPnRlZV9zZXNzaW9uID0gYXJnLnNlc3Npb247DQo+ICsg
ICAgICAgcmV0dXJuIDA7DQo+ICsNCj4gK2Nsb3NlX2NvbnRleHQ6DQo+ICsgICAgICAgdGVlX2Ns
aWVudF9jbG9zZV9jb250ZXh0KHNlY19oZWFwLT50ZWVfY3R4KTsNCj4gKyAgICAgICByZXR1cm4g
cmV0Ow0KPiArfQ0KPiArDQo+ICsvKiBUaGUgbWVtb3J5IGFsbG9jYXRpbmcgaXMgd2l0aGluIHRo
ZSBURUUuICovDQo+ICtjb25zdCBzdHJ1Y3Qgc2VjdXJlX2hlYXBfcHJ2X2RhdGEgbXRrX3NlY19t
ZW1fZGF0YSA9IHsNCj4gKyAgICAgICAudXVpZCAgICAgICAgICAgICAgICAgICA9IFRaX1RBX01F
TV9VVUlEX01USywNCj4gKyAgICAgICAudGVlX2ltcGxfaWQgICAgICAgICAgICA9IFRFRV9JTVBM
X0lEX09QVEVFLA0KPiArfTsNCj4gKw0KPiAgc3RhdGljIGludCBzZWN1cmVfaGVhcF9zZWN1cmVf
bWVtb3J5X2FsbG9jYXRlKHN0cnVjdCBzZWN1cmVfaGVhcCAqc2VjX2hlYXAsDQo+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3Qgc2VjdXJlX2J1ZmZl
ciAqc2VjX2J1ZikNCj4gIHsNCj4gQEAgLTg0LDExICsxNDYsMjMgQEAgc2VjdXJlX2hlYXBfYWxs
b2NhdGUoc3RydWN0IGRtYV9oZWFwICpoZWFwLCB1bnNpZ25lZCBsb25nIHNpemUsDQo+ICAgICAg
ICAgICAgICAgICAgICAgIHVuc2lnbmVkIGxvbmcgZmRfZmxhZ3MsIHVuc2lnbmVkIGxvbmcgaGVh
cF9mbGFncykNCj4gIHsNCj4gICAgICAgICBzdHJ1Y3Qgc2VjdXJlX2hlYXAgKnNlY19oZWFwID0g
ZG1hX2hlYXBfZ2V0X2RydmRhdGEoaGVhcCk7DQo+ICsgICAgICAgY29uc3Qgc3RydWN0IHNlY3Vy
ZV9oZWFwX3Bydl9kYXRhICpkYXRhID0gc2VjX2hlYXAtPmRhdGE7DQo+ICAgICAgICAgc3RydWN0
IHNlY3VyZV9idWZmZXIgKnNlY19idWY7DQo+ICAgICAgICAgREVGSU5FX0RNQV9CVUZfRVhQT1JU
X0lORk8oZXhwX2luZm8pOw0KPiAgICAgICAgIHN0cnVjdCBkbWFfYnVmICpkbWFidWY7DQo+ICAg
ICAgICAgaW50IHJldDsNCj4NCj4gKyAgICAgICAvKg0KPiArICAgICAgICAqIElmIHV1aWQgaXMg
dmFsaWQsIEl0IHJlcXVpcmVzIGVudGVyIFRFRSB0byBwcm90ZWN0IGJ1ZmZlcnMuIEhvd2V2ZXIN
Cj4gKyAgICAgICAgKiBURUUgcHJvYmUgbWF5IGJlIGxhdGUuIEluaXRpYWxpemUgdGhlIHNlY3Vy
ZSBzZXNzaW9uIHRoZSBmaXJzdCB0aW1lDQo+ICsgICAgICAgICogd2UgcmVxdWVzdCB0aGUgc2Vj
dXJlIGJ1ZmZlci4NCj4gKyAgICAgICAgKi8NCj4gKyAgICAgICBpZiAoZGF0YS0+dXVpZCAmJiAh
c2VjX2hlYXAtPnRlZV9zZXNzaW9uKSB7DQo+ICsgICAgICAgICAgICAgICByZXQgPSBzZWN1cmVf
aGVhcF90ZWVfc2Vzc2lvbl9pbml0KHNlY19oZWFwKTsNCj4gKyAgICAgICAgICAgICAgIGlmIChy
ZXQpDQo+ICsgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBFUlJfUFRSKHJldCk7DQo+ICsg
ICAgICAgfQ0KPiArDQo+ICAgICAgICAgc2VjX2J1ZiA9IGt6YWxsb2Moc2l6ZW9mKCpzZWNfYnVm
KSwgR0ZQX0tFUk5FTCk7DQo+ICAgICAgICAgaWYgKCFzZWNfYnVmKQ0KPiAgICAgICAgICAgICAg
ICAgcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7DQo+IEBAIC0xMjcsNiArMjAxLDcgQEAgc3RhdGlj
IHN0cnVjdCBzZWN1cmVfaGVhcCBzZWN1cmVfaGVhcHNbXSA9IHsNCj4gICAgICAgICB7DQo+ICAg
ICAgICAgICAgICAgICAubmFtZSAgICAgICAgICAgPSAic2VjdXJlX210a19jbSIsDQo+ICAgICAg
ICAgICAgICAgICAubWVtX3R5cGUgICAgICAgPSBTRUNVUkVfTUVNT1JZX1RZUEVfTVRLX0NNX1Ra
LA0KPiArICAgICAgICAgICAgICAgLmRhdGEgICAgICAgICAgID0gJm10a19zZWNfbWVtX2RhdGEs
DQo+ICAgICAgICAgfSwNCj4gIH07DQo+DQo+IC0tDQo+IDIuMjUuMQ0KPg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
