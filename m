Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5074FBCE9ED
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Oct 2025 23:32:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 140A646038
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Oct 2025 21:32:41 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id B10C24420A
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Oct 2025 21:32:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=D+k1bZ0n;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of robh@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=robh@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DAD8349EAA
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Oct 2025 21:32:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD5FDC19424
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Oct 2025 21:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760131956;
	bh=ArWUSUq8CsQ/P/wD4tX39L5zyuywg/oQR6eI4rbEtmI=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=D+k1bZ0nFqoniRZZ+cDYGVVwQJSSy2z/JrK/z6/A7hVSAsrXW0duSCsltU23Yg2ox
	 6SkyJy/SU+k7H2VzNq0CmoJFIeLMTxcl0hD7nMoGrQkLRgIr7aPD5FGq16/o6Ht+2M
	 7hZ5lwpJ9Bmpz4vgpnSPsEU8o0t8Wc79RUkdxL0nKj4DBi+vMe+g+nIcPBXzdc9J7k
	 ciL7Y41kYOXqgP3o+Y6+zBvNaiS1cEMOBicz65koAf9KRrp/97Ey9HxQVzeZrCn8B1
	 A2rmouo8i/q/7zPaIanIE6cSFiB5w48QCU00UKIU01kJ6xxZwdHd24ICxT6bFcgKss
	 dLm0CZ51xQbqQ==
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b50206773adso649888266b.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Oct 2025 14:32:36 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUqgkk8zzYgV3zpf0m+mkaTXxtutTHEV+kdc4hn8MSDqZZTbP2dlFJCfUS6iYY2N5c2lMTYj0Uysm/n1Jp7@lists.linaro.org
X-Gm-Message-State: AOJu0YyiYjCYSTSJsBvExFpYIcHhxZbsQyUZN4l+0Y5EeHUgHzgXWu1J
	rO08sqNVrD5A8ndY1vw0+TPn/Wt07s1luhy9cQxoOSlWbPgTK4PxfqBj/2Hxszyq/p8BBpO5tuY
	rwDvepnBo755IGeA3reMvShVz3O8KLA==
X-Google-Smtp-Source: AGHT+IFexy1+T7e90A8g4k3s8jVRhUi34qlbue4tmM9kxCqG5lFhj6gYrjvGeC3ntN1XjkQ1Jf8fwLukEaWkt/6kFwE=
X-Received: by 2002:a17:906:6a16:b0:b23:20e7:b480 with SMTP id
 a640c23a62f3a-b50bedbf4f1mr1683334766b.18.1760131955101; Fri, 10 Oct 2025
 14:32:35 -0700 (PDT)
MIME-Version: 1.0
References: <20250926-ethos-v3-0-6bd24373e4f5@kernel.org> <20250926-ethos-v3-2-6bd24373e4f5@kernel.org>
 <aNrce2up6ZxzMJpo@lizhi-Precision-Tower-5810>
In-Reply-To: <aNrce2up6ZxzMJpo@lizhi-Precision-Tower-5810>
From: Rob Herring <robh@kernel.org>
Date: Fri, 10 Oct 2025 16:32:23 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLbBKyWsMgq0-rooQd5LvxMjPkNtcYvff2fDoCoDxDoOA@mail.gmail.com>
X-Gm-Features: AS18NWB70VVslCF2YO6NXRIQZkN1Oi2H4qa3p8YK7r-F05r60yMYia5RgwxjdvU
Message-ID: <CAL_JsqLbBKyWsMgq0-rooQd5LvxMjPkNtcYvff2fDoCoDxDoOA@mail.gmail.com>
To: Frank Li <Frank.li@nxp.com>
X-Rspamd-Queue-Id: B10C24420A
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
	RCPT_COUNT_TWELVE(0.00)[20];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[tomeuvizoso.net,kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,arm.com,fooishbar.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: WS7ICQNQAUYASISGW6IWZV4ONXTBAIS7
X-Message-ID-Hash: WS7ICQNQAUYASISGW6IWZV4ONXTBAIS7
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Steven Price <steven.price@arm.com>, Daniel Stone <daniel@fooishbar.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 2/2] accel: Add Arm Ethos-U NPU driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WS7ICQNQAUYASISGW6IWZV4ONXTBAIS7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBTZXAgMjksIDIwMjUgYXQgMjoyMuKAr1BNIEZyYW5rIExpIDxGcmFuay5saUBueHAu
Y29tPiB3cm90ZToNCj4NCj4gT24gRnJpLCBTZXAgMjYsIDIwMjUgYXQgMDM6MDA6NDlQTSAtMDUw
MCwgUm9iIEhlcnJpbmcgKEFybSkgd3JvdGU6DQo+ID4gQWRkIGEgZHJpdmVyIGZvciBBcm0gRXRo
b3MtVTY1L1U4NSBOUFVzLiBUaGUgRXRob3MtVSBOUFUgaGFzIGENCj4gPiByZWxhdGl2ZWx5IHNp
bXBsZSBpbnRlcmZhY2Ugd2l0aCBzaW5nbGUgY29tbWFuZCBzdHJlYW0gdG8gZGVzY3JpYmUNCj4g
PiBidWZmZXJzLCBvcGVyYXRpb24gc2V0dGluZ3MsIGFuZCBuZXR3b3JrIG9wZXJhdGlvbnMuIEl0
IHN1cHBvcnRzIHVwIHRvIDgNCj4gPiBtZW1vcnkgcmVnaW9ucyAodGhvdWdoIG5vIGgvdyBib3Vu
ZHMgb24gYSByZWdpb24pLiBUaGUgRXRob3MgTlBVcw0KPiA+IGFyZSBkZXNpZ25lZCB0byB1c2Ug
YW4gU1JBTSBmb3Igc2NyYXRjaCBtZW1vcnkuIFJlZ2lvbiAyIGlzIHJlc2VydmVkDQo+ID4gZm9y
IFNSQU0gKGxpa2UgdGhlIGRvd25zdHJlYW0gZHJpdmVyIHN0YWNrIGFuZCBjb21waWxlcikuIFVz
ZXJzcGFjZQ0KPiA+IGRvZXNuJ3QgbmVlZCBhY2Nlc3MgdG8gdGhlIFNSQU0uDQo+ID4NCg0KPiAu
Li4NCj4gPiArDQo+ID4gK3N0YXRpYyBpbnQgZXRob3N1X2luaXQoc3RydWN0IGV0aG9zdV9kZXZp
Y2UgKmV0aG9zdWRldikNCj4gPiArew0KPiA+ICsgICAgIGludCByZXQ7DQo+ID4gKyAgICAgdTMy
IGlkLCBjb25maWc7DQo+ID4gKw0KPiA+ICsgICAgIHJldCA9IGRldm1fcG1fcnVudGltZV9lbmFi
bGUoZXRob3N1ZGV2LT5iYXNlLmRldik7DQo+ID4gKyAgICAgaWYgKHJldCkNCj4gPiArICAgICAg
ICAgICAgIHJldHVybiByZXQ7DQo+ID4gKw0KPiA+ICsgICAgIHJldCA9IHBtX3J1bnRpbWVfcmVz
dW1lX2FuZF9nZXQoZXRob3N1ZGV2LT5iYXNlLmRldik7DQo+ID4gKyAgICAgaWYgKHJldCkNCj4g
PiArICAgICAgICAgICAgIHJldHVybiByZXQ7DQo+ID4gKw0KPiA+ICsgICAgIHBtX3J1bnRpbWVf
c2V0X2F1dG9zdXNwZW5kX2RlbGF5KGV0aG9zdWRldi0+YmFzZS5kZXYsIDUwKTsNCj4gPiArICAg
ICBwbV9ydW50aW1lX3VzZV9hdXRvc3VzcGVuZChldGhvc3VkZXYtPmJhc2UuZGV2KTsNCj4NCj4g
cG1fcnVudGltZV91c2VfYXV0b3N1c3BlbmQoKSBzaG91bGQgYmUgYWZ0ZXIgbGFzdCByZWdpc3Rl
ciByZWFkDQo+IHJlYWRsX3JlbGF4ZWQoZXRob3N1ZGV2LT5yZWdzICsgTlBVX1JFR19DT05GSUcp
Ow0KPg0KPiBpbmNhc2Ugc2NoZWR1bGUgaGFwcGVuIGJldHdlZW4gcG1fcnVudGltZV91c2VfYXV0
b3N1c3BlbmQoZXRob3N1ZGV2LT5iYXNlLmRldik7DQo+IGFuZCByZWFkbCgpLg0KDQpBbGwgdGhl
IGNhbGwgZG9lcyBpcyBlbmFibGUgYXV0b3N1c3BlbmQuIEkgZG9uJ3QgdGhpbmsgaXQgbWF0dGVy
cw0KZXhhY3RseSB3aGVuIHdlIGVuYWJsZSBpdC4gV2UgYWxyZWFkeSBkaWQgYSBnZXQgcHJldmVu
dGluZyBhdXRvc3VzcGVuZA0KdW50aWwgd2UgZG8gYSBwdXQuDQoNCj4gPiArICAgICAvKiBJZiBQ
TSBpcyBkaXNhYmxlZCwgd2UgbmVlZCB0byBjYWxsIGV0aG9zdV9kZXZpY2VfcmVzdW1lKCkgbWFu
dWFsbHkuICovDQo+ID4gKyAgICAgaWYgKCFJU19FTkFCTEVEKENPTkZJR19QTSkpIHsNCj4gPiAr
ICAgICAgICAgICAgIHJldCA9IGV0aG9zdV9kZXZpY2VfcmVzdW1lKGV0aG9zdWRldi0+YmFzZS5k
ZXYpOw0KPiA+ICsgICAgICAgICAgICAgaWYgKHJldCkNCj4gPiArICAgICAgICAgICAgICAgICAg
ICAgcmV0dXJuIHJldDsNCj4gPiArICAgICB9DQo+ID4gKw0KPiA+ICsgICAgIGV0aG9zdWRldi0+
bnB1X2luZm8uaWQgPSBpZCA9IHJlYWRsX3JlbGF4ZWQoZXRob3N1ZGV2LT5yZWdzICsgTlBVX1JF
R19JRCk7DQo+ID4gKyAgICAgZXRob3N1ZGV2LT5ucHVfaW5mby5jb25maWcgPSBjb25maWcgPSBy
ZWFkbF9yZWxheGVkKGV0aG9zdWRldi0+cmVncyArIE5QVV9SRUdfQ09ORklHKTsNCg0KDQo+IC4u
Lg0KPiA+ICsNCj4gPiArLyoqDQo+ID4gKyAqIGV0aG9zdV9nZW1fY3JlYXRlX3dpdGhfaGFuZGxl
KCkgLSBDcmVhdGUgYSBHRU0gb2JqZWN0IGFuZCBhdHRhY2ggaXQgdG8gYSBoYW5kbGUuDQo+ID4g
KyAqIEBmaWxlOiBEUk0gZmlsZS4NCj4gPiArICogQGRkZXY6IERSTSBkZXZpY2UuDQo+ID4gKyAq
IEBzaXplOiBTaXplIG9mIHRoZSBHRU0gb2JqZWN0IHRvIGFsbG9jYXRlLg0KPiA+ICsgKiBAZmxh
Z3M6IENvbWJpbmF0aW9uIG9mIGRybV9ldGhvc3VfYm9fZmxhZ3MgZmxhZ3MuDQo+ID4gKyAqIEBo
YW5kbGU6IFBvaW50ZXIgaG9sZGluZyB0aGUgaGFuZGxlIHBvaW50aW5nIHRvIHRoZSBuZXcgR0VN
IG9iamVjdC4NCj4gPiArICoNCj4gPiArICogUmV0dXJuOiBaZXJvIG9uIHN1Y2Nlc3MNCj4gPiAr
ICovDQo+ID4gK2ludCBldGhvc3VfZ2VtX2NyZWF0ZV93aXRoX2hhbmRsZShzdHJ1Y3QgZHJtX2Zp
bGUgKmZpbGUsDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkcm1f
ZGV2aWNlICpkZGV2LA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1NjQgKnNp
emUsIHUzMiBmbGFncywgdTMyICpoYW5kbGUpDQo+ID4gK3sNCj4gPiArICAgICBpbnQgcmV0Ow0K
PiA+ICsgICAgIHN0cnVjdCBkcm1fZ2VtX2RtYV9vYmplY3QgKm1lbTsNCj4gPiArICAgICBzdHJ1
Y3QgZXRob3N1X2dlbV9vYmplY3QgKmJvOw0KPg0KPiBtb3ZlICdyZXQnIGhlcmUgdG8ga2VlcCBy
ZXZlcmlzZSBjaHJpc3RtYXMgdHJlZSBvcmRlci4NCg0KSXMgdGhhdCB0aGUgb3JkZXIgRFJNIGxp
a2VzPyBJdCdzIGdvdCB0byBiZSB0aGUgZHVtYmVzdCBjb2Rpbmcgc3RhbmRhcmQgd2UgaGF2ZS4N
Cg0KPiA+ICsNCj4gPiArICAgICBtZW0gPSBkcm1fZ2VtX2RtYV9jcmVhdGUoZGRldiwgKnNpemUp
Ow0KPiA+ICsgICAgIGlmIChJU19FUlIobWVtKSkNCj4gPiArICAgICAgICAgICAgIHJldHVybiBQ
VFJfRVJSKG1lbSk7DQo+ID4gKw0KPiA+ICsgICAgIGJvID0gdG9fZXRob3N1X2JvKCZtZW0tPmJh
c2UpOw0KPiA+ICsgICAgIGJvLT5mbGFncyA9IGZsYWdzOw0KPiA+ICsNCj4gPiArICAgICAvKg0K
PiA+ICsgICAgICAqIEFsbG9jYXRlIGFuIGlkIG9mIGlkciB0YWJsZSB3aGVyZSB0aGUgb2JqIGlz
IHJlZ2lzdGVyZWQNCj4gPiArICAgICAgKiBhbmQgaGFuZGxlIGhhcyB0aGUgaWQgd2hhdCB1c2Vy
IGNhbiBzZWUuDQo+ID4gKyAgICAgICovDQo+ID4gKyAgICAgcmV0ID0gZHJtX2dlbV9oYW5kbGVf
Y3JlYXRlKGZpbGUsICZtZW0tPmJhc2UsIGhhbmRsZSk7DQo+ID4gKyAgICAgaWYgKCFyZXQpDQo+
ID4gKyAgICAgICAgICAgICAqc2l6ZSA9IGJvLT5iYXNlLmJhc2Uuc2l6ZTsNCj4gPiArDQo+ID4g
KyAgICAgLyogZHJvcCByZWZlcmVuY2UgZnJvbSBhbGxvY2F0ZSAtIGhhbmRsZSBob2xkcyBpdCBu
b3cuICovDQo+ID4gKyAgICAgZHJtX2dlbV9vYmplY3RfcHV0KCZtZW0tPmJhc2UpOw0KPiA+ICsN
Cj4gPiArICAgICByZXR1cm4gcmV0Ow0KPiA+ICt9DQo+ID4gKw0KPiAuLi4NCj4gPiArDQo+ID4g
K3N0YXRpYyB2b2lkIGNtZF9zdGF0ZV9pbml0KHN0cnVjdCBjbWRfc3RhdGUgKnN0KQ0KPiA+ICt7
DQo+ID4gKyAgICAgLyogSW5pdGlhbGl6ZSB0byBhbGwgMXMgdG8gZGV0ZWN0IG1pc3Npbmcgc2V0
dXAgKi8NCj4gPiArICAgICBtZW1zZXQoc3QsIDB4ZmYsIHNpemVvZigqc3QpKTsNCj4gPiArfQ0K
PiA+ICsNCj4gPiArc3RhdGljIHU2NCBjbWRfdG9fYWRkcih1MzIgKmNtZCkNCj4gPiArew0KPiA+
ICsgICAgIHJldHVybiAoKHU2NCkoKGNtZFswXSAmIDB4ZmYwMDAwKSA8PCAxNikpIHwgY21kWzFd
Ow0KPg0KPiB3aWxsIEZJRUxEX1BSRVAgaGVscGZ1bD8NCg0KTGlrZSB0aGlzPzoNCg0KcmV0dXJu
ICgodTY0KUZJRUxEX1BSRVAoR0VOTUFTSygyMywgMTYpLCBjbWRbMF0pIDw8IDMyKSB8IGNtZFsx
XTsNCg0KUXVlc3Rpb25hYmxlIHRvIG1lIGlmIHRoYXQncyBiZXR0ZXIuLi4NCg0KPg0KPiA+ICt9
DQo+ID4gKw0KPiA+ICtzdGF0aWMgdTY0IGRtYV9sZW5ndGgoc3RydWN0IGV0aG9zdV92YWxpZGF0
ZWRfY21kc3RyZWFtX2luZm8gKmluZm8sDQo+ID4gKyAgICAgICAgICAgICAgICAgICBzdHJ1Y3Qg
ZG1hX3N0YXRlICpkbWFfc3QsIHN0cnVjdCBkbWEgKmRtYSkNCj4gPiArew0KPiA+ICsgICAgIHM4
IG1vZGUgPSBkbWFfc3QtPm1vZGU7DQo+ID4gKyAgICAgdTY0IGxlbiA9IGRtYS0+bGVuOw0KPiA+
ICsNCj4gPiArICAgICBpZiAobW9kZSA+PSAxKSB7DQo+ID4gKyAgICAgICAgICAgICBsZW4gKz0g
ZG1hLT5zdHJpZGVbMF07DQo+ID4gKyAgICAgICAgICAgICBsZW4gKj0gZG1hX3N0LT5zaXplMDsN
Cj4gPiArICAgICB9DQo+ID4gKyAgICAgaWYgKG1vZGUgPT0gMikgew0KPiA+ICsgICAgICAgICAg
ICAgbGVuICs9IGRtYS0+c3RyaWRlWzFdOw0KPiA+ICsgICAgICAgICAgICAgbGVuICo9IGRtYV9z
dC0+c2l6ZTE7DQo+ID4gKyAgICAgfQ0KPiA+ICsgICAgIGlmIChkbWEtPnJlZ2lvbiA+PSAwKQ0K
PiA+ICsgICAgICAgICAgICAgaW5mby0+cmVnaW9uX3NpemVbZG1hLT5yZWdpb25dID0gbWF4KGlu
Zm8tPnJlZ2lvbl9zaXplW2RtYS0+cmVnaW9uXSwNCj4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsZW4gKyBkbWEtPm9mZnNldCk7DQo+ID4gKw0K
PiA+ICsgICAgIHJldHVybiBsZW47DQo+ID4gK30NCj4gPiArDQo+IC4uLg0KPg0KPiA+ICsNCj4g
PiArc3RhdGljIHZvaWQgZXRob3N1X2pvYl9oYW5kbGVfaXJxKHN0cnVjdCBldGhvc3VfZGV2aWNl
ICpkZXYpDQo+ID4gK3sNCj4gPiArICAgICB1MzIgc3RhdHVzOw0KPiA+ICsNCj4gPiArICAgICBw
bV9ydW50aW1lX21hcmtfbGFzdF9idXN5KGRldi0+YmFzZS5kZXYpOw0KPg0KPiBJIHRoaW5rIGRv
bid0IG5lZWQgcG1fcnVudGltZV9tYXJrX2xhc3RfYnVzeSgpIGhlcmUgYmVjYXVzZQ0KPiBwbV9y
dW50aW1lX3B1dF9hdXRvc3VzcGVuZCgpIGFscmVhZHkgY2FsbCBwbV9ydW50aW1lX21hcmtfbGFz
dF9idXN5KCkuDQo+DQo+IG9ubHkgbWFyayBsYXN0IGJ1c3kgd2l0aG91dCBwbV9ydW50aW1lX3B1
dCgpIGNhbid0IGFmZmVjdCBydW4gdGltZSBwbQ0KPiBzdGF0ZSwgc3RpbGwgaW4gYWN0aXZlIHN0
YXRlLg0KDQpZZXMsIGFncmVlZC4gQ29waWVkIGZyb20gcm9ja2V0LCBzbyBUb21ldSwgeW91IG1h
eSB3YW50IHRvIGxvb2sgYXQgdGhhdC4NCg0KPg0KPiA+ICsNCj4gPiArICAgICBzdGF0dXMgPSBy
ZWFkbF9yZWxheGVkKGRldi0+cmVncyArIE5QVV9SRUdfU1RBVFVTKTsNCj4gPiArDQo+ID4gKyAg
ICAgaWYgKHN0YXR1cyAmIChTVEFUVVNfQlVTX1NUQVRVUyB8IFNUQVRVU19DTURfUEFSU0VfRVJS
KSkgew0KPiA+ICsgICAgICAgICAgICAgZGV2X2VycihkZXYtPmJhc2UuZGV2LCAiRXJyb3IgSVJR
IC0gJXhcbiIsIHN0YXR1cyk7DQo+ID4gKyAgICAgICAgICAgICBkcm1fc2NoZWRfZmF1bHQoJmRl
di0+c2NoZWQpOw0KPiA+ICsgICAgICAgICAgICAgcmV0dXJuOw0KPiA+ICsgICAgIH0NCj4gPiAr
DQo+ID4gKyAgICAgc2NvcGVkX2d1YXJkKG11dGV4LCAmZGV2LT5qb2JfbG9jaykgew0KPiA+ICsg
ICAgICAgICAgICAgaWYgKGRldi0+aW5fZmxpZ2h0X2pvYikgew0KPiA+ICsgICAgICAgICAgICAg
ICAgICAgICBkbWFfZmVuY2Vfc2lnbmFsKGRldi0+aW5fZmxpZ2h0X2pvYi0+ZG9uZV9mZW5jZSk7
DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHBtX3J1bnRpbWVfcHV0X2F1dG9zdXNwZW5kKGRl
di0+YmFzZS5kZXYpOw0KPiA+ICsgICAgICAgICAgICAgICAgICAgICBkZXYtPmluX2ZsaWdodF9q
b2IgPSBOVUxMOw0KPiA+ICsgICAgICAgICAgICAgfQ0KPiA+ICsgICAgIH0NCj4gPiArfQ0KPiA+
ICsNCj4gLi4uDQo+ID4gKw0KPiA+ICtpbnQgZXRob3N1X2pvYl9pbml0KHN0cnVjdCBldGhvc3Vf
ZGV2aWNlICpkZXYpDQo+ID4gK3sNCj4gPiArICAgICBzdHJ1Y3QgZHJtX3NjaGVkX2luaXRfYXJn
cyBhcmdzID0gew0KPiA+ICsgICAgICAgICAgICAgLm9wcyA9ICZldGhvc3Vfc2NoZWRfb3BzLA0K
PiA+ICsgICAgICAgICAgICAgLm51bV9ycXMgPSBEUk1fU0NIRURfUFJJT1JJVFlfQ09VTlQsDQo+
ID4gKyAgICAgICAgICAgICAuY3JlZGl0X2xpbWl0ID0gMSwNCj4gPiArICAgICAgICAgICAgIC50
aW1lb3V0ID0gbXNlY3NfdG9famlmZmllcyhKT0JfVElNRU9VVF9NUyksDQo+ID4gKyAgICAgICAg
ICAgICAubmFtZSA9IGRldl9uYW1lKGRldi0+YmFzZS5kZXYpLA0KPiA+ICsgICAgICAgICAgICAg
LmRldiA9IGRldi0+YmFzZS5kZXYsDQo+ID4gKyAgICAgfTsNCj4gPiArICAgICBpbnQgcmV0Ow0K
PiA+ICsNCj4gPiArICAgICBzcGluX2xvY2tfaW5pdCgmZGV2LT5mZW5jZV9sb2NrKTsNCj4gPiAr
ICAgICBtdXRleF9pbml0KCZkZXYtPmpvYl9sb2NrKTsNCj4gPiArICAgICBtdXRleF9pbml0KCZk
ZXYtPnNjaGVkX2xvY2spOw0KPg0KPiBub3cgcGVyZmVyIHVzZSBkZXZfbXV0ZXhfaW5pdCgpLg0K
DQokIGdpdCBncmVwIGRldl9tdXRleF9pbml0DQooRU5EKQ0KDQpIdWg/Pw0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
