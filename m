Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F37BFD23C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Oct 2025 18:22:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C93B83F7C0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Oct 2025 16:22:50 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 7E57E3F7B5
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Oct 2025 16:22:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=FGumm2YL;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of robh@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=robh@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D33B244E34
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Oct 2025 16:22:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7D5DC19425
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Oct 2025 16:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761150160;
	bh=YCov4x0BqOSH2/C6y9Fgj+4zowfsuwuCXjatGY7QUkY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=FGumm2YLbqk2q5dVH7k9NbkHOlkzGKQ9m+2ARM6o5gptaxrA5N/6nKstvNDdTijmx
	 XiZNNNo4BgrifPtpiZ98sumxspcln0bWzs5M/7nrJNf3zYclXeYtHjR64wb16zB7nc
	 sEGHmfnI/GE6OqhqwFFCT/2sTUnTSxCh1SuaVzLCrGSqRataQf7UjPYfhu2QCHyU9R
	 TK8t1f8W1xyvVJfBb2qFk/EczlY1D6aGQjHx87+qy2bhEKBm2JY6/b/+X93ktW7088
	 CqUL5Y0YSg+AJ83T7D/vK6t2WCYRuacGg+Ga1HlI1oSJkhbT6EjC5AKwz//p1y1N6I
	 2hkXFnWTinzZA==
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b6d3340dc2aso235164266b.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Oct 2025 09:22:40 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWm79Bo6xeCAOU1UF/UMGod5QawJBch1m0Avnv4OvWAS9UatHH9ExNTzmPPeEnEpZFNKe1LUhFxFZ2WAA+O@lists.linaro.org
X-Gm-Message-State: AOJu0YyNeWrm07Y17xJ1zpAT749Ooq9IHC+wHgaMAnAxY1cyJK0sMBOm
	ifP2fmcKwp6bGcCD3TvG8g0pCwPOGMk1/u5G5eGuvCTJoUfUhIi0nppHIwMZu+xmHnRqaxQcYuH
	GiAv+D7eCDzHAO5cgKcgAv813ouw4fg==
X-Google-Smtp-Source: AGHT+IGphdHfOqtuSMrfZHHKoMtu86beDx79AwnS5WmHT0uStu32DJJ/Ln6QYAVqoGfNCp7zAA/jO70wft27b2yZyjA=
X-Received: by 2002:a17:907:845:b0:b2a:47c9:8ff5 with SMTP id
 a640c23a62f3a-b6d2c71f62amr555812966b.10.1761150158929; Wed, 22 Oct 2025
 09:22:38 -0700 (PDT)
MIME-Version: 1.0
References: <20251016-ethos-v5-0-ba0aece0a006@kernel.org> <20251016-ethos-v5-2-ba0aece0a006@kernel.org>
 <aPHhXl6qdU1mMCNt@lstrano-desk.jf.intel.com> <20251017153746.GA1579747-robh@kernel.org>
 <aPM3J2jZcct7ODIp@lstrano-desk.jf.intel.com> <aPNE5po45Umson5V@lstrano-desk.jf.intel.com>
 <aPf+ZLJ2KIsz+lZx@lstrano-desk.jf.intel.com>
In-Reply-To: <aPf+ZLJ2KIsz+lZx@lstrano-desk.jf.intel.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 22 Oct 2025 11:22:27 -0500
X-Gmail-Original-Message-ID: <CAL_JsqK+WUk-cs0ZgiQ-nEQTmdn=faCCnoPED2HnhKx0vJ=uCQ@mail.gmail.com>
X-Gm-Features: AS18NWCRsuFSavTaQ2ZXGKmNF4KE6LZuGI0Wke6UF8bHIQFS03d1VhZlH-NVkSw
Message-ID: <CAL_JsqK+WUk-cs0ZgiQ-nEQTmdn=faCCnoPED2HnhKx0vJ=uCQ@mail.gmail.com>
To: Matthew Brost <matthew.brost@intel.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7E57E3F7B5
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[dt];
	RCPT_COUNT_TWELVE(0.00)[22];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[tomeuvizoso.net,kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,arm.com,fooishbar.org,nxp.com,linux.dev,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: AEDFPYRVH3JGVYBFS64MRR72ROFOSXL3
X-Message-ID-Hash: AEDFPYRVH3JGVYBFS64MRR72ROFOSXL3
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Steven Price <steven.price@arm.com>, Daniel Stone <daniel@fooishbar.org>, Frank Li <Frank.li@nxp.com>, Sui Jingfeng <sui.jingfeng@linux.dev>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 2/2] accel: Add Arm Ethos-U NPU driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AEDFPYRVH3JGVYBFS64MRR72ROFOSXL3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBPY3QgMjEsIDIwMjUgYXQgNDo0M+KAr1BNIE1hdHRoZXcgQnJvc3QgPG1hdHRoZXcu
YnJvc3RAaW50ZWwuY29tPiB3cm90ZToNCj4NCj4gT24gU2F0LCBPY3QgMTgsIDIwMjUgYXQgMTI6
NDI6MzBBTSAtMDcwMCwgTWF0dGhldyBCcm9zdCB3cm90ZToNCj4gPiBPbiBGcmksIE9jdCAxNywg
MjAyNSBhdCAxMTo0Mzo1MVBNIC0wNzAwLCBNYXR0aGV3IEJyb3N0IHdyb3RlOg0KPiA+ID4gT24g
RnJpLCBPY3QgMTcsIDIwMjUgYXQgMTA6Mzc6NDZBTSAtMDUwMCwgUm9iIEhlcnJpbmcgd3JvdGU6
DQo+ID4gPiA+IE9uIFRodSwgT2N0IDE2LCAyMDI1IGF0IDExOjI1OjM0UE0gLTA3MDAsIE1hdHRo
ZXcgQnJvc3Qgd3JvdGU6DQo+ID4gPiA+ID4gT24gVGh1LCBPY3QgMTYsIDIwMjUgYXQgMDQ6MDY6
MDVQTSAtMDUwMCwgUm9iIEhlcnJpbmcgKEFybSkgd3JvdGU6DQo+ID4gPiA+ID4gPiBBZGQgYSBk
cml2ZXIgZm9yIEFybSBFdGhvcy1VNjUvVTg1IE5QVXMuIFRoZSBFdGhvcy1VIE5QVSBoYXMgYQ0K
PiA+ID4gPiA+ID4gcmVsYXRpdmVseSBzaW1wbGUgaW50ZXJmYWNlIHdpdGggc2luZ2xlIGNvbW1h
bmQgc3RyZWFtIHRvIGRlc2NyaWJlDQo+ID4gPiA+ID4gPiBidWZmZXJzLCBvcGVyYXRpb24gc2V0
dGluZ3MsIGFuZCBuZXR3b3JrIG9wZXJhdGlvbnMuIEl0IHN1cHBvcnRzIHVwIHRvIDgNCj4gPiA+
ID4gPiA+IG1lbW9yeSByZWdpb25zICh0aG91Z2ggbm8gaC93IGJvdW5kcyBvbiBhIHJlZ2lvbiku
IFRoZSBFdGhvcyBOUFVzDQo+ID4gPiA+ID4gPiBhcmUgZGVzaWduZWQgdG8gdXNlIGFuIFNSQU0g
Zm9yIHNjcmF0Y2ggbWVtb3J5LiBSZWdpb24gMiBpcyByZXNlcnZlZA0KPiA+ID4gPiA+ID4gZm9y
IFNSQU0gKGxpa2UgdGhlIGRvd25zdHJlYW0gZHJpdmVyIHN0YWNrIGFuZCBjb21waWxlcikuIFVz
ZXJzcGFjZQ0KPiA+ID4gPiA+ID4gZG9lc24ndCBuZWVkIGFjY2VzcyB0byB0aGUgU1JBTS4NCj4g
PiA+ID4NCj4gPiA+ID4gVGhhbmtzIGZvciB0aGUgcmV2aWV3Lg0KPiA+ID4gPg0KPiA+ID4gPiBb
Li4uXQ0KPiA+ID4gPg0KPiA+ID4gPiA+ID4gK3N0YXRpYyBzdHJ1Y3QgZG1hX2ZlbmNlICpldGhv
c3Vfam9iX3J1bihzdHJ1Y3QgZHJtX3NjaGVkX2pvYiAqc2NoZWRfam9iKQ0KPiA+ID4gPiA+ID4g
K3sNCj4gPiA+ID4gPiA+ICsgICAgIHN0cnVjdCBldGhvc3Vfam9iICpqb2IgPSB0b19ldGhvc3Vf
am9iKHNjaGVkX2pvYik7DQo+ID4gPiA+ID4gPiArICAgICBzdHJ1Y3QgZXRob3N1X2RldmljZSAq
ZGV2ID0gam9iLT5kZXY7DQo+ID4gPiA+ID4gPiArICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5j
ZSA9IE5VTEw7DQo+ID4gPiA+ID4gPiArICAgICBpbnQgcmV0Ow0KPiA+ID4gPiA+ID4gKw0KPiA+
ID4gPiA+ID4gKyAgICAgaWYgKHVubGlrZWx5KGpvYi0+YmFzZS5zX2ZlbmNlLT5maW5pc2hlZC5l
cnJvcikpDQo+ID4gPiA+ID4gPiArICAgICAgICAgICAgIHJldHVybiBOVUxMOw0KPiA+ID4gPiA+
ID4gKw0KPiA+ID4gPiA+ID4gKyAgICAgZmVuY2UgPSBldGhvc3VfZmVuY2VfY3JlYXRlKGRldik7
DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBBbm90aGVyIHJlY2xhaW0gaXNzdWU6IGV0aG9zdV9mZW5j
ZV9jcmVhdGUgYWxsb2NhdGVzIG1lbW9yeSB1c2luZw0KPiA+ID4gPiA+IEdGUF9LRVJORUwuIFNp
bmNlIHdlJ3JlIGFscmVhZHkgaW4gdGhlIERNQSBmZW5jZSBzaWduYWxpbmcgcGF0aA0KPiA+ID4g
PiA+IChyZWNsYWltKSwgdGhpcyBjYW4gbGVhZCB0byBhIGRlYWRsb2NrLg0KPiA+ID4gPiA+DQo+
ID4gPiA+ID4gV2l0aG91dCB0b28gbXVjaCB0aG91Z2h0LCB5b3UgbGlrZWx5IHdhbnQgdG8gbW92
ZSB0aGlzIGFsbG9jYXRpb24gdG8NCj4gPiA+ID4gPiBldGhvc3Vfam9iX2RvX3B1c2gsIGJ1dCBi
ZWZvcmUgdGFraW5nIGRldi0+c2NoZWRfbG9jayBvciBjYWxsaW5nDQo+ID4gPiA+ID4gZHJtX3Nj
aGVkX2pvYl9hcm0uDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBXZSByZWFsbHkgc2hvdWxkIGZpeCB0
aGUgRFJNIHNjaGVkdWxlciB3b3JrIHF1ZXVlIHRvIGJlIHRhaW50ZWQgd2l0aA0KPiA+ID4gPiA+
IHJlY2xhaW0uIElmIEkgcmVjYWxsIGNvcnJlY3RseSwgd2UnZCBuZWVkIHRvIHVwZGF0ZSB0aGUg
d29yayBxdWV1ZQ0KPiA+ID4gPiA+IGxheWVyLiBMZXQgbWUgbG9vayBpbnRvIHRoYXTigJRJJ3Zl
IHNlZW4gdGhpcyB0eXBlIG9mIGJ1ZyBzZXZlcmFsIHRpbWVzLA0KPiA+ID4gPiA+IGFuZCBsb2Nr
ZGVwIHNob3VsZCBiZSBhYmxlIHRvIGNhdGNoIGl0Lg0KPiA+ID4gPg0KPiA+ID4gPiBMaWtlbHkg
dGhlIHJvY2tldCBkcml2ZXIgc3VmZmVycyBmcm9tIHRoZSBzYW1lIGlzc3Vlcy4uLg0KPiA+ID4g
Pg0KPiA+ID4NCj4gPiA+IEkgYW0gbm90IHN1cnByaXNlZCBieSB0aGlzIHN0YXRlbWVudC4NCj4g
PiA+DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiA+ICsgICAgIGlmIChJU19FUlIoZmVuY2UpKQ0KPiA+
ID4gPiA+ID4gKyAgICAgICAgICAgICByZXR1cm4gZmVuY2U7DQo+ID4gPiA+ID4gPiArDQo+ID4g
PiA+ID4gPiArICAgICBpZiAoam9iLT5kb25lX2ZlbmNlKQ0KPiA+ID4gPiA+ID4gKyAgICAgICAg
ICAgICBkbWFfZmVuY2VfcHV0KGpvYi0+ZG9uZV9mZW5jZSk7DQo+ID4gPiA+ID4gPiArICAgICBq
b2ItPmRvbmVfZmVuY2UgPSBkbWFfZmVuY2VfZ2V0KGZlbmNlKTsNCj4gPiA+ID4gPiA+ICsNCj4g
PiA+ID4gPiA+ICsgICAgIHJldCA9IHBtX3J1bnRpbWVfZ2V0X3N5bmMoZGV2LT5iYXNlLmRldik7
DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBJIGhhdmVuJ3QgbG9va2VkIGF0IHlvdXIgUE0gZGVzaWdu
LCBidXQgdGhpcyBnZW5lcmFsbHkgbG9va3MgcXVpdGUNCj4gPiA+ID4gPiBkYW5nZXJvdXMgd2l0
aCByZXNwZWN0IHRvIHJlY2xhaW0uIEZvciBleGFtcGxlLCBpZiB5b3VyIFBNIHJlc3VtZSBwYXRo
cw0KPiA+ID4gPiA+IGFsbG9jYXRlIG1lbW9yeSBvciB0YWtlIGxvY2tzIHRoYXQgYWxsb2NhdGUg
bWVtb3J5IHVuZGVybmVhdGgsIHlvdSdyZQ0KPiA+ID4gPiA+IGxpa2VseSB0byBydW4gaW50byBp
c3N1ZXMuDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBBIGJldHRlciBhcHByb2FjaCB3b3VsZCBiZSB0
byBhdHRhY2ggYSBQTSByZWZlcmVuY2UgdG8geW91ciBqb2IgdXBvbg0KPiA+ID4gPiA+IGNyZWF0
aW9uIGFuZCByZWxlYXNlIGl0IHVwb24gam9iIGRlc3RydWN0aW9uLiBUaGF0IHdvdWxkIGJlIHNh
ZmVyIGFuZA0KPiA+ID4gPiA+IHNhdmUgeW91IGhlYWRhY2hlcyBpbiB0aGUgbG9uZyBydW4uDQo+
ID4gPiA+DQo+ID4gPiA+IE91ciBQTSBpcyBub3RoaW5nIG1vcmUgdGhhbiBjbG9jayBlbmFibGUv
ZGlzYWJsZSBhbmQgcmVnaXN0ZXIgaW5pdC4NCj4gPiA+ID4NCj4gPiA+ID4gSWYgdGhlIHJ1bnRp
bWUgUE0gQVBJIGRvZXNuJ3Qgd29yayBhbmQgbmVlZHMgc3BlY2lhbCBkcml2ZXIgd3JhcHBlcnMs
DQo+ID4gPiA+IHRoZW4gSSdtIGluY2xpbmVkIHRvIGp1c3Qgbm90IHVzZSBpdCBhbmQgbWFuYWdl
IGNsb2NrcyBkaXJlY3RseSAoYXMNCj4gPiA+ID4gdGhhdCdzIGFsbCBpdCBpcyBkb2luZykuDQo+
ID4gPiA+DQo+ID4gPg0KPiA+ID4gWWVzLCB0aGVuIHlvdeKAmXJlIHByb2JhYmx5IGZpbmUuIE1v
cmUgY29tcGxleCBkcml2ZXJzIGNhbiBkbyBhbGwgc29ydHMgb2YNCj4gPiA+IHRoaW5ncyBkdXJp
bmcgYSBQTSB3YWtlLCB3aGljaCBpcyB3aHkgUE0gd2FrZXMgc2hvdWxkIGdlbmVyYWxseSBiZSB0
aGUNCj4gPiA+IG91dGVybW9zdCBsYXllci4gSSBzdGlsbCBzdWdnZXN0LCB0byBmdXR1cmUtcHJv
b2YgeW91ciBjb2RlLCB0aGF0IHlvdQ0KPiA+ID4gbW92ZSB0aGUgUE0gcmVmZXJlbmNlIHRvIGFu
IG91dGVyIGxheWVyLg0KPiA+ID4NCj4gPg0KPiA+IEFsc28sIHRha2luZyBhIFBNIHJlZmVyZW5j
ZSBpbiBhIGZ1bmN0aW9uIGNhbGwg4oCUIGFzIG9wcG9zZWQgdG8gdHlpbmcgaXQNCj4gPiB0byBh
IG9iamVjdCdzIGxpZmV0aW1lIOKAlCBpcyByaXNreS4gSXQgY2FuIHF1aWNrbHkgbGVhZCB0byBp
bWJhbGFuY2VzIGluDQo+ID4gUE0gcmVmZXJlbmNlcyBpZiB0aGluZ3MgZ28gc2lkZXdheXMgb3Ig
ZnVuY3Rpb24gY2FsbHMgYmVjb21lIHVuYmFsYW5jZWQuDQo+ID4gRGVwZW5kaW5nIG9uIGhvdyB5
b3VyIGRyaXZlciB1c2VzIHRoZSBEUk0gc2NoZWR1bGVyLCB0aGlzIHNlZW1zIGxpa2UgYQ0KPiA+
IHJlYWwgcG9zc2liaWxpdHkuDQo+ID4NCj4gPiBNYXR0DQo+ID4NCj4gPiA+ID4gPg0KPiA+ID4g
PiA+IFRoaXMgaXMgd2hhdCB3ZSBkbyBpbiBYZSBbMV0gWzJdLg0KPiA+ID4gPiA+DQo+ID4gPiA+
ID4gQWxzbywgaW4gZ2VuZXJhbCwgdGhpcyBkcml2ZXIgaGFzIGJlZW4gcmV2aWV3ZWQgKFJC4oCZ
ZCksIGJ1dCBpdCdzIG5vdA0KPiA+ID4gPiA+IGdyZWF0IHRoYXQgSSBzcG90dGVkIG51bWVyb3Vz
IGlzc3VlcyB3aXRoaW4ganVzdCBmaXZlIG1pbnV0ZXMuIEkgc3VnZ2VzdA0KPiA+ID4gPiA+IHRh
a2luZyBhIHN0ZXAgYmFjayBhbmQgdGhvcm91Z2hseSBldmFsdWF0aW5nIGV2ZXJ5dGhpbmcgdGhp
cyBkcml2ZXIgaXMNCj4gPiA+ID4gPiBkb2luZy4NCj4gPiA+ID4NCj4gPiA+ID4gV2VsbCwgaWYg
aXQgaXMgaGFyZCB0byBnZXQgc2ltcGxlIGRyaXZlcnMgcmlnaHQsIHRoZW4gaXQncyBhIHByb2Js
ZW0NCj4gPiA+ID4gd2l0aCB0aGUgc3Vic3lzdGVtIEFQSXMgSU1PLg0KPiA+ID4gPg0KPiA+ID4N
Cj4gPiA+IFllcywgYWdyZWVkLiBXZSBzaG91bGQgaGF2ZSBhc3NlcnRpb25zIGFuZCBsb2NrZGVw
IGFubm90YXRpb25zIGluIHBsYWNlDQo+ID4gPiB0byBjYXRjaCBkcml2ZXItc2lkZSBtaXN1c2Vz
LiBUaGlzIGlzIHRoZSBzZWNvbmQgZHJpdmVyIEnigJl2ZSByYW5kb21seQ0KPiA+ID4gbG9va2Vk
IGF0IG92ZXIgdGhlIHBhc3QgeWVhciB0aGF0IGhhcyBicm9rZW4gRE1BIGZlbmNpbmcgYW5kIHJl
Y2xhaW0NCj4gPiA+IHJ1bGVzLiBJ4oCZbGwgdGFrZSBhbiBhY3Rpb24gaXRlbSB0byBmaXggdGhp
cyBpbiB0aGUgRFJNIHNjaGVkdWxlciwgYnV0DQo+ID4gPiBJ4oCZbSBhZnJhaWQgSeKAmWxsIGxp
a2VseSBicmVhayBtdWx0aXBsZSBkcml2ZXJzIGluIHRoZSBwcm9jZXNzIGFzIG1pc3Vlc3MNCj4g
PiA+IC8gbG9ja2RlcCB3aWxsIGNvbXBsYWluLg0KPg0KPiBJJ3ZlIHBvc3RlZCBhIHNlcmllcyBb
MV0gZm9yIHRoZSBEUk0gc2NoZWR1bGVyIHdoaWNoIHdpbGwgY29tcGxhaW4gYWJvdXQgdGhlDQo+
IHRoaW5ncyBJJ3ZlIHBvaW50ZWQgb3V0IGhlcmUuDQoNClRoYW5rcy4gSSByYW4gdjYgd2l0aCB0
aGVtIGFuZCBubyBsb2NrZGVwIHNwbGF0cy4NCg0KUm9iDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
