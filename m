Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 79FC4AEE8A5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Jun 2025 22:56:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9007944776
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Jun 2025 20:56:28 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id A5C1842503
	for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Jun 2025 20:56:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=HhKs9WPS;
	spf=pass (lists.linaro.org: domain of robh@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=robh@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 09C985C64F8
	for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Jun 2025 20:56:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B099C4CEF5
	for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Jun 2025 20:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751316975;
	bh=PO44svPAYFFi6GiqbWS4Fm1Ty0ssVHLymeJlTxwzafk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=HhKs9WPSntjrnVGvwtUXKtRXfRp7ZFQTMeoh2xdI+oPDKiaU8VWwMUVyewuWLutRg
	 thNMMLiVjeUeK8jrFPHKkQyxzP2F2NksS+Un0A8qTqqrV8pBLyPcDk6KCv22zCVQYV
	 qZ4FU2CVCJSancybT61fdQYX+fdRJEBBnLKiCvNU1+Q4l7zPtuANNbD94XMmClnpQc
	 fl1gtL8ERG1fIzjVoe5OuU8vLVx1bKu7M3+zBmUIMmzC0EA6hJf/Xnu2pCN/sSbiII
	 ck22XgFecXDsY2l7lnuGZhGrb+5aQiMIxfvnxQbH95E1q4CaoZnFLDAqHjLiwO3N5f
	 WnRbpWKBx5XlA==
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-60789b450ceso5071565a12.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Jun 2025 13:56:15 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXwEFlTG8lAVbehV0udoi2JGX8pKwpbYDr0OFcf6nURdmSh/m+8ggIr2udj+2UyGNugdOyCcPRv0Djkum96@lists.linaro.org
X-Gm-Message-State: AOJu0YxWSywYyAOCdjMh1j3Q95/IYZYfR44okZQ7ZbJ2iom3PbzhnLL2
	MSWEoiCxLOb/BLkzOLFxeeQTedb6/ANHAHkFYpwvfnVXLURe6oZ39mgg67Nb9JZq1rD3hUOS6rz
	R7O6cl7rLzK0okKbfuC/rAPC7vajwtA==
X-Google-Smtp-Source: AGHT+IHN6KYVrLpEyM//LpRHGQ3ciilHAEEns6c2p0uRqrws7WdVXCCQfCRU6orJIR5QnGKwW7fUExXvkMdYX3eTq8k=
X-Received: by 2002:a17:907:868b:b0:ad9:db54:ba47 with SMTP id
 a640c23a62f3a-ae350190c99mr1589912566b.43.1751316973962; Mon, 30 Jun 2025
 13:56:13 -0700 (PDT)
MIME-Version: 1.0
References: <20250606-6-10-rocket-v7-0-dc16cfe6fe4e@tomeuvizoso.net> <20250606-6-10-rocket-v7-4-dc16cfe6fe4e@tomeuvizoso.net>
In-Reply-To: <20250606-6-10-rocket-v7-4-dc16cfe6fe4e@tomeuvizoso.net>
From: Rob Herring <robh@kernel.org>
Date: Mon, 30 Jun 2025 15:56:02 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJtKCXE0MLaBN5-r+w+2jVwt8UMwHtr-nP0PoBmfNodpg@mail.gmail.com>
X-Gm-Features: Ac12FXy8hWxpEFoW3ELH4IZXVQDuQYuBeJxvmHd6gayxY_Y6diMDIDxJ1A0GBAM
Message-ID: <CAL_JsqJtKCXE0MLaBN5-r+w+2jVwt8UMwHtr-nP0PoBmfNodpg@mail.gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A5C1842503
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	TAGGED_RCPT(0.00)[dt];
	RCPT_COUNT_TWELVE(0.00)[28];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,lwn.net,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,collabora.com,rock-chips.com,arm.com,fooishbar.org,libre.computer,oss.qualcomm.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: TA2DI75BIBXKFUGB3QXKMP74T6POVLL5
X-Message-ID-Hash: TA2DI75BIBXKFUGB3QXKMP74T6POVLL5
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Kever Yang <kever.yang@rock-chips.com>, Robin Murphy <robin.murphy@arm.com>, Daniel Stone <daniel@fooishbar.org>, Da Xue <da@libre.computer>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 04/10] accel/rocket: Add job submission IOCTL
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TA2DI75BIBXKFUGB3QXKMP74T6POVLL5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBKdW4gNiwgMjAyNSBhdCAxOjI54oCvQU0gVG9tZXUgVml6b3NvIDx0b21ldUB0b21l
dXZpem9zby5uZXQ+IHdyb3RlOg0KPg0KPiBVc2luZyB0aGUgRFJNIEdQVSBzY2hlZHVsZXIgaW5m
cmFzdHJ1Y3R1cmUsIHdpdGggYSBzY2hlZHVsZXIgZm9yIGVhY2gNCj4gY29yZS4NCj4NCj4gVXNl
cnNwYWNlIGNhbiBkZWNpZGUgZm9yIGEgc2VyaWVzIG9mIHRhc2tzIHRvIGJlIGV4ZWN1dGVkIHNl
cXVlbnRpYWxseQ0KPiBpbiB0aGUgc2FtZSBjb3JlLCBzbyBTUkFNIGxvY2FsaXR5IGNhbiBiZSB0
YWtlbiBhZHZhbnRhZ2Ugb2YuDQo+DQo+IFRoZSBqb2Igc3VibWlzc2lvbiBjb2RlIHdhcyBpbml0
aWFsbHkgYmFzZWQgb24gUGFuZnJvc3QuDQo+DQo+IHYyOg0KPiAtIFJlbW92ZSBoYXJkY29kZWQg
bnVtYmVyIG9mIGNvcmVzDQo+IC0gTWlzYy4gc3R5bGUgZml4ZXMgKEplZmZyZXkgSHVnbykNCj4g
LSBSZXBhY2sgSU9DVEwgc3RydWN0IChKZWZmcmV5IEh1Z28pDQo+DQo+IHYzOg0KPiAtIEFkYXB0
IHRvIGEgc3BsaXQgb2YgdGhlIHJlZ2lzdGVyIGJsb2NrIGluIHRoZSBEVCBiaW5kaW5ncyAoTmlj
b2xhcw0KPiAgIEZyYXR0YXJvbGkpDQo+IC0gTWFrZSB1c2Ugb2YgR1BMLTIuMC1vbmx5IGZvciB0
aGUgY29weXJpZ2h0IG5vdGljZSAoSmVmZiBIdWdvKQ0KPiAtIFVzZSBkcm1fKiBsb2dnaW5nIGZ1
bmN0aW9ucyAoVGhvbWFzIFppbW1lcm1hbm4pDQo+IC0gUmVuYW1lIHJlZyBpL28gbWFjcm9zIChU
aG9tYXMgWmltbWVybWFubikNCj4gLSBBZGQgcGFkZGluZyB0byBpb2N0bHMgYW5kIGNoZWNrIGZv
ciB6ZXJvIChKZWZmIEh1Z28pDQo+IC0gSW1wcm92ZSBlcnJvciBoYW5kbGluZyAoTmljb2xhcyBG
cmF0dGFyb2xpKQ0KPg0KPiB2NjoNCj4gLSBVc2UgbXV0ZXhlcyBndWFyZCAoTWFya3VzIEVsZnJp
bmcpDQo+IC0gVXNlIHU2NF90b191c2VyX3B0ciAoSmVmZiBIdWdvKQ0KPiAtIERyb3Agcm9ja2V0
X2ZlbmNlIChSb2IgSGVycmluZykNCj4NCj4gdjc6DQo+IC0gQXNzaWduIGl0cyBvd24gSU9NTVUg
ZG9tYWluIHRvIGVhY2ggY2xpZW50LCBmb3IgaXNvbGF0aW9uIChEYW5pZWwNCj4gICBTdG9uZSBh
bmQgUm9iaW4gTXVycGh5KQ0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBUb21ldSBWaXpvc28gPHRvbWV1
QHRvbWV1dml6b3NvLm5ldD4NCj4gLS0tDQoNClsuLi5dDQoNCj4gLS0tIGEvaW5jbHVkZS91YXBp
L2RybS9yb2NrZXRfYWNjZWwuaA0KPiArKysgYi9pbmNsdWRlL3VhcGkvZHJtL3JvY2tldF9hY2Nl
bC5oDQo+IEBAIC0xMiw4ICsxMiwxMCBAQCBleHRlcm4gIkMiIHsNCj4gICNlbmRpZg0KPg0KPiAg
I2RlZmluZSBEUk1fUk9DS0VUX0NSRUFURV9CTyAgICAgICAgICAgICAgICAgICAweDAwDQo+ICsj
ZGVmaW5lIERSTV9ST0NLRVRfU1VCTUlUICAgICAgICAgICAgICAgICAgICAgIDB4MDENCj4NCj4g
ICNkZWZpbmUgRFJNX0lPQ1RMX1JPQ0tFVF9DUkVBVEVfQk8gICAgICAgICAgICAgRFJNX0lPV1Io
RFJNX0NPTU1BTkRfQkFTRSArIERSTV9ST0NLRVRfQ1JFQVRFX0JPLCBzdHJ1Y3QgZHJtX3JvY2tl
dF9jcmVhdGVfYm8pDQo+ICsjZGVmaW5lIERSTV9JT0NUTF9ST0NLRVRfU1VCTUlUICAgICAgICAg
ICAgICAgICAgICAgICAgRFJNX0lPVyhEUk1fQ09NTUFORF9CQVNFICsgRFJNX1JPQ0tFVF9TVUJN
SVQsIHN0cnVjdCBkcm1fcm9ja2V0X3N1Ym1pdCkNCj4NCj4gIC8qKg0KPiAgICogc3RydWN0IGRy
bV9yb2NrZXRfY3JlYXRlX2JvIC0gaW9jdGwgYXJndW1lbnQgZm9yIGNyZWF0aW5nIFJvY2tldCBC
T3MuDQo+IEBAIC0zNyw2ICszOSw2OCBAQCBzdHJ1Y3QgZHJtX3JvY2tldF9jcmVhdGVfYm8gew0K
PiAgICAgICAgIF9fdTY0IG9mZnNldDsNCj4gIH07DQo+DQo+ICsvKioNCj4gKyAqIHN0cnVjdCBk
cm1fcm9ja2V0X3Rhc2sgLSBBIHRhc2sgdG8gYmUgcnVuIG9uIHRoZSBOUFUNCj4gKyAqDQo+ICsg
KiBBIHRhc2sgaXMgdGhlIHNtYWxsZXN0IHVuaXQgb2Ygd29yayB0aGF0IGNhbiBiZSBydW4gb24g
dGhlIE5QVS4NCj4gKyAqLw0KPiArc3RydWN0IGRybV9yb2NrZXRfdGFzayB7DQo+ICsgICAgICAg
LyoqIElucHV0OiBETUEgYWRkcmVzcyB0byBOUFUgbWFwcGluZyBvZiByZWdpc3RlciBjb21tYW5k
IGJ1ZmZlciAqLw0KPiArICAgICAgIF9fdTY0IHJlZ2NtZDsNCj4gKw0KPiArICAgICAgIC8qKiBJ
bnB1dDogTnVtYmVyIG9mIGNvbW1hbmRzIGluIHRoZSByZWdpc3RlciBjb21tYW5kIGJ1ZmZlciAq
Lw0KPiArICAgICAgIF9fdTMyIHJlZ2NtZF9jb3VudDsNCj4gKw0KPiArICAgICAgIC8qKiBSZXNl
cnZlZCwgbXVzdCBiZSB6ZXJvLiAqLw0KPiArICAgICAgIF9fdTMyIHJlc2VydmVkOw0KPiArfTsN
Cj4gKw0KPiArLyoqDQo+ICsgKiBzdHJ1Y3QgZHJtX3JvY2tldF9qb2IgLSBBIGpvYiB0byBiZSBy
dW4gb24gdGhlIE5QVQ0KPiArICoNCj4gKyAqIFRoZSBrZXJuZWwgd2lsbCBzY2hlZHVsZSB0aGUg
ZXhlY3V0aW9uIG9mIHRoaXMgam9iIHRha2luZyBpbnRvIGFjY291bnQgaXRzDQo+ICsgKiBkZXBl
bmRlbmNpZXMgd2l0aCBvdGhlciBqb2JzLiBBbGwgdGFza3MgaW4gdGhlIHNhbWUgam9iIHdpbGwg
YmUgZXhlY3V0ZWQNCj4gKyAqIHNlcXVlbnRpYWxseSBvbiB0aGUgc2FtZSBjb3JlLCB0byBiZW5l
Zml0IGZyb20gbWVtb3J5IHJlc2lkZW5jeSBpbiBTUkFNLg0KPiArICovDQo+ICtzdHJ1Y3QgZHJt
X3JvY2tldF9qb2Igew0KPiArICAgICAgIC8qKiBJbnB1dDogUG9pbnRlciB0byBhbiBhcnJheSBv
ZiBzdHJ1Y3QgZHJtX3JvY2tldF90YXNrLiAqLw0KPiArICAgICAgIF9fdTY0IHRhc2tzOw0KPiAr
DQo+ICsgICAgICAgLyoqIElucHV0OiBQb2ludGVyIHRvIGEgdTMyIGFycmF5IG9mIHRoZSBCT3Mg
dGhhdCBhcmUgcmVhZCBieSB0aGUgam9iLiAqLw0KPiArICAgICAgIF9fdTY0IGluX2JvX2hhbmRs
ZXM7DQo+ICsNCj4gKyAgICAgICAvKiogSW5wdXQ6IFBvaW50ZXIgdG8gYSB1MzIgYXJyYXkgb2Yg
dGhlIEJPcyB0aGF0IGFyZSB3cml0dGVuIHRvIGJ5IHRoZSBqb2IuICovDQo+ICsgICAgICAgX191
NjQgb3V0X2JvX2hhbmRsZXM7DQo+ICsNCj4gKyAgICAgICAvKiogSW5wdXQ6IE51bWJlciBvZiB0
YXNrcyBwYXNzZWQgaW4uICovDQo+ICsgICAgICAgX191MzIgdGFza19jb3VudDsNCj4gKw0KPiAr
ICAgICAgIC8qKiBJbnB1dDogTnVtYmVyIG9mIGlucHV0IEJPIGhhbmRsZXMgcGFzc2VkIGluIChz
aXplIGlzIHRoYXQgdGltZXMgNCkuICovDQo+ICsgICAgICAgX191MzIgaW5fYm9faGFuZGxlX2Nv
dW50Ow0KPiArDQo+ICsgICAgICAgLyoqIElucHV0OiBOdW1iZXIgb2Ygb3V0cHV0IEJPIGhhbmRs
ZXMgcGFzc2VkIGluIChzaXplIGlzIHRoYXQgdGltZXMgNCkuICovDQo+ICsgICAgICAgX191MzIg
b3V0X2JvX2hhbmRsZV9jb3VudDsNCj4gKw0KPiArICAgICAgIC8qKiBSZXNlcnZlZCwgbXVzdCBi
ZSB6ZXJvLiAqLw0KPiArICAgICAgIF9fdTMyIHJlc2VydmVkOw0KPiArfTsNCj4gKw0KPiArLyoq
DQo+ICsgKiBzdHJ1Y3QgZHJtX3JvY2tldF9zdWJtaXQgLSBpb2N0bCBhcmd1bWVudCBmb3Igc3Vi
bWl0dGluZyBjb21tYW5kcyB0byB0aGUgTlBVLg0KPiArICoNCj4gKyAqIFRoZSBrZXJuZWwgd2ls
bCBzY2hlZHVsZSB0aGUgZXhlY3V0aW9uIG9mIHRoZXNlIGpvYnMgaW4gZGVwZW5kZW5jeSBvcmRl
ci4NCj4gKyAqLw0KPiArc3RydWN0IGRybV9yb2NrZXRfc3VibWl0IHsNCj4gKyAgICAgICAvKiog
SW5wdXQ6IFBvaW50ZXIgdG8gYW4gYXJyYXkgb2Ygc3RydWN0IGRybV9yb2NrZXRfam9iLiAqLw0K
PiArICAgICAgIF9fdTY0IGpvYnM7DQo+ICsNCj4gKyAgICAgICAvKiogSW5wdXQ6IE51bWJlciBv
ZiBqb2JzIHBhc3NlZCBpbi4gKi8NCj4gKyAgICAgICBfX3UzMiBqb2JfY291bnQ7DQoNCklzbid0
IHRoZXJlIGEgcHJvYmxlbSBpZiB5b3UgbmVlZCB0byBleHBhbmQgZHJtX3JvY2tldF9qb2IgYmV5
b25kDQp1c2luZyB0aGUgMSByZXNlcnZlZCBmaWVsZD8gWW91IGNhbid0IGFkZCB0byB0aGUgc3Ry
dWN0IGJlY2F1c2UgdGhlbg0KeW91IGRvbid0IGtub3cgdGhlIHNpemUgaGVyZS4gU28geW91IGhh
dmUgdG8gbW9kaWZ5IGRybV9yb2NrZXRfc3VibWl0DQp0byBtb2RpZnkgZHJtX3JvY2tldF9qb2Iu
IE1heWJlIGJldHRlciBpZiB5b3UgcGxhbiBmb3IgdGhhdCBub3cgcmF0aGVyDQp0aGFuIGxhdGVy
IGJ5IG1ha2luZyB0aGUgc2l6ZSBleHBsaWNpdC4NCg0KVGhvdWdoIGV0bmF2aXYgYXQgbGVhc3Qg
aGFzIHNpbWlsYXIgaXNzdWVzLg0KDQpSb2INCg0KPiArDQo+ICsgICAgICAgLyoqIFJlc2VydmVk
LCBtdXN0IGJlIHplcm8uICovDQo+ICsgICAgICAgX191MzIgcmVzZXJ2ZWQ7DQo+ICt9Ow0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
