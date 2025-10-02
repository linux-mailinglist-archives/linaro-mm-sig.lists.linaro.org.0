Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 63643BB50AC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 02 Oct 2025 21:45:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5B5D545D97
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 Oct 2025 19:45:58 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by lists.linaro.org (Postfix) with ESMTPS id EA2CE4466C
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Oct 2025 19:45:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b="ctxvMs/6";
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.218.46 as permitted sender) smtp.mailfrom=jstultz@google.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b40f11a1027so274343366b.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 02 Oct 2025 12:45:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1759434354; x=1760039154; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R4gQv0EOz4rGm7+DH/Ll/ylPaIILm6U8HqWQMm5vF7w=;
        b=ctxvMs/6MS7camrbLYgNqWkd+bpwMHkjaI0jtDIa0jjPrwgDmFWMaElBecfcA4+/mJ
         0DzE1Brqd6olbRPF8VxAzp8c23Zg3ebAIV0qhGx+5fXbjgHsUjNjT6G15PwKXjo0YY4h
         stfD71RJ4nDamzxsbACx72Sssor2UYaZD1+aB7hS7XQey36IX561eo09sLp+z+2A7QXE
         zSqyK/iXLDMzl4VrfZxOO55Dh1zgVwBGfGiAuGitvMv1+6U9DZzPb6EhCcUDIFM/Zs+P
         5nzA1QPmeCXXL4gH28mUz1v5oe9E8Hw0FOkrFTG1piTsb+3d7WatIOmFwPiwCOMexeBF
         k8KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759434354; x=1760039154;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R4gQv0EOz4rGm7+DH/Ll/ylPaIILm6U8HqWQMm5vF7w=;
        b=q1datjIt7pMDSApCk/IJJaop3mi3GRn+purdlrO83RTDwUfjVvTljm7MpVDW5d8X6Y
         WbqbDza3JmwYEmUU+KJ3ukmKhEzRVYkPpXYDWBi3JkVoyIqU6WZYy5eL0iJwg6QSM2CM
         K84zT5PIcQxS6O5xKNpSd1otyS2ugrp8c2b//tWJ5qqcG3t0gWc9jWdCj0EPVjVXVwdk
         j+i0BuFMBXbnweNJPma/NCmi9epb2Ij2wLhnTVjAYhEs80XyWspRLSBcbXQd9FNmSiB3
         LxG1pCYTcxP94dxavywFe1o3qu36kTD+4aDke4/6ByWpTrD3DtSJmrjl52wKHHT0Ejgk
         dImQ==
X-Forwarded-Encrypted: i=1; AJvYcCUd1Zbl+Mh1G4+DepCpSu4sSykxEUfCKp2B+Ddsbn1lBzxfCAwuw4tIP80er8J5PFLbWyC1mA11EQNvq2H2@lists.linaro.org
X-Gm-Message-State: AOJu0Yy9MR/RCKhxv5GxbRgYfhEpL5B2V6HZ9ba/Xo1ubCGQs/sFuN9v
	W6+Iws0zdhz5Jvqjvo6QHVArpNGZBDPOqEret9lgGabbWA4S7pkfd5glcaAb50QWCddbYkN9fhg
	zrZTRmnSn7Gb1VZR46nAMAnT59eH25tKHIf1lEMU=
X-Gm-Gg: ASbGncu+NX9bDbp4RlEWanfZv6bqd7gH5nrfltB1e7fONCn8aWnqgf2oOYeTiwv/hJ9
	n1dkSJPKxNdDYOLReTJsM8aagBtK8rZJ0LawJOoF3mkTJwIUVXajECXpOWktUwOYtykf/fnQ943
	Yt2tDN/f9b/wZvdI2cVJ4vYL4MXcUJtv5XWOeWcG2p1AL43UgXXhUBjMwTUZ/Apo60APqSbggyP
	jy6kB9SzGRfbDbQcRkXQ1PcRTs2CCwvMLpDglrw/OG9BieC5C18C4NbbGZNnQ/+ATM=
X-Google-Smtp-Source: AGHT+IHFUMZbxy2/RNA58+rbmrFxgard/FJeBDueJyRahdE9BuRrcf+Nu3HssY90NgcmF3JiiWGdZyfE5Xm8slA6aeE=
X-Received: by 2002:a17:906:dc94:b0:b3b:eb5f:9f1a with SMTP id
 a640c23a62f3a-b49c3933030mr76697066b.38.1759434353566; Thu, 02 Oct 2025
 12:45:53 -0700 (PDT)
MIME-Version: 1.0
References: <20250911135007.1275833-1-jens.wiklander@linaro.org>
 <20250911135007.1275833-3-jens.wiklander@linaro.org> <20251002-shaggy-mastiff-of-elevation-c8e1f0@houat>
In-Reply-To: <20251002-shaggy-mastiff-of-elevation-c8e1f0@houat>
From: John Stultz <jstultz@google.com>
Date: Thu, 2 Oct 2025 12:45:41 -0700
X-Gm-Features: AS18NWBdha9LdZ51VIWM4Jj3n7QLoIkRAEzrxrFPUOsILr8-gV57tRYN27CBzqA
Message-ID: <CANDhNCqS+WKhTWjeC7yBL+x4erK4S4bievTxdneaCu1haA8=hA@mail.gmail.com>
To: Maxime Ripard <mripard@redhat.com>
X-Rspamd-Queue-Id: EA2CE4466C
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.46:from];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_CC(0.00)[linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,collabora.com,arm.com,google.com,amd.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org,oss.qualcomm.com];
	TAGGED_RCPT(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DWL_DNSWL_BLOCKED(0.00)[google.com:dkim];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: UJZHOXDWI7VJTCYT4LCDF3E4AUNLHBVR
X-Message-ID-Hash: UJZHOXDWI7VJTCYT4LCDF3E4AUNLHBVR
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jens Wiklander <jens.wiklander@linaro.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, robin.murphy@arm.com, Sumit Garg <sumit.garg@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v12 2/9] dma-buf: dma-heap: export declared functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UJZHOXDWI7VJTCYT4LCDF3E4AUNLHBVR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBPY3QgMiwgMjAyNSBhdCAxMjo0N+KAr0FNIE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
cmVkaGF0LmNvbT4gd3JvdGU6DQo+IE9uIFRodSwgU2VwIDExLCAyMDI1IGF0IDAzOjQ5OjQzUE0g
KzAyMDAsIEplbnMgV2lrbGFuZGVyIHdyb3RlOg0KPiA+IEV4cG9ydCB0aGUgZG1hLWJ1ZiBoZWFw
IGZ1bmN0aW9ucyB0byBhbGxvdyB0aGVtIHRvIGJlIHVzZWQgYnkgdGhlIE9QLVRFRQ0KPiA+IGRy
aXZlci4gVGhlIE9QLVRFRSBkcml2ZXIgd2FudHMgdG8gcmVnaXN0ZXIgYW5kIG1hbmFnZSBzcGVj
aWZpYyBzZWN1cmUNCj4gPiBETUEgaGVhcHMgd2l0aCBpdC4NCj4gPg0KPiA+IFJldmlld2VkLWJ5
OiBTdW1pdCBHYXJnIDxzdW1pdC5nYXJnQG9zcy5xdWFsY29tbS5jb20+DQo+ID4gUmV2aWV3ZWQt
Ynk6IFQuSi4gTWVyY2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+DQo+ID4gQWNrZWQtYnk6IFN1
bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+DQo+ID4gU2lnbmVkLW9mZi1ieTog
SmVucyBXaWtsYW5kZXIgPGplbnMud2lrbGFuZGVyQGxpbmFyby5vcmc+DQo+ID4gLS0tDQo+ID4g
IGRyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jIHwgNCArKysrDQo+ID4gIDEgZmlsZSBjaGFuZ2Vk
LCA0IGluc2VydGlvbnMoKykNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYv
ZG1hLWhlYXAuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jDQo+ID4gaW5kZXggM2NiZTg3
ZDRhNDY0Li44YWI0OTkyNGY4YjcgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2Rt
YS1oZWFwLmMNCj4gPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYw0KPiA+IEBAIC0x
MSw2ICsxMSw3IEBADQo+ID4gICNpbmNsdWRlIDxsaW51eC9kbWEtYnVmLmg+DQo+ID4gICNpbmNs
dWRlIDxsaW51eC9kbWEtaGVhcC5oPg0KPiA+ICAjaW5jbHVkZSA8bGludXgvZXJyLmg+DQo+ID4g
KyNpbmNsdWRlIDxsaW51eC9leHBvcnQuaD4NCj4gPiAgI2luY2x1ZGUgPGxpbnV4L2xpc3QuaD4N
Cj4gPiAgI2luY2x1ZGUgPGxpbnV4L25vc3BlYy5oPg0KPiA+ICAjaW5jbHVkZSA8bGludXgvc3lz
Y2FsbHMuaD4NCj4gPiBAQCAtMjAyLDYgKzIwMyw3IEBAIHZvaWQgKmRtYV9oZWFwX2dldF9kcnZk
YXRhKHN0cnVjdCBkbWFfaGVhcCAqaGVhcCkNCj4gPiAgew0KPiA+ICAgICAgIHJldHVybiBoZWFw
LT5wcml2Ow0KPiA+ICB9DQo+ID4gK0VYUE9SVF9TWU1CT0xfTlNfR1BMKGRtYV9oZWFwX2dldF9k
cnZkYXRhLCAiRE1BX0JVRl9IRUFQIik7DQo+ID4NCj4gPiAgLyoqDQo+ID4gICAqIGRtYV9oZWFw
X2dldF9uYW1lIC0gZ2V0IGhlYXAgbmFtZQ0KPiA+IEBAIC0yMTQsNiArMjE2LDcgQEAgY29uc3Qg
Y2hhciAqZG1hX2hlYXBfZ2V0X25hbWUoc3RydWN0IGRtYV9oZWFwICpoZWFwKQ0KPiA+ICB7DQo+
ID4gICAgICAgcmV0dXJuIGhlYXAtPm5hbWU7DQo+ID4gIH0NCj4gPiArRVhQT1JUX1NZTUJPTF9O
U19HUEwoZG1hX2hlYXBfZ2V0X25hbWUsICJETUFfQlVGX0hFQVAiKTsNCj4gPg0KPiA+ICAvKioN
Cj4gPiAgICogZG1hX2hlYXBfYWRkIC0gYWRkcyBhIGhlYXAgdG8gZG1hYnVmIGhlYXBzDQo+ID4g
QEAgLTMwMyw2ICszMDYsNyBAQCBzdHJ1Y3QgZG1hX2hlYXAgKmRtYV9oZWFwX2FkZChjb25zdCBz
dHJ1Y3QgZG1hX2hlYXBfZXhwb3J0X2luZm8gKmV4cF9pbmZvKQ0KPiA+ICAgICAgIGtmcmVlKGhl
YXApOw0KPiA+ICAgICAgIHJldHVybiBlcnJfcmV0Ow0KPiA+ICB9DQo+ID4gK0VYUE9SVF9TWU1C
T0xfTlNfR1BMKGRtYV9oZWFwX2FkZCwgIkRNQV9CVUZfSEVBUCIpOw0KPg0KPiBJdCdzIG5vdCBj
bGVhciB0byBtZSB3aHkgd2Ugd291bGQgbmVlZCB0byBleHBvcnQgdGhvc2Ugc3ltYm9scy4NCj4N
Cj4gQXMgZmFyIGFzIEkga25vdywgaGVhcHMgY2Fubm90IGJlIHJlbW92ZWQsIGFuZCBjb21waWxp
bmcgdGhlbSBhcyBtb2R1bGUNCj4gbWVhbnMgdGhhdCB3ZSB3b3VsZCBiZSBhYmxlIHRvIHJlbW92
ZSB0aGVtLg0KPg0KPiBOb3csIGlmIHdlIGRvbid0IGV4cGVjdCB0aGUgdXNlcnMgdG8gYmUgY29t
cGlsZWQgYXMgbW9kdWxlcywgdGhlbiB3ZQ0KPiBkb24ndCBuZWVkIHRvIGV4cG9ydCB0aGVzZSBz
eW1ib2xzIGF0IGFsbC4NCj4NCj4gQW0gSSBtaXNzaW5nIHNvbWV0aGluZz8NCg0KRm9yIHRoaW5n
cyBsaWtlIGRpc3RybyBrZXJuZWxzIChvciBpbiBBbmRyb2lkJ3MgY2FzZSwgdGhlIEdLSSksDQp0
aGVyZSdzIGEgYmVuZWZpdCBmb3IgbW9kdWxlcyB0aGF0IGNhbiBiZSBsb2FkZWQgcGVybWFuZW50
bHkgKG5vdA0KaGF2aW5nIGEgbW9kdWxlX2V4aXQgaG9vaykuDQpPbmUgZG9lc24ndCBoYXZlIHRv
IGJsb2F0IHRoZSBiYXNlIGtlcm5lbCBpbWFnZS9tZW1vcnkgdXNhZ2UgZm9yDQpldmVyeW9uZSwg
d2hpbGUgc3RpbGwgbm90IGhhdmluZyB0byBuZWNlc3NhcmlseSBkZWFsIHdpdGgNCmNvbXBsaWNh
dGlvbnMgZnJvbSBtb2R1bGUgdW5sb2FkaW5nIGlzc3Vlcy4NCg0KdGhhbmtzDQotam9obg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
