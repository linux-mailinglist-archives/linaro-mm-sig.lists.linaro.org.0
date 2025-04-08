Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AB52CA80C3C
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  8 Apr 2025 15:29:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2BA71444CE
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  8 Apr 2025 13:29:14 +0000 (UTC)
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	by lists.linaro.org (Postfix) with ESMTPS id C54E341251
	for <linaro-mm-sig@lists.linaro.org>; Tue,  8 Apr 2025 13:28:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=X9JkMUye;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.160.53 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-2c1caacc1f7so3338904fac.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 08 Apr 2025 06:28:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744118938; x=1744723738; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/8oL4Wx/LFCNYSj8OeE9r8nBxp3KNb2RWFN4L2fcM5k=;
        b=X9JkMUyeg7u8aeeADHBaJsYJv3De6JWbNf0icKM/4dRWJMfyHAM+D0qCSEctPrsbiD
         eQX/6BCVzEkFRt8ZRAgwEgKMqXVNa/DkMDv3brwgz6wppS4DfRFAPBwf4RKVJcji8htQ
         +V9f844AQSTuO8Om+/J2NybxtwiDio/CtCDelWo2crYnYHN2oIyqpu6Jh5wiNwgqxRQ/
         LxymEVBBSylkieGQECjtKpKaB8N/c4W94xuMCNjcl3MTLYf1UJgR+YQQwShqo/dTEura
         7dRMulDoONf1p+y1MWmytEowfppPPJSqic/X+UQy3zIWULGcEwVxCJngiZXz5qbkE1nu
         ofgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744118938; x=1744723738;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/8oL4Wx/LFCNYSj8OeE9r8nBxp3KNb2RWFN4L2fcM5k=;
        b=b1oa9aFcKPUVSf2pcHVnbo3u5lEvawXtMSxUbpwLaJb6X5qXWG7ZIar0yiTObyhCnZ
         e+JSB4XJ2PbxcjQ9+bDEITqZ+KW4ArBQwxrKyRQhXXJEhDbXy5V38gQe2km+SS3pgsYW
         X6gl39CGQH14YMlvYKbEA/fLPHypZeovIynIgMvvwaXGvxdN7M000i6bNKPFUKJbO8+V
         wgb/zZGAYzBTYBijwnkrD8KFy3CPACNbJ+8Ok1jFqamHzFfbGHJefherdIjbLdebBMSh
         oqwUhKZD7SQtb5qTYzI8nv9YSoOg7AwBYQNy6p+kniZBixUMfkPOpFX9A/rEcqiQiEQt
         qktg==
X-Forwarded-Encrypted: i=1; AJvYcCUemsKHQETv8rHfXlLJ5Nfrw9VHB/IXHyx9/sr5NLBicjjq3P21KvconwRNWx9Drbp3zIu2q+xaj/F9hFET@lists.linaro.org
X-Gm-Message-State: AOJu0YwIR6rvwEtgSRjYCHzmVz2GWDHv49uBlu35ongyKcbvIXCa9OKY
	92TflFICS5L1cal8FfaUEEH68Hq/XlQkm3rUxS0/sCAq06Isvl3qq+NSeaThgy5Y7CQHozCpSUy
	YonsYTVcpTkIJ5DV4r86v+JDd+ui3XfvAUODBAR24
X-Gm-Gg: ASbGncuy8ShZb32raHv/IqDDHqHUUOXLW5/xrgc/MS5C3It5Z5EGXyzRKpLhi3P2TWv
	loczwExFw427muogqAS+Ktzm+mnzyXF5v5zk07KANMv8+MfczE99kHSwytriAKAqiIp/PvsMON8
	XgP4dp9uj6nvteGWDKiFhN7iUlTAA=
X-Google-Smtp-Source: AGHT+IHAG/ejTbg5vA3Vos54fD/tOWqlevkuF4IcqFNjsV/ID7Wtar2qRZ5cZm99uR1FeZB4/PY/aA5SmWOjkV3d+8Q=
X-Received: by 2002:a05:6870:8185:b0:2c2:4eb0:41f3 with SMTP id
 586e51a60fabf-2cc9e50b24emr9010028fac.3.1744118938200; Tue, 08 Apr 2025
 06:28:58 -0700 (PDT)
MIME-Version: 1.0
References: <20250305130634.1850178-1-jens.wiklander@linaro.org>
 <20250305130634.1850178-6-jens.wiklander@linaro.org> <Z-JOPgcWlpTlskgd@sumit-X1>
 <CAHUa44GjpHT5Nqo+Ar5jNYNPV-YJQYpLTCf=7oJ1o0VjP-t0nA@mail.gmail.com>
 <Z-ucuPzwz4IqVTgb@sumit-X1> <CAHUa44FpsCVrbwj1=nsJVJFVJSF1kzKdWAkAMXRu6EdLrLvh8g@mail.gmail.com>
 <Z_To9V-JOKZ7ChhE@sumit-X1>
In-Reply-To: <Z_To9V-JOKZ7ChhE@sumit-X1>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Tue, 8 Apr 2025 15:28:45 +0200
X-Gm-Features: ATxdqUHzionenqJkD4YMHdkp7sUKPz9WrHUIS_ghqCFpfmFZzX0EbynUuoPZUrs
Message-ID: <CAHUa44EGWuVPjoxpG-S66he=6dkvkwzxNewaGKVKXUxrO41ztg@mail.gmail.com>
To: Sumit Garg <sumit.garg@kernel.org>
X-Rspamd-Queue-Id: C54E341251
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.53:from];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DNSWL_BLOCKED(0.00)[209.85.160.53:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DWL_DNSWL_BLOCKED(0.00)[linaro.org:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.160.53:from];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: WO2U5U4L46N3RTBQ6DEQMNGKLFOGWSZY
X-Message-ID-Hash: WO2U5U4L46N3RTBQ6DEQMNGKLFOGWSZY
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 05/10] tee: implement restricted DMA-heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WO2U5U4L46N3RTBQ6DEQMNGKLFOGWSZY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBBcHIgOCwgMjAyNSBhdCAxMToxNOKAr0FNIFN1bWl0IEdhcmcgPHN1bWl0LmdhcmdA
a2VybmVsLm9yZz4gd3JvdGU6DQo+DQo+IE9uIFR1ZSwgQXByIDAxLCAyMDI1IGF0IDEwOjMzOjA0
QU0gKzAyMDAsIEplbnMgV2lrbGFuZGVyIHdyb3RlOg0KPiA+IE9uIFR1ZSwgQXByIDEsIDIwMjUg
YXQgOTo1OOKAr0FNIFN1bWl0IEdhcmcgPHN1bWl0LmdhcmdAa2VybmVsLm9yZz4gd3JvdGU6DQo+
ID4gPg0KPiA+ID4gT24gVHVlLCBNYXIgMjUsIDIwMjUgYXQgMTE6NTU6NDZBTSArMDEwMCwgSmVu
cyBXaWtsYW5kZXIgd3JvdGU6DQo+ID4gPiA+IEhpIFN1bWl0LA0KPiA+ID4gPg0KPiA+ID4NCj4g
PiA+IDxzbmlwPg0KPiA+ID4NCj4gPiA+ID4NCj4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gKw0KPiA+
ID4gPiA+ID4gKyNpbmNsdWRlICJ0ZWVfcHJpdmF0ZS5oIg0KPiA+ID4gPiA+ID4gKw0KPiA+ID4g
PiA+ID4gK3N0cnVjdCB0ZWVfZG1hX2hlYXAgew0KPiA+ID4gPiA+ID4gKyAgICAgc3RydWN0IGRt
YV9oZWFwICpoZWFwOw0KPiA+ID4gPiA+ID4gKyAgICAgZW51bSB0ZWVfZG1hX2hlYXBfaWQgaWQ7
DQo+ID4gPiA+ID4gPiArICAgICBzdHJ1Y3QgdGVlX3JzdG1lbV9wb29sICpwb29sOw0KPiA+ID4g
PiA+ID4gKyAgICAgc3RydWN0IHRlZV9kZXZpY2UgKnRlZWRldjsNCj4gPiA+ID4gPiA+ICsgICAg
IC8qIFByb3RlY3RzIHBvb2wgYW5kIHRlZWRldiBhYm92ZSAqLw0KPiA+ID4gPiA+ID4gKyAgICAg
c3RydWN0IG11dGV4IG11Ow0KPiA+ID4gPiA+ID4gK307DQo+ID4gPiA+ID4gPiArDQo+ID4gPiA+
ID4gPiArc3RydWN0IHRlZV9oZWFwX2J1ZmZlciB7DQo+ID4gPiA+ID4gPiArICAgICBzdHJ1Y3Qg
dGVlX3JzdG1lbV9wb29sICpwb29sOw0KPiA+ID4gPiA+ID4gKyAgICAgc3RydWN0IHRlZV9kZXZp
Y2UgKnRlZWRldjsNCj4gPiA+ID4gPiA+ICsgICAgIHNpemVfdCBzaXplOw0KPiA+ID4gPiA+ID4g
KyAgICAgc2l6ZV90IG9mZnM7DQo+ID4gPiA+ID4gPiArICAgICBzdHJ1Y3Qgc2dfdGFibGUgdGFi
bGU7DQo+ID4gPiA+ID4gPiArfTsNCj4gPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiA+ICtzdHJ1Y3Qg
dGVlX2hlYXBfYXR0YWNobWVudCB7DQo+ID4gPiA+ID4gPiArICAgICBzdHJ1Y3Qgc2dfdGFibGUg
dGFibGU7DQo+ID4gPiA+ID4gPiArICAgICBzdHJ1Y3QgZGV2aWNlICpkZXY7DQo+ID4gPiA+ID4g
PiArfTsNCj4gPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiA+ICtzdHJ1Y3QgdGVlX3JzdG1lbV9zdGF0
aWNfcG9vbCB7DQo+ID4gPiA+ID4gPiArICAgICBzdHJ1Y3QgdGVlX3JzdG1lbV9wb29sIHBvb2w7
DQo+ID4gPiA+ID4gPiArICAgICBzdHJ1Y3QgZ2VuX3Bvb2wgKmdlbl9wb29sOw0KPiA+ID4gPiA+
ID4gKyAgICAgcGh5c19hZGRyX3QgcGFfYmFzZTsNCj4gPiA+ID4gPiA+ICt9Ow0KPiA+ID4gPiA+
ID4gKw0KPiA+ID4gPiA+ID4gKyNpZiAhSVNfTU9EVUxFKENPTkZJR19URUUpICYmIElTX0VOQUJM
RUQoQ09ORklHX0RNQUJVRl9IRUFQUykNCj4gPiA+ID4gPg0KPiA+ID4gPiA+IENhbiB0aGlzIGRl
cGVuZGVuY3kgcmF0aGVyIGJlIGJldHRlciBtYW5hZ2VkIHZpYSBLY29uZmlnPw0KPiA+ID4gPg0K
PiA+ID4gPiBUaGlzIHdhcyB0aGUgZWFzaWVzdCB5ZXQgc29tZXdoYXQgZmxleGlibGUgc29sdXRp
b24gSSBjb3VsZCBmaW5kLiBJZg0KPiA+ID4gPiB5b3UgaGF2ZSBzb21ldGhpbmcgYmV0dGVyLCBs
ZXQncyB1c2UgdGhhdCBpbnN0ZWFkLg0KPiA+ID4gPg0KPiA+ID4NCj4gPiA+IC0tLSBhL2RyaXZl
cnMvdGVlL29wdGVlL0tjb25maWcNCj4gPiA+ICsrKyBiL2RyaXZlcnMvdGVlL29wdGVlL0tjb25m
aWcNCj4gPiA+IEBAIC01LDYgKzUsNyBAQCBjb25maWcgT1BURUUNCj4gPiA+ICAgICAgICAgZGVw
ZW5kcyBvbiBIQVZFX0FSTV9TTUNDQw0KPiA+ID4gICAgICAgICBkZXBlbmRzIG9uIE1NVQ0KPiA+
ID4gICAgICAgICBkZXBlbmRzIG9uIFJQTUIgfHwgIVJQTUINCj4gPiA+ICsgICAgICAgc2VsZWN0
IERNQUJVRl9IRUFQUw0KPiA+ID4gICAgICAgICBoZWxwDQo+ID4gPiAgICAgICAgICAgVGhpcyBp
bXBsZW1lbnRzIHRoZSBPUC1URUUgVHJ1c3RlZCBFeGVjdXRpb24gRW52aXJvbm1lbnQgKFRFRSkN
Cj4gPiA+ICAgICAgICAgICBkcml2ZXIuDQo+ID4NCj4gPiBJIHdhbnRlZCB0byBhdm9pZCB0aGF0
IHNpbmNlIHRoZXJlIGFyZSBwbGVudHkgb2YgdXNlIGNhc2VzIHdoZXJlDQo+ID4gRE1BQlVGX0hF
QVBTIGFyZW4ndCBuZWVkZWQuDQo+DQo+IFllYWgsIGJ1dCBob3cgdGhlIHVzZXJzIHdpbGwgZmln
dXJlIG91dCB0aGUgZGVwZW5kZW5jeSB0byBlbmFibGUgRE1BDQo+IGhlYXBzIHdpdGggVEVFIHN1
YnN5c3RlbS4NCg0KSSBob3BlLCB3aXRob3V0IHRvbyBtdWNoIGRpZmZpY3VsdHkuIFRoZXkgYXJl
IGFmdGVyIGFsbCBsb29raW5nIGZvciBhDQp3YXkgdG8gYWxsb2NhdGUgbWVtb3J5IGZyb20gYSBE
TUEgaGVhcC4NCg0KPiBTbyBpdCdzIGJldHRlciB3ZSBwcm92aWRlIGEgZ2VuZXJpYyBrZXJuZWwN
Cj4gS2NvbmZpZyB3aGljaCBlbmFibGVzIGFsbCB0aGUgZGVmYXVsdCBmZWF0dXJlcy4NCg0KSSBk
aXNhZ3JlZSwgaXQgc2hvdWxkIGJlIHBvc3NpYmxlIHRvIGNvbmZpZ3VyZSB3aXRob3V0IERNQUJV
Rl9IRUFQUyBpZiBkZXNpcmVkLg0KDQo+DQo+ID4gVGhpcyBzZWVtcyB0byBkbyB0aGUgam9iOg0K
PiA+ICtjb25maWcgVEVFX0RNQUJVRl9IRUFQDQo+ID4gKyBib29sDQo+ID4gKyBkZXBlbmRzIG9u
IFRFRSA9IHkgJiYgRE1BQlVGX0hFQVBTDQo+ID4NCj4gPiBXZSBjYW4gb25seSB1c2UgRE1BQlVG
X0hFQVBTIGlmIHRoZSBURUUgc3Vic3lzdGVtIGlzIGNvbXBpbGVkIGludG8gdGhlIGtlcm5lbC4N
Cj4NCj4gQWgsIEkgc2VlLiBTbyB3ZSBhcmVuJ3QgZXhwb3J0aW5nIHRoZSBETUEgaGVhcHMgQVBJ
cyBmb3IgVEVFIHN1YnN5c3RlbQ0KPiB0byB1c2UuIFdlIHNob3VsZCBkbyB0aGF0IHN1Y2ggdGhh
dCB0aGVyZSBpc24ndCBhIGhhcmQgZGVwZW5kZW5jeSB0bw0KPiBjb21waWxlIHRoZW0gaW50byB0
aGUga2VybmVsLg0KDQpJIHdhcyBzYXZpbmcgdGhhdCBmb3IgYSBsYXRlciBwYXRjaCBzZXQgYXMg
YSBsYXRlciBwcm9ibGVtLiBXZSBtYXkNCnNhdmUgc29tZSB0aW1lIGJ5IG5vdCBkb2luZyBpdCBu
b3cuDQoNCkNoZWVycywNCkplbnMNCg0KPg0KPiAtU3VtaXQNCj4NCj4gPg0KPiA+IENoZWVycywN
Cj4gPiBKZW5zDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
