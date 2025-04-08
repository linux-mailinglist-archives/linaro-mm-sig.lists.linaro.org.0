Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F11A80C99
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  8 Apr 2025 15:40:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9092B43D10
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  8 Apr 2025 13:40:02 +0000 (UTC)
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	by lists.linaro.org (Postfix) with ESMTPS id C430F40D87
	for <linaro-mm-sig@lists.linaro.org>; Tue,  8 Apr 2025 13:39:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=cTOCHTJI;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.160.52 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-2c1caacc1f7so3352223fac.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 08 Apr 2025 06:39:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744119585; x=1744724385; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KHOdC/Vml2+FnzmLfGzflP63fCypDI+MruYpwHo3lNA=;
        b=cTOCHTJIyPDKIHRJsU/neoKNTtHnsoFC4haS+iupyDgE+zMQXPfkOVidKgrUWQU/ge
         Pl6IjYm23pV1FL66Ad2NH1oq8GmJYX/L0/v68X8VKj85zFeqkQ8/o62NN7LaHoIsshht
         y8BBvSmsXLMgVgKNCfA0hwkmqzV7Gqclp3OAI9xs2tph5Fne+jW3C/8zF5qYZV1V2rsi
         IpWaHxOuvt6EbvtZHVGMDRyM+4Xg12U+gJxrwBh+94o21l0fkrahR8DdcsYu+21D459W
         JVSyFA3cObwaufcpJFqnyJY9a6NQUQP+gRcU8HbQ2SJCgltEmvjWdtHY5xJJX2s/ct0b
         6LtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744119585; x=1744724385;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KHOdC/Vml2+FnzmLfGzflP63fCypDI+MruYpwHo3lNA=;
        b=O3jcSeEsrnOHtq5g8q05yvb8DdN9Yk51zRM4P6hnbH/XKRtI9NRKFGzsvQY91RIKgY
         gCyeyHKOLp6Y78EO3akn+OITDE4PhpVEtsiR3kkxrh0AViQQV1QK9prauOo1vswBGWpc
         FwLVVgBlDpUJjrWtDzffyA62dquot2VlkYLiti/PeBhXaXg6PtU8UAt5109Il1fLDZ5v
         JuHUiXzUeRvpDz1UkpwosXemQ5VXWGa/bcYYD5XbXlbbg9rPb3w3GCi1PnSRgxwBBnfd
         cN5TA98BmNQZ/MY+wLFwYOpVRcshvQBYU5ZK72i6VrKkuoBI9ki8kTUsbkQX3PUgDB/Y
         m9RA==
X-Forwarded-Encrypted: i=1; AJvYcCXcJio8BVqSQ4Lth0xq/QSLqFEbMC9MoAfPD0s46PxKDVJJ2F4672ERR0/0eU/3PnrrHix4isH5bzDVUdiz@lists.linaro.org
X-Gm-Message-State: AOJu0YzWffhBSfyDPLL20JBx9kQ6xb4YxzDjVRX8hXLLt0A8+DLZ0HIJ
	fPFX+X6RIgXSUJovke8ktFKQ29SHCb06+K5YmzcpRfc8wxnw1D1cPBwwC/lQEon2fTGAHtQZUUp
	yE3I4k0L6jrpT6Y0gbjAAOi9h1rbvR2rWZSR958/Y
X-Gm-Gg: ASbGnctzYXHireJgQTR41Ua1J1skojzwpS30csuo1xaJa3LJk97QFeBaqUEJzxEH68H
	AbdcB7ViZXDiMCUr0JSRjZ9K+b6ngYVBqQqRx0EFf/6ZgNBXnZKJOGZSKUt7s6Jnonfpdqe7haQ
	m0cP/PbMZCw56xgg00ehmNZDjEBrM=
X-Google-Smtp-Source: AGHT+IFDzPIFIE+uzUvKzwMFVIPM56PzO88jEFUON9fAPcL/eNFR02o6bcfZi6WAQ34EoSMSHnDr8Fk6F3d560XOiCg=
X-Received: by 2002:a05:6870:2b10:b0:295:eb96:9fd4 with SMTP id
 586e51a60fabf-2cc9e59d03amr9326894fac.11.1744119585123; Tue, 08 Apr 2025
 06:39:45 -0700 (PDT)
MIME-Version: 1.0
References: <20250305130634.1850178-1-jens.wiklander@linaro.org>
 <20250305130634.1850178-10-jens.wiklander@linaro.org> <Z-JePo6yGlUgrZkw@sumit-X1>
 <CAHUa44H1MzBLBM+Oeawca52C8PF3uAT0ggbL-zRdnBqj4LYrZg@mail.gmail.com>
 <Z-u8MWNVNy9lLbkK@sumit-X1> <CAHUa44GGEypYfiVz5E1aBsZ0TOK0UoeDBVRYB8_dUYJLhrSyUg@mail.gmail.com>
 <Z_TqTUpGhz1s-F8h@sumit-X1>
In-Reply-To: <Z_TqTUpGhz1s-F8h@sumit-X1>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Tue, 8 Apr 2025 15:39:33 +0200
X-Gm-Features: ATxdqUFlhhnGRONqCMm9Feg_Wns0J0dqc4_QCcuIsEY1x6VIJsUuiFEXYdjvaKs
Message-ID: <CAHUa44EV=q35i-anXkAF2N7mY8gmWqfMbU0YXARHHOas5iKxHw@mail.gmail.com>
To: Sumit Garg <sumit.garg@kernel.org>
X-Rspamd-Queue-Id: C430F40D87
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[209.85.160.52:from];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.52:from];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux-foundation.org,redhat.com,linux.ibm.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com,ffwll.ch,fooishbar.org,kvack.org];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: AMCO5PL4AUMVZ7NBSCKQV7PBJ7U7JR2J
X-Message-ID-Hash: AMCO5PL4AUMVZ7NBSCKQV7PBJ7U7JR2J
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: akpm@linux-foundation.org, david@redhat.com, rppt@linux.ibm.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 09/10] optee: FF-A: dynamic restricted memory allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AMCO5PL4AUMVZ7NBSCKQV7PBJ7U7JR2J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBBcHIgOCwgMjAyNSBhdCAxMToyMOKAr0FNIFN1bWl0IEdhcmcgPHN1bWl0LmdhcmdA
a2VybmVsLm9yZz4gd3JvdGU6DQo+DQo+IE9uIFR1ZSwgQXByIDAxLCAyMDI1IGF0IDAyOjI2OjU5
UE0gKzAyMDAsIEplbnMgV2lrbGFuZGVyIHdyb3RlOg0KPiA+IE9uIFR1ZSwgQXByIDEsIDIwMjUg
YXQgMTI6MTPigK9QTSBTdW1pdCBHYXJnIDxzdW1pdC5nYXJnQGtlcm5lbC5vcmc+IHdyb3RlOg0K
PiA+ID4NCj4gPiA+ICsgTU0gZm9sa3MgdG8gc2VlayBndWlkYW5jZSBoZXJlLg0KPiA+ID4NCj4g
PiA+IE9uIFRodSwgTWFyIDI3LCAyMDI1IGF0IDA5OjA3OjM0QU0gKzAxMDAsIEplbnMgV2lrbGFu
ZGVyIHdyb3RlOg0KPiA+ID4gPiBIaSBTdW1pdCwNCj4gPiA+ID4NCj4gPiA+ID4gT24gVHVlLCBN
YXIgMjUsIDIwMjUgYXQgODo0MuKAr0FNIFN1bWl0IEdhcmcgPHN1bWl0LmdhcmdAa2VybmVsLm9y
Zz4gd3JvdGU6DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBPbiBXZWQsIE1hciAwNSwgMjAyNSBhdCAw
MjowNDoxNVBNICswMTAwLCBKZW5zIFdpa2xhbmRlciB3cm90ZToNCj4gPiA+ID4gPiA+IEFkZCBz
dXBwb3J0IGluIHRoZSBPUC1URUUgYmFja2VuZCBkcml2ZXIgZHluYW1pYyByZXN0cmljdGVkIG1l
bW9yeQ0KPiA+ID4gPiA+ID4gYWxsb2NhdGlvbiB3aXRoIEZGLUEuDQo+ID4gPiA+ID4gPg0KPiA+
ID4gPiA+ID4gVGhlIHJlc3RyaWN0ZWQgbWVtb3J5IHBvb2xzIGZvciBkeW5hbWljYWxseSBhbGxv
Y2F0ZWQgcmVzdHJpY3QgbWVtb3J5DQo+ID4gPiA+ID4gPiBhcmUgaW5zdGFudGlhdGVkIHdoZW4g
cmVxdWVzdGVkIGJ5IHVzZXItc3BhY2UuIFRoaXMgaW5zdGFudGlhdGlvbiBjYW4NCj4gPiA+ID4g
PiA+IGZhaWwgaWYgT1AtVEVFIGRvZXNuJ3Qgc3VwcG9ydCB0aGUgcmVxdWVzdGVkIHVzZS1jYXNl
IG9mIHJlc3RyaWN0ZWQNCj4gPiA+ID4gPiA+IG1lbW9yeS4NCj4gPiA+ID4gPiA+DQo+ID4gPiA+
ID4gPiBSZXN0cmljdGVkIG1lbW9yeSBwb29scyBiYXNlZCBvbiBhIHN0YXRpYyBjYXJ2ZW91dCBv
ciBkeW5hbWljIGFsbG9jYXRpb24NCj4gPiA+ID4gPiA+IGNhbiBjb2V4aXN0IGZvciBkaWZmZXJl
bnQgdXNlLWNhc2VzLiBXZSB1c2Ugb25seSBkeW5hbWljIGFsbG9jYXRpb24gd2l0aA0KPiA+ID4g
PiA+ID4gRkYtQS4NCj4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKZW5z
IFdpa2xhbmRlciA8amVucy53aWtsYW5kZXJAbGluYXJvLm9yZz4NCj4gPiA+ID4gPiA+IC0tLQ0K
PiA+ID4gPiA+ID4gIGRyaXZlcnMvdGVlL29wdGVlL01ha2VmaWxlICAgICAgICB8ICAgMSArDQo+
ID4gPiA+ID4gPiAgZHJpdmVycy90ZWUvb3B0ZWUvZmZhX2FiaS5jICAgICAgIHwgMTQzICsrKysr
KysrKysrKy0NCj4gPiA+ID4gPiA+ICBkcml2ZXJzL3RlZS9vcHRlZS9vcHRlZV9wcml2YXRlLmgg
fCAgMTMgKy0NCj4gPiA+ID4gPiA+ICBkcml2ZXJzL3RlZS9vcHRlZS9yc3RtZW0uYyAgICAgICAg
fCAzMjkgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrDQo+ID4gPiA+ID4gPiAgNCBmaWxl
cyBjaGFuZ2VkLCA0ODMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gPiA+ID4gPiA+
ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy90ZWUvb3B0ZWUvcnN0bWVtLmMNCj4gPiA+ID4g
PiA+DQo+ID4gPg0KPiA+ID4gPHNuaXA+DQo+ID4gPg0KPiA+ID4gPiA+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvdGVlL29wdGVlL3JzdG1lbS5jIGIvZHJpdmVycy90ZWUvb3B0ZWUvcnN0bWVtLmMN
Cj4gPiA+ID4gPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+ID4gPiA+ID4gPiBpbmRleCAwMDAw
MDAwMDAwMDAuLmVhMjc3Njk5MzRkNA0KPiA+ID4gPiA+ID4gLS0tIC9kZXYvbnVsbA0KPiA+ID4g
PiA+ID4gKysrIGIvZHJpdmVycy90ZWUvb3B0ZWUvcnN0bWVtLmMNCj4gPiA+ID4gPiA+IEBAIC0w
LDAgKzEsMzI5IEBADQo+ID4gPiA+ID4gPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQ
TC0yLjAtb25seQ0KPiA+ID4gPiA+ID4gKy8qDQo+ID4gPiA+ID4gPiArICogQ29weXJpZ2h0IChj
KSAyMDI1LCBMaW5hcm8gTGltaXRlZA0KPiA+ID4gPiA+ID4gKyAqLw0KPiA+ID4gPiA+ID4gKyNk
ZWZpbmUgcHJfZm10KGZtdCkgS0JVSUxEX01PRE5BTUUgIjogIiBmbXQNCj4gPiA+ID4gPiA+ICsN
Cj4gPiA+ID4gPiA+ICsjaW5jbHVkZSA8bGludXgvZXJybm8uaD4NCj4gPiA+ID4gPiA+ICsjaW5j
bHVkZSA8bGludXgvZ2VuYWxsb2MuaD4NCj4gPiA+ID4gPiA+ICsjaW5jbHVkZSA8bGludXgvc2xh
Yi5oPg0KPiA+ID4gPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9zdHJpbmcuaD4NCj4gPiA+ID4gPiA+
ICsjaW5jbHVkZSA8bGludXgvdGVlX2NvcmUuaD4NCj4gPiA+ID4gPiA+ICsjaW5jbHVkZSA8bGlu
dXgvdHlwZXMuaD4NCj4gPiA+ID4gPiA+ICsjaW5jbHVkZSAib3B0ZWVfcHJpdmF0ZS5oIg0KPiA+
ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4gK3N0cnVjdCBvcHRlZV9yc3RtZW1fY21hX3Bvb2wgew0K
PiA+ID4gPiA+ID4gKyAgICAgc3RydWN0IHRlZV9yc3RtZW1fcG9vbCBwb29sOw0KPiA+ID4gPiA+
ID4gKyAgICAgc3RydWN0IGdlbl9wb29sICpnZW5fcG9vbDsNCj4gPiA+ID4gPiA+ICsgICAgIHN0
cnVjdCBvcHRlZSAqb3B0ZWU7DQo+ID4gPiA+ID4gPiArICAgICBzaXplX3QgcGFnZV9jb3VudDsN
Cj4gPiA+ID4gPiA+ICsgICAgIHUxNiAqZW5kX3BvaW50czsNCj4gPiA+ID4gPiA+ICsgICAgIHVf
aW50IGVuZF9wb2ludF9jb3VudDsNCj4gPiA+ID4gPiA+ICsgICAgIHVfaW50IGFsaWduOw0KPiA+
ID4gPiA+ID4gKyAgICAgcmVmY291bnRfdCByZWZjb3VudDsNCj4gPiA+ID4gPiA+ICsgICAgIHUz
MiB1c2VfY2FzZTsNCj4gPiA+ID4gPiA+ICsgICAgIHN0cnVjdCB0ZWVfc2htICpyc3RtZW07DQo+
ID4gPiA+ID4gPiArICAgICAvKiBQcm90ZWN0cyB3aGVuIGluaXRpYWxpemluZyBhbmQgdGVhcmlu
ZyBkb3duIHRoaXMgc3RydWN0ICovDQo+ID4gPiA+ID4gPiArICAgICBzdHJ1Y3QgbXV0ZXggbXV0
ZXg7DQo+ID4gPiA+ID4gPiArfTsNCj4gPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiA+ICtzdGF0aWMg
c3RydWN0IG9wdGVlX3JzdG1lbV9jbWFfcG9vbCAqDQo+ID4gPiA+ID4gPiArdG9fcnN0bWVtX2Nt
YV9wb29sKHN0cnVjdCB0ZWVfcnN0bWVtX3Bvb2wgKnBvb2wpDQo+ID4gPiA+ID4gPiArew0KPiA+
ID4gPiA+ID4gKyAgICAgcmV0dXJuIGNvbnRhaW5lcl9vZihwb29sLCBzdHJ1Y3Qgb3B0ZWVfcnN0
bWVtX2NtYV9wb29sLCBwb29sKTsNCj4gPiA+ID4gPiA+ICt9DQo+ID4gPiA+ID4gPiArDQo+ID4g
PiA+ID4gPiArc3RhdGljIGludCBpbml0X2NtYV9yc3RtZW0oc3RydWN0IG9wdGVlX3JzdG1lbV9j
bWFfcG9vbCAqcnApDQo+ID4gPiA+ID4gPiArew0KPiA+ID4gPiA+ID4gKyAgICAgaW50IHJjOw0K
PiA+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4gKyAgICAgcnAtPnJzdG1lbSA9IHRlZV9zaG1fYWxs
b2NfY21hX3BoeXNfbWVtKHJwLT5vcHRlZS0+Y3R4LCBycC0+cGFnZV9jb3VudCwNCj4gPiA+ID4g
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBycC0+YWxp
Z24pOw0KPiA+ID4gPiA+ID4gKyAgICAgaWYgKElTX0VSUihycC0+cnN0bWVtKSkgew0KPiA+ID4g
PiA+ID4gKyAgICAgICAgICAgICByYyA9IFBUUl9FUlIocnAtPnJzdG1lbSk7DQo+ID4gPiA+ID4g
PiArICAgICAgICAgICAgIGdvdG8gZXJyX251bGxfcnN0bWVtOw0KPiA+ID4gPiA+ID4gKyAgICAg
fQ0KPiA+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4gKyAgICAgLyoNCj4gPiA+ID4gPiA+ICsgICAg
ICAqIFRPRE8gdW5tYXAgdGhlIG1lbW9yeSByYW5nZSBzaW5jZSB0aGUgcGh5c2ljYWwgbWVtb3J5
IHdpbGwNCj4gPiA+ID4gPiA+ICsgICAgICAqIGJlY29tZSBpbmFjY2VzaWJsZSBhZnRlciB0aGUg
bGVuZF9yc3RtZW0oKSBjYWxsLg0KPiA+ID4gPiA+ID4gKyAgICAgICovDQo+ID4gPiA+ID4NCj4g
PiA+ID4gPiBXaGF0J3MgeW91ciBwbGFuIGZvciB0aGlzIFRPRE8/IEkgdGhpbmsgd2UgbmVlZCBh
IENNQSBhbGxvY2F0b3IgaGVyZQ0KPiA+ID4gPiA+IHdoaWNoIGNhbiBhbGxvY2F0ZSB1bi1tYXBw
ZWQgbWVtb3J5IHN1Y2ggdGhhdCBhbnkgY2FjaGUgc3BlY3VsYXRpb24NCj4gPiA+ID4gPiB3b24n
dCBsZWFkIHRvIENQVSBoYW5ncyBvbmNlIHRoZSBtZW1vcnkgcmVzdHJpY3Rpb24gY29tZXMgaW50
byBwaWN0dXJlLg0KPiA+ID4gPg0KPiA+ID4gPiBXaGF0IGhhcHBlbnMgaXMgcGxhdGZvcm0tc3Bl
Y2lmaWMuIEZvciBzb21lIHBsYXRmb3JtcywgaXQgbWlnaHQgYmUNCj4gPiA+ID4gZW5vdWdoIHRv
IGF2b2lkIGV4cGxpY2l0IGFjY2Vzcy4gWWVzLCBhIENNQSBhbGxvY2F0b3Igd2l0aCB1bm1hcHBl
ZA0KPiA+ID4gPiBtZW1vcnkgb3Igd2hlcmUgbWVtb3J5IGNhbiBiZSB1bm1hcHBlZCBpcyBvbmUg
b3B0aW9uLg0KPiA+ID4NCj4gPiA+IERpZCB5b3UgZ2V0IGEgY2hhbmNlIHRvIGVuYWJsZSByZWFs
IG1lbW9yeSBwcm90ZWN0aW9uIG9uIFJvY2tQaSBib2FyZD8NCj4gPg0KPiA+IE5vLCBJIGRvbid0
IHRoaW5rIEkgaGF2ZSBhY2Nlc3MgdG8gdGhlIG5lZWRlZCBkb2N1bWVudGF0aW9uIGZvciB0aGUN
Cj4gPiBib2FyZCB0byBzZXQgaXQgdXAgZm9yIHJlbGV2YW50IHBlcmlwaGVyYWxzLg0KPiA+DQo+
ID4gPiBUaGlzIHdpbGwgYXRsZWFzdCBlbnN1cmUgdGhhdCBtYXBwZWQgcmVzdHJpY3RlZCBtZW1v
cnkgd2l0aG91dCBleHBsaWNpdA0KPiA+ID4gYWNjZXNzIHdvcmtzIGZpbmUuIFNpbmNlIG90aGVy
d2lzZSBvbmNlIHBlb3BsZSBzdGFydCB0byBlbmFibGUgcmVhbA0KPiA+ID4gbWVtb3J5IHJlc3Ry
aWN0aW9uIGluIE9QLVRFRSwgdGhlcmUgY2FuIGJlIGNoYW5jZXMgb2YgcmFuZG9tIGhhbmcgdXBz
DQo+ID4gPiBkdWUgdG8gY2FjaGUgc3BlY3VsYXRpb24uDQo+ID4NCj4gPiBBIGh5cGVydmlzb3Ig
aW4gdGhlIG5vcm1hbCB3b3JsZCBjYW4gYWxzbyBtYWtlIHRoZSBtZW1vcnkgaW5hY2Nlc3NpYmxl
DQo+ID4gdG8gdGhlIGtlcm5lbC4gVGhhdCBzaG91bGRuJ3QgY2F1c2UgYW55IGhhbmd1cHMgZHVl
IHRvIGNhY2hlDQo+ID4gc3BlY3VsYXRpb24uDQo+DQo+IFRoZSBoeXBlcnZpc29yIHNob3VsZCB1
bm1hcCB0aGUgbWVtb3J5IGZyb20gRUwyIHRyYW5zbGF0aW9uIHRhYmxlcyB3aGljaA0KPiBJIHRo
aW5rIHNob3VsZCBkaXNhbGxvdyB0aGUgY2FjaGUgc3BlY3VsYXRpb24gdG8gdGFrZSBwbGFjZS4g
SG93ZXZlciwNCj4gd2l0aG91dCBoeXBlcnZpc29yIGhlcmUgdGhlIG1lbW9yeSByZW1haW5zIG1h
cHBlZCBpbiBub3JtYWwgd29ybGQgd2hpY2gNCj4gY2FuIGxlYWQgdG8gY2FjaGUgc3BlY3VsYXRp
b24gZm9yIHJlc3RyaWN0ZWQgYnVmZmVycy4gVGhhdCdzIHdoeSB3ZQ0KPiBzaG91bGQgYXRsZWFz
dCB0ZXN0IG9uIG9uZSBwbGF0Zm9ybSB3aXRoIHJlYWwgbWVtb3J5IHByb3RlY3Rpb24gZW5hYmxl
ZA0KPiB0byBydWxlIG91dCBhbnkgYXNzdW1wdGlvbnMgd2UgbWFrZS4NCg0KRG8gSSBoZWFyIGEg
dm9sdW50ZWVyPyA7LSkNCg0KQW55d2F5LCB0aGlzIGlzbid0IHNvbWV0aGluZyB0aGF0IGNhbiBi
ZSBlbmFibGVkIGluIHRoZSBrZXJuZWwgYWxvbmUuDQpPbmx5IHBsYXRmb3JtcyB3aGVyZSB0aGUg
ZmlybXdhcmUgaGFzIGJlZW4gdXBkYXRlZCB3aWxsIGJlIGFmZmVjdGVkLg0KSWYgdGhpcyBjYW4n
dCBiZSBzdXBwb3J0ZWQgb24gYSBwYXJ0aWN1bGFyIHBsYXRmb3JtLCB0aGVyZSdzIHN0aWxsIHRo
ZQ0Kb3B0aW9uIHdpdGggYSBzdGF0aWMgY2FydmVvdXQuDQoNCkNoZWVycywNCkplbnMNCg0KPg0K
PiAtU3VtaXQNCj4NCj4gPg0KPiA+IENoZWVycywNCj4gPiBKZW5zDQo+ID4NCj4gPiA+DQo+ID4g
PiBNTSBmb2xrcywNCj4gPiA+DQo+ID4gPiBCYXNpY2FsbHkgd2hhdCB3ZSBhcmUgdHJ5aW5nIHRv
IGFjaGlldmUgaGVyZSBpcyBhICJuby1tYXAiIERUIGJlaGF2aW91cg0KPiA+ID4gWzFdIHdoaWNo
IGlzIHJhdGhlciBkeW5hbWljIGluICBuYXR1cmUuIFRoZSB1c2UtY2FzZSBoZXJlIGlzIHRoYXQg
YSBtZW1vcnkNCj4gPiA+IGJsb2NrIGFsbG9jYXRlZCBmcm9tIENNQSBjYW4gYmUgbWFya2VkIHJl
c3RyaWN0ZWQgYXQgcnVudGltZSB3aGVyZSB3ZQ0KPiA+ID4gd291bGQgbGlrZSB0aGUgTGludXgg
bm90IGJlaW5nIGFibGUgdG8gZGlyZWN0bHkgb3IgaW5kaXJlY3RseSAoY2FjaGUNCj4gPiA+IHNw
ZWN1bGF0aW9uKSBhY2Nlc3MgaXQuIE9uY2UgbWVtb3J5IHJlc3RyaWN0aW9uIHVzZS1jYXNlIGhh
cyBiZWVuDQo+ID4gPiBjb21wbGV0ZWQsIHRoZSBtZW1vcnkgYmxvY2sgY2FuIGJlIG1hcmtlZCBh
cyBub3JtYWwgYW5kIGZyZWVkIGZvcg0KPiA+ID4gZnVydGhlciBDTUEgYWxsb2NhdGlvbi4NCj4g
PiA+DQo+ID4gPiBJdCB3aWxsIGJlIGFwcHJjaWF0ZWQgaWYgeW91IGNhbiBndWlkZSB1cyByZWdh
cmRpbmcgdGhlIGFwcHJvcHJpYXRlIEFQSXMNCj4gPiA+IHRvIHVzZSBmb3IgdW4tbWFwcGluZy9t
YW1waW5nIENNQSBhbGxvY2F0aW9ucyBmb3IgdGhpcyB1c2UtY2FzZS4NCj4gPiA+DQo+ID4gPiBb
MV0gaHR0cHM6Ly9naXRodWIuY29tL2RldmljZXRyZWUtb3JnL2R0LXNjaGVtYS9ibG9iL21haW4v
ZHRzY2hlbWEvc2NoZW1hcy9yZXNlcnZlZC1tZW1vcnkvcmVzZXJ2ZWQtbWVtb3J5LnlhbWwjTDc5
DQo+ID4gPg0KPiA+ID4gLVN1bWl0DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
