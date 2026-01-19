Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E42D3B7B9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 20:54:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F04573F961
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 19:54:52 +0000 (UTC)
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com [209.85.222.196])
	by lists.linaro.org (Postfix) with ESMTPS id 4A9A93F7D8
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 19:54:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=PEA+K0j4;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.196 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f196.google.com with SMTP id af79cd13be357-8c52c1d2a7bso624125185a.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 11:54:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1768852487; x=1769457287; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zwZ9o3ha19w1BUlcGeJzNZvsy/mlKSz+FRMjn04+Z/c=;
        b=PEA+K0j47Dpz5X5q+mgOFrJoDLwDBhbcGma0tofauuuI5HtyPDhI8Zhrmg653EYDi1
         bWitrRbN04kZqTWJm8Ho46K44yc2zYm6HnPAMKFvLA12TxBUfeT5Debzp9lPgkRj+ZGe
         VIoeuxZBIxymGPGQw2rBeQ8woY7WRDqWdNiH649rEknNnlIuc8EeV6YBdJlx6GAVtC7Q
         Q1jEB81d2Ik5PksV11qMafb18TsZE4YkAi6tPrb2zZDSUtncdWjypoaJmlJ97qdijcUL
         kGkZCyM9Qs4mYhxE1mLWZN6lRMYWkH15c62T8GIjR8mq05i78CXjuKZsdqQxRx+bVuHH
         KNYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768852487; x=1769457287;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zwZ9o3ha19w1BUlcGeJzNZvsy/mlKSz+FRMjn04+Z/c=;
        b=Okl96rAULw3Y67wa03Y2KyvK0/qP1GEIYtegcnwU2QowOjD75y3JS5OsUOxYvi6dKr
         /OpL2JVqIlkMgDqvpnas+ORjHObU1F99Ajj8pbLcpYTNDHIjoX3zxzjEPA1cWLfLyGJZ
         Yg/f7brFYYpMRuUilBEPZ3DmfyWHxzzkmhfb+5h4CGyINkF0J95PUToWF6o2oAC6U240
         rnNPVaXoVFLy6atvIdEJWc2XjQJNfsfSIIchkn4KdI7Qx7yP8IuoIGQCAbPzSnBkXW5P
         8aZJLyh7ifcsgmQXm4gTLett5KvbbWsP39wN9kViPwE4Wd05hJrugH96Gif9qJdv3Sz9
         /P6w==
X-Forwarded-Encrypted: i=1; AJvYcCUwhdh9gj5FTVeXu21PJ53YIRbZQacHTrmLF2/29H5YoEjcrJm6XLVi911MnvNyw8ygah6+pXFVC7+ykEO6@lists.linaro.org
X-Gm-Message-State: AOJu0YwpQWn7F5JgYrfB3dWHpBjXt2sa6CcvoIp8+1HAQmKh8NnOsCfW
	KWyC6MnH3plmQm1caG9V3EDUMAUVw9kEClP99DeSZGvPlBgH9EFMGBWr0+QoS/PJxtc=
X-Gm-Gg: AY/fxX5WlCKGbMVOwj3UW9cr8Rt6zEyg4dEp1sKuQHUTeJcHah2qnBCNmhXgHIXcCrZ
	2aVUZa140ZucLfZRgZmcD/u++GwZ3QlJNsujt+B3ZfIjbKrigzL5IPK1NEFB5W9W5L7oOKpiGnE
	pGAnJo+4eFVgpmHjjsd1cJocZBiMeB+j5R9zMcaL6uTfZtQz3d41GccgbOiWZXTtH7O76PYiEr7
	KKJWSvBoKKHK1dgL8NHOh5Iash0nBnW7jm5IuMloFFV1j68757IkyT0X4RnyWYf5NEjNMtrgjbY
	2PnZxqbAQDuAZ19HEKwR5PmhRP6Ps0+406vBS4+wkMgzZ0v5UX5UCvPniY1LWcaXnbY03oQNftK
	RoVsNeH8fSfnCIiJDgfV85iPKb2ZXxwPO7uqVkjLqqgJPlbZQ35MLryWppXbzoGILR0yd73q+fN
	t9d2B61iKHlrdccHsVjglNhe3F60hZmWv2/spDiz/cH2VtladrP0kPbKCSwAjk8aCbsvI=
X-Received: by 2002:a05:620a:4606:b0:8a3:a42e:6e14 with SMTP id af79cd13be357-8c589b9706emr2117693085a.10.1768852486747;
        Mon, 19 Jan 2026 11:54:46 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8942e6ad75asm86947906d6.31.2026.01.19.11.54.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 11:54:44 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vhvKm-00000005JRT-0mKA;
	Mon, 19 Jan 2026 15:54:44 -0400
Date: Mon, 19 Jan 2026 15:54:44 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20260119195444.GL961572@ziepe.ca>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
 <20260118-dmabuf-revoke-v2-3-a03bb27c0875@nvidia.com>
 <20260119165951.GI961572@ziepe.ca>
 <20260119182300.GO13201@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260119182300.GO13201@unreal>
X-Rspamd-Queue-Id: 4A9A93F7D8
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	R_DKIM_ALLOW(-0.20)[ziepe.ca:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.196:from];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.222.196:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	DKIM_TRACE(0.00)[ziepe.ca:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: T7DJSLACCYNVOMF5YAKU2QD7YSOS2IX4
X-Message-ID-Hash: T7DJSLACCYNVOMF5YAKU2QD7YSOS2IX4
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.
 freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/4] iommufd: Require DMABUF revoke semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T7DJSLACCYNVOMF5YAKU2QD7YSOS2IX4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBKYW4gMTksIDIwMjYgYXQgMDg6MjM6MDBQTSArMDIwMCwgTGVvbiBSb21hbm92c2t5
IHdyb3RlOg0KPiBPbiBNb24sIEphbiAxOSwgMjAyNiBhdCAxMjo1OTo1MVBNIC0wNDAwLCBKYXNv
biBHdW50aG9ycGUgd3JvdGU6DQo+ID4gT24gU3VuLCBKYW4gMTgsIDIwMjYgYXQgMDI6MDg6NDdQ
TSArMDIwMCwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiA+ID4gRnJvbTogTGVvbiBSb21hbm92
c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCj4gPiA+IA0KPiA+ID4gSU9NTVVGRCBkb2VzIG5vdCBz
dXBwb3J0IHBhZ2UgZmF1bHQgaGFuZGxpbmcsIGFuZCBhZnRlciBhIGNhbGwgdG8NCj4gPiA+IC5p
bnZhbGlkYXRlX21hcHBpbmdzKCkgYWxsIG1hcHBpbmdzIGJlY29tZSBpbnZhbGlkLiBFbnN1cmUg
dGhhdA0KPiA+ID4gdGhlIElPTU1VRkQgRE1BQlVGIGltcG9ydGVyIGlzIGJvdW5kIHRvIGEgcmV2
b2tl4oCRYXdhcmUgRE1BQlVGIGV4cG9ydGVyDQo+ID4gPiAoZm9yIGV4YW1wbGUsIFZGSU8pLg0K
PiA+ID4gDQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0Budmlk
aWEuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiAgZHJpdmVycy9pb21tdS9pb21tdWZkL3BhZ2VzLmMg
fCA5ICsrKysrKysrLQ0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW9tbXUvaW9t
bXVmZC9wYWdlcy5jIGIvZHJpdmVycy9pb21tdS9pb21tdWZkL3BhZ2VzLmMNCj4gPiA+IGluZGV4
IDc2ZjkwMGZhMTY4Ny4uYTVlYjJiYzRlZjQ4IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9p
b21tdS9pb21tdWZkL3BhZ2VzLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvaW9tbXUvaW9tbXVmZC9w
YWdlcy5jDQo+ID4gPiBAQCAtMTUwMSwxNiArMTUwMSwyMiBAQCBzdGF0aWMgaW50IGlvcHRfbWFw
X2RtYWJ1ZihzdHJ1Y3QgaW9tbXVmZF9jdHggKmljdHgsIHN0cnVjdCBpb3B0X3BhZ2VzICpwYWdl
cywNCj4gPiA+ICAJCW11dGV4X3VubG9jaygmcGFnZXMtPm11dGV4KTsNCj4gPiA+ICAJfQ0KPiA+
ID4gIA0KPiA+ID4gLQlyYyA9IHN5bV92ZmlvX3BjaV9kbWFfYnVmX2lvbW11ZmRfbWFwKGF0dGFj
aCwgJnBhZ2VzLT5kbWFidWYucGh5cyk7DQo+ID4gPiArCXJjID0gZG1hX2J1Zl9waW4oYXR0YWNo
KTsNCj4gPiA+ICAJaWYgKHJjKQ0KPiA+ID4gIAkJZ290byBlcnJfZGV0YWNoOw0KPiA+ID4gIA0K
PiA+ID4gKwlyYyA9IHN5bV92ZmlvX3BjaV9kbWFfYnVmX2lvbW11ZmRfbWFwKGF0dGFjaCwgJnBh
Z2VzLT5kbWFidWYucGh5cyk7DQo+ID4gPiArCWlmIChyYykNCj4gPiA+ICsJCWdvdG8gZXJyX3Vu
cGluOw0KPiA+ID4gKw0KPiA+ID4gIAlkbWFfcmVzdl91bmxvY2soZG1hYnVmLT5yZXN2KTsNCj4g
PiA+ICANCj4gPiA+ICAJLyogT24gc3VjY2VzcyBpb3B0X3JlbGVhc2VfcGFnZXMoKSB3aWxsIGRl
dGFjaCBhbmQgcHV0IHRoZSBkbWFidWYuICovDQo+ID4gPiAgCXBhZ2VzLT5kbWFidWYuYXR0YWNo
ID0gYXR0YWNoOw0KPiA+ID4gIAlyZXR1cm4gMDsNCj4gPiANCj4gPiBEb24ndCB3ZSBuZWVkIGFu
IGV4cGxpY2l0IHVucGluIGFmdGVyIHVubWFwcGluZz8NCj4gDQo+IFllcywgYnV0IHRoaXMgcGF0
Y2ggaXMgZ29pbmcgdG8gYmUgZHJvcHBlZCBpbiB2MyBiZWNhdXNlIG9mIHRoaXMNCj4gc3VnZ2Vz
dGlvbi4NCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL2EzOTdmZjFlLTYxNWYtNDg3My05
OGE5LTk0MGY5YzE2Zjg1Y0BhbWQuY29tDQoNClRoYXQncyBub3QgcmlnaHQsIHRoYXQgc3VnZ2Vz
dGlvbiBpcyBhYm91dCBjaGFuZ2luZyBWRklPLiBpb21tdWZkIG11c3QNCnN0aWxsIGFjdCBhcyBh
IHBpbm5pbmcgaW1wb3J0ZXIhDQoNCkphc29uDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
