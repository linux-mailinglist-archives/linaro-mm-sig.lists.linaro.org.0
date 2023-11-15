Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 558D77ED812
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Nov 2023 00:22:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4BA3640F2F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Nov 2023 23:22:12 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	by lists.linaro.org (Postfix) with ESMTPS id 989C040EBF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Nov 2023 23:21:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=4gMFf+Ii;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of jkardatzke@google.com designates 209.85.214.177 as permitted sender) smtp.mailfrom=jkardatzke@google.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1cc411be7e5so23205ad.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Nov 2023 15:21:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1700090516; x=1700695316; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lNrY+yv6flp09u25YudSqsktgZkCbw+hX4drbUgi3Pw=;
        b=4gMFf+IiRoP9Q74/YQjXjqcvYKnv0zxQ7FLyXL6eaXUoq1nkjf3c2oI5dpCi5EdYuZ
         XQsF5xv493CFMYV1WO1AJ1ZbHogWye7pa9n1NuOEtUdw2IaWzPkMdUzFLw1swyTsmqUa
         zhJBJi95ANX9dP4NGN5pqEKC47ZRApU7UMfnpyjMAr2alla1vklJFWivHtQ37aAkeYXz
         sU3kL1L7D4yi56eTyIykvGl5r+SmsB+/JLV0Dh66t4RxioanojeJpwVod7uEp7DUWlc2
         9BJDChK/zHVhBIPWL9LzV+0/4lAIwd4i6YJhYAxnLNizc+imoV0KEizQvZnBojFFLVPv
         L3dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700090516; x=1700695316;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lNrY+yv6flp09u25YudSqsktgZkCbw+hX4drbUgi3Pw=;
        b=dSIOP8Gz5sK1e1hiAtdcXz/Zbi9qCcJutD5VQ2MjPSH+pZ3FpMclajmVZ+vmOFFYgA
         7atK6cHK31zcVqHaG716bgjwNhTvAsihUf5l7ht9QlaltT3cwp7fgfhF0umdbG4ckjUX
         XKh0mYs33D0xm7clEHlQyNaHXlezUl9PUciK3prLKuAbzJtisFS4TVCSCx/RLTU2jIZf
         TCAsMiqN8tWC31KRA5JLxx8uBIRVuJznZC75ExhxFJGUAivUG6DiRa8vvLSb/FusmGdP
         scLHmoaYdxaXK0NH/7E4cBtH+O2b2Hpu2gRHWmHhYhvJds7Ibn+u+N008qE0iWVJhU5i
         W3jw==
X-Gm-Message-State: AOJu0Yz1FM+Zg0dpHURfQ5rOeql04u/RbfQLOxFyMxFcNABtasi3UYYW
	VvUe87tI99jKMDs/KKl/ArEoP64KRvicpyCACLNo
X-Google-Smtp-Source: AGHT+IGm7zgQJWAfwVDpHCI+ij6qSFWymYieGz93/wfD0nW3TAyf4K67Hy1IrPWOL2RQmlTU4JpJXZoiI0CXMLDcngE=
X-Received: by 2002:a17:902:c942:b0:1cc:2c43:9061 with SMTP id
 i2-20020a170902c94200b001cc2c439061mr61673pla.21.1700090515344; Wed, 15 Nov
 2023 15:21:55 -0800 (PST)
MIME-Version: 1.0
References: <20231111111559.8218-1-yong.wu@mediatek.com> <20231111111559.8218-3-yong.wu@mediatek.com>
In-Reply-To: <20231111111559.8218-3-yong.wu@mediatek.com>
From: Jeffrey Kardatzke <jkardatzke@google.com>
Date: Wed, 15 Nov 2023 15:21:44 -0800
Message-ID: <CA+ddPcPZJzJXro1ph7tT=Zdk6wyDyncmpPZvO0i0J2zCRauMsQ@mail.gmail.com>
To: Yong Wu <yong.wu@mediatek.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 989C040EBF
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.177:from];
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
Message-ID-Hash: A5DVLDMJHPL7O2SNEBQPPJFH4PB2KRCF
X-Message-ID-Hash: A5DVLDMJHPL7O2SNEBQPPJFH4PB2KRCF
X-MailFrom: jkardatzke@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rob Herring <robh+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Matthias Brugger <matthias.bgg@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com, Vijayanand Jitta <quic_vjitta@quicinc.com>, Joakim Bech <joakim.bech@linaro.org>, Nicolas Dufresne <nicolas@ndufresne.ca>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/8] dma-buf: heaps: secure_heap: Add private heap ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/A5DVLDMJHPL7O2SNEBQPPJFH4PB2KRCF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gU2F0LCBOb3YgMTEsIDIwMjMgYXQgMzoxNuKAr0FNIFlvbmcgV3UgPHlvbmcud3VAbWVkaWF0
ZWsuY29tPiB3cm90ZToNCj4NCj4gRm9yIHRoZSBzZWN1cmUgbWVtb3J5LCB0aGVyZSBhcmUgdHdv
IHN0ZXBzOg0KPiBhKSBBbGxvY2F0ZSBidWZmZXJzIGluIGtlcm5lbCBzaWRlOw0KPiBiKSBTZWN1
cmUgdGhhdCBidWZmZXIuDQo+IERpZmZlcmVudCBoZWFwcyBtYXkgaGF2ZSBkaWZmZXJlbnQgYnVm
ZmVyIGFsbG9jYXRpb24gbWV0aG9kcyBhbmQNCj4gZGlmZmVyZW50IG1lbW9yeSBwcm90ZWN0aW9u
IG1ldGhvZHMuIEhlcmUgYWJzdHJhY3QgdGhlIG1lbW9yeQ0KPiBhbGxvY2F0aW9uIGFuZCBzZWN1
cmluZyBvcGVyYXRpb25zLg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBZb25nIFd1IDx5b25nLnd1QG1l
ZGlhdGVrLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2RtYS1idWYvaGVhcHMvc2VjdXJlX2hlYXAu
YyB8IDU4ICsrKysrKysrKysrKysrKysrKysrKysrKysrKystDQo+ICAxIGZpbGUgY2hhbmdlZCwg
NTcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9kbWEtYnVmL2hlYXBzL3NlY3VyZV9oZWFwLmMgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvc2Vj
dXJlX2hlYXAuYw0KPiBpbmRleCBhNjM0MDUxYTBhNjcuLjg3YWMyMzA3MmU5ZSAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3NlY3VyZV9oZWFwLmMNCj4gKysrIGIvZHJpdmVy
cy9kbWEtYnVmL2hlYXBzL3NlY3VyZV9oZWFwLmMNCj4gQEAgLTI0LDE1ICsyNCw2NiBAQCBzdHJ1
Y3Qgc2VjdXJlX2J1ZmZlciB7DQo+ICAgICAgICAgc2l6ZV90ICAgICAgICAgICAgICAgICAgICAg
ICAgICBzaXplOw0KPiAgfTsNCj4NCj4gK3N0cnVjdCBzZWN1cmVfaGVhcDsNCj4gKw0KPiArc3Ry
dWN0IHNlY3VyZV9oZWFwX3Bydl9kYXRhIHsNCj4gKyAgICAgICBpbnQgICAgICgqbWVtb3J5X2Fs
bG9jKShzdHJ1Y3Qgc2VjdXJlX2hlYXAgKnNlY19oZWFwLCBzdHJ1Y3Qgc2VjdXJlX2J1ZmZlciAq
c2VjX2J1Zik7DQo+ICsgICAgICAgdm9pZCAgICAoKm1lbW9yeV9mcmVlKShzdHJ1Y3Qgc2VjdXJl
X2hlYXAgKnNlY19oZWFwLCBzdHJ1Y3Qgc2VjdXJlX2J1ZmZlciAqc2VjX2J1Zik7DQo+ICsNCj4g
KyAgICAgICAvKiBQcm90ZWN0L3VucHJvdGVjdCB0aGUgbWVtb3J5ICovDQo+ICsgICAgICAgaW50
ICAgICAoKnNlY3VyZV90aGVfbWVtb3J5KShzdHJ1Y3Qgc2VjdXJlX2hlYXAgKnNlY19oZWFwLCBz
dHJ1Y3Qgc2VjdXJlX2J1ZmZlciAqc2VjX2J1Zik7DQo+ICsgICAgICAgdm9pZCAgICAoKnVuc2Vj
dXJlX3RoZV9tZW1vcnkpKHN0cnVjdCBzZWN1cmVfaGVhcCAqc2VjX2hlYXAsIHN0cnVjdCBzZWN1
cmVfYnVmZmVyICpzZWNfYnVmKTsNCj4gK307DQpNb3ZlIHRoZXNlIGludG8gZG1hLWhlYXAtc2Vj
dXJlLmggcGVyIHRoZSBjb21tZW50cyBvbiB0aGUgcHJpb3IgcGF0Y2guDQoNCj4gKw0KPiAgc3Ry
dWN0IHNlY3VyZV9oZWFwIHsNCj4gICAgICAgICBjb25zdCBjaGFyICAgICAgICAgICAgICAgICAg
ICAgICpuYW1lOw0KPiAgICAgICAgIGNvbnN0IGVudW0gc2VjdXJlX21lbW9yeV90eXBlICAgbWVt
X3R5cGU7DQo+ICsNCj4gKyAgICAgICBjb25zdCBzdHJ1Y3Qgc2VjdXJlX2hlYXBfcHJ2X2RhdGEg
KmRhdGE7DQo+ICB9Ow0KPg0KPiArc3RhdGljIGludCBzZWN1cmVfaGVhcF9zZWN1cmVfbWVtb3J5
X2FsbG9jYXRlKHN0cnVjdCBzZWN1cmVfaGVhcCAqc2VjX2hlYXAsDQo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3Qgc2VjdXJlX2J1ZmZlciAqc2Vj
X2J1ZikNCj4gK3sNCj4gKyAgICAgICBjb25zdCBzdHJ1Y3Qgc2VjdXJlX2hlYXBfcHJ2X2RhdGEg
KmRhdGEgPSBzZWNfaGVhcC0+ZGF0YTsNCj4gKyAgICAgICBpbnQgcmV0Ow0KPiArDQo+ICsgICAg
ICAgaWYgKGRhdGEtPm1lbW9yeV9hbGxvYykgew0KPiArICAgICAgICAgICAgICAgcmV0ID0gZGF0
YS0+bWVtb3J5X2FsbG9jKHNlY19oZWFwLCBzZWNfYnVmKTsNCj4gKyAgICAgICAgICAgICAgIGlm
IChyZXQpDQo+ICsgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiByZXQ7DQo+ICsgICAgICAg
fQ0KWW91IHNob3VsZCBwcm9iYWJseSBhbHdheXMgcmVxdWlyZSB0aGF0IG1lbW9yeV9hbGxvYyBp
cyBkZWZpbmVkDQooc2VjdXJlX3RoZV9tZW1vcnkgY2FuIGJlIG9wdGlvbmFsLCBhcyB0aGF0IG1h
eSBiZSBwYXJ0IG9mIHRoZQ0KYWxsb2NhdGlvbikuDQo+ICsNCj4gKyAgICAgICBpZiAoZGF0YS0+
c2VjdXJlX3RoZV9tZW1vcnkpIHsNCj4gKyAgICAgICAgICAgICAgIHJldCA9IGRhdGEtPnNlY3Vy
ZV90aGVfbWVtb3J5KHNlY19oZWFwLCBzZWNfYnVmKTsNCj4gKyAgICAgICAgICAgICAgIGlmIChy
ZXQpDQo+ICsgICAgICAgICAgICAgICAgICAgICAgIGdvdG8gc2VjX21lbW9yeV9mcmVlOw0KPiAr
ICAgICAgIH0NCj4gKyAgICAgICByZXR1cm4gMDsNCj4gKw0KPiArc2VjX21lbW9yeV9mcmVlOg0K
PiArICAgICAgIGlmIChkYXRhLT5tZW1vcnlfZnJlZSkNCj4gKyAgICAgICAgICAgICAgIGRhdGEt
Pm1lbW9yeV9mcmVlKHNlY19oZWFwLCBzZWNfYnVmKTsNCllvdSBzaG91bGQgcHJvYmFibHkgYWx3
YXlzIHJlcXVpcmUgdGhhdCBtZW1vcnlfZnJlZSBpcyBkZWZpbmVkLg0KPiArICAgICAgIHJldHVy
biByZXQ7DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyB2b2lkIHNlY3VyZV9oZWFwX3NlY3VyZV9tZW1v
cnlfZnJlZShzdHJ1Y3Qgc2VjdXJlX2hlYXAgKnNlY19oZWFwLA0KPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IHNlY3VyZV9idWZmZXIgKnNlY19idWYp
DQo+ICt7DQo+ICsgICAgICAgY29uc3Qgc3RydWN0IHNlY3VyZV9oZWFwX3Bydl9kYXRhICpkYXRh
ID0gc2VjX2hlYXAtPmRhdGE7DQo+ICsNCj4gKyAgICAgICBpZiAoZGF0YS0+dW5zZWN1cmVfdGhl
X21lbW9yeSkNCj4gKyAgICAgICAgICAgICAgIGRhdGEtPnVuc2VjdXJlX3RoZV9tZW1vcnkoc2Vj
X2hlYXAsIHNlY19idWYpOw0KPiArDQo+ICsgICAgICAgaWYgKGRhdGEtPm1lbW9yeV9mcmVlKQ0K
PiArICAgICAgICAgICAgICAgZGF0YS0+bWVtb3J5X2ZyZWUoc2VjX2hlYXAsIHNlY19idWYpOw0K
WW91IHNob3VsZCBwcm9iYWJseSBhbHdheXMgcmVxdWlyZSB0aGF0IG1lbW9yeV9mcmVlIGlzIGRl
ZmluZWQuDQo+ICt9DQo+ICsNCj4gIHN0YXRpYyBzdHJ1Y3QgZG1hX2J1ZiAqDQo+ICBzZWN1cmVf
aGVhcF9hbGxvY2F0ZShzdHJ1Y3QgZG1hX2hlYXAgKmhlYXAsIHVuc2lnbmVkIGxvbmcgc2l6ZSwN
Cj4gICAgICAgICAgICAgICAgICAgICAgdW5zaWduZWQgbG9uZyBmZF9mbGFncywgdW5zaWduZWQg
bG9uZyBoZWFwX2ZsYWdzKQ0KPiAgew0KPiArICAgICAgIHN0cnVjdCBzZWN1cmVfaGVhcCAqc2Vj
X2hlYXAgPSBkbWFfaGVhcF9nZXRfZHJ2ZGF0YShoZWFwKTsNCj4gICAgICAgICBzdHJ1Y3Qgc2Vj
dXJlX2J1ZmZlciAqc2VjX2J1ZjsNCj4gICAgICAgICBERUZJTkVfRE1BX0JVRl9FWFBPUlRfSU5G
TyhleHBfaW5mbyk7DQo+ICAgICAgICAgc3RydWN0IGRtYV9idWYgKmRtYWJ1ZjsNCj4gQEAgLTQ1
LDYgKzk2LDkgQEAgc2VjdXJlX2hlYXBfYWxsb2NhdGUoc3RydWN0IGRtYV9oZWFwICpoZWFwLCB1
bnNpZ25lZCBsb25nIHNpemUsDQo+ICAgICAgICAgc2VjX2J1Zi0+c2l6ZSA9IEFMSUdOKHNpemUs
IFBBR0VfU0laRSk7DQo+ICAgICAgICAgc2VjX2J1Zi0+aGVhcCA9IGhlYXA7DQo+DQo+ICsgICAg
ICAgcmV0ID0gc2VjdXJlX2hlYXBfc2VjdXJlX21lbW9yeV9hbGxvY2F0ZShzZWNfaGVhcCwgc2Vj
X2J1Zik7DQo+ICsgICAgICAgaWYgKHJldCkNCj4gKyAgICAgICAgICAgICAgIGdvdG8gZXJyX2Zy
ZWVfYnVmOw0KPiAgICAgICAgIGV4cF9pbmZvLmV4cF9uYW1lID0gZG1hX2hlYXBfZ2V0X25hbWUo
aGVhcCk7DQo+ICAgICAgICAgZXhwX2luZm8uc2l6ZSA9IHNlY19idWYtPnNpemU7DQo+ICAgICAg
ICAgZXhwX2luZm8uZmxhZ3MgPSBmZF9mbGFnczsNCj4gQEAgLTUzLDExICsxMDcsMTMgQEAgc2Vj
dXJlX2hlYXBfYWxsb2NhdGUoc3RydWN0IGRtYV9oZWFwICpoZWFwLCB1bnNpZ25lZCBsb25nIHNp
emUsDQo+ICAgICAgICAgZG1hYnVmID0gZG1hX2J1Zl9leHBvcnQoJmV4cF9pbmZvKTsNCj4gICAg
ICAgICBpZiAoSVNfRVJSKGRtYWJ1ZikpIHsNCj4gICAgICAgICAgICAgICAgIHJldCA9IFBUUl9F
UlIoZG1hYnVmKTsNCj4gLSAgICAgICAgICAgICAgIGdvdG8gZXJyX2ZyZWVfYnVmOw0KPiArICAg
ICAgICAgICAgICAgZ290byBlcnJfZnJlZV9zZWNfbWVtOw0KPiAgICAgICAgIH0NCj4NCj4gICAg
ICAgICByZXR1cm4gZG1hYnVmOw0KPg0KPiArZXJyX2ZyZWVfc2VjX21lbToNCj4gKyAgICAgICBz
ZWN1cmVfaGVhcF9zZWN1cmVfbWVtb3J5X2ZyZWUoc2VjX2hlYXAsIHNlY19idWYpOw0KPiAgZXJy
X2ZyZWVfYnVmOg0KPiAgICAgICAgIGtmcmVlKHNlY19idWYpOw0KPiAgICAgICAgIHJldHVybiBF
UlJfUFRSKHJldCk7DQo+IC0tDQo+IDIuMjUuMQ0KPg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
