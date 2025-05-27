Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACD5AC50BC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 May 2025 16:21:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 11B6344AEB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 May 2025 14:21:51 +0000 (UTC)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	by lists.linaro.org (Postfix) with ESMTPS id 70E07443D8
	for <linaro-mm-sig@lists.linaro.org>; Tue, 27 May 2025 14:21:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b="G/zMrMIi";
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.210.50 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-73384b2c7ffso771319a34.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 27 May 2025 07:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748355699; x=1748960499; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hwr1gpmj/Y5xrm528qSwLq/tkBaVoA9zaC9zXNPG4sg=;
        b=G/zMrMIi7fjfB17dY43lFLkUfd9alpoEwpUX0IiPIgF0YAzn+OOJ3Y9FVnddMe5a8J
         mfjOJu1zrvqGSfikFDexeM4LCVAo24oT0ZjPuGUSSkVURynRwHaiUVs9xhHGfha8aqE5
         bf5XSyqIMhJ3TprKosJxCXzlwpfIRewTO5d67LvVB0FsDycSmCzRwQ220/IaDfyhUcQS
         nPpMhpoYZf0h+/S+DnUcvwaOULz4bYgBnf/0TKEMO6xshDQpHbxHxUNL0ZJSzhuu3Zh6
         eJhf0KrqC+cNitrMiHdZ6hpdFipyCxQNsLIkj1YJ+Wh/Kc+43t78BCoujgD8mEc9nT+C
         5UAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748355699; x=1748960499;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hwr1gpmj/Y5xrm528qSwLq/tkBaVoA9zaC9zXNPG4sg=;
        b=AkSAmSATziDjg/fCSe92CeHf/qka/R+6sA2oxZMODVzmP7ZgRKtDFf7ccbJuvHTSHR
         7+Hk6woL5hF5Ah4AZTpMm1FwhuTpxvQNad66bPHC+0rZGvp6tnjgkuroNm9pMuHOFioa
         7WDhCMbYPv7vauitC0pExwmCfMTd1oAuDsvJem1tavUdQNkYFH0K+hGXI75pLH3ITatS
         lnTERMhTFJNk5EF8GSSqiYP7cgtFoOZeJzAgOgIH0PXNfkoKFoenCEQc6d2a/5fg6tDj
         63S62WZczNOzG7qHt8Y4nkm2KS+dg6rIkpVagDLnANEC+crFHAhQACHGCzqnta4+QIhM
         ttow==
X-Forwarded-Encrypted: i=1; AJvYcCXtiiVp65HqzTnKfODig3C0WP/LaJX7K9sNXTYHuZVMxUnSySqNlDBNwG5WMLGIZH0HfJRBS+tRWkjkjx2m@lists.linaro.org
X-Gm-Message-State: AOJu0YxnXTIoquXDcAaeNFR3CcELBs6ms5wEts2XtdWtIHg1kGWCSH2O
	qdYYf4gqH4lzZQUMr8rjE4TScs2dQyPWFoRjI6jMB8+zyV2QSKFq1WqL5DFlby3M/PB5y2DUMSJ
	+FZWP2NlqanmMb6+iNabdkdVPV1MD0frhCjp6WNkhShOd
X-Gm-Gg: ASbGncuvq78+cCXRd6C0eiuA9XKFYT/T+RMkBEuHmJeiv03vDcWeYpoQrOUoxTqM+ja
	TVUS7AZCJwdZ9mS5uut0gB3pQGfexRloF7DUNSSXPD6ez9bJXasP9+nLU3sZuBHwyhgX/7CYdoT
	beysWAvrN1rnt91YwbrNwQvnckuNTdfPlA2A==
X-Google-Smtp-Source: AGHT+IHSldvXeMA/elq5GvdUeZXIE9U2qVSq25l+1UuvJ7nlZ4QemLu8hmu4wkxm84jlPfHrWshtHT5sVpyeKj3x5HU=
X-Received: by 2002:a05:6808:1b85:b0:402:ebf9:b770 with SMTP id
 5614622812f47-40646855c6dmr6484125b6e.28.1748355698671; Tue, 27 May 2025
 07:21:38 -0700 (PDT)
MIME-Version: 1.0
References: <20250520152436.474778-1-jens.wiklander@linaro.org>
 <20250520152436.474778-7-jens.wiklander@linaro.org> <aDQWt5Ck1Bo01Z_4@sumit-X1>
 <CAHUa44E4-z7-7DQjyGXYRiZDf6mRBKYZDuxWFGy+3JxtWO1ocg@mail.gmail.com> <aDQ1YR5jbcOFctty@sumit-X1>
In-Reply-To: <aDQ1YR5jbcOFctty@sumit-X1>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Tue, 27 May 2025 16:21:27 +0200
X-Gm-Features: AX0GCFufndHj8dMt0PaaB1DfiHys-ZIzTuXpul-y9wKknnwSsO_zDsCVnQgE3aw
Message-ID: <CAHUa44HUzfWXEdLeAVimDM0DTFaTbCa4SSTcy8YPhDjWHR352Q@mail.gmail.com>
To: Sumit Garg <sumit.garg@kernel.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.50:from];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.210.50:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Queue-Id: 70E07443D8
X-Spamd-Bar: --
Message-ID-Hash: ALNFV5RGVKOCJCMNB3CEONQJT3PH67MJ
X-Message-ID-Hash: ALNFV5RGVKOCJCMNB3CEONQJT3PH67MJ
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 6/9] tee: add tee_shm_alloc_dma_mem()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ALNFV5RGVKOCJCMNB3CEONQJT3PH67MJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBNYXkgMjYsIDIwMjUgYXQgMTE6MzPigK9BTSBTdW1pdCBHYXJnIDxzdW1pdC5nYXJn
QGtlcm5lbC5vcmc+IHdyb3RlOg0KPg0KPiBPbiBNb24sIE1heSAyNiwgMjAyNSBhdCAxMToyMTo0
N0FNICswMjAwLCBKZW5zIFdpa2xhbmRlciB3cm90ZToNCj4gPiBPbiBNb24sIE1heSAyNiwgMjAy
NSBhdCA5OjIy4oCvQU0gU3VtaXQgR2FyZyA8c3VtaXQuZ2FyZ0BrZXJuZWwub3JnPiB3cm90ZToN
Cj4gPiA+DQo+ID4gPiBPbiBUdWUsIE1heSAyMCwgMjAyNSBhdCAwNToxNjo0OVBNICswMjAwLCBK
ZW5zIFdpa2xhbmRlciB3cm90ZToNCj4gPiA+ID4gQWRkIHRlZV9zaG1fYWxsb2NfZG1hX21lbSgp
IHRvIGFsbG9jYXRlIERNQSBtZW1vcnkuIFRoZSBtZW1vcnkgaXMNCj4gPiA+ID4gcmVwcmVzZW50
ZWQgYnkgYSB0ZWVfc2htIG9iamVjdCB1c2luZyB0aGUgbmV3IGZsYWcgVEVFX1NITV9ETUFfTUVN
IHRvDQo+ID4gPiA+IGlkZW50aWZ5IGl0IGFzIERNQSBtZW1vcnkuIFRoZSBhbGxvY2F0ZWQgbWVt
b3J5IHdpbGwgbGF0ZXIgYmUgbGVudCB0bw0KPiA+ID4gPiB0aGUgVEVFIHRvIGJlIHVzZWQgYXMg
cHJvdGVjdGVkIG1lbW9yeS4NCj4gPiA+ID4NCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogSmVucyBX
aWtsYW5kZXIgPGplbnMud2lrbGFuZGVyQGxpbmFyby5vcmc+DQo+ID4gPiA+IC0tLQ0KPiA+ID4g
PiAgZHJpdmVycy90ZWUvdGVlX3NobS5jICAgIHwgNzQgKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKystLQ0KPiA+ID4gPiAgaW5jbHVkZS9saW51eC90ZWVfY29yZS5oIHwgIDUg
KysrDQo+ID4gPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDc3IGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pDQo+ID4gPiA+DQo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3RlZS90ZWVfc2ht
LmMgYi9kcml2ZXJzL3RlZS90ZWVfc2htLmMNCj4gPiA+ID4gaW5kZXggZTFlZDUyZWUwYTE2Li45
MmE2YTM1ZTFhMWUgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvdGVlL3RlZV9zaG0uYw0K
PiA+ID4gPiArKysgYi9kcml2ZXJzL3RlZS90ZWVfc2htLmMNCj4gPiA+ID4gQEAgLTUsNiArNSw4
IEBADQo+ID4gPiA+ICAjaW5jbHVkZSA8bGludXgvYW5vbl9pbm9kZXMuaD4NCj4gPiA+ID4gICNp
bmNsdWRlIDxsaW51eC9kZXZpY2UuaD4NCj4gPiA+ID4gICNpbmNsdWRlIDxsaW51eC9kbWEtYnVm
Lmg+DQo+ID4gPiA+ICsjaW5jbHVkZSA8bGludXgvZG1hLW1hcHBpbmcuaD4NCj4gPiA+ID4gKyNp
bmNsdWRlIDxsaW51eC9oaWdobWVtLmg+DQo+ID4gPiA+ICAjaW5jbHVkZSA8bGludXgvaWRyLmg+
DQo+ID4gPiA+ICAjaW5jbHVkZSA8bGludXgvaW8uaD4NCj4gPiA+ID4gICNpbmNsdWRlIDxsaW51
eC9tbS5oPg0KPiA+ID4gPiBAQCAtMTMsOSArMTUsMTQgQEANCj4gPiA+ID4gICNpbmNsdWRlIDxs
aW51eC90ZWVfY29yZS5oPg0KPiA+ID4gPiAgI2luY2x1ZGUgPGxpbnV4L3VhY2Nlc3MuaD4NCj4g
PiA+ID4gICNpbmNsdWRlIDxsaW51eC91aW8uaD4NCj4gPiA+ID4gLSNpbmNsdWRlIDxsaW51eC9o
aWdobWVtLmg+DQo+ID4gPiA+ICAjaW5jbHVkZSAidGVlX3ByaXZhdGUuaCINCj4gPiA+ID4NCj4g
PiA+ID4gK3N0cnVjdCB0ZWVfc2htX2RtYV9tZW0gew0KPiA+ID4gPiArICAgICBzdHJ1Y3QgdGVl
X3NobSBzaG07DQo+ID4gPiA+ICsgICAgIGRtYV9hZGRyX3QgZG1hX2FkZHI7DQo+ID4gPiA+ICsg
ICAgIHN0cnVjdCBwYWdlICpwYWdlOw0KPiA+ID4gPiArfTsNCj4gPiA+ID4gKw0KPiA+ID4gPiAg
c3RhdGljIHZvaWQgc2htX3B1dF9rZXJuZWxfcGFnZXMoc3RydWN0IHBhZ2UgKipwYWdlcywgc2l6
ZV90IHBhZ2VfY291bnQpDQo+ID4gPiA+ICB7DQo+ID4gPiA+ICAgICAgIHNpemVfdCBuOw0KPiA+
ID4gPiBAQCAtNDksNyArNTYsMTQgQEAgc3RhdGljIHZvaWQgdGVlX3NobV9yZWxlYXNlKHN0cnVj
dCB0ZWVfZGV2aWNlICp0ZWVkZXYsIHN0cnVjdCB0ZWVfc2htICpzaG0pDQo+ID4gPiA+ICAgICAg
IHN0cnVjdCB0ZWVfc2htICpwYXJlbnRfc2htID0gTlVMTDsNCj4gPiA+ID4gICAgICAgdm9pZCAq
cCA9IHNobTsNCj4gPiA+ID4NCj4gPiA+ID4gLSAgICAgaWYgKHNobS0+ZmxhZ3MgJiBURUVfU0hN
X0RNQV9CVUYpIHsNCj4gPiA+ID4gKyAgICAgaWYgKHNobS0+ZmxhZ3MgJiBURUVfU0hNX0RNQV9N
RU0pIHsNCj4gPiA+ID4gKyAgICAgICAgICAgICBzdHJ1Y3QgdGVlX3NobV9kbWFfbWVtICpkbWFf
bWVtOw0KPiA+ID4gPiArDQo+ID4gPiA+ICsgICAgICAgICAgICAgZG1hX21lbSA9IGNvbnRhaW5l
cl9vZihzaG0sIHN0cnVjdCB0ZWVfc2htX2RtYV9tZW0sIHNobSk7DQo+ID4gPiA+ICsgICAgICAg
ICAgICAgcCA9IGRtYV9tZW07DQo+ID4gPiA+ICsgICAgICAgICAgICAgZG1hX2ZyZWVfcGFnZXMo
JnRlZWRldi0+ZGV2LCBzaG0tPnNpemUsIGRtYV9tZW0tPnBhZ2UsDQo+ID4gPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgZG1hX21lbS0+ZG1hX2FkZHIsIERNQV9CSURJUkVDVElPTkFM
KTsNCj4gPiA+DQo+ID4gPiBBbHRob3VnaCB0aGUga2VybmVsIGJvdCBhbHJlYWR5IGZvdW5kIGEg
cmFuZGNvbmZpZyBpc3N1ZSwgaXQgbG9va3MgbGlrZQ0KPiA+ID4gd2UgbmVlZCB0byBhZGQgS2Nv
bmZpZyBkZXBlbmRlbmNpZXMgbGlrZSBIQVNfRE1BLCBETUFfQ01BIGV0Yy4NCj4gPiA+DQo+ID4g
PiBBbHNvLCBJIHdhcyB0aGlua2luZyBpZiB3ZSBzaG91bGQgcmF0aGVyIGFkZCBhIG5ldyBURUUg
c3Vic3lzdGVtDQo+ID4gPiBzcGVjaWZpYyBLY29uZmlnIG9wdGlvbiBsaWtlOiBURUVfRE1BQlVG
X0hFQVBTIHdoaWNoIGNhbiB0aGVuIGJlIHVzZWQgdG8NCj4gPiA+IHNlbGVjdCB3aGF0ZXZlciBk
ZXBlbmRlbmN5IGlzIG5lZWRlZCBhcyB3ZWxsIGFzIGFjdCBhcyBhIGdhdGluZyBLY29uZmlnDQo+
ID4gPiBmb3IgcmVsZXZhbnQgZmVhdHVyZXMuDQo+ID4NCj4gPiBZb3UgbWVhbiBzb21ldGhpbmcg
bGlrZSB0aGlzPw0KPiA+DQo+ID4gLS0tIGEvZHJpdmVycy90ZWUvS2NvbmZpZw0KPiA+ICsrKyBi
L2RyaXZlcnMvdGVlL0tjb25maWcNCj4gPiBAQCAtMTMsNiArMTMsMTQgQEAgbWVudWNvbmZpZyBU
RUUNCj4gPg0KPiA+ICBpZiBURUUNCj4gPg0KPiA+ICtjb25maWcgVEVFX0RNQUJVRl9IRUFQUw0K
PiA+ICsgICAgICAgYm9vbA0KPiA+ICsgICAgICAgZGVwZW5kcyBvbiBIQVNfRE1BICYmIERNQUJV
Rl9IRUFQUw0KPg0KPiBZZWFoIHRoaXMgbG9va3MgZmluZSB0byBtZSBidXQgbmVlZHMgdG8gYmUg
dGVzdGVkIGlmIERNQV9DTUEgaXMgYQ0KPiBkZXBlbmRlbmN5IGhlcmUgdG9vLg0KDQpXaHk/IEl0
IGNhbiB3b3JrIHdpdGhvdXQgQ01BIGZvciBzbWFsbCBhbGxvY2F0aW9ucy4NCg0KPg0KPiA+ICsN
Cj4gPiArY29uZmlnIFRFRV9TVEFUSUNfUFJPVE1FTV9QT09MDQo+ID4gKyAgICAgICBib29sDQo+
ID4gKyAgICAgICBkZXBlbmRzIG9uIEhBU19JT01FTSAmJiBURUVfRE1BQlVGX0hFQVBTDQo+DQo+
IFRoZSBzdGF0aWMgYW5kIGR5bmFtaWMgcHJvdGVjdGVkIG1lbW9yeSBwb29scyBzaG91bGQgZ2V0
IGF1dG8gZW5hYmxlZCBpZg0KPiBURUVfRE1BQlVGX0hFQVBTIGlzIGVuYWJsZWQgc2luY2UgdGhl
eSBhcmUgcHJlLXJlcXVpc2l0ZSB0byBwcm92aWRlIHRoZQ0KPiBwcm90ZWN0ZWQgaGVhcHMgc3Vw
cG9ydC4gU29tZXRoaW5nIGxpa2U6DQo+DQo+ICtjb25maWcgVEVFX1NUQVRJQ19QUk9UTUVNX1BP
T0wNCj4gKyAgICAgICBib29sDQo+ICsgICAgICAgZGVmYXVsdCB5IGlmIFRFRV9ETUFCVUZfSEVB
UFMNCj4gKyAgICAgICBkZXBlbmRzIG9uIEhBU19JT01FTQ0KDQpSaWdodCwgSSdsbCB1cGRhdGUg
YXMgbmVlZGVkLg0KDQpDaGVlcnMsDQpKZW5zDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
