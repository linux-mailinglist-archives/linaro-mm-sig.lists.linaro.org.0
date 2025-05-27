Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 84267AC5120
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 May 2025 16:44:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8EBBD443CD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 May 2025 14:44:19 +0000 (UTC)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	by lists.linaro.org (Postfix) with ESMTPS id 8AF74443CD
	for <linaro-mm-sig@lists.linaro.org>; Tue, 27 May 2025 14:43:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b="Gy/OQIne";
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.167.182 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-3fea67e64caso1860342b6e.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 27 May 2025 07:43:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748357037; x=1748961837; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=95DgJLZjEvQybIlPP+VCo5ApfOw6ewx9PjK94wls/Kk=;
        b=Gy/OQIneifwrw2zFgTdNoQW3xaGk4VX+8Zcv13jusQGOqqWasxleKJgWlhgcKIjPWh
         22/JjYf1OqPsdv1J5QI9t9a40KVX74deIg9r/G42M1636r5XywrFFa3qwL4fDYHJkzGP
         Iy8Yv5sSuf7CRUNk4b3Sa75LHhXVg7j9AgdZQH1uWNrDIPMmQL1so1Y9mD/pF+UVCYbW
         6dX7TE2B6W79cW90ZCkszdJrGKsSdfDJKO8hdMj/gHo2l6oqfCrIGDRdnKM0Vfgrd5QS
         xYnDwbqCqockNKM9sHYotMSioMMxa9GOXAtFpKZfZ1uI0mK/SFI8Shx2UArZLeQoIjXu
         sQHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748357037; x=1748961837;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=95DgJLZjEvQybIlPP+VCo5ApfOw6ewx9PjK94wls/Kk=;
        b=nZQ2D0DCIMdfrdQitrwowsyeeLeEbTILKimMm0rKtGJ2yW2JTaNeci5McaJDjmc6mP
         mogjjaHRF9R1Id4xBDMQE9li8QLTeUYpH5bMWoP6FgJtd5nw5+R906SUeLex21O8F2DF
         FKVP/wcdOQuGRE06TSkEN5gycv5Xsg9/ykxu5/WcvmsPwpjh3SdXdXkhqNuDIEe/zVPT
         U52housQOy/3AmysPf+rXibI6lI5nMD68uBqKvU2YqwwpHOBNa7otJU+suoXpyXca+gv
         BUWAYU0kVIyzey+TKNyNL3z4DAvXVhUnKyX1Hccy8dybfQXMM++Jdc72MAkb8+x6FwS9
         8eEg==
X-Forwarded-Encrypted: i=1; AJvYcCW5G/mfNgGaQfQHJS3o0qz4MN0b7lEeLDjcTA1Y0PbijwltZhNJYgu9n3NDRTOd00A28hKImfYIKR7qbQoQ@lists.linaro.org
X-Gm-Message-State: AOJu0YyuYEodoIzToNxe1ANjym9psxx3DVdsOgHoBYCAygCpI9QBnoh3
	Faw2FxiH0+hYpO7P/Z0JDu+dw0IDPP8qzOSede8b9lDd9YsxSM+DvCmWsD/cWQjpEoCiqNM6W6b
	17zudx/HDnOWe3LQ9UAFHbj+y6uxsR1I40dQpQC3zdrXr
X-Gm-Gg: ASbGncs502WXCX2NBMNpWMiPJiMcJzwxcn6u7bm8c7yRte7IHK5MH3lftHJKPLaUVr1
	NR9yXNr8ecOXzZ4LrQILLNab7508sOM5IDuZn7HiXJhGMcFBX8bLn9IjxRZ186UnfJmlRs2R+P2
	xQen18SJ/5zF82lg4vP8IQwerwlSL8gfMgIw==
X-Google-Smtp-Source: AGHT+IHpSqYMZnJIwMvd/4lAF+O9cYNaktKk9pOe7eLVIejN5m7i3i+I+Kqp9vE8g8yw+eb4yKgrKppgkbkYaaS4u4c=
X-Received: by 2002:a05:6808:3a19:b0:403:3195:58cf with SMTP id
 5614622812f47-406467f6a5emr7481831b6e.1.1748357036861; Tue, 27 May 2025
 07:43:56 -0700 (PDT)
MIME-Version: 1.0
References: <20250520152436.474778-1-jens.wiklander@linaro.org>
 <20250520152436.474778-10-jens.wiklander@linaro.org> <aDQitSd27Z4qC0xT@sumit-X1>
In-Reply-To: <aDQitSd27Z4qC0xT@sumit-X1>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Tue, 27 May 2025 16:43:44 +0200
X-Gm-Features: AX0GCFsAg3SlBrsMFYU7wBuZbNCOqXi00PEfamwreFmZfzirEP5JjBZls3rnlgg
Message-ID: <CAHUa44E=FKAGWk-pjq176b9ri7kgL8PqN6rpBeoPKgfj5EuWTA@mail.gmail.com>
To: Sumit Garg <sumit.garg@kernel.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.182:from];
	TAGGED_RCPT(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Queue-Id: 8AF74443CD
X-Spamd-Bar: --
Message-ID-Hash: U5AOXJDLFRQV3ZWNTXOI2ZYWOTHXU6AL
X-Message-ID-Hash: U5AOXJDLFRQV3ZWNTXOI2ZYWOTHXU6AL
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 9/9] optee: smc abi: dynamic protected memory allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/U5AOXJDLFRQV3ZWNTXOI2ZYWOTHXU6AL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBNYXkgMjYsIDIwMjUgYXQgMTA6MTPigK9BTSBTdW1pdCBHYXJnIDxzdW1pdC5nYXJn
QGtlcm5lbC5vcmc+IHdyb3RlOg0KPg0KPiBPbiBUdWUsIE1heSAyMCwgMjAyNSBhdCAwNToxNjo1
MlBNICswMjAwLCBKZW5zIFdpa2xhbmRlciB3cm90ZToNCj4gPiBBZGQgc3VwcG9ydCBpbiB0aGUg
T1AtVEVFIGJhY2tlbmQgZHJpdmVyIGZvciBkeW5hbWljIHByb3RlY3RlZCBtZW1vcnkNCj4gPiBh
bGxvY2F0aW9uIHVzaW5nIHRoZSBTTUMgQUJJLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogSmVu
cyBXaWtsYW5kZXIgPGplbnMud2lrbGFuZGVyQGxpbmFyby5vcmc+DQo+ID4gLS0tDQo+ID4gIGRy
aXZlcnMvdGVlL29wdGVlL3NtY19hYmkuYyB8IDEwMiArKysrKysrKysrKysrKysrKysrKysrKysr
KysrKystLS0tLS0NCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDg1IGluc2VydGlvbnMoKyksIDE3IGRl
bGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGVlL29wdGVlL3NtY19h
YmkuYyBiL2RyaXZlcnMvdGVlL29wdGVlL3NtY19hYmkuYw0KPiA+IGluZGV4IGYzY2FlODI0Mzc4
NS4uNmIzZmJlN2YwOTA5IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvdGVlL29wdGVlL3NtY19h
YmkuYw0KPiA+ICsrKyBiL2RyaXZlcnMvdGVlL29wdGVlL3NtY19hYmkuYw0KPiA+IEBAIC05NjUs
NiArOTY1LDcwIEBAIHN0YXRpYyBpbnQgb3B0ZWVfc21jX2RvX2NhbGxfd2l0aF9hcmcoc3RydWN0
IHRlZV9jb250ZXh0ICpjdHgsDQo+ID4gICAgICAgcmV0dXJuIHJjOw0KPiA+ICB9DQo+ID4NCj4g
PiArc3RhdGljIGludCBvcHRlZV9zbWNfbGVuZF9wcm90bWVtKHN0cnVjdCBvcHRlZSAqb3B0ZWUs
IHN0cnVjdCB0ZWVfc2htICpwcm90bWVtLA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgdTE2ICplbmRfcG9pbnRzLCB1bnNpZ25lZCBpbnQgZXBfY291bnQsDQo+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB1MzIgdXNlX2Nhc2UpDQo+ID4gK3sNCj4gPiArICAg
ICBzdHJ1Y3Qgb3B0ZWVfc2htX2FyZ19lbnRyeSAqZW50cnk7DQo+ID4gKyAgICAgc3RydWN0IG9w
dGVlX21zZ19hcmcgKm1zZ19hcmc7DQo+ID4gKyAgICAgc3RydWN0IHRlZV9zaG0gKnNobTsNCj4g
PiArICAgICB1X2ludCBvZmZzOw0KPiA+ICsgICAgIGludCByYzsNCj4gPiArDQo+ID4gKyAgICAg
bXNnX2FyZyA9IG9wdGVlX2dldF9tc2dfYXJnKG9wdGVlLT5jdHgsIDIsICZlbnRyeSwgJnNobSwg
Jm9mZnMpOw0KPiA+ICsgICAgIGlmIChJU19FUlIobXNnX2FyZykpDQo+ID4gKyAgICAgICAgICAg
ICByZXR1cm4gUFRSX0VSUihtc2dfYXJnKTsNCj4gPiArDQo+ID4gKyAgICAgbXNnX2FyZy0+Y21k
ID0gT1BURUVfTVNHX0NNRF9MRU5EX1BST1RNRU07DQo+ID4gKyAgICAgbXNnX2FyZy0+cGFyYW1z
WzBdLmF0dHIgPSBPUFRFRV9NU0dfQVRUUl9UWVBFX1ZBTFVFX0lOUFVUOw0KPiA+ICsgICAgIG1z
Z19hcmctPnBhcmFtc1swXS51LnZhbHVlLmEgPSB1c2VfY2FzZTsNCj4gPiArICAgICBtc2dfYXJn
LT5wYXJhbXNbMV0uYXR0ciA9IE9QVEVFX01TR19BVFRSX1RZUEVfVE1FTV9JTlBVVDsNCj4gPiAr
ICAgICBtc2dfYXJnLT5wYXJhbXNbMV0udS50bWVtLmJ1Zl9wdHIgPSBwcm90bWVtLT5wYWRkcjsN
Cj4gPiArICAgICBtc2dfYXJnLT5wYXJhbXNbMV0udS50bWVtLnNpemUgPSBwcm90bWVtLT5zaXpl
Ow0KPiA+ICsgICAgIG1zZ19hcmctPnBhcmFtc1sxXS51LnRtZW0uc2htX3JlZiA9ICh1X2xvbmcp
cHJvdG1lbTsNCj4gPiArDQo+ID4gKyAgICAgcmMgPSBvcHRlZS0+b3BzLT5kb19jYWxsX3dpdGhf
YXJnKG9wdGVlLT5jdHgsIHNobSwgb2ZmcywgZmFsc2UpOw0KPiA+ICsgICAgIGlmIChyYykNCj4g
PiArICAgICAgICAgICAgIGdvdG8gb3V0Ow0KPiA+ICsgICAgIGlmIChtc2dfYXJnLT5yZXQgIT0g
VEVFQ19TVUNDRVNTKSB7DQo+ID4gKyAgICAgICAgICAgICByYyA9IC1FSU5WQUw7DQo+ID4gKyAg
ICAgICAgICAgICBnb3RvIG91dDsNCj4gPiArICAgICB9DQo+ID4gKyAgICAgcHJvdG1lbS0+c2Vj
X3dvcmxkX2lkID0gKHVfbG9uZylwcm90bWVtOw0KPiA+ICsNCj4gPiArb3V0Og0KPiA+ICsgICAg
IG9wdGVlX2ZyZWVfbXNnX2FyZyhvcHRlZS0+Y3R4LCBlbnRyeSwgb2Zmcyk7DQo+ID4gKyAgICAg
cmV0dXJuIHJjOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICtzdGF0aWMgaW50IG9wdGVlX3NtY19yZWNs
YWltX3Byb3RtZW0oc3RydWN0IG9wdGVlICpvcHRlZSwNCj4gPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHN0cnVjdCB0ZWVfc2htICpwcm90bWVtKQ0KPiA+ICt7DQo+ID4gKyAg
ICAgc3RydWN0IG9wdGVlX3NobV9hcmdfZW50cnkgKmVudHJ5Ow0KPiA+ICsgICAgIHN0cnVjdCBv
cHRlZV9tc2dfYXJnICptc2dfYXJnOw0KPiA+ICsgICAgIHN0cnVjdCB0ZWVfc2htICpzaG07DQo+
ID4gKyAgICAgdV9pbnQgb2ZmczsNCj4gPiArICAgICBpbnQgcmM7DQo+ID4gKw0KPiA+ICsgICAg
IG1zZ19hcmcgPSBvcHRlZV9nZXRfbXNnX2FyZyhvcHRlZS0+Y3R4LCAxLCAmZW50cnksICZzaG0s
ICZvZmZzKTsNCj4gPiArICAgICBpZiAoSVNfRVJSKG1zZ19hcmcpKQ0KPiA+ICsgICAgICAgICAg
ICAgcmV0dXJuIFBUUl9FUlIobXNnX2FyZyk7DQo+ID4gKw0KPiA+ICsgICAgIG1zZ19hcmctPmNt
ZCA9IE9QVEVFX01TR19DTURfUkVDTEFJTV9QUk9UTUVNOw0KPiA+ICsgICAgIG1zZ19hcmctPnBh
cmFtc1swXS5hdHRyID0gT1BURUVfTVNHX0FUVFJfVFlQRV9STUVNX0lOUFVUOw0KPiA+ICsgICAg
IG1zZ19hcmctPnBhcmFtc1swXS51LnJtZW0uc2htX3JlZiA9ICh1X2xvbmcpcHJvdG1lbTsNCj4g
PiArDQo+ID4gKyAgICAgcmMgPSBvcHRlZS0+b3BzLT5kb19jYWxsX3dpdGhfYXJnKG9wdGVlLT5j
dHgsIHNobSwgb2ZmcywgZmFsc2UpOw0KPiA+ICsgICAgIGlmIChyYykNCj4gPiArICAgICAgICAg
ICAgIGdvdG8gb3V0Ow0KPiA+ICsgICAgIGlmIChtc2dfYXJnLT5yZXQgIT0gVEVFQ19TVUNDRVNT
KQ0KPiA+ICsgICAgICAgICAgICAgcmMgPSAtRUlOVkFMOw0KPiA+ICsNCj4gPiArb3V0Og0KPiA+
ICsgICAgIG9wdGVlX2ZyZWVfbXNnX2FyZyhvcHRlZS0+Y3R4LCBlbnRyeSwgb2Zmcyk7DQo+ID4g
KyAgICAgcmV0dXJuIHJjOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICAvKg0KPiA+ICAgKiA1LiBBc3lu
Y2hyb25vdXMgbm90aWZpY2F0aW9uDQo+ID4gICAqLw0KPiA+IEBAIC0xMjE2LDYgKzEyODAsOCBA
QCBzdGF0aWMgY29uc3Qgc3RydWN0IG9wdGVlX29wcyBvcHRlZV9vcHMgPSB7DQo+ID4gICAgICAg
LmRvX2NhbGxfd2l0aF9hcmcgPSBvcHRlZV9zbWNfZG9fY2FsbF93aXRoX2FyZywNCj4gPiAgICAg
ICAudG9fbXNnX3BhcmFtID0gb3B0ZWVfdG9fbXNnX3BhcmFtLA0KPiA+ICAgICAgIC5mcm9tX21z
Z19wYXJhbSA9IG9wdGVlX2Zyb21fbXNnX3BhcmFtLA0KPiA+ICsgICAgIC5sZW5kX3Byb3RtZW0g
PSBvcHRlZV9zbWNfbGVuZF9wcm90bWVtLA0KPiA+ICsgICAgIC5yZWNsYWltX3Byb3RtZW0gPSBv
cHRlZV9zbWNfcmVjbGFpbV9wcm90bWVtLA0KPiA+ICB9Ow0KPiA+DQo+ID4gIHN0YXRpYyBpbnQg
ZW5hYmxlX2FzeW5jX25vdGlmKG9wdGVlX2ludm9rZV9mbiAqaW52b2tlX2ZuKQ0KPiA+IEBAIC0x
NTg2LDExICsxNjUyLDE0IEBAIHN0YXRpYyBpbmxpbmUgaW50IG9wdGVlX2xvYWRfZncoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldiwNCj4gPg0KPiA+ICBzdGF0aWMgaW50IG9wdGVlX3Byb3Rt
ZW1fcG9vbF9pbml0KHN0cnVjdCBvcHRlZSAqb3B0ZWUpDQo+ID4gIHsNCj4gPiArICAgICBib29s
IHByb3RtID0gb3B0ZWUtPnNtYy5zZWNfY2FwcyAmIE9QVEVFX1NNQ19TRUNfQ0FQX1BST1RNRU07
DQo+ID4gKyAgICAgYm9vbCBkeW5fcHJvdG0gPSBvcHRlZS0+c21jLnNlY19jYXBzICYNCj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgIE9QVEVFX1NNQ19TRUNfQ0FQX0RZTkFNSUNfUFJPVE1FTTsN
Cj4gPiAgICAgICBlbnVtIHRlZV9kbWFfaGVhcF9pZCBoZWFwX2lkID0gVEVFX0RNQV9IRUFQX1NF
Q1VSRV9WSURFT19QTEFZOw0KPiA+IC0gICAgIHN0cnVjdCB0ZWVfcHJvdG1lbV9wb29sICpwb29s
Ow0KPiA+IC0gICAgIGludCByYzsNCj4gPiArICAgICBzdHJ1Y3QgdGVlX3Byb3RtZW1fcG9vbCAq
cG9vbCA9IEVSUl9QVFIoLUVJTlZBTCk7DQo+ID4gKyAgICAgaW50IHJjID0gLUVJTlZBTDsNCj4g
Pg0KPiA+IC0gICAgIGlmIChvcHRlZS0+c21jLnNlY19jYXBzICYgT1BURUVfU01DX1NFQ19DQVBf
UFJPVE1FTSkgew0KPiA+ICsgICAgIGlmIChwcm90bSkgew0KPiA+ICAgICAgICAgICAgICAgdW5p
b24gew0KPiA+ICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgYXJtX3NtY2NjX3JlcyBzbWNj
YzsNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IG9wdGVlX3NtY19nZXRfcHJvdG1l
bV9jb25maWdfcmVzdWx0IHJlc3VsdDsNCj4gPiBAQCAtMTU5OCwyNiArMTY2NywyNiBAQCBzdGF0
aWMgaW50IG9wdGVlX3Byb3RtZW1fcG9vbF9pbml0KHN0cnVjdCBvcHRlZSAqb3B0ZWUpDQo+ID4N
Cj4gPiAgICAgICAgICAgICAgIG9wdGVlLT5zbWMuaW52b2tlX2ZuKE9QVEVFX1NNQ19HRVRfUFJP
VE1FTV9DT05GSUcsIDAsIDAsIDAsIDAsDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAwLCAwLCAwLCAmcmVzLnNtY2NjKTsNCj4gPiAtICAgICAgICAgICAgIGlmIChyZXMu
cmVzdWx0LnN0YXR1cyAhPSBPUFRFRV9TTUNfUkVUVVJOX09LKSB7DQo+ID4gLSAgICAgICAgICAg
ICAgICAgICAgIHByX2VycigiU2VjdXJlIERhdGEgUGF0aCBzZXJ2aWNlIG5vdCBhdmFpbGFibGVc
biIpOw0KPiA+IC0gICAgICAgICAgICAgICAgICAgICByZXR1cm4gMDsNCj4gPiAtICAgICAgICAg
ICAgIH0NCj4gPiAtICAgICAgICAgICAgIHJjID0gb3B0ZWVfc2V0X2RtYV9tYXNrKG9wdGVlLCBy
ZXMucmVzdWx0LnBhX3dpZHRoKTsNCj4gPiArICAgICAgICAgICAgIGlmIChyZXMucmVzdWx0LnN0
YXR1cyA9PSBPUFRFRV9TTUNfUkVUVVJOX09LKQ0KPiA+ICsgICAgICAgICAgICAgICAgICAgICBy
YyA9IG9wdGVlX3NldF9kbWFfbWFzayhvcHRlZSwgcmVzLnJlc3VsdC5wYV93aWR0aCk7DQo+DQo+
IFRoaXMgY2hhbmdlIHNob3VsZCBiZSBmb2xkZWQgaW4gcGF0Y2ggNy85Lg0KDQpPSw0KDQo+DQo+
ID4gICAgICAgICAgICAgICBpZiAoIXJjKQ0KPiA+ICAgICAgICAgICAgICAgICAgICAgICBwb29s
ID0gdGVlX3Byb3RtZW1fc3RhdGljX3Bvb2xfYWxsb2MocmVzLnJlc3VsdC5zdGFydCwNCj4gPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHJlcy5yZXN1bHQuc2l6ZSk7DQo+ID4gLSAgICAgICAgICAgICBpZiAoSVNfRVJSKHBvb2wpKQ0K
PiA+IC0gICAgICAgICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihwb29sKTsNCj4gPiArICAg
ICB9DQo+ID4NCj4gPiArICAgICBpZiAoZHluX3Byb3RtICYmIElTX0VSUihwb29sKSkNCj4gPiAr
ICAgICAgICAgICAgIHBvb2wgPSBvcHRlZV9wcm90bWVtX2FsbG9jX2R5bl9wb29sKG9wdGVlLCBo
ZWFwX2lkKTsNCj4gPiArDQo+ID4gKyAgICAgaWYgKCFJU19FUlIocG9vbCkpIHsNCj4gPiAgICAg
ICAgICAgICAgIHJjID0gdGVlX2RldmljZV9yZWdpc3Rlcl9kbWFfaGVhcChvcHRlZS0+dGVlZGV2
LCBoZWFwX2lkLCBwb29sKTsNCj4gPiAgICAgICAgICAgICAgIGlmIChyYykNCj4gPiAtICAgICAg
ICAgICAgICAgICAgICAgZ290byBlcnI7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHBvb2wt
Pm9wcy0+ZGVzdHJveV9wb29sKHBvb2wpOw0KPiA+ICAgICAgIH0NCj4gPg0KPiA+ICsgICAgIGlm
IChwcm90bSB8fCBkeW5fcHJvdG0pDQo+ID4gKyAgICAgICAgICAgICByZXR1cm4gcmM7DQo+ID4g
Kw0KPiA+ICAgICAgIHJldHVybiAwOw0KPiA+IC1lcnI6DQo+ID4gLSAgICAgcG9vbC0+b3BzLT5k
ZXN0cm95X3Bvb2wocG9vbCk7DQo+ID4gLSAgICAgcmV0dXJuIHJjOw0KPiA+ICB9DQo+ID4NCj4g
PiAgc3RhdGljIGludCBvcHRlZV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQ0K
PiA+IEBAIC0xNzg4LDkgKzE4NTcsOCBAQCBzdGF0aWMgaW50IG9wdGVlX3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpDQo+ID4gICAgICAgICAgICAgICBwcl9pbmZvKCJBc3luY2hy
b25vdXMgbm90aWZpY2F0aW9ucyBlbmFibGVkXG4iKTsNCj4gPiAgICAgICB9DQo+ID4NCj4gPiAt
ICAgICByYyA9IG9wdGVlX3Byb3RtZW1fcG9vbF9pbml0KG9wdGVlKTsNCj4gPiAtICAgICBpZiAo
cmMpDQo+ID4gLSAgICAgICAgICAgICBnb3RvIGVycl9ub3RpZl91bmluaXQ7DQo+ID4gKyAgICAg
aWYgKG9wdGVlX3Byb3RtZW1fcG9vbF9pbml0KG9wdGVlKSkNCj4gPiArICAgICAgICAgICAgIHBy
X2luZm8oIlByb3RlY3RlZCBtZW1vcnkgc2VydmljZSBub3QgYXZhaWxhYmxlXG4iKTsNCj4NCj4g
VGhpcyBjaGFuZ2UgY2FuIGJlIGZvbGRlZCBpbiBwYXRjaCA3LzkuDQoNClllcywgdGhhdCBtYWtl
cyBzZW5zZS4NCg0KQ2hlZXJzLA0KSmVucw0KDQo+DQo+IFJlc3QgbG9va3MgZ29vZCB0byBtZS4N
Cj4NCj4gLVN1bWl0DQo+DQo+ID4NCj4gPiAgICAgICAvKg0KPiA+ICAgICAgICAqIEVuc3VyZSB0
aGF0IHRoZXJlIGFyZSBubyBwcmUtZXhpc3Rpbmcgc2htIG9iamVjdHMgYmVmb3JlIGVuYWJsaW5n
DQo+ID4gLS0NCj4gPiAyLjQzLjANCj4gPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
