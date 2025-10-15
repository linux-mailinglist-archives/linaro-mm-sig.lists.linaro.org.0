Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D46D7BE0A5F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Oct 2025 22:36:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B881B454D7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Oct 2025 20:36:21 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 67F9344872
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Oct 2025 20:36:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=WkMvNiZr;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of robh@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=robh@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D95576272E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Oct 2025 20:36:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85BD6C4CEF8
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Oct 2025 20:36:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760560578;
	bh=md7oGPOSa0xnbd4TtXfgOqRdp4X3wI06jm34scplTI0=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=WkMvNiZrqpVASBo6Y1Jdsdj4XC1FXGpozd/+qYto2IZNCal5cyuVHZK7rxHe7TBjx
	 bL0eH7NaNvXWbV9xasC5BT4SYDAUxQavXIy+kAfX4UZxSKLN2/c5dz3z81a3YbFbb4
	 1es+lzfqXEthrncO03/AbmGAy5YYkfU8vewOs7XULwsNE3laMBwu3FSerJf9Q36eXS
	 bcB8NiTsS8ZdPL0KlYuUXXqx3UKCbBJrAo9hi6kCo98o/RG9J5L1ua8IrRVp09bOtL
	 UePKr5Ep5kGEINjmEAovqNGlr1mEo7Hr93UqhbNB/NpBWCyr0sVxgj66o50AIe58Zh
	 DJQ79hXoT9RwA==
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b3e9d633b78so346331266b.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Oct 2025 13:36:18 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXE+XIhWpteX24aE6yFr3hQwdrPTdqqbVIrIDff+9vVx5wf2CaZL6zx1WueiFKmpJcIjXqzjRuwMKh49g40@lists.linaro.org
X-Gm-Message-State: AOJu0YyB6+4ZVMVLoXHfAiX1FnVTJS68NynSdwsbd50w0Er3VVV866Sk
	O/VJ48ppMdCpXIqXu4Xtca1EbKKbQWK1JLovX/RBCjsktidQTOYScYYoT/mQkjhWppq1X1MqysQ
	wt379AHBV+MwcUBclc1/P1Gd+ABKJMw==
X-Google-Smtp-Source: AGHT+IHanfPp1aQvqSwf2sXxxoYj2/nZjpy0k09q6j9Kw3Drf0RM9sdzWliM8DjGkucRkyyEJ6rYMj8ZjfP4jDx5X8c=
X-Received: by 2002:a17:907:3e16:b0:b0e:83e7:f6e1 with SMTP id
 a640c23a62f3a-b60530575abmr191496666b.15.1760560577064; Wed, 15 Oct 2025
 13:36:17 -0700 (PDT)
MIME-Version: 1.0
References: <20251015-ethos-v4-0-81025a3dcbf3@kernel.org> <20251015-ethos-v4-2-81025a3dcbf3@kernel.org>
 <aO/4cQ8+eLnwqFSh@lizhi-Precision-Tower-5810>
In-Reply-To: <aO/4cQ8+eLnwqFSh@lizhi-Precision-Tower-5810>
From: Rob Herring <robh@kernel.org>
Date: Wed, 15 Oct 2025 15:36:05 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+L2RHgP9FaEpxzzVRybyjeNr84xgEBbU4KEyZtrz63FA@mail.gmail.com>
X-Gm-Features: AS18NWAQqPDQMMnqBwUDObugcrZ2Q-fcA0YRercJNknG6zrODakK3RAlBsIaPZY
Message-ID: <CAL_Jsq+L2RHgP9FaEpxzzVRybyjeNr84xgEBbU4KEyZtrz63FA@mail.gmail.com>
To: Frank Li <Frank.li@nxp.com>
X-Rspamd-Queue-Id: 67F9344872
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	URIBL_BLOCKED(0.00)[tor.source.kernel.org:rdns,tor.source.kernel.org:helo];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[tomeuvizoso.net,kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,arm.com,fooishbar.org,linux.dev,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[172.105.4.254:from,100.75.92.58:received];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: TO2QX7GCIX3HPHGP4TPMDOGSDS4IP4BH
X-Message-ID-Hash: TO2QX7GCIX3HPHGP4TPMDOGSDS4IP4BH
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Steven Price <steven.price@arm.com>, Daniel Stone <daniel@fooishbar.org>, Sui Jingfeng <sui.jingfeng@linux.dev>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 2/2] accel: Add Arm Ethos-U NPU driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TO2QX7GCIX3HPHGP4TPMDOGSDS4IP4BH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBPY3QgMTUsIDIwMjUgYXQgMjozOeKAr1BNIEZyYW5rIExpIDxGcmFuay5saUBueHAu
Y29tPiB3cm90ZToNCj4NCj4gT24gV2VkLCBPY3QgMTUsIDIwMjUgYXQgMTI6NDc6NDBQTSAtMDUw
MCwgUm9iIEhlcnJpbmcgKEFybSkgd3JvdGU6DQo+ID4gQWRkIGEgZHJpdmVyIGZvciBBcm0gRXRo
b3MtVTY1L1U4NSBOUFVzLiBUaGUgRXRob3MtVSBOUFUgaGFzIGENCj4gPiByZWxhdGl2ZWx5IHNp
bXBsZSBpbnRlcmZhY2Ugd2l0aCBzaW5nbGUgY29tbWFuZCBzdHJlYW0gdG8gZGVzY3JpYmUNCj4g
PiBidWZmZXJzLCBvcGVyYXRpb24gc2V0dGluZ3MsIGFuZCBuZXR3b3JrIG9wZXJhdGlvbnMuIEl0
IHN1cHBvcnRzIHVwIHRvIDgNCj4gPiBtZW1vcnkgcmVnaW9ucyAodGhvdWdoIG5vIGgvdyBib3Vu
ZHMgb24gYSByZWdpb24pLiBUaGUgRXRob3MgTlBVcw0KPiA+IGFyZSBkZXNpZ25lZCB0byB1c2Ug
YW4gU1JBTSBmb3Igc2NyYXRjaCBtZW1vcnkuIFJlZ2lvbiAyIGlzIHJlc2VydmVkDQo+ID4gZm9y
IFNSQU0gKGxpa2UgdGhlIGRvd25zdHJlYW0gZHJpdmVyIHN0YWNrIGFuZCBjb21waWxlcikuIFVz
ZXJzcGFjZQ0KPiA+IGRvZXNuJ3QgbmVlZCBhY2Nlc3MgdG8gdGhlIFNSQU0uDQo+ID4NCj4gPiBU
aGUgaC93IGhhcyBubyBNTVUgbm9yIGV4dGVybmFsIElPTU1VIGFuZCBpcyBhIERNQSBlbmdpbmUg
d2hpY2ggY2FuDQo+ID4gcmVhZCBhbmQgd3JpdGUgYW55d2hlcmUgaW4gbWVtb3J5IHdpdGhvdXQg
aC93IGJvdW5kcyBjaGVja3MuIFRoZSB1c2VyDQo+ID4gc3VibWl0dGVkIGNvbW1hbmQgc3RyZWFt
cyBtdXN0IGJlIHZhbGlkYXRlZCBhZ2FpbnN0IHRoZSBib3VuZHMgb2YgdGhlDQo+ID4gR0VNIEJP
cy4gVGhpcyBpcyBzaW1pbGFyIHRvIHRoZSBWQzQgZGVzaWduIHdoaWNoIHZhbGlkYXRlcyBzaGFk
ZXJzLg0KPiA+DQo+ID4gVGhlIGpvYiBzdWJtaXQgaXMgYmFzZWQgb24gdGhlIHJvY2tldCBkcml2
ZXIgZm9yIHRoZSBSb2NrY2hpcCBOUFUNCj4gPiB1dGlsaXppbmcgdGhlIEdQVSBzY2hlZHVsZXIu
IEl0IGlzIHNpbXBsZXIgYXMgdGhlcmUncyBvbmx5IDEgY29yZSByYXRoZXINCj4gPiB0aGFuIDMu
DQo+ID4NCj4gPiBUZXN0ZWQgb24gaS5NWDkzIHBsYXRmb3JtIChVNjUpIGFuZCBGVlAgKFU4NSkg
d2l0aCBXSVAgTWVzYSBUZWZsb24NCj4gPiBzdXBwb3J0Lg0KPiA+DQo+ID4gQWNrZWQtYnk6IFRo
b21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0KPiA+IFNpZ25lZC1vZmYtYnk6
IFJvYiBIZXJyaW5nIChBcm0pIDxyb2JoQGtlcm5lbC5vcmc+DQo+ID4gLS0tDQo+DQo+IEhvdyB0
byB0ZXN0IHRoaXMgZHJpdmVyPw0KDQpZb3UgbmVlZCB0byBhZGQgdGhlIERUIG5vZGUgdG8gaS5N
WDkzIC5kdHMgbGlrZSB0aGUgZXhhbXBsZSwgYnVpbGQgdGhlDQptZXNhIGV0aG9zdSBicmFuY2gs
IGFuZCB0aGVuIHJ1biB0ZmxpdGUgd2l0aCBpdCBwb2ludGVkIHRvIHRoZSBtZXNhDQpkZWxlZ2F0
ZS4NCg0KSSBjYW4gc2VuZCBhbiBpLk1YOTMgZHRzIHBhdGNoIGFmdGVyIHRoaXMgaXMgbWVyZ2Vk
Lg0KDQo+ID4gdjQ6DQo+ID4gLSBVc2UgYnVsayBjbGsgQVBJDQo+ID4gLSBWYXJpb3VzIHdoaXRl
c3BhY2UgZml4ZXMgbW9zdGx5IGR1ZSB0byBldGhvcy0+ZXRob3N1IHJlbmFtZQ0KPiA+IC0gRHJv
cCBlcnJvciBjaGVjayBvbiBkbWFfc2V0X21hc2tfYW5kX2NvaGVyZW50KCkNCj4gPiAtIERyb3Ag
dW5uZWNlc3NhcnkgcG1fcnVudGltZV9tYXJrX2xhc3RfYnVzeSgpIGNhbGwNCj4gPiAtIE1vdmUg
dmFyaWFibGUgZGVjbGFyYXRpb25zIG91dCBvZiBzd2l0Y2ggKGEgcmlzY3YvY2xhbmcgYnVpbGQg
ZmFpbHVyZSkNCj4gPiAtIFVzZSBsb3dlcmNhc2UgaGV4IGluIGFsbCBkZWZpbmVzDQo+ID4gLSBE
cm9wIHVudXNlZCBldGhvc3VfZGV2aWNlLmNvaGVyZW50IG1lbWJlcg0KPiA+IC0gQWRkIGNvbW1l
bnRzIG9uIGFsbCBsb2Nrcw0KPiA+DQo+IC4uLg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Fj
Y2VsL2V0aG9zdS9ldGhvc3VfZGV2aWNlLmggYi9kcml2ZXJzL2FjY2VsL2V0aG9zdS9ldGhvc3Vf
ZGV2aWNlLmgNCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiA+IGluZGV4IDAwMDAwMDAwMDAw
MC4uNjlkNjEwYzVjMmQ3DQo+ID4gLS0tIC9kZXYvbnVsbA0KPiA+ICsrKyBiL2RyaXZlcnMvYWNj
ZWwvZXRob3N1L2V0aG9zdV9kZXZpY2UuaA0KPiA+IEBAIC0wLDAgKzEsMTkwIEBADQo+ID4gKy8q
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgb3IgTUlUICovDQo+ID4gKy8q
IENvcHlyaWdodCAyMDI1IEFybSwgTHRkLiAqLw0KPiA+ICsNCj4gPiArI2lmbmRlZiBfX0VUSE9T
VV9ERVZJQ0VfSF9fDQo+ID4gKyNkZWZpbmUgX19FVEhPU1VfREVWSUNFX0hfXw0KPiA+ICsNCj4g
PiArI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+DQo+ID4gKw0KPiA+ICsjaW5jbHVkZSA8ZHJtL2Ry
bV9kZXZpY2UuaD4NCj4gPiArI2luY2x1ZGUgPGRybS9ncHVfc2NoZWR1bGVyLmg+DQo+ID4gKw0K
PiA+ICsjaW5jbHVkZSA8ZHJtL2V0aG9zdV9hY2NlbC5oPg0KPiA+ICsNCj4gPiArc3RydWN0IGNs
azsNCj4gPiArc3RydWN0IGdlbl9wb29sOw0KPg0KPiBTdXBwb3NlZCBzaG91bGQgaW5jbHVkZSBj
bGsuaCBpbnN0ZWFkIGRlY2xlYXIgYSBzdHJ1Y3QuDQoNCkhlYWRlcnMgc2hvdWxkIG9ubHkgdXNl
IGEgZm9yd2FyZCBkZWNsYXJhdGlvbiBpZiB0aGF0J3MgYWxsIHRoZXkgbmVlZC4NCkl0IGtlZXBz
IHRoZSBzdHJ1Y3Qgb3BhcXVlIGZvciBzdGFydGVycy4NCg0KPiAuLi4NCj4gPiArDQo+ID4gK3N0
YXRpYyBpbnQgZXRob3N1X29wZW4oc3RydWN0IGRybV9kZXZpY2UgKmRkZXYsIHN0cnVjdCBkcm1f
ZmlsZSAqZmlsZSkNCj4gPiArew0KPiA+ICsgICAgIGludCByZXQgPSAwOw0KPiA+ICsgICAgIHN0
cnVjdCBldGhvc3VfZmlsZV9wcml2ICpwcml2Ow0KPiA+ICsNCj4gPiArICAgICBpZiAoIXRyeV9t
b2R1bGVfZ2V0KFRISVNfTU9EVUxFKSkNCj4gPiArICAgICAgICAgICAgIHJldHVybiAtRUlOVkFM
Ow0KPiA+ICsNCj4gPiArICAgICBwcml2ID0ga3phbGxvYyhzaXplb2YoKnByaXYpLCBHRlBfS0VS
TkVMKTsNCj4gPiArICAgICBpZiAoIXByaXYpIHsNCj4gPiArICAgICAgICAgICAgIHJldCA9IC1F
Tk9NRU07DQo+ID4gKyAgICAgICAgICAgICBnb3RvIGVycl9wdXRfbW9kOw0KPiA+ICsgICAgIH0N
Cj4gPiArICAgICBwcml2LT5lZGV2ID0gdG9fZXRob3N1X2RldmljZShkZGV2KTsNCj4gPiArDQo+
ID4gKyAgICAgcmV0ID0gZXRob3N1X2pvYl9vcGVuKHByaXYpOw0KPiA+ICsgICAgIGlmIChyZXQp
DQo+ID4gKyAgICAgICAgICAgICBnb3RvIGVycl9mcmVlOw0KPiA+ICsNCj4gPiArICAgICBmaWxl
LT5kcml2ZXJfcHJpdiA9IHByaXY7DQo+DQo+IHNsaWNlIHNpbXBsZS4NCj4NCj4gc3RydWN0IGV0
aG9zdV9maWxlX3ByaXYgX19mcmVlKGtmcmVlKSAqcHJpdiA9IE5VTEw7DQo+IC4uLg0KPiBwcml2
ID0ga3phbGxvYyhzaXplb2YoKnByaXYpLCBHRlBfS0VSTkVMKTsNCg0KTGludXMgaGFzIHZvaWNl
ZCBoaXMgb3BpbmlvbiB0aGF0IHRoZSBhYm92ZSBzaG91bGQgbm90IGJlIGRvbmUuIEl0DQpzaG91
bGQgYmUgYWxsIG9uZSBsaW5lICpvbmx5Ki4gQnV0IG5vdyB3ZSBhbGxvdyBDOTkgZGVjbGFyYXRp
b25zLCBzbw0Kd2UgY2FuIG1vdmUgaXQgZG93bi4gV2UgY2FuJ3QgZ2V0IHJpZCBvZiB0aGUgZ290
byBmb3IgbW9kdWxlX3B1dCgpLCBzbw0KaXQgb25seSBtYXJnaW5hbGx5IGhlbHBzIGhlcmUuDQoN
Cj4gLi4uDQo+DQo+IGZpbGUtPmRyaXZlcl9wcml2ID0gbm9fZnJlZV9wdHIocHJpdik7DQo+DQo+
DQo+ID4gKyAgICAgcmV0dXJuIDA7DQo+ID4gKw0KPiA+ICtlcnJfZnJlZToNCj4gPiArICAgICBr
ZnJlZShwcml2KTsNCj4gPiArZXJyX3B1dF9tb2Q6DQo+ID4gKyAgICAgbW9kdWxlX3B1dChUSElT
X01PRFVMRSk7DQo+ID4gKyAgICAgcmV0dXJuIHJldDsNCj4gPiArfQ0KPiA+ICsNCj4gLi4uDQo+
ID4gKw0KPiA+ICsNCj4gPiArc3RhdGljIGludCBldGhvc3VfaW5pdChzdHJ1Y3QgZXRob3N1X2Rl
dmljZSAqZXRob3N1ZGV2KQ0KPiA+ICt7DQo+ID4gKyAgICAgaW50IHJldDsNCj4gPiArICAgICB1
MzIgaWQsIGNvbmZpZzsNCj4gPiArDQo+ID4gKyAgICAgcmV0ID0gZGV2bV9wbV9ydW50aW1lX2Vu
YWJsZShldGhvc3VkZXYtPmJhc2UuZGV2KTsNCj4gPiArICAgICBpZiAocmV0KQ0KPiA+ICsgICAg
ICAgICAgICAgcmV0dXJuIHJldDsNCj4gPiArDQo+ID4gKyAgICAgcmV0ID0gcG1fcnVudGltZV9y
ZXN1bWVfYW5kX2dldChldGhvc3VkZXYtPmJhc2UuZGV2KTsNCj4gPiArICAgICBpZiAocmV0KQ0K
PiA+ICsgICAgICAgICAgICAgcmV0dXJuIHJldDsNCj4gPiArDQo+ID4gKyAgICAgcG1fcnVudGlt
ZV9zZXRfYXV0b3N1c3BlbmRfZGVsYXkoZXRob3N1ZGV2LT5iYXNlLmRldiwgNTApOw0KPiA+ICsg
ICAgIHBtX3J1bnRpbWVfdXNlX2F1dG9zdXNwZW5kKGV0aG9zdWRldi0+YmFzZS5kZXYpOw0KPiA+
ICsNCj4gPiArICAgICAvKiBJZiBQTSBpcyBkaXNhYmxlZCwgd2UgbmVlZCB0byBjYWxsIGV0aG9z
dV9kZXZpY2VfcmVzdW1lKCkgbWFudWFsbHkuICovDQo+ID4gKyAgICAgaWYgKCFJU19FTkFCTEVE
KENPTkZJR19QTSkpIHsNCj4gPiArICAgICAgICAgICAgIHJldCA9IGV0aG9zdV9kZXZpY2VfcmVz
dW1lKGV0aG9zdWRldi0+YmFzZS5kZXYpOw0KPiA+ICsgICAgICAgICAgICAgaWYgKHJldCkNCj4g
PiArICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHJldDsNCj4gPiArICAgICB9DQo+DQo+IEkg
dGhpbmsgaXQgc2hvdWxkIGNhbGwgZXRob3N1X2RldmljZV9yZXN1bWUoKSB1bmNvbmRpdGlvbmFs
IGJlZm9yZQ0KPiBkZXZtX3BtX3J1bnRpbWVfZW5hYmxlKCk7DQo+DQo+IGV0aG9zdV9kZXZpY2Vf
cmVzdW1lKCk7DQo+IHBtX3J1bnRpbWVfc2V0X2FjdGl2ZSgpOw0KPiBwbV9ydW50aW1lX3NldF9h
dXRvc3VzcGVuZF9kZWxheShldGhvc3VkZXYtPmJhc2UuZGV2LCA1MCk7DQo+IGRldm1fcG1fcnVu
dGltZV9lbmFibGUoKTsNCg0KV2h5IGRvIHlvdSB0aGluayB0aGlzPyBEb2VzIHRoaXMgZG8gYSBn
ZXQ/DQoNCkkgZG9uJ3QgdGhpbmsgaXQgaXMgZ29vZCB0byBjYWxsIHRoZSByZXN1bWUgaG9vayBv
biBvdXIgb3duLCBidXQgd2UNCmhhdmUgbm8gY2hvaWNlIHdpdGggIUNPTkZJR19QTS4gV2l0aCBD
T05GSUdfUE0sIHdlIHNob3VsZCBvbmx5IHVzZSB0aGUNCnBtX3J1bnRpbWUgQVBJLg0KDQpSb2IN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
