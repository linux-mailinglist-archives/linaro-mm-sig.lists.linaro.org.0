Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B5ABE3659
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Oct 2025 14:35:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D839C45607
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Oct 2025 12:35:21 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 0172043C89
	for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Oct 2025 12:35:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=YPdte9cT;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of robh@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=robh@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 271914A90C
	for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Oct 2025 12:35:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C037C4AF09
	for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Oct 2025 12:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760618119;
	bh=ev4xi92YkUrDcoVNL6uxLos7Y67B5zzgJ5jAk4NRFmA=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=YPdte9cTCGYDvPFJY1WmGfrxmmPxHXNEjlzJy2k8OxuxZGZGez8Zyjo8FFQsU8S9Y
	 YvATxrHpiC71PXHRewUT3MZXw1gRZb6tPbF5k47ZawJTd1PLSVe8/2oLDPU5jLj4o0
	 Yo5OF7mgI7v0mfrL6Y2J1/qmYOpKZBPkiExyE8GPU4c+t1uJAUKYcOqOpTYpn3qjr7
	 kHl+DXGxE/3M1ymwHozHRUXcQatyqgQxmiOPFg7wYYQ2E1DRUrykNk89sHoA1e2+Za
	 BLcEAPUjSV92wiQHq/iitBa2rGrqrjHF8Ths6fVRgG6VbWUin8G0oqe1U0SCv8xGu6
	 WzMjfxJlnhlwA==
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b4539dddd99so119814566b.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Oct 2025 05:35:18 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXTm8xNF0rath3gcyj1AdOZKBMUTxaJ3EdAkFqJb6CHBIUk99FIG5K4UzeJqU/15fan+OCJlBHTfapT2IQf@lists.linaro.org
X-Gm-Message-State: AOJu0YxbEB1+3uIQoU9V38GcAVCk1/i+fM03G6cud/GI0pWp3vLgCka4
	eXcQ5Ww7Naz3OxUnkszikOsPmEg1hoViilfQ3pVqOLPfKjN/Owgwxb8xPsRBSAwFmMB0ZL0AfwV
	mck0Nk8fVFCkAfT6GjcnPmD+RdJbtWg==
X-Google-Smtp-Source: AGHT+IF09IaTWh5hPMByGEhJhbB7ubCMKkjb0+VywtvJIMXMIb9+PKxQo3yMI16LEly4MkZbwkJSOQahzjMiqRuOFZw=
X-Received: by 2002:a17:907:9706:b0:b39:57ab:ec18 with SMTP id
 a640c23a62f3a-b50abfd5472mr3466409966b.45.1760618117323; Thu, 16 Oct 2025
 05:35:17 -0700 (PDT)
MIME-Version: 1.0
References: <20251015-ethos-v4-0-81025a3dcbf3@kernel.org> <20251015-ethos-v4-2-81025a3dcbf3@kernel.org>
 <aO/4cQ8+eLnwqFSh@lizhi-Precision-Tower-5810> <CAL_Jsq+L2RHgP9FaEpxzzVRybyjeNr84xgEBbU4KEyZtrz63FA@mail.gmail.com>
 <aPAL67Oct5yJv8/d@lizhi-Precision-Tower-5810>
In-Reply-To: <aPAL67Oct5yJv8/d@lizhi-Precision-Tower-5810>
From: Rob Herring <robh@kernel.org>
Date: Thu, 16 Oct 2025 07:35:06 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+sEYztJKdD0t8uPwwv1uKk_tac3MqQMUgxfrRjRZmz4A@mail.gmail.com>
X-Gm-Features: AS18NWAqGcCvN_8PgOdkGiiyBvIwDxdosaOdIF4pUQJKs-MAlM8rA_NiueiqS1k
Message-ID: <CAL_Jsq+sEYztJKdD0t8uPwwv1uKk_tac3MqQMUgxfrRjRZmz4A@mail.gmail.com>
To: Frank Li <Frank.li@nxp.com>
X-Rspamd-Queue-Id: 0172043C89
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
	RCPT_COUNT_TWELVE(0.00)[21];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[tomeuvizoso.net,kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,arm.com,fooishbar.org,linux.dev,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[172.234.252.31:from];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: VJTIRKNN5IRJMR2MIXKDIJFWS5ASM4EF
X-Message-ID-Hash: VJTIRKNN5IRJMR2MIXKDIJFWS5ASM4EF
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Steven Price <steven.price@arm.com>, Daniel Stone <daniel@fooishbar.org>, Sui Jingfeng <sui.jingfeng@linux.dev>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 2/2] accel: Add Arm Ethos-U NPU driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VJTIRKNN5IRJMR2MIXKDIJFWS5ASM4EF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBPY3QgMTUsIDIwMjUgYXQgNDowMuKAr1BNIEZyYW5rIExpIDxGcmFuay5saUBueHAu
Y29tPiB3cm90ZToNCj4NCj4gT24gV2VkLCBPY3QgMTUsIDIwMjUgYXQgMDM6MzY6MDVQTSAtMDUw
MCwgUm9iIEhlcnJpbmcgd3JvdGU6DQo+ID4gT24gV2VkLCBPY3QgMTUsIDIwMjUgYXQgMjozOeKA
r1BNIEZyYW5rIExpIDxGcmFuay5saUBueHAuY29tPiB3cm90ZToNCj4gPiA+DQo+ID4gPiBPbiBX
ZWQsIE9jdCAxNSwgMjAyNSBhdCAxMjo0Nzo0MFBNIC0wNTAwLCBSb2IgSGVycmluZyAoQXJtKSB3
cm90ZToNCj4gPiA+ID4gQWRkIGEgZHJpdmVyIGZvciBBcm0gRXRob3MtVTY1L1U4NSBOUFVzLiBU
aGUgRXRob3MtVSBOUFUgaGFzIGENCj4gPiA+ID4gcmVsYXRpdmVseSBzaW1wbGUgaW50ZXJmYWNl
IHdpdGggc2luZ2xlIGNvbW1hbmQgc3RyZWFtIHRvIGRlc2NyaWJlDQo+ID4gPiA+IGJ1ZmZlcnMs
IG9wZXJhdGlvbiBzZXR0aW5ncywgYW5kIG5ldHdvcmsgb3BlcmF0aW9ucy4gSXQgc3VwcG9ydHMg
dXAgdG8gOA0KPiA+ID4gPiBtZW1vcnkgcmVnaW9ucyAodGhvdWdoIG5vIGgvdyBib3VuZHMgb24g
YSByZWdpb24pLiBUaGUgRXRob3MgTlBVcw0KPiA+ID4gPiBhcmUgZGVzaWduZWQgdG8gdXNlIGFu
IFNSQU0gZm9yIHNjcmF0Y2ggbWVtb3J5LiBSZWdpb24gMiBpcyByZXNlcnZlZA0KPiA+ID4gPiBm
b3IgU1JBTSAobGlrZSB0aGUgZG93bnN0cmVhbSBkcml2ZXIgc3RhY2sgYW5kIGNvbXBpbGVyKS4g
VXNlcnNwYWNlDQo+ID4gPiA+IGRvZXNuJ3QgbmVlZCBhY2Nlc3MgdG8gdGhlIFNSQU0uDQoNCj4g
PiA+ID4gK3N0YXRpYyBpbnQgZXRob3N1X2luaXQoc3RydWN0IGV0aG9zdV9kZXZpY2UgKmV0aG9z
dWRldikNCj4gPiA+ID4gK3sNCj4gPiA+ID4gKyAgICAgaW50IHJldDsNCj4gPiA+ID4gKyAgICAg
dTMyIGlkLCBjb25maWc7DQo+ID4gPiA+ICsNCj4gPiA+ID4gKyAgICAgcmV0ID0gZGV2bV9wbV9y
dW50aW1lX2VuYWJsZShldGhvc3VkZXYtPmJhc2UuZGV2KTsNCj4gPiA+ID4gKyAgICAgaWYgKHJl
dCkNCj4gPiA+ID4gKyAgICAgICAgICAgICByZXR1cm4gcmV0Ow0KPiA+ID4gPiArDQo+ID4gPiA+
ICsgICAgIHJldCA9IHBtX3J1bnRpbWVfcmVzdW1lX2FuZF9nZXQoZXRob3N1ZGV2LT5iYXNlLmRl
dik7DQo+ID4gPiA+ICsgICAgIGlmIChyZXQpDQo+ID4gPiA+ICsgICAgICAgICAgICAgcmV0dXJu
IHJldDsNCj4gPiA+ID4gKw0KPiA+ID4gPiArICAgICBwbV9ydW50aW1lX3NldF9hdXRvc3VzcGVu
ZF9kZWxheShldGhvc3VkZXYtPmJhc2UuZGV2LCA1MCk7DQo+ID4gPiA+ICsgICAgIHBtX3J1bnRp
bWVfdXNlX2F1dG9zdXNwZW5kKGV0aG9zdWRldi0+YmFzZS5kZXYpOw0KPiA+ID4gPiArDQo+ID4g
PiA+ICsgICAgIC8qIElmIFBNIGlzIGRpc2FibGVkLCB3ZSBuZWVkIHRvIGNhbGwgZXRob3N1X2Rl
dmljZV9yZXN1bWUoKSBtYW51YWxseS4gKi8NCj4gPiA+ID4gKyAgICAgaWYgKCFJU19FTkFCTEVE
KENPTkZJR19QTSkpIHsNCj4gPiA+ID4gKyAgICAgICAgICAgICByZXQgPSBldGhvc3VfZGV2aWNl
X3Jlc3VtZShldGhvc3VkZXYtPmJhc2UuZGV2KTsNCj4gPiA+ID4gKyAgICAgICAgICAgICBpZiAo
cmV0KQ0KPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHJldDsNCj4gPiA+ID4g
KyAgICAgfQ0KPiA+ID4NCj4gPiA+IEkgdGhpbmsgaXQgc2hvdWxkIGNhbGwgZXRob3N1X2Rldmlj
ZV9yZXN1bWUoKSB1bmNvbmRpdGlvbmFsIGJlZm9yZQ0KPiA+ID4gZGV2bV9wbV9ydW50aW1lX2Vu
YWJsZSgpOw0KPiA+ID4NCj4gPiA+IGV0aG9zdV9kZXZpY2VfcmVzdW1lKCk7DQo+ID4gPiBwbV9y
dW50aW1lX3NldF9hY3RpdmUoKTsNCj4gPiA+IHBtX3J1bnRpbWVfc2V0X2F1dG9zdXNwZW5kX2Rl
bGF5KGV0aG9zdWRldi0+YmFzZS5kZXYsIDUwKTsNCj4gPiA+IGRldm1fcG1fcnVudGltZV9lbmFi
bGUoKTsNCj4gPg0KPiA+IFdoeSBkbyB5b3UgdGhpbmsgdGhpcz8gRG9lcyB0aGlzIGRvIGEgZ2V0
Pw0KPiA+DQo+ID4gSSBkb24ndCB0aGluayBpdCBpcyBnb29kIHRvIGNhbGwgdGhlIHJlc3VtZSBo
b29rIG9uIG91ciBvd24sIGJ1dCB3ZQ0KPiA+IGhhdmUgbm8gY2hvaWNlIHdpdGggIUNPTkZJR19Q
TS4gV2l0aCBDT05GSUdfUE0sIHdlIHNob3VsZCBvbmx5IHVzZSB0aGUNCj4gPiBwbV9ydW50aW1l
IEFQSS4NCj4NCj4gRW5hYmxlIGNsb2NrIGFuZCBkbyBzb21lIGluaXQgd29yayBhdCBwcm9iZSgp
IGlzIHF1aXRlIGNvbW1vbi4gQnV0IEkgbmV2ZXINCj4gc2VlbiBJU19FTkFCTEVEKENPTkZJR19Q
TSkgY2hlY2suIEl0IGlzIHF1aXRlIHdlaXJkIGFuZCBub3QgbmVjZXNzYXJ5IHRvDQo+IGNoZWNr
IENPTkZJR19QTSBmbGFncy4gVGhlIG1vc3QgQ09ORklHX1BNIGlzIGVuYWJsZWQsIHNvIHRoZSBi
cmFuY2ggIUNPTkZJR19QTQ0KPiBhbG1vc3QgbmV2ZXIgdGVzdGVkLg0KDQpPa2F5LCBJIGdldCB3
aGF0IHlvdSBtZWFudC4NCg0KPg0KPiBwcm9iZSgpDQo+IHsNCj4gICAgICAgICBkZXZtX2Nsa19i
dWxrX2dldF9hbGxfZW5hYmxlZCgpOw0KPg0KPiAgICAgICAgIC4uLiBkaWQgc29tZSBpbml0IHdv
cmsNCj4NCj4gICAgICAgICBwbV9ydW50aW1lX3NldF9hY3RpdmUoKTsNCj4gICAgICAgICBkZXZt
X3BtX3J1bnRpbWVfZW5hYmxlKCk7DQo+DQo+ICAgICAgICAgLi4uDQo+ICAgICAgICAgcG1fcnVu
dGltZV9wdXRfYXV0b3N1c3BlbmQoZXRob3N1ZGV2LT5iYXNlLmRldik7DQo+IH0NCg0KSSB0aGlu
ayB3ZSBzdGlsbCBuZWVkIGEgcG1fcnVudGltZV9nZXRfbm9yZXN1bWUoKSBpbiBoZXJlIHNpbmNl
IHdlIGRvDQphIHB1dCBsYXRlciBvbi4gSGVyZSdzIHdoYXQgSSBoYXZlIG5vdzoNCg0KICAgIHJl
dCA9IGV0aG9zdV9kZXZpY2VfcmVzdW1lKGV0aG9zdWRldi0+YmFzZS5kZXYpOw0KICAgIGlmIChy
ZXQpDQogICAgICAgIHJldHVybiByZXQ7DQoNCiAgICBwbV9ydW50aW1lX3NldF9hdXRvc3VzcGVu
ZF9kZWxheShldGhvc3VkZXYtPmJhc2UuZGV2LCA1MCk7DQogICAgcG1fcnVudGltZV91c2VfYXV0
b3N1c3BlbmQoZXRob3N1ZGV2LT5iYXNlLmRldik7DQogICAgcmV0ID0gZGV2bV9wbV9ydW50aW1l
X3NldF9hY3RpdmVfZW5hYmxlZChldGhvc3VkZXYtPmJhc2UuZGV2KTsNCiAgICBpZiAocmV0KQ0K
ICAgICAgICByZXR1cm4gcmV0Ow0KICAgIHBtX3J1bnRpbWVfZ2V0X25vcmVzdW1lKGV0aG9zdWRl
di0+YmFzZS5kZXYpOw0KDQoNClJvYg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
