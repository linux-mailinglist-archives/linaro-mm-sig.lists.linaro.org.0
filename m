Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DC255AC6ACD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 May 2025 15:42:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A251344AF7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 May 2025 13:42:17 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 6B42C40D24
	for <linaro-mm-sig@lists.linaro.org>; Wed, 28 May 2025 13:42:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=GNsjXw9M;
	spf=pass (lists.linaro.org: domain of robh@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=robh@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D35905C55B5
	for <linaro-mm-sig@lists.linaro.org>; Wed, 28 May 2025 13:39:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82A9EC4CEF2
	for <linaro-mm-sig@lists.linaro.org>; Wed, 28 May 2025 13:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748439725;
	bh=V9S/2REy6SRPwlWHL+UjOecCAm58nBM9YBmNFi5Tywo=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=GNsjXw9M9L1DpZv3jViNj4XkRdb+mXI+2m/G47jUDBV7WxLPvUEubGj+1ixOIJqRZ
	 e717/UmjcPxGcIwM1BREjJHjlHf7DQ6xXKLJDrFl1tj04VPf1Nl1KOdgCgSbhZFqe1
	 fB4uuTK4326ar1JEQv1u6vI97cf23A7RHdJvMGc4fpP8miZY3I2LE258OtWM74XvuF
	 uyjjxH7Jkv2eBczrYAMXiiQ4xzeMUCcmt8tKkGRjgdQl+plEZu+sAUbi3CzKXza/g/
	 qkqGVbbTWmfb3tPdTBHScCSnX5dqhvmCdvqDtXY9/jBXm1ah6dywidLzlVPvpGBgkS
	 H/v7sUXokTZ5Q==
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-604bde84d0fso4503942a12.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 28 May 2025 06:42:05 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVOgYRmIQsRF6KeyMuq4EnMdUuAUPb8yZfajj6HJaJXOXWGD8RPdI14XsuH4n86qGJEc7sfHTpFSkTB+sxL@lists.linaro.org
X-Gm-Message-State: AOJu0YwB3z5RUkbXvBgdBK6yURwul3MiZ0d9OCy3fA5nAD1slJF3GNTd
	IBcnIb5of9GqAVMJIzmnDMQ77BQquZF/U46Y03H6XhRsdC7EwBDqHaIwCDIypsdeNrJqmxOrYs9
	SOnsXWu8hyh7g4cEd3KOx8AqReBeu7A==
X-Google-Smtp-Source: AGHT+IF33pDJOIkUnFeeemo7C8vEsrRKhSwUSbgBJjMPDXVeNtNZPzFqXBOHGol2WTjwYaKgOgXZo2D8V9wI8E6hrhc=
X-Received: by 2002:a17:907:7f09:b0:ad5:23e3:48b6 with SMTP id
 a640c23a62f3a-ad85b2b586fmr1522153166b.45.1748439724013; Wed, 28 May 2025
 06:42:04 -0700 (PDT)
MIME-Version: 1.0
References: <20250520-6-10-rocket-v5-0-18c9ca0fcb3c@tomeuvizoso.net> <20250520-6-10-rocket-v5-1-18c9ca0fcb3c@tomeuvizoso.net>
In-Reply-To: <20250520-6-10-rocket-v5-1-18c9ca0fcb3c@tomeuvizoso.net>
From: Rob Herring <robh@kernel.org>
Date: Wed, 28 May 2025 08:41:51 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+2mvUDWWvtPSryAiCNJP_=1vNRxARxWTS=-O-LTQO3Dg@mail.gmail.com>
X-Gm-Features: AX0GCFtEoojAQ2L7InqgVIis2qLVvXMe-zX4FDkooFBAAdsDZZRxWtAdT4YSjTY
Message-ID: <CAL_Jsq+2mvUDWWvtPSryAiCNJP_=1vNRxARxWTS=-O-LTQO3Dg@mail.gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[dt];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,lwn.net,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,collabora.com,oss.qualcomm.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org];
	URIBL_BLOCKED(0.00)[collabora.com:email,devicetree.org:url];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Queue-Id: 6B42C40D24
X-Spamd-Bar: --
Message-ID-Hash: AXWQVM5BBMUP6KKT3AP3E5DHRUVWHRBR
X-Message-ID-Hash: AXWQVM5BBMUP6KKT3AP3E5DHRUVWHRBR
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 01/10] dt-bindings: npu: rockchip,rknn: Add bindings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AXWQVM5BBMUP6KKT3AP3E5DHRUVWHRBR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBNYXkgMjAsIDIwMjUgYXQgNToyN+KAr0FNIFRvbWV1IFZpem9zbyA8dG9tZXVAdG9t
ZXV2aXpvc28ubmV0PiB3cm90ZToNCj4NCj4gQWRkIHRoZSBiaW5kaW5ncyBmb3IgdGhlIE5ldXJh
bCBQcm9jZXNzaW5nIFVuaXQgSVAgZnJvbSBSb2NrY2hpcC4NCj4NCj4gdjI6DQo+IC0gQWRhcHQg
dG8gbmV3IG5vZGUgc3RydWN0dXJlIChvbmUgbm9kZSBwZXIgY29yZSwgZWFjaCB3aXRoIGl0cyBv
d24NCj4gICBJT01NVSkNCj4gLSBTZXZlcmFsIG1pc2MuIGZpeGVzIGZyb20gU2ViYXN0aWFuIFJl
aWNoZWwNCj4NCj4gdjM6DQo+IC0gU3BsaXQgcmVnaXN0ZXIgYmxvY2sgaW4gaXRzIGNvbnN0aXR1
ZW50IHN1YmJsb2NrcywgYW5kIG9ubHkgcmVxdWlyZQ0KPiAgIHRoZSBvbmVzIHRoYXQgdGhlIGtl
cm5lbCB3b3VsZCBldmVyIHVzZSAoTmljb2xhcyBGcmF0dGFyb2xpKQ0KPiAtIEdyb3VwIHN1cHBs
aWVzIChSb2IgSGVycmluZykNCj4gLSBFeHBsYWluIHRoZSB3YXkgaW4gd2hpY2ggdGhlIHRvcCBj
b3JlIGlzIHNwZWNpYWwgKFJvYiBIZXJyaW5nKQ0KPg0KPiB2NDoNCj4gLSBDaGFuZ2UgcmVxdWly
ZWQgbm9kZSBuYW1lIHRvIG5wdUAgKFJvYiBIZXJyaW5nIGFuZCBLcnp5c3p0b2YgS296bG93c2tp
KQ0KPiAtIFJlbW92ZSB1bm5lZWRlZCBpdGVtczogKEtyenlzenRvZiBLb3psb3dza2kpDQo+IC0g
Rml4IHVzZSBvZiBtaW5JdGVtcy9tYXhJdGVtcyAoS3J6eXN6dG9mIEtvemxvd3NraSkNCj4gLSBB
ZGQgcmVnLW5hbWVzIHRvIGxpc3Qgb2YgcmVxdWlyZWQgcHJvcGVydGllcyAoS3J6eXN6dG9mIEtv
emxvd3NraSkNCj4gLSBGaXggZXhhbXBsZSAoS3J6eXN6dG9mIEtvemxvd3NraSkNCj4NCj4gdjU6
DQo+IC0gUmVuYW1lIGZpbGUgdG8gcm9ja2NoaXAscmszNTg4LXJrbm4tY29yZS55YW1sIChLcnp5
c3p0b2YgS296bG93c2tpKQ0KPiAtIFN0cmVhbWxpbmUgY29tcGF0aWJsZSBwcm9wZXJ0eSAoS3J6
eXN6dG9mIEtvemxvd3NraSkNCj4NCj4gU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIFJlaWNoZWwg
PHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFRvbWV1
IFZpem9zbyA8dG9tZXVAdG9tZXV2aXpvc28ubmV0Pg0KPiAtLS0NCj4gIC4uLi9iaW5kaW5ncy9u
cHUvcm9ja2NoaXAscmszNTg4LXJrbm4tY29yZS55YW1sICAgIHwgMTQ3ICsrKysrKysrKysrKysr
KysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDE0NyBpbnNlcnRpb25zKCspDQo+DQo+IGRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbnB1L3JvY2tjaGlwLHJr
MzU4OC1ya25uLWNvcmUueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9u
cHUvcm9ja2NoaXAscmszNTg4LXJrbm4tY29yZS55YW1sDQo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0
DQo+IGluZGV4IDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAuLjllYjQy
NjM2N2FmY2JjMDNjMzg3ZDQzYzRiODI1MGNkZDFiOWVlODYNCj4gLS0tIC9kZXYvbnVsbA0KPiAr
KysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbnB1L3JvY2tjaGlwLHJrMzU4
OC1ya25uLWNvcmUueWFtbA0KPiBAQCAtMCwwICsxLDE0NyBAQA0KPiArIyBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogKEdQTC0yLjAtb25seSBPUiBCU0QtMi1DbGF1c2UpDQo+ICslWUFNTCAxLjIN
Cj4gKy0tLQ0KPiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9ucHUvcm9ja2No
aXAscmszNTg4LXJrbm4tY29yZS55YW1sIw0KPiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUu
b3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjDQo+ICsNCj4gK3RpdGxlOiBOZXVyYWwgUHJvY2Vz
c2luZyBVbml0IElQIGZyb20gUm9ja2NoaXANCj4gKw0KPiArbWFpbnRhaW5lcnM6DQo+ICsgIC0g
VG9tZXUgVml6b3NvIDx0b21ldUB0b21ldXZpem9zby5uZXQ+DQo+ICsNCj4gK2Rlc2NyaXB0aW9u
Og0KPiArICBSb2NrY2hpcCBJUCBmb3IgYWNjZWxlcmF0aW5nIGluZmVyZW5jZSBvZiBuZXVyYWwg
bmV0d29ya3MsIGJhc2VkIG9uIE5WSURJQSdzDQo+ICsgIG9wZW4gc291cmNlIE5WRExBIElQLg0K
PiArDQo+ICsgIFRoZXJlIGlzIHRvIGJlIGEgbm9kZSBwZXIgZWFjaCBjb3JlIGluIHRoZSBOUFUu
IEluIFJvY2tjaGlwJ3MgZGVzaWduIHRoZXJlDQo+ICsgIHdpbGwgYmUgb25lIGNvcmUgdGhhdCBp
cyBzcGVjaWFsIGFuZCBuZWVkcyB0byBiZSBwb3dlcmVkIG9uIGJlZm9yZSBhbnkgb2YgdGhlDQo+
ICsgIG90aGVyIGNvcmVzIGNhbiBiZSB1c2VkLiBUaGlzIHNwZWNpYWwgY29yZSBpcyBjYWxsZWQg
dGhlIHRvcCBjb3JlIGFuZCBzaG91bGQNCj4gKyAgaGF2ZSB0aGUgY29tcGF0aWJsZSBzdHJpbmcg
dGhhdCBjb3JyZXNwb25kcyB0byB0b3AgY29yZXMuDQoNCklzIHRoaXMgcmVhbGx5IGEgZGlzdGlu
Y3Rpb24gaW4gdGhlIGgvdz8gSWYgeW91IGNoYW5nZSB3aGljaCBjb3JlIGlzDQp0aGUgdG9wIG9u
ZSBpbiB0aGUgRFQsIGRvZXMgaXQgc3RpbGwgd29yaz8NCg0KPiArDQo+ICtwcm9wZXJ0aWVzOg0K
PiArICAkbm9kZW5hbWU6DQo+ICsgICAgcGF0dGVybjogJ15ucHVAW2EtZjAtOV0rJCcNCj4gKw0K
PiArICBjb21wYXRpYmxlOg0KPiArICAgIGVudW06DQo+ICsgICAgICAtIHJvY2tjaGlwLHJrMzU4
OC1ya25uLWNvcmUtdG9wDQo+ICsgICAgICAtIHJvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUNCj4g
Kw0KPiArICByZWc6DQo+ICsgICAgbWF4SXRlbXM6IDMNCj4gKw0KPiArICByZWctbmFtZXM6DQo+
ICsgICAgaXRlbXM6DQo+ICsgICAgICAtIGNvbnN0OiBwYw0KPiArICAgICAgLSBjb25zdDogY25h
DQo+ICsgICAgICAtIGNvbnN0OiBjb3JlDQo+ICsNCj4gKyAgY2xvY2tzOg0KPiArICAgIG1pbkl0
ZW1zOiAyDQo+ICsgICAgbWF4SXRlbXM6IDQNCj4gKw0KPiArICBjbG9jay1uYW1lczoNCj4gKyAg
ICBpdGVtczoNCj4gKyAgICAgIC0gY29uc3Q6IGFjbGsNCj4gKyAgICAgIC0gY29uc3Q6IGhjbGsN
Cj4gKyAgICAgIC0gY29uc3Q6IG5wdQ0KPiArICAgICAgLSBjb25zdDogcGNsaw0KPiArICAgIG1p
bkl0ZW1zOiAyDQoNCkl0IGlzIG9kZCB0aGF0IHRoZSBub24tdG9wIGNvcmVzIG9ubHkgaGF2ZSBi
dXMgY2xvY2tzIGFuZCBubyBtb2R1bGUNCmNsb2NrLiBCdXQgYmFzZWQgb24gdGhlIGNsb2NrIG5h
bWVzLCBJJ20gZ3Vlc3NpbmcgdGhlIGFjbGsvaGNsayBhcmUNCm5vdCBzaGFyZWQsIGJ1dCB0aGUg
bnB1IGFuZCBwY2xrIGFyZSBzaGFyZWQuIFNpbmNlIHlvdSBtYWtlIHRoZSB0b3ANCmNvcmUgcHJv
YmUgZmlyc3QsIHRoZW4gaXQgd2lsbCBlbmFibGUgdGhlIHNoYXJlZCBjbG9ja3MgYW5kIHRoZQ0K
bm9uLXRvcCBjb3JlcyBkb24ndCBoYXZlIHRvIHdvcnJ5IGFib3V0IHRoZW0uIElmIHNvLCB0aGF0
IGlzIHdyb25nIGFzDQppdCBpcyBsZXR0aW5nIHRoZSBzb2Z0d2FyZSBkZXNpZ24gZGVmaW5lIHRo
ZSBiaW5kaW5ncy4NCg0KUm9iDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
