Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 947C980412E
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Dec 2023 22:54:25 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A3A6243C4A
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 Dec 2023 21:54:24 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by lists.linaro.org (Postfix) with ESMTPS id 689823F65B
	for <linaro-mm-sig@lists.linaro.org>; Mon,  4 Dec 2023 21:54:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=aXKYMBzY;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.208.51 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-54d048550dfso346522a12.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 04 Dec 2023 13:54:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701726853; x=1702331653; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BlZLmeqxpiGQQSs10LoTtpiBgorU3TT3VUZTA6H0DRg=;
        b=aXKYMBzY/Lh5XWJb5YAjnM/eNcK+JNTYtF6LpvCllLW89V9cQKO/E3kXWg1QKValWf
         KO56UlLwK0hQwHzlOvMXfzb/lnnxcRqO964lQyfLuwJnC0/SCyHZG3Dk9MF1isZGTS18
         Igx18FmETM5kLNrzcvjg8O0goCpXUTaVP6vHB32Bra9qcy6pHOgmZLoao6D6dH9UZKeH
         0bV1amMkdM4MknbmkBIprO7rJU4sieKRMQFSaByUjzUjuTNPVMB4s34Pf438ovadCB4J
         b4Cgwc0x1B2/DPSw5hsrrnvpeGjYbsVca54aJh1fPFv4q5IQXeoyFGdwN2mt3U/QP0QL
         x8tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701726853; x=1702331653;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BlZLmeqxpiGQQSs10LoTtpiBgorU3TT3VUZTA6H0DRg=;
        b=V99+nKrIJMLQmbXnNVXCts4KVM1E5EGR0LcfjxEcYFo6NMQvu7he28vEmJaSPMN8kV
         MP+ycLNMQJEasIdsl7CFbXxILemvkXcQuN3X8HmJJysizkGnfgkjzxnKW+KeTr8jLtP+
         qYA6+XgjfFOFeYpnsuE0lKuhEf/Sh6cUlXX2K8ZnuJVxHAMhKxHe/grb9eDmk5bKXUub
         iOSpWInl8IPcDCe9J2rDrrTKTIIJdyrzO98AmFCiyn9t7tfxtNed40LH1auMT5srGMGK
         /SmaKReiDzyWTERffvscS6U2/CKMOOiNEjxa/8iCf7mrGLBd88z8XZ3juobbvx3s19Kx
         B5qw==
X-Gm-Message-State: AOJu0Yy0MMcJEnSAcONzcolzQ8c0MhJszMh+4Y+L5kkTAyDuC/IiMcam
	8LH4V73VLfDTy2RKDR7rDLs1CVhN7ciiL5rQRy8=
X-Google-Smtp-Source: AGHT+IHLb6cOm/rSV+8ZQDXUTAc7/tdhPwiDOu1giLgNpUuulAb5IUur2kx36jKOArzZ7OT3QTPrJ5xd+t3zYomTLWs=
X-Received: by 2002:a50:ab12:0:b0:54c:ba16:f573 with SMTP id
 s18-20020a50ab12000000b0054cba16f573mr1121210edc.69.1701726852960; Mon, 04
 Dec 2023 13:54:12 -0800 (PST)
MIME-Version: 1.0
References: <20230322224403.35742-1-robdclark@gmail.com> <b9fb81f1-ac9e-cf3f-5cf4-f2d972d3ed3d@amd.com>
 <CAF6AEGvMwZCLntfYeH3Vg_Z7kYynqdVrinp+pmcbREksK1WGMA@mail.gmail.com>
 <e2fa296b-9b71-a41b-d37d-33f0fac2cd4e@amd.com> <CAF6AEGvdVca_mnZVo9He9oKVfYp84e_kOPWaxX+K5aV4Es9kcQ@mail.gmail.com>
In-Reply-To: <CAF6AEGvdVca_mnZVo9He9oKVfYp84e_kOPWaxX+K5aV4Es9kcQ@mail.gmail.com>
From: Rob Clark <robdclark@gmail.com>
Date: Mon, 4 Dec 2023 13:54:00 -0800
Message-ID: <CAF6AEGt2D6Ei6OkUK5osz+jWzmkX8tmB1KGi305HaNd=bnQSoA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Queue-Id: 689823F65B
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.51:from];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,chromium.org,amd.com,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: CKUQDSI35HPBBI4T5CZE6PG3K4BECGMR
X-Message-ID-Hash: CKUQDSI35HPBBI4T5CZE6PG3K4BECGMR
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Luben Tuikov <luben.tuikov@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC] drm/scheduler: Unwrap job dependencies
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CKUQDSI35HPBBI4T5CZE6PG3K4BECGMR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBNYXIgMjMsIDIwMjMgYXQgMjozMOKAr1BNIFJvYiBDbGFyayA8cm9iZGNsYXJrQGdt
YWlsLmNvbT4gd3JvdGU6DQo+DQo+IE9uIFRodSwgTWFyIDIzLCAyMDIzIGF0IDc6MDPigK9BTSBD
aHJpc3RpYW4gS8O2bmlnDQo+IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPiA+
DQo+ID4gQW0gMjMuMDMuMjMgdW0gMTQ6NTQgc2NocmllYiBSb2IgQ2xhcms6DQo+ID4gPiBPbiBU
aHUsIE1hciAyMywgMjAyMyBhdCAxMjozNeKAr0FNIENocmlzdGlhbiBLw7ZuaWcNCj4gPiA+IDxj
aHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPiA+ID4+IEFtIDIyLjAzLjIzIHVtIDIz
OjQ0IHNjaHJpZWIgUm9iIENsYXJrOg0KPiA+ID4+PiBGcm9tOiBSb2IgQ2xhcmsgPHJvYmRjbGFy
a0BjaHJvbWl1bS5vcmc+DQo+ID4gPj4+DQo+ID4gPj4+IENvbnRhaW5lciBmZW5jZXMgaGF2ZSBi
dXJuZXIgY29udGV4dHMsIHdoaWNoIG1ha2VzIHRoZSB0cmljayB0byBzdG9yZSBhdA0KPiA+ID4+
PiBtb3N0IG9uZSBmZW5jZSBwZXIgY29udGV4dCBzb21ld2hhdCB1c2VsZXNzIGlmIHdlIGRvbid0
IHVud3JhcCBhcnJheSBvcg0KPiA+ID4+PiBjaGFpbiBmZW5jZXMuDQo+ID4gPj4gTWhtLCB3ZSBp
bnRlbnRpb25hbGx5IGtlcHQgdGhlbSBub3QgdW53cmFwcGVkIHNpbmNlIHRoaXMgd2F5IHRoZXkg
b25seQ0KPiA+ID4+IG9jY3VweSBvbmUgZmVuY2Ugc2xvdC4NCj4gPiA+Pg0KPiA+ID4+IEJ1dCBp
dCBtaWdodCBiZSBiZXR0ZXIgdG8gdW53cmFwIHRoZW0gaWYgeW91IGFkZCBtYW55IG9mIHRob3Nl
IGRlcGVuZGVuY2llcy4NCj4gPiA+Pg0KPiA+ID4+PiBTaWduZWQtb2ZmLWJ5OiBSb2IgQ2xhcmsg
PHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQo+ID4gPj4+IC0tLQ0KPiA+ID4+PiB0YmgsIEknbSBu
b3Qgc3VyZSB3aHkgd2Ugd2VyZW4ndCBkb2luZyB0aGlzIGFscmVhZHksIHVubGVzcyB0aGVyZSBp
cw0KPiA+ID4+PiBzb21ldGhpbmcgSSdtIG92ZXJsb29raW5nDQo+ID4gPj4+DQo+ID4gPj4+ICAg
IGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jIHwgNDMgKysrKysrKysrKysr
KysrKystLS0tLS0tLS0NCj4gPiA+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDI4IGluc2VydGlvbnMo
KyksIDE1IGRlbGV0aW9ucygtKQ0KPiA+ID4+Pg0KPiA+ID4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1
bGVyL3NjaGVkX21haW4uYw0KPiA+ID4+PiBpbmRleCBjMmVlNDRkNjIyNGIuLmY1OWU1MzM1YWZi
YiAxMDA2NDQNCj4gPiA+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9t
YWluLmMNCj4gPiA+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWlu
LmMNCj4gPiA+Pj4gQEAgLTQxLDIwICs0MSwyMSBAQA0KPiA+ID4+PiAgICAgKiA0LiBFbnRpdGll
cyB0aGVtc2VsdmVzIG1haW50YWluIGEgcXVldWUgb2Ygam9icyB0aGF0IHdpbGwgYmUgc2NoZWR1
bGVkIG9uDQo+ID4gPj4+ICAgICAqICAgIHRoZSBoYXJkd2FyZS4NCj4gPiA+Pj4gICAgICoNCj4g
PiA+Pj4gICAgICogVGhlIGpvYnMgaW4gYSBlbnRpdHkgYXJlIGFsd2F5cyBzY2hlZHVsZWQgaW4g
dGhlIG9yZGVyIHRoYXQgdGhleSB3ZXJlIHB1c2hlZC4NCj4gPiA+Pj4gICAgICovDQo+ID4gPj4+
DQo+ID4gPj4+ICAgICNpbmNsdWRlIDxsaW51eC9rdGhyZWFkLmg+DQo+ID4gPj4+ICAgICNpbmNs
dWRlIDxsaW51eC93YWl0Lmg+DQo+ID4gPj4+ICAgICNpbmNsdWRlIDxsaW51eC9zY2hlZC5oPg0K
PiA+ID4+PiAgICAjaW5jbHVkZSA8bGludXgvY29tcGxldGlvbi5oPg0KPiA+ID4+PiArI2luY2x1
ZGUgPGxpbnV4L2RtYS1mZW5jZS11bndyYXAuaD4NCj4gPiA+Pj4gICAgI2luY2x1ZGUgPGxpbnV4
L2RtYS1yZXN2Lmg+DQo+ID4gPj4+ICAgICNpbmNsdWRlIDx1YXBpL2xpbnV4L3NjaGVkL3R5cGVz
Lmg+DQo+ID4gPj4+DQo+ID4gPj4+ICAgICNpbmNsdWRlIDxkcm0vZHJtX3ByaW50Lmg+DQo+ID4g
Pj4+ICAgICNpbmNsdWRlIDxkcm0vZHJtX2dlbS5oPg0KPiA+ID4+PiAgICAjaW5jbHVkZSA8ZHJt
L2dwdV9zY2hlZHVsZXIuaD4NCj4gPiA+Pj4gICAgI2luY2x1ZGUgPGRybS9zcHNjX3F1ZXVlLmg+
DQo+ID4gPj4+DQo+ID4gPj4+ICAgICNkZWZpbmUgQ1JFQVRFX1RSQUNFX1BPSU5UUw0KPiA+ID4+
PiAgICAjaW5jbHVkZSAiZ3B1X3NjaGVkdWxlcl90cmFjZS5oIg0KPiA+ID4+PiBAQCAtNjY1LDQx
ICs2NjYsMjcgQEAgdm9pZCBkcm1fc2NoZWRfam9iX2FybShzdHJ1Y3QgZHJtX3NjaGVkX2pvYiAq
am9iKQ0KPiA+ID4+PiAgICAgICAgc2NoZWQgPSBlbnRpdHktPnJxLT5zY2hlZDsNCj4gPiA+Pj4N
Cj4gPiA+Pj4gICAgICAgIGpvYi0+c2NoZWQgPSBzY2hlZDsNCj4gPiA+Pj4gICAgICAgIGpvYi0+
c19wcmlvcml0eSA9IGVudGl0eS0+cnEgLSBzY2hlZC0+c2NoZWRfcnE7DQo+ID4gPj4+ICAgICAg
ICBqb2ItPmlkID0gYXRvbWljNjRfaW5jX3JldHVybigmc2NoZWQtPmpvYl9pZF9jb3VudCk7DQo+
ID4gPj4+DQo+ID4gPj4+ICAgICAgICBkcm1fc2NoZWRfZmVuY2VfaW5pdChqb2ItPnNfZmVuY2Us
IGpvYi0+ZW50aXR5KTsNCj4gPiA+Pj4gICAgfQ0KPiA+ID4+PiAgICBFWFBPUlRfU1lNQk9MKGRy
bV9zY2hlZF9qb2JfYXJtKTsNCj4gPiA+Pj4NCj4gPiA+Pj4gLS8qKg0KPiA+ID4+PiAtICogZHJt
X3NjaGVkX2pvYl9hZGRfZGVwZW5kZW5jeSAtIGFkZHMgdGhlIGZlbmNlIGFzIGEgam9iIGRlcGVu
ZGVuY3kNCj4gPiA+Pj4gLSAqIEBqb2I6IHNjaGVkdWxlciBqb2IgdG8gYWRkIHRoZSBkZXBlbmRl
bmNpZXMgdG8NCj4gPiA+Pj4gLSAqIEBmZW5jZTogdGhlIGRtYV9mZW5jZSB0byBhZGQgdG8gdGhl
IGxpc3Qgb2YgZGVwZW5kZW5jaWVzLg0KPiA+ID4+PiAtICoNCj4gPiA+Pj4gLSAqIE5vdGUgdGhh
dCBAZmVuY2UgaXMgY29uc3VtZWQgaW4gYm90aCB0aGUgc3VjY2VzcyBhbmQgZXJyb3IgY2FzZXMu
DQo+ID4gPj4+IC0gKg0KPiA+ID4+PiAtICogUmV0dXJuczoNCj4gPiA+Pj4gLSAqIDAgb24gc3Vj
Y2Vzcywgb3IgYW4gZXJyb3Igb24gZmFpbGluZyB0byBleHBhbmQgdGhlIGFycmF5Lg0KPiA+ID4+
PiAtICovDQo+ID4gPj4+IC1pbnQgZHJtX3NjaGVkX2pvYl9hZGRfZGVwZW5kZW5jeShzdHJ1Y3Qg
ZHJtX3NjaGVkX2pvYiAqam9iLA0KPiA+ID4+PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+ID4gPj4+ICtzdGF0aWMgaW50IF9hZGRfZGVw
ZW5kZW5jeShzdHJ1Y3QgZHJtX3NjaGVkX2pvYiAqam9iLCBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5j
ZSkNCj4gPiA+PiBQbGVhc2Uga2VlcCB0aGUgZHJtX3NjaGVkX2pvYl8gcHJlZml4IGhlcmUgZXZl
biBmb3Igc3RhdGljIGZ1bmN0aW9ucy4NCj4gPiA+PiBUaGUgc3ltYm9sIF9hZGRfZGVwZW5kZW5j
eSBqdXN0IHN1Y2tzIGluIGEgYmFja3RyYWNlLCBlc3BlY2lhbGx5IHdoZW4NCj4gPiA+PiBpdCdz
IHRhaWwgb3B0aW1pemVkLg0KPiA+ID4+DQo+ID4gPj4+ICAgIHsNCj4gPiA+Pj4gICAgICAgIHN0
cnVjdCBkbWFfZmVuY2UgKmVudHJ5Ow0KPiA+ID4+PiAgICAgICAgdW5zaWduZWQgbG9uZyBpbmRl
eDsNCj4gPiA+Pj4gICAgICAgIHUzMiBpZCA9IDA7DQo+ID4gPj4+ICAgICAgICBpbnQgcmV0Ow0K
PiA+ID4+Pg0KPiA+ID4+PiAtICAgICBpZiAoIWZlbmNlKQ0KPiA+ID4+PiAtICAgICAgICAgICAg
IHJldHVybiAwOw0KPiA+ID4+PiAtDQo+ID4gPj4+ICAgICAgICAvKiBEZWR1cGxpY2F0ZSBpZiB3
ZSBhbHJlYWR5IGRlcGVuZCBvbiBhIGZlbmNlIGZyb20gdGhlIHNhbWUgY29udGV4dC4NCj4gPiA+
Pj4gICAgICAgICAqIFRoaXMgbGV0cyB0aGUgc2l6ZSBvZiB0aGUgYXJyYXkgb2YgZGVwcyBzY2Fs
ZSB3aXRoIHRoZSBudW1iZXIgb2YNCj4gPiA+Pj4gICAgICAgICAqIGVuZ2luZXMgaW52b2x2ZWQs
IHJhdGhlciB0aGFuIHRoZSBudW1iZXIgb2YgQk9zLg0KPiA+ID4+PiAgICAgICAgICovDQo+ID4g
Pj4+ICAgICAgICB4YV9mb3JfZWFjaCgmam9iLT5kZXBlbmRlbmNpZXMsIGluZGV4LCBlbnRyeSkg
ew0KPiA+ID4+PiAgICAgICAgICAgICAgICBpZiAoZW50cnktPmNvbnRleHQgIT0gZmVuY2UtPmNv
bnRleHQpDQo+ID4gPj4+ICAgICAgICAgICAgICAgICAgICAgICAgY29udGludWU7DQo+ID4gPj4+
DQo+ID4gPj4+ICAgICAgICAgICAgICAgIGlmIChkbWFfZmVuY2VfaXNfbGF0ZXIoZmVuY2UsIGVu
dHJ5KSkgew0KPiA+ID4+PiAgICAgICAgICAgICAgICAgICAgICAgIGRtYV9mZW5jZV9wdXQoZW50
cnkpOw0KPiA+ID4+PiBAQCAtNzA5LDIwICs2OTYsNDYgQEAgaW50IGRybV9zY2hlZF9qb2JfYWRk
X2RlcGVuZGVuY3koc3RydWN0IGRybV9zY2hlZF9qb2IgKmpvYiwNCj4gPiA+Pj4gICAgICAgICAg
ICAgICAgfQ0KPiA+ID4+PiAgICAgICAgICAgICAgICByZXR1cm4gMDsNCj4gPiA+Pj4gICAgICAg
IH0NCj4gPiA+Pj4NCj4gPiA+Pj4gICAgICAgIHJldCA9IHhhX2FsbG9jKCZqb2ItPmRlcGVuZGVu
Y2llcywgJmlkLCBmZW5jZSwgeGFfbGltaXRfMzJiLCBHRlBfS0VSTkVMKTsNCj4gPiA+Pj4gICAg
ICAgIGlmIChyZXQgIT0gMCkNCj4gPiA+Pj4gICAgICAgICAgICAgICAgZG1hX2ZlbmNlX3B1dChm
ZW5jZSk7DQo+ID4gPj4+DQo+ID4gPj4+ICAgICAgICByZXR1cm4gcmV0Ow0KPiA+ID4+PiAgICB9
DQo+ID4gPj4+ICsNCj4gPiA+Pj4gKy8qKg0KPiA+ID4+PiArICogZHJtX3NjaGVkX2pvYl9hZGRf
ZGVwZW5kZW5jeSAtIGFkZHMgdGhlIGZlbmNlIGFzIGEgam9iIGRlcGVuZGVuY3kNCj4gPiA+Pj4g
KyAqIEBqb2I6IHNjaGVkdWxlciBqb2IgdG8gYWRkIHRoZSBkZXBlbmRlbmNpZXMgdG8NCj4gPiA+
Pj4gKyAqIEBmZW5jZTogdGhlIGRtYV9mZW5jZSB0byBhZGQgdG8gdGhlIGxpc3Qgb2YgZGVwZW5k
ZW5jaWVzLg0KPiA+ID4+PiArICoNCj4gPiA+Pj4gKyAqIE5vdGUgdGhhdCBAZmVuY2UgaXMgY29u
c3VtZWQgaW4gYm90aCB0aGUgc3VjY2VzcyBhbmQgZXJyb3IgY2FzZXMuDQo+ID4gPj4+ICsgKg0K
PiA+ID4+PiArICogUmV0dXJuczoNCj4gPiA+Pj4gKyAqIDAgb24gc3VjY2Vzcywgb3IgYW4gZXJy
b3Igb24gZmFpbGluZyB0byBleHBhbmQgdGhlIGFycmF5Lg0KPiA+ID4+PiArICovDQo+ID4gPj4+
ICtpbnQgZHJtX3NjaGVkX2pvYl9hZGRfZGVwZW5kZW5jeShzdHJ1Y3QgZHJtX3NjaGVkX2pvYiAq
am9iLA0KPiA+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRtYV9m
ZW5jZSAqZmVuY2UpDQo+ID4gPj4gTWF5YmUgbmFtZSB0aGUgbmV3IGZ1bmN0aW9uIGRybV9zY2hl
ZF9qb2JfdW53cmFwX2FkZF9kZXBlbmRlbmN5IG9yDQo+ID4gPj4gc29tZXRoaW5nIGxpa2UgdGhp
cy4NCj4gPiA+Pg0KPiA+ID4+IEkgbmVlZCB0byBkb3VibGUgY2hlY2ssIGJ1dCBJIHRoaW5rIGZv
ciBzb21lIGNhc2VzIHdlIGRvbid0IG5lZWQgb3INCj4gPiA+PiBkb24ndCBldmVuIHdhbnQgdGhp
cyBpbiB0aGUgZHJpdmVyLg0KPiA+ID4gSSdkIGJlIGN1cmlvdXMgdG8ga25vdyB0aGUgY2FzZXMg
d2hlcmUgeW91IGRvbid0IHdhbnQgdGhpcy4uIG9uZSB0aGluZw0KPiA+ID4gSSB3YXMgdGhpbmtp
bmcgYWJvdXQsIHdoYXQgaWYgeW91IGhhdmUgYSBjb250YWluZXIgZmVuY2Ugd2l0aCB0d28NCj4g
PiA+IGNvbnRhaW5lZCBmZW5jZXMuICBPbmUgaXMgb24gdGhlIHNhbWUgY3R4IGFzIHRoZSBqb2Is
IG9uZSBpcyBub3QgYnV0DQo+ID4gPiBzaWduYWxzIHNvb25lci4gIFlvdSBlbmQgdXAgYXJ0aWZp
Y2lhbGx5IHdhaXRpbmcgb24gYm90aCwgd2hpY2ggc2VlbXMNCj4gPiA+IHN1Yi1vcHRpbWFsLg0K
PiA+DQo+ID4gV2VsbCByZXN2IG9iamVjdHMgZG9uJ3QgY29udGFpbiBvdGhlciBjb250YWluZXJz
IGZvciBleGFtcGxlLg0KPg0KPiBJIHN1cHBvc2UgSSBoYXZlIHRoZSBleHBsaWNpdCBzeW5jIGNh
c2UgbW9yZSBpbiBtaW5kLCB3aGVyZSB0aGUNCj4gZGVwZW5kZW50IGZlbmNlIGVuZHMgdXAgYmVp
bmcgYSBjaGFpbiBvciBhcnJheSAoaWYgdXNlcnNwYWNlIGlzDQo+IG1lcmdpbmcgZmVuY2UgZmQn
cykuDQo+DQo+ID4gVGhlbiB3ZSBhbHNvIGhhdmUgYW4gdXNlIGNhc2UgaW4gYW1kZ3B1IHdoZXJl
IGZlbmNlIG5lZWQgdG8gYmUNCj4gPiBleHBsaWNpdGx5IHdhaXRlZCBmb3IgZXZlbiB3aGVuIHRo
ZXkgYXJlIGZyb20gdGhlIHNhbWUgY3R4IGFzIHRoZSBqb2INCj4gPiBiZWNhdXNlIG90aGVyd2lz
ZSB3ZSB3b3VsZG4ndCBzZWUgZXZlcnl0aGluZyBjYWNoZSBjb2hlcmVudC4NCj4NCj4gVGhpcyB3
YXMgdGhlIGtpbmRhIHdlaXJkIGNhc2UgSSB3YW50ZWQgdG8gbWFrZSBzdXJlIEkgd2Fzbid0IGJy
ZWFraW5nLg0KPiBJIHJlbWVtYmVyIHNlZWluZyBzb21ldGhpbmcgZmx5IGJ5IGZvciB0aGlzLCBi
dXQgY2FuJ3QgZmluZCBpdCBub3cgb3INCj4gcmVtZW1iZXIgd2hhdCBhbWRncHUncyBzb2x1dGlv
biB3YXMuLg0KPg0KPiA+IE9uIHRoZSBvdGhlciBoYW5kIHdlIGN1cnJlbnRseSBoYW5kbGUgdGhh
dCBhbWRncHUgdXNlIGNhc2UgZGlmZmVyZW50bHkNCj4gPiBhbmQgdGhlIGV4dHJhIG92ZXJoZWFk
IG9mIHVud3JhcHBpbmcgZmVuY2VzIGV2ZW4gaWYgdGhleSBjYW4ndCBiZQ0KPiA+IGNvbnRhaW5l
cnMgaXMgcHJvYmFibHkgbmVnbGlnaWJsZS4NCj4gPg0KPiA+ID4gQW55d2F5cywgSSBjYW4gbWFr
ZSB0aGlzIGEgbmV3IGVudHJ5cG9pbnQgd2hpY2ggdW53cmFwcywgYW5kL29yIHJlbmFtZQ0KPiA+
ID4gdGhlIGludGVybmFsIHN0YXRpYyBmdW5jdGlvbiwgaWYgd2UgdGhpbmsgdGhpcyBpcyBhIGdv
b2QgaWRlYS4NCj4gPg0KPiA+IElmIHlvdSB0aGluayB0aGF0J3MgdW5uZWNlc3Nhcnkga2VlcGlu
ZyB5b3VyIG9yaWdpbmFsIGFwcHJvYWNoIGlzIGZpbmUNCj4gPiB3aXRoIG1lIGFzIHdlbGwuDQo+
DQo+IEknbSBnb2luZyB0byBhc3N1bWUgdW5uZWNlc3NhcnkgdW50aWwgc29tZW9uZSBzcGVha3Mg
dXAgd2l0aCB0aGVpcg0KPiB3ZWlyZCBzcGVjaWZpYyBjYXNlIDstKQ0KDQpTbywgdGhpcyBwYXRj
aCB0dXJucyBvdXQgdG8gYmxvdyB1cCBzcGVjdGFjdWxhcmx5IHdpdGggZG1hX2ZlbmNlDQpyZWZj
bnQgdW5kZXJmbG93cyB3aGVuIEkgZW5hYmxlIERSSVZFUl9TWU5DT0JKX1RJTUVMSU5FIC4uIEkg
dGhpbmssDQpiZWNhdXNlIGl0IHN0YXJ0cyB1bndyYXBwaW5nIGZlbmNlIGNoYWlucywgcG9zc2li
bHkgaW4gcGFyYWxsZWwgd2l0aA0KZmVuY2Ugc2lnbmFsaW5nIG9uIHRoZSByZXRpcmUgcGF0aC4g
IElzIGl0IHN1cHBvc2VkIHRvIGJlIHBlcm1pc3NpYmxlDQp0byB1bndyYXAgYSBmZW5jZSBjaGFp
biBjb25jdXJyZW50bHk/DQoNCkJSLA0KLVINCg0KPiBCUiwNCj4gLVINCj4NCj4gPiBSZWdhcmRz
LA0KPiA+IENocmlzdGlhbi4NCj4gPg0KPiA+ID4NCj4gPiA+IEJSLA0KPiA+ID4gLVINCj4gPiA+
DQo+ID4gPj4gQ2hyaXN0aWFuLg0KPiA+ID4+DQo+ID4gPj4+ICt7DQo+ID4gPj4+ICsgICAgIHN0
cnVjdCBkbWFfZmVuY2VfdW53cmFwIGl0ZXI7DQo+ID4gPj4+ICsgICAgIHN0cnVjdCBkbWFfZmVu
Y2UgKmY7DQo+ID4gPj4+ICsgICAgIGludCByZXQgPSAwOw0KPiA+ID4+PiArDQo+ID4gPj4+ICsg
ICAgIGRtYV9mZW5jZV91bndyYXBfZm9yX2VhY2ggKGYsICZpdGVyLCBmZW5jZSkgew0KPiA+ID4+
PiArICAgICAgICAgICAgIHJldCA9IF9hZGRfZGVwZW5kZW5jeShqb2IsIGYpOw0KPiA+ID4+PiAr
ICAgICAgICAgICAgIGlmIChyZXQpDQo+ID4gPj4+ICsgICAgICAgICAgICAgICAgICAgICBicmVh
azsNCj4gPiA+Pj4gKyAgICAgfQ0KPiA+ID4+PiArDQo+ID4gPj4+ICsgICAgIHJldHVybiByZXQ7
DQo+ID4gPj4+ICt9DQo+ID4gPj4+ICAgIEVYUE9SVF9TWU1CT0woZHJtX3NjaGVkX2pvYl9hZGRf
ZGVwZW5kZW5jeSk7DQo+ID4gPj4+DQo+ID4gPj4+ICAgIC8qKg0KPiA+ID4+PiAgICAgKiBkcm1f
c2NoZWRfam9iX2FkZF9yZXN2X2RlcGVuZGVuY2llcyAtIGFkZCBhbGwgZmVuY2VzIGZyb20gdGhl
IHJlc3YgdG8gdGhlIGpvYg0KPiA+ID4+PiAgICAgKiBAam9iOiBzY2hlZHVsZXIgam9iIHRvIGFk
ZCB0aGUgZGVwZW5kZW5jaWVzIHRvDQo+ID4gPj4+ICAgICAqIEByZXN2OiB0aGUgZG1hX3Jlc3Yg
b2JqZWN0IHRvIGdldCB0aGUgZmVuY2VzIGZyb20NCj4gPiA+Pj4gICAgICogQHVzYWdlOiB0aGUg
ZG1hX3Jlc3ZfdXNhZ2UgdG8gdXNlIHRvIGZpbHRlciB0aGUgZmVuY2VzDQo+ID4gPj4+ICAgICAq
DQo+ID4gPj4+ICAgICAqIFRoaXMgYWRkcyBhbGwgZmVuY2VzIG1hdGNoaW5nIHRoZSBnaXZlbiB1
c2FnZSBmcm9tIEByZXN2IHRvIEBqb2IuDQo+ID4gPj4+ICAgICAqIE11c3QgYmUgY2FsbGVkIHdp
dGggdGhlIEByZXN2IGxvY2sgaGVsZC4NCj4gPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
