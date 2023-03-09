Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D7EBE6B1B3E
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Mar 2023 07:16:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8678C3F0C3
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Mar 2023 06:16:27 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by lists.linaro.org (Postfix) with ESMTPS id 398493F0B5
	for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Mar 2023 06:16:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=hIFJJL3N;
	spf=pass (lists.linaro.org: domain of airlied@gmail.com designates 209.85.208.52 as permitted sender) smtp.mailfrom=airlied@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f52.google.com with SMTP id g3so2865172eda.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Mar 2023 22:16:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678342568;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v+YXj3xuJamy46fVwlA5D0PVaIrEDpyBLL/CETayzIQ=;
        b=hIFJJL3N3RVC22Wt8jlMc8D2dF9QUADUbLNswq5IaxtMbS3J86O1P9IPVsN9hOD6Ft
         nAm0U23KpWuYNMDQWjPKO9IEcaT13eYcHJBI7BKh+3j79nMG9kWMEHNtnY+0QHfE7odK
         tt77olNALEeYo7jL2N31ZiTD3kjzLIbm7zmjHBtKrhMqACZnBRVjN9mTsC+zznDjmvWn
         Ll3h5AR/YgBIhI1XxYezIhuy93gwYJHJLetLhmlPjIdNA9TB2XWoh7AtETyqL7jJB8f8
         aNoulwlvgi8U1g9ajjPBuVIzzpYsPcc6CN574h3TlD61iIkR8zylv4vOj1aZtwZk2HTj
         MdgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678342568;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v+YXj3xuJamy46fVwlA5D0PVaIrEDpyBLL/CETayzIQ=;
        b=B8nSJSh4lwu3PHtRSZneFubrZ/VRdqpaEqHoXrfc30ZUuAtiy26hFogJW7ZxL6eKgk
         3httFixrGGAbc+7RoF4urjRG9Wp907Gy5oaJDAhk+LjAxU3r4oQv5GjsGasz2b4IL0QF
         0I/V9bbbU4/5WhHm6YhjcUfFyVDO9qughsZAlhB/eCvRvkANuxtkHIgLytYbYvQc/ttb
         fMSf2SLchajMm4qQemYRp7PpiAjrOBaBym6g8otE6B2CuGKWSxRY6BiKXKNjgu1vHitV
         2IttSskWQDk35wEgDEycGtlvMQv5gZjePWoDBMXQRpUPaaStchQt948hLMJcEQywK8xR
         TtDw==
X-Gm-Message-State: AO0yUKVGH3FABMPSTvexFf9DWPKA60RJKg1Kp7Y6N46i71YJXcdmm7YK
	aD1ArxWHU3g+/POYTnTtu4E+GqWTws5Fkq0Dvvo=
X-Google-Smtp-Source: AK7set+pX4aXbrBAtPzUy0OOYdjRl9vI15JjJJrWhBl5M9MyxAE2uL+BYCgDCkNpTcYEk4FVcbdNDZ32jt3IYAjV1pI=
X-Received: by 2002:a50:c04b:0:b0:4bf:5fd5:da42 with SMTP id
 u11-20020a50c04b000000b004bf5fd5da42mr11522809edd.3.1678342567958; Wed, 08
 Mar 2023 22:16:07 -0800 (PST)
MIME-Version: 1.0
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-1-917ff5bc80a8@asahilina.net> <c047e11f-33d0-6af4-21c3-adb384b68d8b@igalia.com>
 <93a57598-9deb-85f2-ebd9-8605404c1ef8@asahilina.net>
In-Reply-To: <93a57598-9deb-85f2-ebd9-8605404c1ef8@asahilina.net>
From: Dave Airlie <airlied@gmail.com>
Date: Thu, 9 Mar 2023 16:15:55 +1000
Message-ID: <CAPM=9tw6aUUgL63EFhX6W_mQa1ssEmcPjJJHhrssasRVPt76rg@mail.gmail.com>
To: Asahi Lina <lina@asahilina.net>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 398493F0B5
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[29];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[igalia.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,gmail.com,garyguo.net,protonmail.com,linaro.org,amd.com,lists.linaro.org,vger.kernel.org,redhat.com,lists.linux.dev,lists.freedesktop.org,mary.zone,rosenzweig.io,iglunix.org,collabora.com];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.52:from];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: 5FZKIJU57JJIB4IYXEOD4MNMHLGXU7OB
X-Message-ID-Hash: 5FZKIJU57JJIB4IYXEOD4MNMHLGXU7OB
X-MailFrom: airlied@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?B?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>, Dave Hansen <dave.hansen@linux.intel.com>, linaro-mm-sig@lists.linaro.org, rust-for-linux@vger.kernel.org, Karol Herbst <kherbst@redhat.com>, asahi@lists.linux.dev, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Mary <mary@mary.zone>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, linux-sgx@vger.kernel.org, Ella Stanforth <ella@iglunix.org>, Faith Ekstr
 and <faith.ekstrand@collabora.com>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 01/18] rust: drm: ioctl: Add DRM ioctl abstraction
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5FZKIJU57JJIB4IYXEOD4MNMHLGXU7OB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCA5IE1hciAyMDIzIGF0IDE1OjMyLCBBc2FoaSBMaW5hIDxsaW5hQGFzYWhpbGluYS5u
ZXQ+IHdyb3RlOg0KPg0KPiBPbiAwOC8wMy8yMDIzIDAwLjMyLCBNYcOtcmEgQ2FuYWwgd3JvdGU6
DQo+ID4gT24gMy83LzIzIDExOjI1LCBBc2FoaSBMaW5hIHdyb3RlOg0KPiA+PiBEUk0gZHJpdmVy
cyBuZWVkIHRvIGJlIGFibGUgdG8gZGVjbGFyZSB3aGljaCBkcml2ZXItc3BlY2lmaWMgaW9jdGxz
IHRoZXkNCj4gPj4gc3VwcG9ydC4gVGhpcyBhYnN0cmFjdGlvbiBhZGRzIHRoZSByZXF1aXJlZCB0
eXBlcyBhbmQgYSBoZWxwZXIgbWFjcm8gdG8NCj4gPj4gZ2VuZXJhdGUgdGhlIGlvY3RsIGRlZmlu
aXRpb24gaW5zaWRlIHRoZSBEUk0gZHJpdmVyLg0KPiA+Pg0KPiA+PiBOb3RlIHRoYXQgdGhpcyBt
YWNybyBpcyBub3QgdXNhYmxlIHVudGlsIGZ1cnRoZXIgYml0cyBvZiB0aGUNCj4gPj4gYWJzdHJh
Y3Rpb24gYXJlIGluIHBsYWNlIChidXQgaXQgd2lsbCBub3QgZmFpbCB0byBjb21waWxlIG9uIGl0
cyBvd24sIGlmDQo+ID4+IG5vdCBjYWxsZWQpLg0KPiA+Pg0KPiA+PiBTaWduZWQtb2ZmLWJ5OiBB
c2FoaSBMaW5hIDxsaW5hQGFzYWhpbGluYS5uZXQ+DQo+ID4+IC0tLQ0KPiA+PiAgIGRyaXZlcnMv
Z3B1L2RybS9LY29uZmlnICAgICAgICAgfCAgIDcgKysNCj4gPj4gICBydXN0L2JpbmRpbmdzL2Jp
bmRpbmdzX2hlbHBlci5oIHwgICAyICsNCj4gPj4gICBydXN0L2tlcm5lbC9kcm0vaW9jdGwucnMg
ICAgICAgIHwgMTQ3ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4g
Pj4gICBydXN0L2tlcm5lbC9kcm0vbW9kLnJzICAgICAgICAgIHwgICA1ICsrDQo+ID4+ICAgcnVz
dC9rZXJuZWwvbGliLnJzICAgICAgICAgICAgICB8ICAgMiArDQo+ID4+ICAgNSBmaWxlcyBjaGFu
Z2VkLCAxNjMgaW5zZXJ0aW9ucygrKQ0KPiA+Pg0KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL0tjb25maWcgYi9kcml2ZXJzL2dwdS9kcm0vS2NvbmZpZw0KPiA+PiBpbmRleCBkYzBm
OTRmMDJhODIuLmRhYjhmMGY5YWE5NiAxMDA2NDQNCj4gPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L0tjb25maWcNCj4gPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL0tjb25maWcNCj4gPj4gQEAgLTI3
LDYgKzI3LDEzIEBAIG1lbnVjb25maWcgRFJNDQo+ID4+ICAgICAgICBkZXRhaWxzLiAgWW91IHNo
b3VsZCBhbHNvIHNlbGVjdCBhbmQgY29uZmlndXJlIEFHUA0KPiA+PiAgICAgICAgKC9kZXYvYWdw
Z2FydCkgc3VwcG9ydCBpZiBpdCBpcyBhdmFpbGFibGUgZm9yIHlvdXIgcGxhdGZvcm0uDQo+ID4+
DQo+ID4NCj4gPiBbLi4uXQ0KPiA+DQo+ID4+ICsNCj4gPj4gKy8vLyBEZWNsYXJlIHRoZSBEUk0g
aW9jdGxzIGZvciBhIGRyaXZlci4NCj4gPj4gKy8vLw0KPiA+PiArLy8vIEVhY2ggZW50cnkgaW4g
dGhlIGxpc3Qgc2hvdWxkIGhhdmUgdGhlIGZvcm06DQo+ID4+ICsvLy8NCj4gPj4gKy8vLyBgKGlv
Y3RsX251bWJlciwgYXJndW1lbnRfdHlwZSwgZmxhZ3MsIHVzZXJfY2FsbGJhY2spLGANCj4gPj4g
Ky8vLw0KPiA+PiArLy8vIGBhcmd1bWVudF90eXBlYCBpcyB0aGUgdHlwZSBuYW1lIHdpdGhpbiB0
aGUgYGJpbmRpbmdzYCBjcmF0ZS4NCj4gPj4gKy8vLyBgdXNlcl9jYWxsYmFja2Agc2hvdWxkIGhh
dmUgdGhlIGZvbGxvd2luZyBwcm90b3R5cGU6DQo+ID4+ICsvLy8NCj4gPj4gKy8vLyBgYGANCj4g
Pj4gKy8vLyBmbiBmb28oZGV2aWNlOiAma2VybmVsOjpkcm06OmRldmljZTo6RGV2aWNlPFNlbGY+
LA0KPiA+PiArLy8vICAgICAgICBkYXRhOiAmbXV0IGJpbmRpbmdzOjphcmd1bWVudF90eXBlLA0K
PiA+PiArLy8vICAgICAgICBmaWxlOiAma2VybmVsOjpkcm06OmZpbGU6OkZpbGU8U2VsZjo6Rmls
ZT4sDQo+ID4+ICsvLy8gKQ0KPiA+PiArLy8vIGBgYA0KPiA+PiArLy8vIHdoZXJlIGBTZWxmYCBp
cyB0aGUgZHJtOjpkcnY6OkRyaXZlciBpbXBsZW1lbnRhdGlvbiB0aGVzZSBpb2N0bHMgYXJlIGJl
aW5nIGRlY2xhcmVkIHdpdGhpbi4NCj4gPj4gKy8vLw0KPiA+PiArLy8vICMgRXhhbXBsZXMNCj4g
Pj4gKy8vLw0KPiA+PiArLy8vIGBgYA0KPiA+PiArLy8vIGtlcm5lbDo6ZGVjbGFyZV9kcm1faW9j
dGxzISB7DQo+ID4+ICsvLy8gICAgIChGT09fR0VUX1BBUkFNLCBkcm1fZm9vX2dldF9wYXJhbSwg
aW9jdGw6OlJFTkRFUl9BTExPVywgbXlfZ2V0X3BhcmFtX2hhbmRsZXIpLA0KPiA+PiArLy8vIH0N
Cj4gPj4gKy8vLyBgYGANCj4gPj4gKy8vLw0KPiA+PiArI1ttYWNyb19leHBvcnRdDQo+ID4+ICtt
YWNyb19ydWxlcyEgZGVjbGFyZV9kcm1faW9jdGxzIHsNCj4gPj4gKyAgICAoICQoKCRjbWQ6aWRl
bnQsICRzdHJ1Y3Q6aWRlbnQsICRmbGFnczpleHByLCAkZnVuYzpleHByKSksKiAkKCwpPyApID0+
IHsNCj4gPj4gKyAgICAgICAgY29uc3QgSU9DVExTOiAmJ3N0YXRpYyBbJGNyYXRlOjpkcm06Omlv
Y3RsOjpEcm1Jb2N0bERlc2NyaXB0b3JdID0gew0KPiA+PiArICAgICAgICAgICAgY29uc3QgXzoo
KSA9IHsNCj4gPj4gKyAgICAgICAgICAgICAgICBsZXQgaTogdTMyID0gJGNyYXRlOjpiaW5kaW5n
czo6RFJNX0NPTU1BTkRfQkFTRTsNCj4gPj4gKyAgICAgICAgICAgICAgICAvLyBBc3NlcnQgdGhh
dCBhbGwgdGhlIElPQ1RMcyBhcmUgaW4gdGhlIHJpZ2h0IG9yZGVyIGFuZCB0aGVyZSBhcmUgbm8g
Z2FwcywNCj4gPj4gKyAgICAgICAgICAgICAgICAvLyBhbmQgdGhhdCB0aGUgc2l6ZW9mIG9mIHRo
ZSBzcGVjaWZpZWQgdHlwZSBpcyBjb3JyZWN0Lg0KPiA+DQo+ID4gSSBiZWxpZXZlIHRoYXQgbm90
IG5lY2Vzc2FyaWx5IHRoZSBJT0NUTHMgbmVlZCB0byBiZSBpbiB0aGUgcmlnaHQgb3JkZXIgYW5k
DQo+ID4gd2l0aCBubyBnYXBzLiBGb3IgZXhhbXBsZSwgYXJtYWRhX2RybS5oIGhhcyBhIGdhcCBp
biBiZXR3ZWVuIDB4MDAgYW5kDQo+ID4gMHgwMiBhbmQgZXh5bm9zX2RybS5oIGFsc28gaGF2ZSBn
YXBzLiBNb3Jlb3Zlciwgc29tZSBkcml2ZXJzLCBsaWtlIHZnZW0gYW5kDQo+ID4gdmlydGdwdSwg
c3RhcnQgdGhlaXIgSU9DVExzIHdpdGggMHgwMS4NCj4NCj4gWWVhaCwgd2UgdGFsa2VkIGFib3V0
IHRoaXMgYSBiaXQuLi4gZG8geW91IGhhdmUgYW55IGlkZWFzIGFib3V0IGhvdyB0bw0KPiBkZXNp
Z24gdGhpcz8gSSB0aGluayBpdCBzaG91bGQgYmUgcG9zc2libGUgd2l0aCBhIGNvbnN0IGZ1bmN0
aW9uDQo+IGluaXRpYWxpemluZyBhbiBhcnJheSBlbnRyeSBieSBlbnRyeSwgd2UganVzdCBuZWVk
IGEgdHdvLXBhc3MgbWFjcm8NCj4gKG9uY2UgdG8gZGV0ZXJtaW5lIHRoZSBtYXggaW9jdGwgbnVt
YmVyLCB0aGVuIGFnYWluIHRvIGFjdHVhbGx5IG91dHB1dA0KPiB0aGUgaW1wbGVtZW50YXRpb24p
Lg0KPg0KPiBJJ20gbm90IHN1cmUgd2h5IGRyaXZlcnMgd291bGQgaGF2ZSBnYXBzIGluIHRoZSBp
b2N0bCBudW1iZXJzIHRob3VnaC4uLg0KPiBteSBpZGVhIHdhcyB0aGF0IG5ldyBkcml2ZXJzIHNo
b3VsZG4ndCBuZWVkIHRoYXQgYXMgZmFyIGFzIEkgY2FuIHRlbGwNCj4gKHlvdSBjYW4ndCByZW1v
dmUgQVBJcyBhZnRlciB0aGUgZmFjdCBkdWUgdG8gVUFQSSBzdGFiaWxpdHkgZ3VhcmFudGVlcywN
Cj4gc28gYXMgbG9uZyBhcyB5b3UgZG9uJ3QgaGF2ZSBnYXBzIHRvIGJlZ2luIHdpdGguLi4pLiBC
dXQgSSBndWVzcyBpZg0KPiB3ZSdyZSByZWltcGxlbWVudGluZyBleGlzdGluZyBkcml2ZXJzIGlu
IFJ1c3Qgd2UnbGwgbmVlZCB0aGlzLi4uIHRob3VnaA0KPiBtYXliZSBpdCBtYWtlcyBzZW5zZSB0
byBqdXN0IHNheSBpdCdzIG5vdCBzdXBwb3J0ZWQgYW5kIHJlcXVpcmUNCj4gcmVpbXBsZW1lbnRh
dGlvbnMgdGhhdCBoYXZlIGhvbGVzIHRvIGp1c3QgZXhwbGljaXRseSBhZGQgZHVtbXkgaW9jdGxz
DQo+IHRoYXQgcmV0dXJuIEVJTlZBTD8gV2UgY291bGQgZXZlbiBwcm92aWRlIHN1Y2ggYSBkdW1t
eSBnZW5lcmljIGlvY3RsDQo+IGhhbmRsZXIgb24gdGhlIGFic3RyYWN0aW9uIHNpZGUsIHNvIGRy
aXZlcnMganVzdCBoYXZlIHRvIGFkZCBpdCB0byB0aGUNCj4gbGlzdCwgb3IgbWFrZSB0aGUgbWFj
cm8gdGFrZSBhIHNwZWNpYWwgdG9rZW4gdGhhdCBpcyB1c2VkIGZvcg0KPiBwbGFjZWhvbGRlciBp
b2N0bHMgdGhhdCBkb24ndCBleGlzdCAod2hpY2ggdGhlbiBjcmVhdGVzIHRoZSBOVUxMDQo+IGZ1
bmN0aW9uIHBvaW50ZXIgdGhhdCB0aGUgZHJtIGNvcmUgaW50ZXJwcmV0cyBhcyBpbnZhbGlkKS4u
Lg0KDQpJIGNhbiB0aGluayBvZiB0d28gcmVhc29uIGZvciBnYXBzIGhhdmluZyBhcHBlYXJlZDoN
Cg0KYSkgZGV2ZWxvcGVycyB3YW50ZWQgdG8gZ3JvdXAgbmV3IHVhcGlzIGF0IGEgbmljZSBiYXNl
IG51bWJlci4NClRoaXMgaXMgbmV2ZXIgZXNzZW50aWFsIGl0J3MganVzdCBtYWtlcyB0aGluZ3Mg
ZWFzaWVyIHRvIHJlYWQsIGFuZA0KYWxsb3dzIHNsb3R0aW5nIG90aGVyIGlvY3RscyBpbnRvIHRo
ZSBnYXBzIGxhdGVyLg0KDQpiKSBwYXJhbGxlbCBmZWF0dXJlIGRldmVsb3BtZW50IGVuZHMgdXAg
Y29uZmxpY3RpbmcgdGhlbiBvbmUgdGhyZWFkIG5ldmVyIGxhbmRzLg0KSSd2ZSBnb3QgdHdvLXRo
cmVlIGRldnMgZWFjaCBhZGRpbmcgYSB1QVBJLCB3ZSBhc3NpZ24gdGhlbSAweDEwLCAweDExLA0K
MHgxMiB3aGlsZSB0aGV5IHdvcmssIHRoZW4gMHgxMSBuZXZlciBsYW5kcyBiZWNhdXNlIGl0IHdh
cyBhIGJhZCBpZGVhLg0KDQpIb3dldmVyIEkgdGhpbmsgeW91IHNob3VsZCBiZSBmaW5lIGVuZm9y
Y2luZyBhIG5vbi1zcGFyc2Ugc3BhY2UgaGVyZQ0KdW5sZXNzIHdlIHdhbnQgdG8gaGFuZGxlIHJl
cGxhY2luZyBjdXJyZW50IGRyaXZlcnMsIGFzIGxvbmcgYXMgaXQncw0KaGFyZCB0byBzY3JldyB1
cCBzbyB5b3Uga25vdyBlYXJseS4NCg0KRGF2ZS4NCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
