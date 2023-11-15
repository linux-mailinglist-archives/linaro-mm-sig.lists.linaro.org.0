Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A97437ED827
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Nov 2023 00:26:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A7B1440F2D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Nov 2023 23:26:38 +0000 (UTC)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	by lists.linaro.org (Postfix) with ESMTPS id D01A33F0A5
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Nov 2023 23:26:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=eEHEvtQo;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of jkardatzke@google.com designates 209.85.214.181 as permitted sender) smtp.mailfrom=jkardatzke@google.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-1cc209561c3so63845ad.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Nov 2023 15:26:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1700090783; x=1700695583; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KAFs8HHoQNrVkpTk2Xb6uh3p9ALW4pkggBRLwqVuKp8=;
        b=eEHEvtQoaWgfOawSiKG0FEzYNZJ1zzvpgnjBPslKQvCwY7Ef4sMgaamuP4HXf3h1aV
         LUkTzW8EH7X9XOgsYaC7NcfDG2WryVAqBGrXTrnq8kUxdlyrd0obqhoQb4Js8kVhSS+d
         UtPeB3nMXatns1cPPlKOPhyc7lOad/AKvoe4OJnYRvlKeNpY1ehnK+HXV5RcWl8wkjhn
         57sOJqYtVAj1sEZ/ypF2sFvH3qj7PNcDBXMx6dc8Q5byeF5j8AyCbOs3BlEXhtzWTc3k
         d0s+PYWIirrijd63frNQcpSEDq1eQE+DWO5ChEU9GVj/HHIBAFiK4e/8BGFLY37hiTZu
         Cj+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700090783; x=1700695583;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KAFs8HHoQNrVkpTk2Xb6uh3p9ALW4pkggBRLwqVuKp8=;
        b=QG0XF2064HeGt8HnzZYelHcI3o/yAlyvng/cuNewL0jZgh4pCEcUTfQa477nbIsDL9
         I7LVo68SthbAMoEkE9IDTUIk1Hrs7w6i0lIhtPqG73DNeA4XY+Dh28/MVVrFFl2eDbWJ
         9yrLKnzHid4FS1KZfdlAOaRnetcC+otHz9J1l33blX0hLCiXcGHKlhQ7w1zranVgQa/a
         TZiVNYdHJYACo8YvP1lwRdTpenER9FxXMExsCHabcXXAUQEgeD3rQuocCGzVs550pqUd
         AItnLxvwikdFe3tPlPlQz6c0Iy235gxv0Z/VIywxJ8EXqG4VXB4NEK6q6jsOT4yB6X3A
         GoLg==
X-Gm-Message-State: AOJu0YweoI/gnU+j2GUT+b9+R/KF1TWT7C8HwsK3Mv8BkUnjTP8VUyhG
	CZC6e/fniDWl73VT2LmfEOEytgbT0EuDNW3p5ALf
X-Google-Smtp-Source: AGHT+IGj+hC5mU9kET+8w2o2R4u5BSQRJN1vIsWLj2aFby+giajWEP2YT1Jlfo5UOZkuWR/w/W7j5Z6KHyHw0pRmcMA=
X-Received: by 2002:a17:902:c40d:b0:1cc:51d6:fb04 with SMTP id
 k13-20020a170902c40d00b001cc51d6fb04mr61228plk.26.1700090782696; Wed, 15 Nov
 2023 15:26:22 -0800 (PST)
MIME-Version: 1.0
References: <20231111111559.8218-1-yong.wu@mediatek.com> <20231111111559.8218-5-yong.wu@mediatek.com>
In-Reply-To: <20231111111559.8218-5-yong.wu@mediatek.com>
From: Jeffrey Kardatzke <jkardatzke@google.com>
Date: Wed, 15 Nov 2023 15:26:11 -0800
Message-ID: <CA+ddPcNDBSESjJSKiTwEpf_GydThrdh+KGnnXmTnYVmmnwZ83w@mail.gmail.com>
To: Yong Wu <yong.wu@mediatek.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D01A33F0A5
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.181:from];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[25];
	ARC_NA(0.00)[];
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
Message-ID-Hash: ZDL62NAU56WTLJ2BXDN7BBLY6YLQQYYN
X-Message-ID-Hash: ZDL62NAU56WTLJ2BXDN7BBLY6YLQQYYN
X-MailFrom: jkardatzke@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rob Herring <robh+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Matthias Brugger <matthias.bgg@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com, Vijayanand Jitta <quic_vjitta@quicinc.com>, Joakim Bech <joakim.bech@linaro.org>, Nicolas Dufresne <nicolas@ndufresne.ca>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 4/8] dma-buf: heaps: secure_heap: Add tee memory service call
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZDL62NAU56WTLJ2BXDN7BBLY6YLQQYYN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gU2F0LCBOb3YgMTEsIDIwMjMgYXQgMzoxN+KAr0FNIFlvbmcgV3UgPHlvbmcud3VAbWVkaWF0
ZWsuY29tPiB3cm90ZToNCj4NCj4gQWRkIFRFRSBzZXJ2aWNlIGNhbGwuIEluIHRoZSBjYXNlIG9m
IE1lZGlhVGVrLCBzZWN1cmUgbWVtb3J5IG1hbmFnZW1lbnQgaXMNCj4gbG9jYXRlZCB3aXRoaW4g
dGhlIFRFRS4gVGhlIGtlcm5lbCBqdXN0IG5lZWRzIHRvIHRlbGwgVEVFIHdoYXQgc2l6ZSBpdA0K
PiBuZWVkcyBhbmQgdGhlIFRFRSB3aWxsIHJldHVybiBhICJzZWN1cml0eSBoYW5kbGUiIHRvIGtl
cm5lbC4NCj4NCj4gVG8gYmUgY29uc2lzdGVudCB3aXRoIHRoZSBjbWEgaGVhcCBsYXRlciwgd2Ug
cHV0IHRoZSB0ZWUgb3BzIGludG8gdGhlIG9wcw0KPiBvZiBzZWN1cmVfdGhlX21lbW9yeS4NCj4N
Cj4gSXQgc2VlbXMgdGhhdCBzZWN1cmVfaGVhcF90ZWVfc2VydmljZV9jYWxsIGNvdWxkIGJlIGEg
bW9yZSBnZW5lcmFsDQo+IGludGVyZmFjZSwgYnV0IGl0IGNvdWxkIGJlIGEgbmV3IHRvcGljLg0K
Pg0KPiBTaWduZWQtb2ZmLWJ5OiBZb25nIFd1IDx5b25nLnd1QG1lZGlhdGVrLmNvbT4NCj4gLS0t
DQo+ICBkcml2ZXJzL2RtYS1idWYvaGVhcHMvc2VjdXJlX2hlYXAuYyB8IDk3ICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgOTcgaW5zZXJ0aW9ucygrKQ0K
Pg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3NlY3VyZV9oZWFwLmMgYi9k
cml2ZXJzL2RtYS1idWYvaGVhcHMvc2VjdXJlX2hlYXAuYw0KPiBpbmRleCAyYTAzN2ZjNTQwMDQu
LjA1MDYyYzE0ZTdjNyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3NlY3Vy
ZV9oZWFwLmMNCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3NlY3VyZV9oZWFwLmMNCj4g
QEAgLTE3LDYgKzE3LDI3IEBADQo+DQo+ICAjZGVmaW5lIFRFRV9QQVJBTV9OVU0gICAgICAgICAg
ICAgICAgICA0DQo+DQo+ICtlbnVtIHNlY3VyZV9idWZmZXJfdGVlX2NtZCB7IC8qIFBBUkFNIE5V
TSBhbHdheXMgaXMgNC4gKi8NCj4gKyAgICAgICAvKg0KPiArICAgICAgICAqIFRaQ01EX1NFQ01F
TV9aQUxMT0M6IEFsbG9jYXRlIHRoZSB6ZXJvZWQgc2VjdXJlIG1lbW9yeSBmcm9tIFRFRS4NCj4g
KyAgICAgICAgKg0KPiArICAgICAgICAqIFtpbl0gIHZhbHVlWzBdLmE6IFRoZSBidWZmZXIgc2l6
ZS4NCj4gKyAgICAgICAgKiAgICAgICB2YWx1ZVswXS5iOiBhbGlnbm1lbnQuDQo+ICsgICAgICAg
ICogW2luXSAgdmFsdWVbMV0uYTogZW51bSBzZWN1cmVfbWVtb3J5X3R5cGUuDQo+ICsgICAgICAg
ICogW291dF0gdmFsdWVbM10uYTogVGhlIHNlY3VyZSBoYW5kbGUuDQo+ICsgICAgICAgICovDQo+
ICsgICAgICAgVFpDTURfU0VDTUVNX1pBTExPQyA9IDAsDQo+ICsNCj4gKyAgICAgICAvKg0KPiAr
ICAgICAgICAqIFRaQ01EX1NFQ01FTV9GUkVFOiBGcmVlIHNlY3VyZSBtZW1vcnkuDQo+ICsgICAg
ICAgICoNCj4gKyAgICAgICAgKiBbaW5dICB2YWx1ZVswXS5hOiBUaGUgc2VjdXJlIGhhbmRsZSBv
ZiB0aGlzIGJ1ZmZlciwgSXQncyB2YWx1ZVszXS5hIG9mDQo+ICsgICAgICAgICogICAgICAgICAg
ICAgICAgICAgVFpDTURfU0VDTUVNX1pBTExPQy4NCj4gKyAgICAgICAgKiBbb3V0XSB2YWx1ZVsx
XS5hOiByZXR1cm4gdmFsdWUsIDAgbWVhbnMgc3VjY2Vzc2Z1bCwgb3RoZXJ3aXNlIGZhaWwuDQo+
ICsgICAgICAgICovDQo+ICsgICAgICAgVFpDTURfU0VDTUVNX0ZSRUUgPSAxLA0KPiArfTsNCj4g
Kw0KDQpUaGlzIHNob3VsZCBnbyBpbiB0aGUgTVRLIHNwZWNpZmljIGltcGxlbWVudGF0aW9uLg0K
DQo+ICBlbnVtIHNlY3VyZV9tZW1vcnlfdHlwZSB7DQo+ICAgICAgICAgLyoNCj4gICAgICAgICAg
KiBNZWRpYVRlayBzdGF0aWMgY2h1bmsgbWVtb3J5IGNhcnZlZCBvdXQgZm9yIFRydXN0Wm9uZS4g
VGhlIG1lbW9yeQ0KPiBAQCAtMjgsMTMgKzQ5LDI1IEBAIGVudW0gc2VjdXJlX21lbW9yeV90eXBl
IHsNCj4gIHN0cnVjdCBzZWN1cmVfYnVmZmVyIHsNCj4gICAgICAgICBzdHJ1Y3QgZG1hX2hlYXAg
ICAgICAgICAgICAgICAgICpoZWFwOw0KPiAgICAgICAgIHNpemVfdCAgICAgICAgICAgICAgICAg
ICAgICAgICAgc2l6ZTsNCj4gKyAgICAgICAvKg0KPiArICAgICAgICAqIFRoZSBzZWN1cmUgaGFu
ZGxlIGlzIGEgcmVmZXJlbmNlIHRvIGEgYnVmZmVyIHdpdGhpbiB0aGUgVEVFLCB0aGlzIGlzDQo+
ICsgICAgICAgICogYSB2YWx1ZSBnb3QgZnJvbSBURUUuDQo+ICsgICAgICAgICovDQo+ICsgICAg
ICAgdTMyICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzZWNfaGFuZGxlOw0KPiAgfTsNCg0K
Q2hhbmdlIHRoaXMgdG8gYSB1NjQgYW5kIHJlbmFtZSBpdCB0byAnc2VjdXJlX2FkZHJlc3MnLCBp
dCdzIHVwIHRvIHRoZQ0Kc3BlY2lmaWMgaW1wbGVtZW50YXRpb24gd2hhdCB0aGF0IHdvdWxkIGFj
dHVhbGx5IG1lYW4uDQoNCj4NCj4gKyNkZWZpbmUgVEVFX01FTV9DT01NQU5EX0lEX0JBU0VfTVRL
ICAgIDB4MTAwMDANCj4gKw0KTW92ZSB0aGlzIGludG8gdGhlIE1USyBzcGVjaWZpYyBpbXBsZW1l
bnRhdGlvbi4NCg0KPiAgc3RydWN0IHNlY3VyZV9oZWFwOw0KPg0KPiAgc3RydWN0IHNlY3VyZV9o
ZWFwX3Bydl9kYXRhIHsNCj4gICAgICAgICBjb25zdCBjaGFyICAgICAgICAgICAgICAgICAgICAg
ICp1dWlkOw0KPiAgICAgICAgIGNvbnN0IGludCAgICAgICAgICAgICAgICAgICAgICAgdGVlX2lt
cGxfaWQ7DQo+ICsgICAgICAgLyoNCj4gKyAgICAgICAgKiBEaWZmZXJlbnQgVEVFcyBtYXkgaW1w
bGVtZW50IGRpZmZlcmVudCBjb21tYW5kcywgYW5kIHRoaXMgcHJvdmlkZXMgYW4gb3Bwb3J0dW5p
dHkNCj4gKyAgICAgICAgKiBmb3IgVEVFcyB0byB1c2UgdGhlIHNhbWUgZW51bSBzZWN1cmVfYnVm
ZmVyX3RlZV9jbWQuDQo+ICsgICAgICAgICovDQo+ICsgICAgICAgY29uc3QgaW50ICAgICAgICAg
ICAgICAgICAgICAgICB0ZWVfY29tbWFuZF9pZF9iYXNlOw0KUmVtb3ZlIHRoaXMsIGl0IGNhbiBi
ZSBoYW5kbGVkIGluIHRoZSBNVEsgc3BlY2lmaWMgaW1wbGVtZW50YXRpb24uDQo+DQo+ICAgICAg
ICAgaW50ICAgICAoKm1lbW9yeV9hbGxvYykoc3RydWN0IHNlY3VyZV9oZWFwICpzZWNfaGVhcCwg
c3RydWN0IHNlY3VyZV9idWZmZXIgKnNlY19idWYpOw0KPiAgICAgICAgIHZvaWQgICAgKCptZW1v
cnlfZnJlZSkoc3RydWN0IHNlY3VyZV9oZWFwICpzZWNfaGVhcCwgc3RydWN0IHNlY3VyZV9idWZm
ZXIgKnNlY19idWYpOw0KPiBAQCAtOTgsMTAgKzEzMSw3NCBAQCBzdGF0aWMgaW50IHNlY3VyZV9o
ZWFwX3RlZV9zZXNzaW9uX2luaXQoc3RydWN0IHNlY3VyZV9oZWFwICpzZWNfaGVhcCkNCj4gICAg
ICAgICByZXR1cm4gcmV0Ow0KPiAgfQ0KPg0KPiArc3RhdGljIGludA0KPiArc2VjdXJlX2hlYXBf
dGVlX3NlcnZpY2VfY2FsbChzdHJ1Y3QgdGVlX2NvbnRleHQgKnRlZV9jdHgsIHUzMiBzZXNzaW9u
LA0KPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGludCBjb21tYW5kLCBz
dHJ1Y3QgdGVlX3BhcmFtICpwYXJhbXMpDQo+ICt7DQo+ICsgICAgICAgc3RydWN0IHRlZV9pb2N0
bF9pbnZva2VfYXJnIGFyZyA9IHswfTsNCj4gKyAgICAgICBpbnQgcmV0Ow0KPiArDQo+ICsgICAg
ICAgYXJnLm51bV9wYXJhbXMgPSBURUVfUEFSQU1fTlVNOw0KPiArICAgICAgIGFyZy5zZXNzaW9u
ID0gc2Vzc2lvbjsNCj4gKyAgICAgICBhcmcuZnVuYyA9IGNvbW1hbmQ7DQo+ICsNCj4gKyAgICAg
ICByZXQgPSB0ZWVfY2xpZW50X2ludm9rZV9mdW5jKHRlZV9jdHgsICZhcmcsIHBhcmFtcyk7DQo+
ICsgICAgICAgaWYgKHJldCA8IDAgfHwgYXJnLnJldCkgew0KPiArICAgICAgICAgICAgICAgcHJf
ZXJyKCIlczogY21kICVkIHJldCAlZDoleC5cbiIsIF9fZnVuY19fLCBjb21tYW5kLCByZXQsIGFy
Zy5yZXQpOw0KPiArICAgICAgICAgICAgICAgcmV0ID0gLUVPUE5PVFNVUFA7DQo+ICsgICAgICAg
fQ0KPiArICAgICAgIHJldHVybiByZXQ7DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyBpbnQgc2VjdXJl
X2hlYXBfdGVlX3NlY3VyZV9tZW1vcnkoc3RydWN0IHNlY3VyZV9oZWFwICpzZWNfaGVhcCwNCj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3Qgc2VjdXJlX2J1
ZmZlciAqc2VjX2J1ZikNCj4gK3sNCj4gKyAgICAgICBjb25zdCBzdHJ1Y3Qgc2VjdXJlX2hlYXBf
cHJ2X2RhdGEgKmRhdGEgPSBzZWNfaGVhcC0+ZGF0YTsNCj4gKyAgICAgICBzdHJ1Y3QgdGVlX3Bh
cmFtIHBhcmFtc1tURUVfUEFSQU1fTlVNXSA9IHswfTsNCj4gKyAgICAgICBpbnQgcmV0Ow0KPiAr
DQo+ICsgICAgICAgcGFyYW1zWzBdLmF0dHIgPSBURUVfSU9DVExfUEFSQU1fQVRUUl9UWVBFX1ZB
TFVFX0lOUFVUOw0KPiArICAgICAgIHBhcmFtc1swXS51LnZhbHVlLmEgPSBzZWNfYnVmLT5zaXpl
Ow0KPiArICAgICAgIHBhcmFtc1swXS51LnZhbHVlLmIgPSBQQUdFX1NJWkU7DQo+ICsgICAgICAg
cGFyYW1zWzFdLmF0dHIgPSBURUVfSU9DVExfUEFSQU1fQVRUUl9UWVBFX1ZBTFVFX0lOUFVUOw0K
PiArICAgICAgIHBhcmFtc1sxXS51LnZhbHVlLmEgPSBzZWNfaGVhcC0+bWVtX3R5cGU7DQo+ICsg
ICAgICAgcGFyYW1zWzJdLmF0dHIgPSBURUVfSU9DVExfUEFSQU1fQVRUUl9UWVBFX1ZBTFVFX0lO
UFVUOw0KPiArDQo+ICsgICAgICAgcGFyYW1zWzNdLmF0dHIgPSBURUVfSU9DVExfUEFSQU1fQVRU
Ul9UWVBFX1ZBTFVFX09VVFBVVDsNCj4gKyAgICAgICByZXQgPSBzZWN1cmVfaGVhcF90ZWVfc2Vy
dmljZV9jYWxsKHNlY19oZWFwLT50ZWVfY3R4LCBzZWNfaGVhcC0+dGVlX3Nlc3Npb24sDQo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkYXRhLT50ZWVfY29tbWFu
ZF9pZF9iYXNlICsgVFpDTURfU0VDTUVNX1pBTExPQywNCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHBhcmFtcyk7DQo+ICsgICAgICAgaWYgKHJldCkNCj4gKyAg
ICAgICAgICAgICAgIHJldHVybiAtRU5PTUVNOw0KPiArDQo+ICsgICAgICAgc2VjX2J1Zi0+c2Vj
X2hhbmRsZSA9IHBhcmFtc1szXS51LnZhbHVlLmE7DQo+ICsgICAgICAgcmV0dXJuIDA7DQo+ICt9
DQo+ICsNCj4gK3N0YXRpYyB2b2lkIHNlY3VyZV9oZWFwX3RlZV91bnNlY3VyZV9tZW1vcnkoc3Ry
dWN0IHNlY3VyZV9oZWFwICpzZWNfaGVhcCwNCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBzdHJ1Y3Qgc2VjdXJlX2J1ZmZlciAqc2VjX2J1ZikNCj4gK3sNCj4g
KyAgICAgICBzdHJ1Y3QgdGVlX3BhcmFtIHBhcmFtc1tURUVfUEFSQU1fTlVNXSA9IHswfTsNCj4g
Kw0KPiArICAgICAgIHBhcmFtc1swXS5hdHRyID0gVEVFX0lPQ1RMX1BBUkFNX0FUVFJfVFlQRV9W
QUxVRV9JTlBVVDsNCj4gKyAgICAgICBwYXJhbXNbMF0udS52YWx1ZS5hID0gc2VjX2J1Zi0+c2Vj
X2hhbmRsZTsNCj4gKyAgICAgICBwYXJhbXNbMV0uYXR0ciA9IFRFRV9JT0NUTF9QQVJBTV9BVFRS
X1RZUEVfVkFMVUVfT1VUUFVUOw0KPiArDQo+ICsgICAgICAgc2VjdXJlX2hlYXBfdGVlX3NlcnZp
Y2VfY2FsbChzZWNfaGVhcC0+dGVlX2N0eCwgc2VjX2hlYXAtPnRlZV9zZXNzaW9uLA0KPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2VjX2hlYXAtPmRhdGEtPnRlZV9jb21t
YW5kX2lkX2Jhc2UgKyBUWkNNRF9TRUNNRU1fRlJFRSwNCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHBhcmFtcyk7DQo+ICsgICAgICAgaWYgKHBhcmFtc1sxXS51LnZhbHVl
LmEpDQo+ICsgICAgICAgICAgICAgICBwcl9lcnIoIiVzLCBmcmVlIGJ1ZmZlcigweCV4KSByZXR1
cm4gZmFpbCglbGxkKSBmcm9tIFRFRS5cbiIsDQo+ICsgICAgICAgICAgICAgICAgICAgICAgc2Vj
X2hlYXAtPm5hbWUsIHNlY19idWYtPnNlY19oYW5kbGUsIHBhcmFtc1sxXS51LnZhbHVlLmEpOw0K
PiArfQ0KPiArDQoNClRoZXNlIGFyZSBlbnRpcmVseSBNVEsgc3BlY2lmaWMsIHNvIG1vdmUgdGhl
bSBpbnRvIHRoZSBNVEsgc3BlY2lmaWMNCmltcGxlbWVudGF0aW9uLg0KDQo+ICAvKiBUaGUgbWVt
b3J5IGFsbG9jYXRpbmcgaXMgd2l0aGluIHRoZSBURUUuICovDQo+ICBjb25zdCBzdHJ1Y3Qgc2Vj
dXJlX2hlYXBfcHJ2X2RhdGEgbXRrX3NlY19tZW1fZGF0YSA9IHsNCj4gICAgICAgICAudXVpZCAg
ICAgICAgICAgICAgICAgICA9IFRaX1RBX01FTV9VVUlEX01USywNCj4gICAgICAgICAudGVlX2lt
cGxfaWQgICAgICAgICAgICA9IFRFRV9JTVBMX0lEX09QVEVFLA0KPiArICAgICAgIC50ZWVfY29t
bWFuZF9pZF9iYXNlICAgID0gVEVFX01FTV9DT01NQU5EX0lEX0JBU0VfTVRLLA0KPiArICAgICAg
IC5zZWN1cmVfdGhlX21lbW9yeSAgICAgID0gc2VjdXJlX2hlYXBfdGVlX3NlY3VyZV9tZW1vcnks
DQo+ICsgICAgICAgLnVuc2VjdXJlX3RoZV9tZW1vcnkgICAgPSBzZWN1cmVfaGVhcF90ZWVfdW5z
ZWN1cmVfbWVtb3J5LA0KPiAgfTsNCg0KVGhpcyBzaG91bGQgYWxzbyBnbyBpbnRvIHRoZSBNVEsg
c3BlY2lmaWMgaW1wbGVtZW50YXRpb24sIGFuZCB0byBiZQ0KY2xlYXIsIHRoYXQncyB3aGVyZSBt
b2R1bGVfaW5pdCBzaG91bGQgYmUgYXMgd2VsbC4NCg0KPg0KPiAgc3RhdGljIGludCBzZWN1cmVf
aGVhcF9zZWN1cmVfbWVtb3J5X2FsbG9jYXRlKHN0cnVjdCBzZWN1cmVfaGVhcCAqc2VjX2hlYXAs
DQo+IC0tDQo+IDIuMjUuMQ0KPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
