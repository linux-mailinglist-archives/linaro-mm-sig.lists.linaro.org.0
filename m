Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BC982635690
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 10:34:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C0E8E3ED34
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Nov 2022 09:34:18 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by lists.linaro.org (Postfix) with ESMTPS id D8C613ED34
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 09:34:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=RMt3JOxI;
	spf=none (lists.linaro.org: domain of daniel.vetter@ffwll.ch has no SPF policy when checking 209.85.218.44) smtp.mailfrom=daniel.vetter@ffwll.ch;
	dmarc=none
Received: by mail-ej1-f44.google.com with SMTP id me22so24875234ejb.8
        for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Nov 2022 01:34:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eaoNQNPQh1D0M9ASOIATnCY2bDKOxaIZFdZSYeu2AVU=;
        b=RMt3JOxIQZ+xFx84pQltpGWI1aa+nHijLWYpM/9MD53KeuGh9anNrdvbMkILFssPxr
         2IGkvYiWoiVnbqC4YWeIB7pkomSW8Zpv79dOx7NSzp9pu6N18yQiih29xUZLqCaGldKu
         QZ2diXWp1IIJPK8cQ6O8cweW3/WDsoBxtmfj4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eaoNQNPQh1D0M9ASOIATnCY2bDKOxaIZFdZSYeu2AVU=;
        b=TKhO4YFTQ5+jeAGoFYQw4/nlD4bYJuY4IlADIlg9jbeu/6OTMcAqbZjZrb8YLmUPU7
         JaDaeFWm05cbbBrlbAqEMG4S8uOpULcl2sIR75o/p5n89DqfFW82SyCYFsrEqpmS3Hyb
         TssuYRSxX6vmWks3qUvib18ygxrmqJwmd00brTavXMS2WVgsFpxmAt27lYsNy88Mcy4Q
         mlgS9pKQwafY/VD9IEFy8g4q9IUxMO1Y1ekNiaJMvp/jGkTW8ucMTfrw7Pso45th7PFv
         JkQXdv2w4JFKbbk7D9NLJ3xmIHyVDO0maZNdAUwl2zmOo32myP6okhG1wB/AIZSFWfpn
         HarQ==
X-Gm-Message-State: ANoB5pl1P7l3lhZ0THSBzXF5a6SpT2e6ErA0o38zhO8y8iut92T3JhnS
	MJxMB6O28X3b4dO89AisQzqyUyCh/rXDAwDf4Z9HLw==
X-Google-Smtp-Source: AA0mqf5FwM2IuOqLfNqel4/ejeW7bYTnzXwCbpgfhL4aPEVMyPRFaHI3e6WRPKcn6SNyBGK84yQq/1c1DMMfY3IL7+E=
X-Received: by 2002:a17:906:1614:b0:78d:4e5b:ffaa with SMTP id
 m20-20020a170906161400b0078d4e5bffaamr6742960ejd.455.1669196048915; Wed, 23
 Nov 2022 01:34:08 -0800 (PST)
MIME-Version: 1.0
References: <20221122170801.842766-1-daniel.vetter@ffwll.ch> <5c3c8d4f-2c06-9210-b00a-4d0ff6f6fbb7@suse.de>
In-Reply-To: <5c3c8d4f-2c06-9210-b00a-4d0ff6f6fbb7@suse.de>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 23 Nov 2022 10:33:57 +0100
Message-ID: <CAKMK7uGqQMs5q0h40q=E5JqTxw7qRjGT3GaTF0CJVU--B+pjRg@mail.gmail.com>
To: Thomas Zimmermann <tzimmermann@suse.de>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-Rspamd-Queue-Id: D8C613ED34
X-Spamd-Bar: ----------
X-Spamd-Result: default: False [-10.80 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[ffwll.ch:dkim];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_COUNT_TWO(0.00)[2];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-0.961];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.218.44:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[ffwll.ch];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.44:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: CLJVQG6V3VV75ON46VSDESGIQYQ2LCVE
X-Message-ID-Hash: CLJVQG6V3VV75ON46VSDESGIQYQ2LCVE
X-MailFrom: daniel.vetter@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: DRI Development <dri-devel@lists.freedesktop.org>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Matthew Wilcox <willy@infradead.org>, Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org, Jason Gunthorpe <jgg@ziepe.ca>, John Stultz <john.stultz@linaro.org>, Daniel Vetter <daniel.vetter@intel.com>, Suren Baghdasaryan <surenb@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Require VM_PFNMAP vma for mmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CLJVQG6V3VV75ON46VSDESGIQYQ2LCVE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCAyMyBOb3YgMjAyMiBhdCAwOTowNywgVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJt
YW5uQHN1c2UuZGU+IHdyb3RlOg0KPg0KPiBIaQ0KPg0KPiBBbSAyMi4xMS4yMiB1bSAxODowOCBz
Y2hyaWViIERhbmllbCBWZXR0ZXI6DQo+ID4gdGxkcjsgRE1BIGJ1ZmZlcnMgYXJlbid0IG5vcm1h
bCBtZW1vcnksIGV4cGVjdGluZyB0aGF0IHlvdSBjYW4gdXNlDQo+ID4gdGhlbSBsaWtlIHRoYXQg
KGxpa2UgY2FsbGluZyBnZXRfdXNlcl9wYWdlcyB3b3Jrcywgb3IgdGhhdCB0aGV5J3JlDQo+ID4g
YWNjb3VudGluZyBsaWtlIGFueSBvdGhlciBub3JtYWwgbWVtb3J5KSBjYW5ub3QgYmUgZ3VhcmFu
dGVlZC4NCj4gPg0KPiA+IFNpbmNlIHNvbWUgdXNlcnNwYWNlIG9ubHkgcnVucyBvbiBpbnRlZ3Jh
dGVkIGRldmljZXMsIHdoZXJlIGFsbA0KPiA+IGJ1ZmZlcnMgYXJlIGFjdHVhbGx5IGFsbCByZXNp
ZGVudCBzeXN0ZW0gbWVtb3J5LCB0aGVyZSdzIGEgaHVnZQ0KPiA+IHRlbXB0YXRpb24gdG8gYXNz
dW1lIHRoYXQgYSBzdHJ1Y3QgcGFnZSBpcyBhbHdheXMgcHJlc2VudCBhbmQgdXNlYWJsZQ0KPiA+
IGxpa2UgZm9yIGFueSBtb3JlIHBhZ2VjYWNoZSBiYWNrZWQgbW1hcC4gVGhpcyBoYXMgdGhlIHBv
dGVudGlhbCB0bw0KPiA+IHJlc3VsdCBpbiBhIHVhcGkgbmlnaHRtYXJlLg0KPiA+DQo+ID4gVG8g
c3RvcCB0aGlzIGdhcCByZXF1aXJlIHRoYXQgRE1BIGJ1ZmZlciBtbWFwcyBhcmUgVk1fUEZOTUFQ
LCB3aGljaA0KPiA+IGJsb2NrcyBnZXRfdXNlcl9wYWdlcyBhbmQgYWxsIHRoZSBvdGhlciBzdHJ1
Y3QgcGFnZSBiYXNlZA0KPiA+IGluZnJhc3RydWN0dXJlIGZvciBldmVyeW9uZS4gSW4gc3Bpcml0
IHRoaXMgaXMgdGhlIHVhcGkgY291bnRlcnBhcnQgdG8NCj4gPiB0aGUga2VybmVsLWludGVybmFs
IENPTkZJR19ETUFCVUZfREVCVUcuDQo+ID4NCj4gPiBNb3RpdmF0ZWQgYnkgYSByZWNlbnQgcGF0
Y2ggd2hpY2ggd2FudGVkIHRvIHN3aWNoIHRoZSBzeXN0ZW0gZG1hLWJ1Zg0KPiA+IGhlYXAgdG8g
dm1faW5zZXJ0X3BhZ2UgaW5zdGVhZCBvZiB2bV9pbnNlcnRfcGZuLg0KPiA+DQo+ID4gdjI6DQo+
ID4NCj4gPiBKYXNvbiBicm91Z2h0IHVwIHRoYXQgd2UgYWxzbyB3YW50IHRvIGd1YXJhbnRlZSB0
aGF0IGFsbCBwdGVzIGhhdmUgdGhlDQo+ID4gcHRlX3NwZWNpYWwgZmxhZyBzZXQsIHRvIGNhdGNo
IGZhc3QgZ2V0X3VzZXJfcGFnZXMgKG9uIGFyY2hpdGVjdHVyZXMNCj4gPiB0aGF0IHN1cHBvcnQg
dGhpcykuIEFsbG93aW5nIFZNX01JWEVETUFQIChsaWtlIFZNX1NQRUNJQUwgZG9lcykgd291bGQN
Cj4gPiBzdGlsbCBhbGxvdyB2bV9pbnNlcnRfcGFnZSwgYnV0IGxpbWl0aW5nIHRvIFZNX1BGTk1B
UCB3aWxsIGNhdGNoIHRoYXQuDQo+ID4NCj4gPiAgRnJvbSBhdWRpdGluZyB0aGUgdmFyaW91cyBm
dW5jdGlvbnMgdG8gaW5zZXJ0IHBmbiBwdGUgZW50aXJlcw0KPiA+ICh2bV9pbnNlcnRfcGZuX3By
b3QsIHJlbWFwX3Bmbl9yYW5nZSBhbmQgYWxsIGl0J3MgY2FsbGVycyBsaWtlDQo+ID4gZG1hX21t
YXBfd2MpIGl0IGxvb2tzIGxpa2UgVk1fUEZOTUFQIGlzIGFscmVhZHkgcmVxdWlyZWQgYW55d2F5
LCBzbw0KPiA+IHRoaXMgc2hvdWxkIGJlIHRoZSBjb3JyZWN0IGZsYWcgdG8gY2hlY2sgZm9yLg0K
PiA+DQo+ID4gdjM6IENoYW5nZSB0byBXQVJOX09OX09OQ0UgKFRob21hcyBaaW1tZXJtYW5uKQ0K
PiA+DQo+ID4gUmVmZXJlbmNlczogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC9DQUtNSzd1
SGkrbUcwejBIVW1OdDEzUUNDdnV0dVJWanBjUjBOalJMMTJrLVdiV3prUmdAbWFpbC5nbWFpbC5j
b20vDQo+ID4gQWNrZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1k
LmNvbT4NCj4gPiBBY2tlZC1ieTogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2Uu
ZGU+DQo+ID4gQ2M6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0KPiA+
IENjOiBKYXNvbiBHdW50aG9ycGUgPGpnZ0B6aWVwZS5jYT4NCj4gPiBDYzogU3VyZW4gQmFnaGRh
c2FyeWFuIDxzdXJlbmJAZ29vZ2xlLmNvbT4NCj4gPiBDYzogTWF0dGhldyBXaWxjb3ggPHdpbGx5
QGluZnJhZGVhZC5vcmc+DQo+ID4gQ2M6IEpvaG4gU3R1bHR6IDxqb2huLnN0dWx0ekBsaW5hcm8u
b3JnPg0KPiA+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50
ZWwuY29tPg0KPiA+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0K
PiA+IENjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4g
PiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQo+ID4gQ2M6IGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZw0KPiA+IC0tDQo+ID4gT2sgSSBlbnRpcmVseSBmb3Jnb3QgYWJvdXQg
dGhpcyBwYXRjaCBidXQgc3R1bWJsZWQgb3ZlciBpdCBhbmQgY2hlY2tlZA0KPiA+IHdoYXQncyB1
cCB3aXRoIGl0IG5vLiBJIHRoaW5rIGl0J3MgcmVhZHkgbm93IGZvciBtZXJnaW5nOg0KPiA+IC0g
c2htZW0gaGVscGVyIHBhdGNoZXMgdG8gZml4IHVwIHZnZW0gbGFuZGVkDQo+ID4gLSB0dG0gaGFz
IGJlZW4gZml4ZWQgc2luY2UgYSB3aGlsZQ0KPiA+IC0gSSBkb24ndCB0aGluayB3ZSd2ZSBoYWQg
YW55IG90aGVyIG9wZW4gaXNzdWVzDQo+ID4NCj4gPiBUaW1lIHRvIGxvY2sgZG93biB0aGlzIHVh
cGkgY29udHJhY3QgZm9yIHJlYWw/DQo+ID4gLURhbmllbA0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYuYyB8IDQgKysrKw0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5z
ZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVm
LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+ID4gaW5kZXggYjZjMzY5MTRlN2M2Li44
ODcxODY2NWMzYzMgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0K
PiA+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4gPiBAQCAtMTUwLDYgKzE1MCw4
IEBAIHN0YXRpYyBpbnQgZG1hX2J1Zl9tbWFwX2ludGVybmFsKHN0cnVjdCBmaWxlICpmaWxlLCBz
dHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkNCj4gPiAgICAgICByZXQgPSBkbWFidWYtPm9wcy0+
bW1hcChkbWFidWYsIHZtYSk7DQo+ID4gICAgICAgZG1hX3Jlc3ZfdW5sb2NrKGRtYWJ1Zi0+cmVz
dik7DQo+ID4NCj4gPiArICAgICBXQVJOX09OX09OQ0UoISh2bWEtPnZtX2ZsYWdzICYgVk1fUEZO
TUFQKSk7DQo+DQo+IFdlbGwgLCBJIGFscmVhZHkgYS1iJ2VkIHRoaXMsIGJ1dCBkb2VzIGl0IHdv
cmsgd2l0aCBETWEgaGVscGVycy4gSSdtDQo+IGFza2luZyBiZWNhdXNlIG9mIFsxXS4NCj4NCj4g
QmVzdCByZWdhcmRzDQo+IFRob21hcw0KPg0KPiBbMV0NCj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxp
bi5jb20vbGludXgvdjYuMS1yYzYvc291cmNlL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX2RtYV9o
ZWxwZXIuYyNMNTMzDQoNClRoaXMgb25lIGlzIGVudGVydGFpbmluZywgYnV0IGFsc28gZG9lc24n
dCBtYXR0ZXIsIGJlY2F1c2UgdGhlDQpyZW1hcF9wZm5fcmFuZ2UgdGhhdCB0aGUgdmFyaW91cyBk
bWFfbW1hcCBmdW5jdGlvbnMgYm9pbCBkb3duIHRvIHNldHMNCnRoZSBWTV9QRk5NQVAgYW5kIGEg
cGlsZSBvZiBvdGhlciBmbGFncy4gU2VlDQoNCmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xp
bnV4L3Y2LjEtcmM2L3NvdXJjZS9tbS9tZW1vcnkuYyNMMjUxOA0KDQpJIGhhdmUgbm8gaWRlYSB3
aHkgTGF1cmVudCBjbGVhcmVkIHRoaXMgZmxhZyBoZXJlIGp1c3Qgc28gaXQgZ2V0cw0KcmVzZXQg
YWdhaW4gYSBiaXQgbGF0ZXIgd2hlbiBoZSBhZGRlZCB0aGF0IGNvZGUuIExhdXJlbnQ/DQotRGFu
aWVsDQoNCj4gPiArDQo+ID4gICAgICAgcmV0dXJuIHJldDsNCj4gPiAgIH0NCj4gPg0KPiA+IEBA
IC0xNDk1LDYgKzE0OTcsOCBAQCBpbnQgZG1hX2J1Zl9tbWFwKHN0cnVjdCBkbWFfYnVmICpkbWFi
dWYsIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hLA0KPiA+ICAgICAgIHJldCA9IGRtYWJ1Zi0+
b3BzLT5tbWFwKGRtYWJ1Ziwgdm1hKTsNCj4gPiAgICAgICBkbWFfcmVzdl91bmxvY2soZG1hYnVm
LT5yZXN2KTsNCj4gPg0KPiA+ICsgICAgIFdBUk5fT05fT05DRSghKHZtYS0+dm1fZmxhZ3MgJiBW
TV9QRk5NQVApKTsNCj4gPiArDQo+ID4gICAgICAgcmV0dXJuIHJldDsNCj4gPiAgIH0NCj4gPiAg
IEVYUE9SVF9TWU1CT0xfTlNfR1BMKGRtYV9idWZfbW1hcCwgRE1BX0JVRik7DQo+DQo+IC0tDQo+
IFRob21hcyBaaW1tZXJtYW5uDQo+IEdyYXBoaWNzIERyaXZlciBEZXZlbG9wZXINCj4gU1VTRSBT
b2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJIDQo+IE1heGZlbGRzdHIuIDUsIDkwNDA5IE7D
vHJuYmVyZywgR2VybWFueQ0KPiAoSFJCIDM2ODA5LCBBRyBOw7xybmJlcmcpDQo+IEdlc2Now6Rm
dHNmw7xocmVyOiBJdm8gVG90ZXYNCg0KDQoNCi0tIA0KRGFuaWVsIFZldHRlcg0KU29mdHdhcmUg
RW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uDQpodHRwOi8vYmxvZy5mZndsbC5jaA0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
