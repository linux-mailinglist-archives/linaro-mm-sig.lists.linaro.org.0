Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AF433AC50F3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 May 2025 16:33:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AE044443CD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 May 2025 14:33:18 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	by lists.linaro.org (Postfix) with ESMTPS id E96D0443CD
	for <linaro-mm-sig@lists.linaro.org>; Tue, 27 May 2025 14:33:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=PJS1fFR4;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.214.171 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-22d95f0dda4so36446835ad.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 27 May 2025 07:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748356384; x=1748961184; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GRDZ/LCrpqxKUX7yBP1lPoeGMYrX58ozdV1M2xTcqr0=;
        b=PJS1fFR4v9lMlVEdPtHK7mWwaMRfjcUlbJ4rN4KcFg4S3xpKEHmJNsshmoS864ibo0
         Igqny2ZxpInElJ+5xFuLZeMy1uaVaqz+Z2YCLa8jWVZidKYRgmHMvxVh+ruyV4cbX1gm
         P84/drsyCK+dzSqV6ZrHriMbfW69IQ2aGxG3MiH2EJRWAtrqSHVP0eJIG7ydxIxZHpWz
         WMdOOO4urmjDd8e6WIA9wc9g2AN1if1nkre4Ci6Bk9V+O1MFeDq9ZKfKFvYub5DOhSMK
         gjiQz5qt6LxYcIW0+/t7/YF/uylAr7+4qbLk4G7V+QkT6QIBphwB/w9ccvGM9Dlz/Myz
         n4LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748356384; x=1748961184;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GRDZ/LCrpqxKUX7yBP1lPoeGMYrX58ozdV1M2xTcqr0=;
        b=ObzwE7HMQ8W/Q2SXRs5reCJ3Q/2rrvVS0ojJmbu4d4py6zykP8ZFZRAkp4s1xaXcC2
         cH89U5+ptHF61hsmUv+IawGNUEvW/oU673c/CNBMcdt6ySTSw6R2FQbeycW5hBCjCqB4
         ixZ8f3wQKSr0/hxjDP5b+yc3AtwfDFmhaOA15QudR607avi7S8Or3vHGpZeyK/HDyQe/
         UYu1uMoB9o3W/YinxOe93Fp4w8YbQ4eOD3sWyeBzEkAv+yjxtHSS1KXF4qZvDtiiTcXC
         qBPdr5uaY+pGbra1nxv51lKgfZchrB27/FIrg2JPfDQxVYXGaWK1Uy7PyoY3FLIDA4Sf
         JL6g==
X-Forwarded-Encrypted: i=1; AJvYcCXExPTWwubIq/G1Zi3eNWj9+zGvIqowa3jI/IVG3Ox2+rO//sXH7vDc+B21FJowm46zJNe9wu0Jtl+5/U+h@lists.linaro.org
X-Gm-Message-State: AOJu0Yw/H3jE7bkdoVDDvcFjdWugPE5ESkbU0VE+PCptiZO5RojC4sBw
	Rl9KixwaKPTSm8Imtv11fsvTcM7zR0cMEeflMeM8QIkv9qlXWCAi3EhNZlUWaeyTml4lIHbeQeW
	nk21S8j1EUwFxifqipVjgK1yyudWJ4JyKdnAnZadYSMBZgBMs71snJX4=
X-Gm-Gg: ASbGncvQcC+wwYFD4DOWlot1pHk1qPnpsZw/3DRp8Cqv2dF5JuxloqwHOoGHRHT8mi2
	YhphwdHQKA7vshhL6c6TuhbpNgrlogjqNastAgWOVlQzM1uqIj0KHL44o75INiQAyRoFUpamNJp
	KCjaNa5ukUqX5L9TlrwqmC6nvPuKXuH+pBRQ==
X-Google-Smtp-Source: AGHT+IG+kMuaBsaWSffxs+4dopBi6c2UidFw8vqj94comKMts1HGzvEPJpkPt4sT0Oi5flOvsO/w4xlAVEH4ZILhoBI=
X-Received: by 2002:a05:6808:6c93:b0:403:35ba:f91a with SMTP id
 5614622812f47-406468ba8c7mr7824256b6e.34.1748356373410; Tue, 27 May 2025
 07:32:53 -0700 (PDT)
MIME-Version: 1.0
References: <20250520152436.474778-1-jens.wiklander@linaro.org>
 <20250520152436.474778-8-jens.wiklander@linaro.org> <aDQZN-frPnr1_N5I@sumit-X1>
In-Reply-To: <aDQZN-frPnr1_N5I@sumit-X1>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Tue, 27 May 2025 16:32:42 +0200
X-Gm-Features: AX0GCFtCRIMnpa06u8yxs_HtV-u6PU01-LbWY3-lo5Z1TuKmqqUniPvzQcB1mdY
Message-ID: <CAHUa44FHav67VAQK7o-S3Xhx-j_VypAX9Ya0dATty7RhdCbgJA@mail.gmail.com>
To: Sumit Garg <sumit.garg@kernel.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.214.171:from];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.214.171:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Queue-Id: E96D0443CD
X-Spamd-Bar: --
Message-ID-Hash: PCQUB5J7MCJKX7IPK4VCEPAZD7RGSEAH
X-Message-ID-Hash: PCQUB5J7MCJKX7IPK4VCEPAZD7RGSEAH
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 7/9] optee: support protected memory allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PCQUB5J7MCJKX7IPK4VCEPAZD7RGSEAH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBNYXkgMjYsIDIwMjUgYXQgOTozM+KAr0FNIFN1bWl0IEdhcmcgPHN1bWl0LmdhcmdA
a2VybmVsLm9yZz4gd3JvdGU6DQo+DQo+IE9uIFR1ZSwgTWF5IDIwLCAyMDI1IGF0IDA1OjE2OjUw
UE0gKzAyMDAsIEplbnMgV2lrbGFuZGVyIHdyb3RlOg0KPiA+IEFkZCBzdXBwb3J0IGluIHRoZSBP
UC1URUUgYmFja2VuZCBkcml2ZXIgZm9yIHByb3RlY3RlZCBtZW1vcnkNCj4gPiBhbGxvY2F0aW9u
LiBUaGUgc3VwcG9ydCBpcyBsaW1pdGVkIHRvIG9ubHkgdGhlIFNNQyBBQkkgYW5kIGZvciBzZWN1
cmUNCj4gPiB2aWRlbyBidWZmZXJzLg0KPiA+DQo+ID4gT1AtVEVFIGlzIHByb2JlZCBmb3IgdGhl
IHJhbmdlIG9mIHByb3RlY3RlZCBwaHlzaWNhbCBtZW1vcnkgYW5kIGENCj4gPiBtZW1vcnkgcG9v
bCBhbGxvY2F0b3IgaXMgaW5pdGlhbGl6ZWQgaWYgT1AtVEVFIGhhdmUgc3VwcG9ydCBmb3Igc3Vj
aA0KPiA+IG1lbW9yeS4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEplbnMgV2lrbGFuZGVyIDxq
ZW5zLndpa2xhbmRlckBsaW5hcm8ub3JnPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL3RlZS9vcHRl
ZS9jb3JlLmMgICAgICAgICAgfCAxMCArKysrKysrDQo+ID4gIGRyaXZlcnMvdGVlL29wdGVlL29w
dGVlX3ByaXZhdGUuaCB8ICAyICsrDQo+ID4gIGRyaXZlcnMvdGVlL29wdGVlL3NtY19hYmkuYyAg
ICAgICB8IDQ1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0NCj4gPiAgMyBmaWxlcyBj
aGFuZ2VkLCA1NSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvdGVlL29wdGVlL2NvcmUuYyBiL2RyaXZlcnMvdGVlL29wdGVlL2NvcmUu
Yw0KPiA+IGluZGV4IGM3NWZkZGM4MzU3Ni4uNGIxNGE3YWM1NmY5IDEwMDY0NA0KPiA+IC0tLSBh
L2RyaXZlcnMvdGVlL29wdGVlL2NvcmUuYw0KPiA+ICsrKyBiL2RyaXZlcnMvdGVlL29wdGVlL2Nv
cmUuYw0KPiA+IEBAIC01Niw2ICs1NiwxNSBAQCBpbnQgb3B0ZWVfcnBtYl9pbnRmX3JkZXYoc3Ry
dWN0IG5vdGlmaWVyX2Jsb2NrICppbnRmLCB1bnNpZ25lZCBsb25nIGFjdGlvbiwNCj4gPiAgICAg
ICByZXR1cm4gMDsNCj4gPiAgfQ0KPiA+DQo+ID4gK2ludCBvcHRlZV9zZXRfZG1hX21hc2soc3Ry
dWN0IG9wdGVlICpvcHRlZSwgdV9pbnQgcGFfd2lkdGgpDQo+ID4gK3sNCj4gPiArICAgICB1NjQg
bWFzayA9IERNQV9CSVRfTUFTSyhtaW4oNjQsIHBhX3dpZHRoKSk7DQo+ID4gKw0KPiA+ICsgICAg
IG9wdGVlLT50ZWVkZXYtPmRldi5kbWFfbWFzayA9ICZvcHRlZS0+dGVlZGV2LT5kZXYuY29oZXJl
bnRfZG1hX21hc2s7DQo+ID4gKw0KPiA+ICsgICAgIHJldHVybiBkbWFfc2V0X21hc2tfYW5kX2Nv
aGVyZW50KCZvcHRlZS0+dGVlZGV2LT5kZXYsIG1hc2spOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICBz
dGF0aWMgdm9pZCBvcHRlZV9idXNfc2NhbihzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspDQo+ID4g
IHsNCj4gPiAgICAgICBXQVJOX09OKG9wdGVlX2VudW1lcmF0ZV9kZXZpY2VzKFBUQV9DTURfR0VU
X0RFVklDRVNfU1VQUCkpOw0KPiA+IEBAIC0xODEsNiArMTkwLDcgQEAgdm9pZCBvcHRlZV9yZW1v
dmVfY29tbW9uKHN0cnVjdCBvcHRlZSAqb3B0ZWUpDQo+ID4gICAgICAgdGVlX2RldmljZV91bnJl
Z2lzdGVyKG9wdGVlLT5zdXBwX3RlZWRldik7DQo+ID4gICAgICAgdGVlX2RldmljZV91bnJlZ2lz
dGVyKG9wdGVlLT50ZWVkZXYpOw0KPiA+DQo+ID4gKyAgICAgdGVlX2RldmljZV91bnJlZ2lzdGVy
X2FsbF9kbWFfaGVhcHMob3B0ZWUtPnRlZWRldik7DQo+ID4gICAgICAgdGVlX3NobV9wb29sX2Zy
ZWUob3B0ZWUtPnBvb2wpOw0KPiA+ICAgICAgIG9wdGVlX3N1cHBfdW5pbml0KCZvcHRlZS0+c3Vw
cCk7DQo+ID4gICAgICAgbXV0ZXhfZGVzdHJveSgmb3B0ZWUtPmNhbGxfcXVldWUubXV0ZXgpOw0K
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3RlZS9vcHRlZS9vcHRlZV9wcml2YXRlLmggYi9kcml2
ZXJzL3RlZS9vcHRlZS9vcHRlZV9wcml2YXRlLmgNCj4gPiBpbmRleCBkYzBmMzU1ZWY3MmEuLjVl
M2MzNDgwMjEyMSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL3RlZS9vcHRlZS9vcHRlZV9wcml2
YXRlLmgNCj4gPiArKysgYi9kcml2ZXJzL3RlZS9vcHRlZS9vcHRlZV9wcml2YXRlLmgNCj4gPiBA
QCAtMjcyLDYgKzI3Miw4IEBAIHN0cnVjdCBvcHRlZV9jYWxsX2N0eCB7DQo+ID4NCj4gPiAgZXh0
ZXJuIHN0cnVjdCBibG9ja2luZ19ub3RpZmllcl9oZWFkIG9wdGVlX3JwbWJfaW50Zl9hZGRlZDsN
Cj4gPg0KPiA+ICtpbnQgb3B0ZWVfc2V0X2RtYV9tYXNrKHN0cnVjdCBvcHRlZSAqb3B0ZWUsIHVf
aW50IHBhX3dpZHRoKTsNCj4gPiArDQo+ID4gIGludCBvcHRlZV9ub3RpZl9pbml0KHN0cnVjdCBv
cHRlZSAqb3B0ZWUsIHVfaW50IG1heF9rZXkpOw0KPiA+ICB2b2lkIG9wdGVlX25vdGlmX3VuaW5p
dChzdHJ1Y3Qgb3B0ZWUgKm9wdGVlKTsNCj4gPiAgaW50IG9wdGVlX25vdGlmX3dhaXQoc3RydWN0
IG9wdGVlICpvcHRlZSwgdV9pbnQga2V5LCB1MzIgdGltZW91dCk7DQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvdGVlL29wdGVlL3NtY19hYmkuYyBiL2RyaXZlcnMvdGVlL29wdGVlL3NtY19hYmku
Yw0KPiA+IGluZGV4IGYwYzNhYzExMDNiYi4uZjNjYWU4MjQzNzg1IDEwMDY0NA0KPiA+IC0tLSBh
L2RyaXZlcnMvdGVlL29wdGVlL3NtY19hYmkuYw0KPiA+ICsrKyBiL2RyaXZlcnMvdGVlL29wdGVl
L3NtY19hYmkuYw0KPiA+IEBAIC0xNTg0LDYgKzE1ODQsNDIgQEAgc3RhdGljIGlubGluZSBpbnQg
b3B0ZWVfbG9hZF9mdyhzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2LA0KPiA+ICB9DQo+ID4g
ICNlbmRpZg0KPiA+DQo+ID4gK3N0YXRpYyBpbnQgb3B0ZWVfcHJvdG1lbV9wb29sX2luaXQoc3Ry
dWN0IG9wdGVlICpvcHRlZSkNCj4gPiArew0KPiA+ICsgICAgIGVudW0gdGVlX2RtYV9oZWFwX2lk
IGhlYXBfaWQgPSBURUVfRE1BX0hFQVBfU0VDVVJFX1ZJREVPX1BMQVk7DQo+ID4gKyAgICAgc3Ry
dWN0IHRlZV9wcm90bWVtX3Bvb2wgKnBvb2w7DQo+ID4gKyAgICAgaW50IHJjOw0KPiA+ICsNCj4g
PiArICAgICBpZiAob3B0ZWUtPnNtYy5zZWNfY2FwcyAmIE9QVEVFX1NNQ19TRUNfQ0FQX1BST1RN
RU0pIHsNCj4gPiArICAgICAgICAgICAgIHVuaW9uIHsNCj4gPiArICAgICAgICAgICAgICAgICAg
ICAgc3RydWN0IGFybV9zbWNjY19yZXMgc21jY2M7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAg
IHN0cnVjdCBvcHRlZV9zbWNfZ2V0X3Byb3RtZW1fY29uZmlnX3Jlc3VsdCByZXN1bHQ7DQo+ID4g
KyAgICAgICAgICAgICB9IHJlczsNCj4gPiArDQo+ID4gKyAgICAgICAgICAgICBvcHRlZS0+c21j
Lmludm9rZV9mbihPUFRFRV9TTUNfR0VUX1BST1RNRU1fQ09ORklHLCAwLCAwLCAwLCAwLA0KPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMCwgMCwgMCwgJnJlcy5zbWNjYyk7
DQo+ID4gKyAgICAgICAgICAgICBpZiAocmVzLnJlc3VsdC5zdGF0dXMgIT0gT1BURUVfU01DX1JF
VFVSTl9PSykgew0KPiA+ICsgICAgICAgICAgICAgICAgICAgICBwcl9lcnIoIlNlY3VyZSBEYXRh
IFBhdGggc2VydmljZSBub3QgYXZhaWxhYmxlXG4iKTsNCj4gPiArICAgICAgICAgICAgICAgICAg
ICAgcmV0dXJuIDA7DQo+ID4gKyAgICAgICAgICAgICB9DQo+ID4gKyAgICAgICAgICAgICByYyA9
IG9wdGVlX3NldF9kbWFfbWFzayhvcHRlZSwgcmVzLnJlc3VsdC5wYV93aWR0aCk7DQo+ID4gKyAg
ICAgICAgICAgICBpZiAoIXJjKQ0KPiA+ICsgICAgICAgICAgICAgICAgICAgICBwb29sID0gdGVl
X3Byb3RtZW1fc3RhdGljX3Bvb2xfYWxsb2MocmVzLnJlc3VsdC5zdGFydCwNCj4gPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlcy5y
ZXN1bHQuc2l6ZSk7DQo+ID4gKyAgICAgICAgICAgICBpZiAoSVNfRVJSKHBvb2wpKQ0KPiA+ICsg
ICAgICAgICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihwb29sKTsNCj4gPiArDQo+ID4gKyAg
ICAgICAgICAgICByYyA9IHRlZV9kZXZpY2VfcmVnaXN0ZXJfZG1hX2hlYXAob3B0ZWUtPnRlZWRl
diwgaGVhcF9pZCwgcG9vbCk7DQo+ID4gKyAgICAgICAgICAgICBpZiAocmMpDQo+ID4gKyAgICAg
ICAgICAgICAgICAgICAgIGdvdG8gZXJyOw0KPiA+ICsgICAgIH0NCj4gPiArDQo+ID4gKyAgICAg
cmV0dXJuIDA7DQo+ID4gK2VycjoNCj4gPiArICAgICBwb29sLT5vcHMtPmRlc3Ryb3lfcG9vbChw
b29sKTsNCj4gPiArICAgICByZXR1cm4gcmM7DQo+ID4gK30NCj4gPiArDQo+ID4gIHN0YXRpYyBp
bnQgb3B0ZWVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikNCj4gPiAgew0KPiA+
ICAgICAgIG9wdGVlX2ludm9rZV9mbiAqaW52b2tlX2ZuOw0KPiA+IEBAIC0xNjc5LDcgKzE3MTUs
NyBAQCBzdGF0aWMgaW50IG9wdGVlX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYp
DQo+ID4gICAgICAgb3B0ZWUgPSBremFsbG9jKHNpemVvZigqb3B0ZWUpLCBHRlBfS0VSTkVMKTsN
Cj4gPiAgICAgICBpZiAoIW9wdGVlKSB7DQo+ID4gICAgICAgICAgICAgICByYyA9IC1FTk9NRU07
DQo+ID4gLSAgICAgICAgICAgICBnb3RvIGVycl9mcmVlX3Bvb2w7DQo+ID4gKyAgICAgICAgICAg
ICBnb3RvIGVycl9mcmVlX3NobV9wb29sOw0KPiA+ICAgICAgIH0NCj4gPg0KPiA+ICAgICAgIG9w
dGVlLT5vcHMgPSAmb3B0ZWVfb3BzOw0KPiA+IEBAIC0xNzUyLDYgKzE3ODgsMTAgQEAgc3RhdGlj
IGludCBvcHRlZV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQ0KPiA+ICAgICAg
ICAgICAgICAgcHJfaW5mbygiQXN5bmNocm9ub3VzIG5vdGlmaWNhdGlvbnMgZW5hYmxlZFxuIik7
DQo+ID4gICAgICAgfQ0KPiA+DQo+ID4gKyAgICAgcmMgPSBvcHRlZV9wcm90bWVtX3Bvb2xfaW5p
dChvcHRlZSk7DQo+DQo+IEhlcmUgd2Ugc2hvdWxkIGRvIGEgS2NvbmZpZyBjaGVjayBmb3IgQ09O
RklHX0RNQUJVRl9IRUFQUyBzbyB0aGF0IHdlDQo+IGRvbid0IHByb2NlZWQgYW55IGZ1cnRoZXIg
d2l0aCBpbml0aWFsaXphdGlvbi4NCg0KV2h5PyBJZiBPUC1URUUgaXMgY29uZmlndXJlZCBmb3Ig
cHJvdGVjdGVkIG1lbW9yeSBidXQgdGhlIGtlcm5lbA0KaXNuJ3QsIHNvbWV0aGluZyBpc24ndCBy
aWdodCwgYW5kIGEgcHJpbnQgY291bGQgYmUgdXNlZnVsLg0KDQpDaGVlcnMsDQpKZW5zDQoNCj4N
Cj4gUmVzdCBsb29rcyBnb29kIHRvIG1lLg0KPg0KPiAtU3VtaXQNCj4NCj4gPiArICAgICBpZiAo
cmMpDQo+ID4gKyAgICAgICAgICAgICBnb3RvIGVycl9ub3RpZl91bmluaXQ7DQo+ID4gKw0KPiA+
ICAgICAgIC8qDQo+ID4gICAgICAgICogRW5zdXJlIHRoYXQgdGhlcmUgYXJlIG5vIHByZS1leGlz
dGluZyBzaG0gb2JqZWN0cyBiZWZvcmUgZW5hYmxpbmcNCj4gPiAgICAgICAgKiB0aGUgc2htIGNh
Y2hlIHNvIHRoYXQgdGhlcmUncyBubyBjaGFuY2Ugb2YgcmVjZWl2aW5nIGFuIGludmFsaWQNCj4g
PiBAQCAtMTc4Nyw2ICsxODI3LDcgQEAgc3RhdGljIGludCBvcHRlZV9wcm9iZShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2KQ0KPiA+ICAgICAgICAgICAgICAgb3B0ZWVfZGlzYWJsZV9zaG1f
Y2FjaGUob3B0ZWUpOw0KPiA+ICAgICAgIG9wdGVlX3NtY19ub3RpZl91bmluaXRfaXJxKG9wdGVl
KTsNCj4gPiAgICAgICBvcHRlZV91bnJlZ2lzdGVyX2RldmljZXMoKTsNCj4gPiArICAgICB0ZWVf
ZGV2aWNlX3VucmVnaXN0ZXJfYWxsX2RtYV9oZWFwcyhvcHRlZS0+dGVlZGV2KTsNCj4gPiAgZXJy
X25vdGlmX3VuaW5pdDoNCj4gPiAgICAgICBvcHRlZV9ub3RpZl91bmluaXQob3B0ZWUpOw0KPiA+
ICBlcnJfY2xvc2VfY3R4Og0KPiA+IEBAIC0xODAzLDcgKzE4NDQsNyBAQCBzdGF0aWMgaW50IG9w
dGVlX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpDQo+ID4gICAgICAgdGVlX2Rl
dmljZV91bnJlZ2lzdGVyKG9wdGVlLT50ZWVkZXYpOw0KPiA+ICBlcnJfZnJlZV9vcHRlZToNCj4g
PiAgICAgICBrZnJlZShvcHRlZSk7DQo+ID4gLWVycl9mcmVlX3Bvb2w6DQo+ID4gK2Vycl9mcmVl
X3NobV9wb29sOg0KPiA+ICAgICAgIHRlZV9zaG1fcG9vbF9mcmVlKHBvb2wpOw0KPiA+ICAgICAg
IGlmIChtZW1yZW1hcGVkX3NobSkNCj4gPiAgICAgICAgICAgICAgIG1lbXVubWFwKG1lbXJlbWFw
ZWRfc2htKTsNCj4gPiAtLQ0KPiA+IDIuNDMuMA0KPiA+DQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
