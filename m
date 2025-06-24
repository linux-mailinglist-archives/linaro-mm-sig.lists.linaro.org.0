Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 89001AE5E14
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Jun 2025 09:39:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 462FA45602
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Jun 2025 07:39:08 +0000 (UTC)
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	by lists.linaro.org (Postfix) with ESMTPS id CDD8E40EBF
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Jun 2025 07:38:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=GZpLY4Xz;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.161.43 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-6118c1775dbso26875eaf.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Jun 2025 00:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750750735; x=1751355535; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/btdfiDxU5+NfLXwgveKgggXqAGO0bFMTRE67tAX7B4=;
        b=GZpLY4XzPBErRu81qUsSPEdCIiTYMXUsHNEQ3qsmQZoxc9y7vGcxNrrzO8a5UFK5wb
         OqVUyzRMxUj8R4O4Pw4J9oDmJVPNSWvjgfasTg7l0lQ0ZUMW/bZzH2feQaQB2LQelYDw
         FAIhhpcgar3VhS7qcLlhblwPoQB9KaPl/aEJQPy/bcEB81OfNPG35+/iQMrDDpB/DPSJ
         mIIqxudP61GYInLzjsyza+kFiwNNaL1PLHgz977q6jyRuhJVb2LmEuojf40QpFHosbfC
         WFi0EpWD4P+GLLd/FORZscbGe0W7QIIHAfKLC1OjK0jNDTnk+gK6YnsphpWqJ2f7d750
         vbgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750750735; x=1751355535;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/btdfiDxU5+NfLXwgveKgggXqAGO0bFMTRE67tAX7B4=;
        b=Z/pNexr4HraFJhpFwLLGn8e6+Ia5gCWhq28XD5BlTcp1ve/8nS5EZSjo/VfIoPT+S6
         uXx71T56y2RtA/3ZJAqb4utA0/o44f7Xdip1bXkXtBg5jSjxOgReJ2R4NaYK/31TQt9v
         +6Uy/3pL8KRZnK7e3aHm1OAw+f7sehTFWaijhEubyJzXL+nr4mP/HotCZgn3ETVONJYo
         5nyp+SVTrdCe3ypQ28YA/fOyWuxSP0I6VYUvQK8HX1HhAMLvP4dSdbm3XYq7azQuME3z
         s+tlyjP03b0rAG/zw5JNzmwRZbYwGgjt5r0g5qTCxPLph3IaQ+Ly0eaOUOZKW5Vrj1ur
         4K1A==
X-Forwarded-Encrypted: i=1; AJvYcCVQRMV4xJ+vPnctuLt9GFL5FeCl+DyRnKQ+0nlsZgQ2r5NBpMxRuH9rvNzgOxiMTqJxyR8Ldyx/bsgYGaI+@lists.linaro.org
X-Gm-Message-State: AOJu0YwiAJqXw77EdY381sKudV8m23r0HjACDVfg5IX42n1fobmd+0D9
	1kZQjOAclRIh93XN82wyBrpxahDVnQ/D4BYCcR8U6Meuq1xXW5/S4R1cleh4tzgb+x99kvKYOC/
	9OCsb0N63IkcRQ/35kosZ97FUvVSFpBf//SsbcN6qtTmG
X-Gm-Gg: ASbGncv6jiBUr5WR/NIXZbaNY34qw3yNaH6o86MZvZgXqeJYEsIMxRWPNvsLNjuiyU5
	oCFQHDoTkeeO8RepjCXbmXrp+y1zgQHc26LHtBu4QjZPYH1HeVgcF5zlXNTAPvSNU4nUT6LdEEX
	EjwKh8oNXw97JQszMfpA0ecRO/JVUzJOIYK8qHwZ7A0mk3
X-Google-Smtp-Source: AGHT+IFv5Vd9I2g8ShfadWNai4MGcPsTVNYM9JBJbAh0Rl83gxR175ZIBNF3BJDM4El7jyE4KTKddR9JG2+zTp5dAx4=
X-Received: by 2002:a05:6820:f08:b0:611:4042:bcfa with SMTP id
 006d021491bc7-6115ba3be83mr13813272eaf.6.1750750735187; Tue, 24 Jun 2025
 00:38:55 -0700 (PDT)
MIME-Version: 1.0
References: <20250610131600.2972232-1-jens.wiklander@linaro.org>
 <20250610131600.2972232-8-jens.wiklander@linaro.org> <2d93ee96-0c36-4651-b6ad-9fddd0f6ad88@oss.qualcomm.com>
In-Reply-To: <2d93ee96-0c36-4651-b6ad-9fddd0f6ad88@oss.qualcomm.com>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Tue, 24 Jun 2025 09:38:43 +0200
X-Gm-Features: AX0GCFuM5JcuB2movGdmuDiMPV5NoYMd-NK6xp4w95s0PznpYBirMN1LlHfC1B8
Message-ID: <CAHUa44GXCVaShPhw_Yw0+CWovX+pi7=UOXXGr5dKKSXz4JppeA@mail.gmail.com>
To: Amirreza Zarrabi <amirreza.zarrabi@oss.qualcomm.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CDD8E40EBF
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.161.43:from];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: G55SPEZKSUCQ55E76WJXGIZLSLJBPW7T
X-Message-ID-Hash: G55SPEZKSUCQ55E76WJXGIZLSLJBPW7T
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, robin.murphy@arm.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v10 7/9] optee: support protected memory allocation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/G55SPEZKSUCQ55E76WJXGIZLSLJBPW7T/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQW1pciwNCg0KT24gVHVlLCBKdW4gMjQsIDIwMjUgYXQgODo1NOKAr0FNIEFtaXJyZXphIFph
cnJhYmkNCjxhbWlycmV6YS56YXJyYWJpQG9zcy5xdWFsY29tbS5jb20+IHdyb3RlOg0KPg0KPiBI
aSBKZW5zLA0KPg0KPiBPbiA2LzEwLzIwMjUgMTE6MTMgUE0sIEplbnMgV2lrbGFuZGVyIHdyb3Rl
Og0KPiA+IEFkZCBzdXBwb3J0IGluIHRoZSBPUC1URUUgYmFja2VuZCBkcml2ZXIgZm9yIHByb3Rl
Y3RlZCBtZW1vcnkNCj4gPiBhbGxvY2F0aW9uLiBUaGUgc3VwcG9ydCBpcyBsaW1pdGVkIHRvIG9u
bHkgdGhlIFNNQyBBQkkgYW5kIGZvciBzZWN1cmUNCj4gPiB2aWRlbyBidWZmZXJzLg0KPiA+DQo+
ID4gT1AtVEVFIGlzIHByb2JlZCBmb3IgdGhlIHJhbmdlIG9mIHByb3RlY3RlZCBwaHlzaWNhbCBt
ZW1vcnkgYW5kIGENCj4gPiBtZW1vcnkgcG9vbCBhbGxvY2F0b3IgaXMgaW5pdGlhbGl6ZWQgaWYg
T1AtVEVFIGhhdmUgc3VwcG9ydCBmb3Igc3VjaA0KPiA+IG1lbW9yeS4NCj4gPg0KPiA+IFNpZ25l
ZC1vZmYtYnk6IEplbnMgV2lrbGFuZGVyIDxqZW5zLndpa2xhbmRlckBsaW5hcm8ub3JnPg0KPiA+
IC0tLQ0KPiA+ICBkcml2ZXJzL3RlZS9vcHRlZS9LY29uZmlnICAgICAgICAgfCAgNSArKysNCj4g
PiAgZHJpdmVycy90ZWUvb3B0ZWUvY29yZS5jICAgICAgICAgIHwgMTAgKysrKysNCj4gPiAgZHJp
dmVycy90ZWUvb3B0ZWUvb3B0ZWVfcHJpdmF0ZS5oIHwgIDIgKw0KPiA+ICBkcml2ZXJzL3RlZS9v
cHRlZS9zbWNfYWJpLmMgICAgICAgfCA3MCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKyst
DQo+ID4gIDQgZmlsZXMgY2hhbmdlZCwgODUgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkN
Cj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3RlZS9vcHRlZS9LY29uZmlnIGIvZHJpdmVy
cy90ZWUvb3B0ZWUvS2NvbmZpZw0KPiA+IGluZGV4IDdiYjc5OTBkMGIwNy4uNTBkMjA1MWY3ZjIw
IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvdGVlL29wdGVlL0tjb25maWcNCj4gPiArKysgYi9k
cml2ZXJzL3RlZS9vcHRlZS9LY29uZmlnDQo+ID4gQEAgLTI1LDMgKzI1LDggQEAgY29uZmlnIE9Q
VEVFX0lOU0VDVVJFX0xPQURfSU1BR0UNCj4gPg0KPiA+ICAgICAgICAgQWRkaXRpb25hbCBkb2N1
bWVudGF0aW9uIG9uIGtlcm5lbCBzZWN1cml0eSByaXNrcyBhcmUgYXQNCj4gPiAgICAgICAgIERv
Y3VtZW50YXRpb24vdGVlL29wLXRlZS5yc3QuDQo+ID4gKw0KPiA+ICtjb25maWcgT1BURUVfU1RB
VElDX1BST1RNRU1fUE9PTA0KPiA+ICsgICAgIGJvb2wNCj4gPiArICAgICBkZXBlbmRzIG9uIEhB
U19JT01FTSAmJiBURUVfRE1BQlVGX0hFQVBTDQo+ID4gKyAgICAgZGVmYXVsdCB5DQo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvdGVlL29wdGVlL2NvcmUuYyBiL2RyaXZlcnMvdGVlL29wdGVlL2Nv
cmUuYw0KPiA+IGluZGV4IGM3NWZkZGM4MzU3Ni4uNGIxNGE3YWM1NmY5IDEwMDY0NA0KPiA+IC0t
LSBhL2RyaXZlcnMvdGVlL29wdGVlL2NvcmUuYw0KPiA+ICsrKyBiL2RyaXZlcnMvdGVlL29wdGVl
L2NvcmUuYw0KPiA+IEBAIC01Niw2ICs1NiwxNSBAQCBpbnQgb3B0ZWVfcnBtYl9pbnRmX3JkZXYo
c3RydWN0IG5vdGlmaWVyX2Jsb2NrICppbnRmLCB1bnNpZ25lZCBsb25nIGFjdGlvbiwNCj4gPiAg
ICAgICByZXR1cm4gMDsNCj4gPiAgfQ0KPiA+DQo+ID4gK2ludCBvcHRlZV9zZXRfZG1hX21hc2so
c3RydWN0IG9wdGVlICpvcHRlZSwgdV9pbnQgcGFfd2lkdGgpDQo+ID4gK3sNCj4gPiArICAgICB1
NjQgbWFzayA9IERNQV9CSVRfTUFTSyhtaW4oNjQsIHBhX3dpZHRoKSk7DQo+ID4gKw0KPg0KPiBu
aXQ6IFdoeSBub3QgZG1hX2NvZXJjZV9tYXNrX2FuZF9jb2hlcmVudCgpIGluc3RlYWQgb2YgYmVs
bG93Pw0KDQpHb29kIHBvaW50LCBJJ2xsIHVwZGF0ZSBpbiB0aGUgbmV4dCB2ZXJzaW9uLg0KDQpU
aGFua3MsDQpKZW5zDQoNCj4NCj4gLSBBbWlyDQo+DQo+ID4gKyAgICAgb3B0ZWUtPnRlZWRldi0+
ZGV2LmRtYV9tYXNrID0gJm9wdGVlLT50ZWVkZXYtPmRldi5jb2hlcmVudF9kbWFfbWFzazsNCj4g
PiArDQo+ID4gKyAgICAgcmV0dXJuIGRtYV9zZXRfbWFza19hbmRfY29oZXJlbnQoJm9wdGVlLT50
ZWVkZXYtPmRldiwgbWFzayk7DQo+ID4gK30NCj4gPiArDQo+ID4gIHN0YXRpYyB2b2lkIG9wdGVl
X2J1c19zY2FuKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykNCj4gPiAgew0KPiA+ICAgICAgIFdB
Uk5fT04ob3B0ZWVfZW51bWVyYXRlX2RldmljZXMoUFRBX0NNRF9HRVRfREVWSUNFU19TVVBQKSk7
DQo+ID4gQEAgLTE4MSw2ICsxOTAsNyBAQCB2b2lkIG9wdGVlX3JlbW92ZV9jb21tb24oc3RydWN0
IG9wdGVlICpvcHRlZSkNCj4gPiAgICAgICB0ZWVfZGV2aWNlX3VucmVnaXN0ZXIob3B0ZWUtPnN1
cHBfdGVlZGV2KTsNCj4gPiAgICAgICB0ZWVfZGV2aWNlX3VucmVnaXN0ZXIob3B0ZWUtPnRlZWRl
dik7DQo+ID4NCj4gPiArICAgICB0ZWVfZGV2aWNlX3VucmVnaXN0ZXJfYWxsX2RtYV9oZWFwcyhv
cHRlZS0+dGVlZGV2KTsNCj4gPiAgICAgICB0ZWVfc2htX3Bvb2xfZnJlZShvcHRlZS0+cG9vbCk7
DQo+ID4gICAgICAgb3B0ZWVfc3VwcF91bmluaXQoJm9wdGVlLT5zdXBwKTsNCj4gPiAgICAgICBt
dXRleF9kZXN0cm95KCZvcHRlZS0+Y2FsbF9xdWV1ZS5tdXRleCk7DQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvdGVlL29wdGVlL29wdGVlX3ByaXZhdGUuaCBiL2RyaXZlcnMvdGVlL29wdGVlL29w
dGVlX3ByaXZhdGUuaA0KPiA+IGluZGV4IGRjMGYzNTVlZjcyYS4uNWUzYzM0ODAyMTIxIDEwMDY0
NA0KPiA+IC0tLSBhL2RyaXZlcnMvdGVlL29wdGVlL29wdGVlX3ByaXZhdGUuaA0KPiA+ICsrKyBi
L2RyaXZlcnMvdGVlL29wdGVlL29wdGVlX3ByaXZhdGUuaA0KPiA+IEBAIC0yNzIsNiArMjcyLDgg
QEAgc3RydWN0IG9wdGVlX2NhbGxfY3R4IHsNCj4gPg0KPiA+ICBleHRlcm4gc3RydWN0IGJsb2Nr
aW5nX25vdGlmaWVyX2hlYWQgb3B0ZWVfcnBtYl9pbnRmX2FkZGVkOw0KPiA+DQo+ID4gK2ludCBv
cHRlZV9zZXRfZG1hX21hc2soc3RydWN0IG9wdGVlICpvcHRlZSwgdV9pbnQgcGFfd2lkdGgpOw0K
PiA+ICsNCj4gPiAgaW50IG9wdGVlX25vdGlmX2luaXQoc3RydWN0IG9wdGVlICpvcHRlZSwgdV9p
bnQgbWF4X2tleSk7DQo+ID4gIHZvaWQgb3B0ZWVfbm90aWZfdW5pbml0KHN0cnVjdCBvcHRlZSAq
b3B0ZWUpOw0KPiA+ICBpbnQgb3B0ZWVfbm90aWZfd2FpdChzdHJ1Y3Qgb3B0ZWUgKm9wdGVlLCB1
X2ludCBrZXksIHUzMiB0aW1lb3V0KTsNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy90ZWUvb3B0
ZWUvc21jX2FiaS5jIGIvZHJpdmVycy90ZWUvb3B0ZWUvc21jX2FiaS5jDQo+ID4gaW5kZXggZjBj
M2FjMTEwM2JiLi5jZjEwNmQxNWU2NGUgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy90ZWUvb3B0
ZWUvc21jX2FiaS5jDQo+ID4gKysrIGIvZHJpdmVycy90ZWUvb3B0ZWUvc21jX2FiaS5jDQo+ID4g
QEAgLTE1ODQsNiArMTU4NCw2OCBAQCBzdGF0aWMgaW5saW5lIGludCBvcHRlZV9sb2FkX2Z3KHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYsDQo+ID4gIH0NCj4gPiAgI2VuZGlmDQo+ID4NCj4g
PiArc3RhdGljIHN0cnVjdCB0ZWVfcHJvdG1lbV9wb29sICpzdGF0aWNfcHJvdG1lbV9wb29sX2lu
aXQoc3RydWN0IG9wdGVlICpvcHRlZSkNCj4gPiArew0KPiA+ICsjaWYgSVNfRU5BQkxFRChDT05G
SUdfT1BURUVfU1RBVElDX1BST1RNRU1fUE9PTCkNCj4gPiArICAgICB1bmlvbiB7DQo+ID4gKyAg
ICAgICAgICAgICBzdHJ1Y3QgYXJtX3NtY2NjX3JlcyBzbWNjYzsNCj4gPiArICAgICAgICAgICAg
IHN0cnVjdCBvcHRlZV9zbWNfZ2V0X3Byb3RtZW1fY29uZmlnX3Jlc3VsdCByZXN1bHQ7DQo+ID4g
KyAgICAgfSByZXM7DQo+ID4gKyAgICAgc3RydWN0IHRlZV9wcm90bWVtX3Bvb2wgKnBvb2w7DQo+
ID4gKyAgICAgdm9pZCAqcDsNCj4gPiArICAgICBpbnQgcmM7DQo+ID4gKw0KPiA+ICsgICAgIG9w
dGVlLT5zbWMuaW52b2tlX2ZuKE9QVEVFX1NNQ19HRVRfUFJPVE1FTV9DT05GSUcsIDAsIDAsIDAs
IDAsDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgMCwgMCwgMCwgJnJlcy5zbWNjYyk7
DQo+ID4gKyAgICAgaWYgKHJlcy5yZXN1bHQuc3RhdHVzICE9IE9QVEVFX1NNQ19SRVRVUk5fT0sp
DQo+ID4gKyAgICAgICAgICAgICByZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsNCj4gPiArDQo+ID4g
KyAgICAgcmMgPSBvcHRlZV9zZXRfZG1hX21hc2sob3B0ZWUsIHJlcy5yZXN1bHQucGFfd2lkdGgp
Ow0KPiA+ICsgICAgIGlmIChyYykNCj4gPiArICAgICAgICAgICAgIHJldHVybiBFUlJfUFRSKHJj
KTsNCj4gPiArDQo+ID4gKyAgICAgLyoNCj4gPiArICAgICAgKiBNYXAgdGhlIG1lbW9yeSBhcyB1
bmNhY2hlZCB0byBtYWtlIHN1cmUgdGhlIGtlcm5lbCBjYW4gd29yayB3aXRoDQo+ID4gKyAgICAg
ICogX19wZm5fdG9fcGFnZSgpIGFuZCBmcmllbmRzIHNpbmNlIHRoYXQncyBuZWVkZWQgd2hlbiBw
YXNzaW5nIHRoZQ0KPiA+ICsgICAgICAqIHByb3RlY3RlZCBETUEtYnVmIHRvIGEgZGV2aWNlLiBU
aGUgbWVtb3J5IHNob3VsZCBvdGhlcndpc2Ugbm90DQo+ID4gKyAgICAgICogYmUgdG91Y2hlZCBi
eSB0aGUga2VybmVsIHNpbmNlIGl0J3MgbGlrZWx5IHRvIGNhdXNlIGFuIGV4dGVybmFsDQo+ID4g
KyAgICAgICogYWJvcnQgZHVlIHRvIHRoZSBwcm90ZWN0aW9uIHN0YXR1cy4NCj4gPiArICAgICAg
Ki8NCj4gPiArICAgICBwID0gZGV2bV9tZW1yZW1hcCgmb3B0ZWUtPnRlZWRldi0+ZGV2LCByZXMu
cmVzdWx0LnN0YXJ0LA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHJlcy5yZXN1bHQuc2l6
ZSwgTUVNUkVNQVBfV0MpOw0KPiA+ICsgICAgIGlmIChJU19FUlIocCkpDQo+ID4gKyAgICAgICAg
ICAgICByZXR1cm4gcDsNCj4gPiArDQo+ID4gKyAgICAgcG9vbCA9IHRlZV9wcm90bWVtX3N0YXRp
Y19wb29sX2FsbG9jKHJlcy5yZXN1bHQuc3RhcnQsIHJlcy5yZXN1bHQuc2l6ZSk7DQo+ID4gKyAg
ICAgaWYgKElTX0VSUihwb29sKSkNCj4gPiArICAgICAgICAgICAgIGRldm1fbWVtdW5tYXAoJm9w
dGVlLT50ZWVkZXYtPmRldiwgcCk7DQo+ID4gKw0KPiA+ICsgICAgIHJldHVybiBwb29sOw0KPiA+
ICsjZWxzZQ0KPiA+ICsgICAgIHJldHVybiBFUlJfUFRSKC1FSU5WQUwpOw0KPiA+ICsjZW5kaWYN
Cj4gPiArfQ0KPiA+ICsNCj4gPiArc3RhdGljIGludCBvcHRlZV9wcm90bWVtX3Bvb2xfaW5pdChz
dHJ1Y3Qgb3B0ZWUgKm9wdGVlKQ0KPiA+ICt7DQo+ID4gKyAgICAgZW51bSB0ZWVfZG1hX2hlYXBf
aWQgaGVhcF9pZCA9IFRFRV9ETUFfSEVBUF9TRUNVUkVfVklERU9fUExBWTsNCj4gPiArICAgICBz
dHJ1Y3QgdGVlX3Byb3RtZW1fcG9vbCAqcG9vbCA9IEVSUl9QVFIoLUVJTlZBTCk7DQo+ID4gKyAg
ICAgaW50IHJjOw0KPiA+ICsNCj4gPiArICAgICBpZiAoIShvcHRlZS0+c21jLnNlY19jYXBzICYg
T1BURUVfU01DX1NFQ19DQVBfUFJPVE1FTSkpDQo+ID4gKyAgICAgICAgICAgICByZXR1cm4gMDsN
Cj4gPiArDQo+ID4gKyAgICAgcG9vbCA9IHN0YXRpY19wcm90bWVtX3Bvb2xfaW5pdChvcHRlZSk7
DQo+ID4gKyAgICAgaWYgKElTX0VSUihwb29sKSkNCj4gPiArICAgICAgICAgICAgIHJldHVybiBQ
VFJfRVJSKHBvb2wpOw0KPiA+ICsNCj4gPiArICAgICByYyA9IHRlZV9kZXZpY2VfcmVnaXN0ZXJf
ZG1hX2hlYXAob3B0ZWUtPnRlZWRldiwgaGVhcF9pZCwgcG9vbCk7DQo+ID4gKyAgICAgaWYgKHJj
KQ0KPiA+ICsgICAgICAgICAgICAgcG9vbC0+b3BzLT5kZXN0cm95X3Bvb2wocG9vbCk7DQo+ID4g
Kw0KPiA+ICsgICAgIHJldHVybiByYzsNCj4gPiArfQ0KPiA+ICsNCj4gPiAgc3RhdGljIGludCBv
cHRlZV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQ0KPiA+ICB7DQo+ID4gICAg
ICAgb3B0ZWVfaW52b2tlX2ZuICppbnZva2VfZm47DQo+ID4gQEAgLTE2NzksNyArMTc0MSw3IEBA
IHN0YXRpYyBpbnQgb3B0ZWVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikNCj4g
PiAgICAgICBvcHRlZSA9IGt6YWxsb2Moc2l6ZW9mKCpvcHRlZSksIEdGUF9LRVJORUwpOw0KPiA+
ICAgICAgIGlmICghb3B0ZWUpIHsNCj4gPiAgICAgICAgICAgICAgIHJjID0gLUVOT01FTTsNCj4g
PiAtICAgICAgICAgICAgIGdvdG8gZXJyX2ZyZWVfcG9vbDsNCj4gPiArICAgICAgICAgICAgIGdv
dG8gZXJyX2ZyZWVfc2htX3Bvb2w7DQo+ID4gICAgICAgfQ0KPiA+DQo+ID4gICAgICAgb3B0ZWUt
Pm9wcyA9ICZvcHRlZV9vcHM7DQo+ID4gQEAgLTE3NTIsNiArMTgxNCw5IEBAIHN0YXRpYyBpbnQg
b3B0ZWVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikNCj4gPiAgICAgICAgICAg
ICAgIHByX2luZm8oIkFzeW5jaHJvbm91cyBub3RpZmljYXRpb25zIGVuYWJsZWRcbiIpOw0KPiA+
ICAgICAgIH0NCj4gPg0KPiA+ICsgICAgIGlmIChvcHRlZV9wcm90bWVtX3Bvb2xfaW5pdChvcHRl
ZSkpDQo+ID4gKyAgICAgICAgICAgICBwcl9pbmZvKCJQcm90ZWN0ZWQgbWVtb3J5IHNlcnZpY2Ug
bm90IGF2YWlsYWJsZVxuIik7DQo+ID4gKw0KPiA+ICAgICAgIC8qDQo+ID4gICAgICAgICogRW5z
dXJlIHRoYXQgdGhlcmUgYXJlIG5vIHByZS1leGlzdGluZyBzaG0gb2JqZWN0cyBiZWZvcmUgZW5h
YmxpbmcNCj4gPiAgICAgICAgKiB0aGUgc2htIGNhY2hlIHNvIHRoYXQgdGhlcmUncyBubyBjaGFu
Y2Ugb2YgcmVjZWl2aW5nIGFuIGludmFsaWQNCj4gPiBAQCAtMTc4Nyw2ICsxODUyLDcgQEAgc3Rh
dGljIGludCBvcHRlZV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQ0KPiA+ICAg
ICAgICAgICAgICAgb3B0ZWVfZGlzYWJsZV9zaG1fY2FjaGUob3B0ZWUpOw0KPiA+ICAgICAgIG9w
dGVlX3NtY19ub3RpZl91bmluaXRfaXJxKG9wdGVlKTsNCj4gPiAgICAgICBvcHRlZV91bnJlZ2lz
dGVyX2RldmljZXMoKTsNCj4gPiArICAgICB0ZWVfZGV2aWNlX3VucmVnaXN0ZXJfYWxsX2RtYV9o
ZWFwcyhvcHRlZS0+dGVlZGV2KTsNCj4gPiAgZXJyX25vdGlmX3VuaW5pdDoNCj4gPiAgICAgICBv
cHRlZV9ub3RpZl91bmluaXQob3B0ZWUpOw0KPiA+ICBlcnJfY2xvc2VfY3R4Og0KPiA+IEBAIC0x
ODAzLDcgKzE4NjksNyBAQCBzdGF0aWMgaW50IG9wdGVlX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpDQo+ID4gICAgICAgdGVlX2RldmljZV91bnJlZ2lzdGVyKG9wdGVlLT50ZWVk
ZXYpOw0KPiA+ICBlcnJfZnJlZV9vcHRlZToNCj4gPiAgICAgICBrZnJlZShvcHRlZSk7DQo+ID4g
LWVycl9mcmVlX3Bvb2w6DQo+ID4gK2Vycl9mcmVlX3NobV9wb29sOg0KPiA+ICAgICAgIHRlZV9z
aG1fcG9vbF9mcmVlKHBvb2wpOw0KPiA+ICAgICAgIGlmIChtZW1yZW1hcGVkX3NobSkNCj4gPiAg
ICAgICAgICAgICAgIG1lbXVubWFwKG1lbXJlbWFwZWRfc2htKTsNCj4NCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
