Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E015494A10
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jan 2022 09:50:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4AD303EE9D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Jan 2022 08:50:54 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by lists.linaro.org (Postfix) with ESMTPS id D46153EE8F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Jan 2022 08:50:50 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id o1-20020a1c4d01000000b0034d95625e1fso5677911wmh.4
        for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Jan 2022 00:50:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=Ko6KL9eo2/amN6Mkm8rkJt9A+k3vlAsHv5U99GctgVw=;
        b=mudBSflgmCVgxMfMnCti2aKgRfjy3SsdsOzbU1Eobjq0FtoFaPNeAQUgOiQUfsywKC
         eaZEzlJ2l3FkgUKf/FAvTI0IJfSjDB8WjsfDF4MW2SC6mUtuTpqKgnug7QoxgFZ6jj2y
         he2MazseQFGXxIP0GMQrZWNqwKke4d6Epqc7j7etPBh0WyE4bHhybIBvwMfTnkN+sxo3
         kn+v1cXrtNQC0Ib8Z2+Yj//CuNjNiQJYynXdNmgGocE9QY/WXicnE0T8nVL6RvBQsnP4
         pFStQM/91rOGzV7+3zazEM0vXEjbrmUsdkQC1oHnxY6RLYr55DLUfHpRlVTPDKUC7Bmd
         o3ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=Ko6KL9eo2/amN6Mkm8rkJt9A+k3vlAsHv5U99GctgVw=;
        b=fqs6R9TLugB37fY+T6e8IFwqh5+IFCqIJfIbYNFMOOZjRE4HL56+jJ8Zh/v04KxK6N
         Z6N1VODVhG0/TBV2D65t8Js3kwfBsc1arxNCpRnG4l5qFy0LSJ/yo7w/PxX4Elw5l+Iz
         RDURMF7FfQSYgWeHMIyjEehyVRCWB+O1zfjWaQbpab5jw98dMRHJ+mGswfW/qZ+Kv+gP
         u/ZkB1T3fd8xlIaJoYXbU3LhnVBENyYeHWgPfHAQa3yPSBQo3VlkEdIxJ+o/+D3PCVop
         rRY8bhermaMNIF/c/jB2ilM24rBUh8D3slOUUHu5Tnj/0MLwzDwyTTbHW7fWbr7ckmF1
         Uo7g==
X-Gm-Message-State: AOAM530tt0QyMh8gsilrw9YT0vMXSNDNV34bbO4dE3GEiKnnFJ2CBslN
	lsN5MUidlv3uJxpWQ65dB9lpLCTdPKY=
X-Google-Smtp-Source: ABdhPJx95ZJNeIu0qZQZdChuFJEWtlTJdxUxS2ff/zIsq0hpP3JIZVsYxNZgwU2vQtGPjj87idBBdg==
X-Received: by 2002:a7b:cd81:: with SMTP id y1mr7883640wmj.4.1642668649697;
        Thu, 20 Jan 2022 00:50:49 -0800 (PST)
Received: from [192.168.178.21] (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id d6sm2088784wrs.85.2022.01.20.00.50.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Jan 2022 00:50:49 -0800 (PST)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20220119134339.3102-1-christian.koenig@amd.com>
 <YehHX7ID/of9kxmE@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <364f8edb-07b5-c1b4-71ea-0003b45ce7e3@gmail.com>
Date: Thu, 20 Jan 2022 09:50:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YehHX7ID/of9kxmE@phenom.ffwll.local>
Content-Language: en-US
Message-ID-Hash: H3S2MZS7GA2CN6YKG3QB6SNL7K3WSER6
X-Message-ID-Hash: H3S2MZS7GA2CN6YKG3QB6SNL7K3WSER6
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: gustavo@padovan.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/4] dma-buf: consolidate dma_fence subclass checking
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H3S2MZS7GA2CN6YKG3QB6SNL7K3WSER6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTkuMDEuMjIgdW0gMTg6MTYgc2NocmllYiBEYW5pZWwgVmV0dGVyOg0KPiBPbiBXZWQsIEph
biAxOSwgMjAyMiBhdCAwMjo0MzozNlBNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0K
Pj4gQ29uc29saWRhdGUgdGhlIHdyYXBwZXIgZnVuY3Rpb25zIHRvIGNoZWNrIGZvciBkbWFfZmVu
Y2UNCj4+IHN1YmNsYXNzZXMgaW4gdGhlIGRtYV9mZW5jZSBoZWFkZXIuDQo+Pg0KPj4gVGhpcyBt
YWtlcyBpdCBlYXNpZXIgdG8gZG9jdW1lbnQgYW5kIGFsc28gY2hlY2sgdGhlIGRpZmZlcmVudA0K
Pj4gcmVxdWlyZW1lbnRzIGZvciBmZW5jZSBjb250YWluZXJzIGluIHRoZSBzdWJjbGFzc2VzLg0K
Pj4NCj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4NCj4+IC0tLQ0KPj4gICBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1hcnJheS5oIHwg
MTUgKy0tLS0tLS0tLS0tLQ0KPj4gICBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1jaGFpbi5oIHwg
IDMgKy0tDQo+PiAgIGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggICAgICAgfCAzOCArKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysNCj4+ICAgMyBmaWxlcyBjaGFuZ2VkLCA0MCBpbnNl
cnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9s
aW51eC9kbWEtZmVuY2UtYXJyYXkuaCBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLWFycmF5LmgN
Cj4+IGluZGV4IDMwM2RkNzEyMjIwZi4uZmVjMzc0ZjY5ZTEyIDEwMDY0NA0KPj4gLS0tIGEvaW5j
bHVkZS9saW51eC9kbWEtZmVuY2UtYXJyYXkuaA0KPj4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEt
ZmVuY2UtYXJyYXkuaA0KPj4gQEAgLTQ1LDE5ICs0NSw2IEBAIHN0cnVjdCBkbWFfZmVuY2VfYXJy
YXkgew0KPj4gICAJc3RydWN0IGlycV93b3JrIHdvcms7DQo+PiAgIH07DQo+PiAgIA0KPj4gLWV4
dGVybiBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyBkbWFfZmVuY2VfYXJyYXlfb3BzOw0KPj4g
LQ0KPj4gLS8qKg0KPj4gLSAqIGRtYV9mZW5jZV9pc19hcnJheSAtIGNoZWNrIGlmIGEgZmVuY2Ug
aXMgZnJvbSB0aGUgYXJyYXkgc3Vic2NsYXNzDQo+PiAtICogQGZlbmNlOiBmZW5jZSB0byB0ZXN0
DQo+PiAtICoNCj4+IC0gKiBSZXR1cm4gdHJ1ZSBpZiBpdCBpcyBhIGRtYV9mZW5jZV9hcnJheSBh
bmQgZmFsc2Ugb3RoZXJ3aXNlLg0KPj4gLSAqLw0KPj4gLXN0YXRpYyBpbmxpbmUgYm9vbCBkbWFf
ZmVuY2VfaXNfYXJyYXkoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+PiAtew0KPj4gLQlyZXR1
cm4gZmVuY2UtPm9wcyA9PSAmZG1hX2ZlbmNlX2FycmF5X29wczsNCj4+IC19DQo+PiAtDQo+PiAg
IC8qKg0KPj4gICAgKiB0b19kbWFfZmVuY2VfYXJyYXkgLSBjYXN0IGEgZmVuY2UgdG8gYSBkbWFf
ZmVuY2VfYXJyYXkNCj4+ICAgICogQGZlbmNlOiBmZW5jZSB0byBjYXN0IHRvIGEgZG1hX2ZlbmNl
X2FycmF5DQo+PiBAQCAtNjgsNyArNTUsNyBAQCBzdGF0aWMgaW5saW5lIGJvb2wgZG1hX2ZlbmNl
X2lzX2FycmF5KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KPj4gICBzdGF0aWMgaW5saW5lIHN0
cnVjdCBkbWFfZmVuY2VfYXJyYXkgKg0KPj4gICB0b19kbWFfZmVuY2VfYXJyYXkoc3RydWN0IGRt
YV9mZW5jZSAqZmVuY2UpDQo+PiAgIHsNCj4+IC0JaWYgKGZlbmNlLT5vcHMgIT0gJmRtYV9mZW5j
ZV9hcnJheV9vcHMpDQo+PiArCWlmICghZmVuY2UgfHwgIWRtYV9mZW5jZV9pc19hcnJheShmZW5j
ZSkpDQo+PiAgIAkJcmV0dXJuIE5VTEw7DQo+PiAgIA0KPj4gICAJcmV0dXJuIGNvbnRhaW5lcl9v
ZihmZW5jZSwgc3RydWN0IGRtYV9mZW5jZV9hcnJheSwgYmFzZSk7DQo+PiBkaWZmIC0tZ2l0IGEv
aW5jbHVkZS9saW51eC9kbWEtZmVuY2UtY2hhaW4uaCBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNl
LWNoYWluLmgNCj4+IGluZGV4IDU0ZmUzNDQzZmQyYy4uZWU5MDZiNjU5Njk0IDEwMDY0NA0KPj4g
LS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtY2hhaW4uaA0KPj4gKysrIGIvaW5jbHVkZS9s
aW51eC9kbWEtZmVuY2UtY2hhaW4uaA0KPj4gQEAgLTQ5LDcgKzQ5LDYgQEAgc3RydWN0IGRtYV9m
ZW5jZV9jaGFpbiB7DQo+PiAgIAlzcGlubG9ja190IGxvY2s7DQo+PiAgIH07DQo+PiAgIA0KPj4g
LWV4dGVybiBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyBkbWFfZmVuY2VfY2hhaW5fb3BzOw0K
Pj4gICANCj4+ICAgLyoqDQo+PiAgICAqIHRvX2RtYV9mZW5jZV9jaGFpbiAtIGNhc3QgYSBmZW5j
ZSB0byBhIGRtYV9mZW5jZV9jaGFpbg0KPj4gQEAgLTYxLDcgKzYwLDcgQEAgZXh0ZXJuIGNvbnN0
IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIGRtYV9mZW5jZV9jaGFpbl9vcHM7DQo+PiAgIHN0YXRpYyBp
bmxpbmUgc3RydWN0IGRtYV9mZW5jZV9jaGFpbiAqDQo+PiAgIHRvX2RtYV9mZW5jZV9jaGFpbihz
dHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCj4+ICAgew0KPj4gLQlpZiAoIWZlbmNlIHx8IGZlbmNl
LT5vcHMgIT0gJmRtYV9mZW5jZV9jaGFpbl9vcHMpDQo+PiArCWlmICghZmVuY2UgfHwgIWRtYV9m
ZW5jZV9pc19jaGFpbihmZW5jZSkpDQo+PiAgIAkJcmV0dXJuIE5VTEw7DQo+PiAgIA0KPj4gICAJ
cmV0dXJuIGNvbnRhaW5lcl9vZihmZW5jZSwgc3RydWN0IGRtYV9mZW5jZV9jaGFpbiwgYmFzZSk7
DQo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCBiL2luY2x1ZGUvbGlu
dXgvZG1hLWZlbmNlLmgNCj4+IGluZGV4IDFlYTY5MTc1M2JkMy4uNzc1Y2RjMGI0ZjI0IDEwMDY0
NA0KPj4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KPj4gKysrIGIvaW5jbHVkZS9s
aW51eC9kbWEtZmVuY2UuaA0KPj4gQEAgLTU4Nyw0ICs1ODcsNDIgQEAgc3RydWN0IGRtYV9mZW5j
ZSAqZG1hX2ZlbmNlX2dldF9zdHViKHZvaWQpOw0KPj4gICBzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFf
ZmVuY2VfYWxsb2NhdGVfcHJpdmF0ZV9zdHViKHZvaWQpOw0KPj4gICB1NjQgZG1hX2ZlbmNlX2Nv
bnRleHRfYWxsb2ModW5zaWduZWQgbnVtKTsNCj4+ICAgDQo+PiArZXh0ZXJuIGNvbnN0IHN0cnVj
dCBkbWFfZmVuY2Vfb3BzIGRtYV9mZW5jZV9hcnJheV9vcHM7DQo+PiArZXh0ZXJuIGNvbnN0IHN0
cnVjdCBkbWFfZmVuY2Vfb3BzIGRtYV9mZW5jZV9jaGFpbl9vcHM7DQo+PiArDQo+PiArLyoqDQo+
PiArICogZG1hX2ZlbmNlX2lzX2FycmF5IC0gY2hlY2sgaWYgYSBmZW5jZSBpcyBmcm9tIHRoZSBh
cnJheSBzdWJjbGFzcw0KPj4gKyAqIEBmZW5jZTogdGhlIGZlbmNlIHRvIHRlc3QNCj4+ICsgKg0K
Pj4gKyAqIFJldHVybiB0cnVlIGlmIGl0IGlzIGEgZG1hX2ZlbmNlX2FycmF5IGFuZCBmYWxzZSBv
dGhlcndpc2UuDQo+PiArICovDQo+PiArc3RhdGljIGlubGluZSBib29sIGRtYV9mZW5jZV9pc19h
cnJheShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCj4+ICt7DQo+PiArCXJldHVybiBmZW5jZS0+
b3BzID09ICZkbWFfZmVuY2VfYXJyYXlfb3BzOw0KPj4gK30NCj4+ICsNCj4+ICsvKioNCj4+ICsg
KiBkbWFfZmVuY2VfaXNfY2hhaW4gLSBjaGVjayBpZiBhIGZlbmNlIGlzIGZyb20gdGhlIGNoYWlu
IHN1YmNsYXNzDQo+PiArICogQGZlbmNlOiB0aGUgZmVuY2UgdG8gdGVzdA0KPj4gKyAqDQo+PiAr
ICogUmV0dXJuIHRydWUgaWYgaXQgaXMgYSBkbWFfZmVuY2VfY2hhaW4gYW5kIGZhbHNlIG90aGVy
d2lzZS4NCj4+ICsgKi8NCj4+ICtzdGF0aWMgaW5saW5lIGJvb2wgZG1hX2ZlbmNlX2lzX2NoYWlu
KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KPj4gK3sNCj4+ICsJcmV0dXJuIGZlbmNlLT5vcHMg
PT0gJmRtYV9mZW5jZV9jaGFpbl9vcHM7DQo+PiArfQ0KPj4gKw0KPj4gKy8qKg0KPj4gKyAqIGRt
YV9mZW5jZV9pc19jb250YWluZXIgLSBjaGVjayBpZiBhIGZlbmNlIGlzIGEgY29udGFpbmVyIGZv
ciBvdGhlciBmZW5jZXMNCj4+ICsgKiBAZmVuY2U6IHRoZSBmZW5jZSB0byB0ZXN0DQo+PiArICoN
Cj4+ICsgKiBSZXR1cm4gdHJ1ZSBpZiB0aGlzIGZlbmNlIGlzIGEgY29udGFpbmVyIGZvciBvdGhl
ciBmZW5jZXMsIGZhbHNlIG90aGVyd2lzZS4NCj4+ICsgKiBUaGlzIGlzIGltcG9ydGFudCBzaW5j
ZSB3ZSBjYW4ndCBidWlsZCB1cCBsYXJnZSBmZW5jZSBzdHJ1Y3R1cmUgb3Igb3RoZXJ3aXNlDQo+
PiArICogd2UgcnVuIGludG8gcmVjdXJzaW9uIGR1cmluZyBvcGVyYXRpb24gb24gdGhvc2UgZmVu
Y2VzLg0KPj4gKyAqLw0KPj4gK3N0YXRpYyBpbmxpbmUgYm9vbCBkbWFfZmVuY2VfaXNfY29udGFp
bmVyKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KPiBDb2RlIGxvb2tzIGFsbCBnb29kLCBidXQg
SSdtIG5vdCBzdXBlciBlbnRodXNpYXN0aWMgYWJvdXQgZXhwb3J0aW5nIHRoZQ0KPiBvcHMgdG8g
ZHJpdmVycyBhbmQgbGV0dGluZyB0aGVtIGRvIHJhbmRvbSBub25zZW5zZS4gQXQgbGVhc3QgaTkx
NSBkb2VzDQo+IHByZXR0eSBlbm9ybW91cyBhbW91bnRzIG9mIHN0dWZmIHdpdGggdGhhdCBpbnN0
ZWFkIG9mIGhhdmluZyBwdXNoZWQNCj4gcHJpb3JpdHkgYm9vc3RpbmcgaW50byBkbWEtZmVuY2Ug
YXMgYSBwcm9wZXIgY29uY2VwdC4gQW5kIG1heWJlIGEgZmV3DQo+IG90aGVyIHRoaW5ncy4NCj4N
Cj4gTm93IGk5MTUtZ2VtIHRlYW0gaGF2aW5nIGdvbmUgb2ZmIHRoZSByYWlscyBvZiBnb29kIHVw
c3RyZWFtIGNvbmR1Y3QgaXMNCj4gYW5vdGhlciB0aGluZyBtYXliZSwgYnV0IEknZCBsaWtlIHRv
IG5vdCBlbmNvdXJhZ2UgdGhhdC4NCj4NCj4gU28gY291bGQgd2UgcGVyaGFwcyBkbyB0aGlzIGFs
bCBpbiBoZWFkZXIgd2hpY2ggaXMgZW50aXJlbHkgcHJpdmF0ZSB0bw0KPiBkcml2ZXJzL2RtYS1i
dWYsIGxpa2UgZG1hLWZlbmNlLWludGVybmFsIG9yIHNvPyBBbmQgbWF5YmUgd2hhY2sgYSBiaWcN
Cj4gZml4bWUgb250byB0aGUgY3VycmVudCBhYnVzZSBpbiBkcml2ZXJzIChvZiB3aGljaCBfX2Rt
YV9mZW5jZV9pc19jaGFpbigpDQo+IGdldHMgYSBzcGVjaWFsIHByaWNlIGZvciAibm90IGhvdyB1
cHN0cmVhbSBzaG91bGQgYmUgZG9uZSIgKnNpZ2gqKS4NCg0KV1RGIGlzIF9fZG1hX2ZlbmNlX2lz
X2NoYWluPyBTZWVpbmcgdGhhdCBmb3IgdGhlIGZpcnN0IHRpbWUgbm93Lg0KDQpBbmQgeWVzIGV2
ZW4gaWYgeW91IGRvIHByaW9yaXR5IGJvb3N0aW5nIG1hbnVhbGx5IHRoYXQgY29kZSBpbiBpOTE1
IGlzIA0KanVzdCB3YXkgdG8gY29tcGxpY2F0ZWQuDQoNCkknbSBzdXJlIHlvdSBkb24ndCBoYXZl
IGFueSBvYmplY3Rpb25zIHRoYXQgSSBjbGVhbiB1cCB0aGF0IG1lc3Mgbm93IHlvdSANCnBvaW50
ZWQgaXQgb3V0IDopDQoNClRoYW5rcywNCkNocmlzdGlhbi4NCg0KPg0KPiBDaGVlcnMsIERhbmll
bA0KPg0KPj4gK3sNCj4+ICsJcmV0dXJuIGRtYV9mZW5jZV9pc19hcnJheShmZW5jZSkgfHwgZG1h
X2ZlbmNlX2lzX2NoYWluKGZlbmNlKTsNCj4+ICt9DQo+PiArDQo+PiAgICNlbmRpZiAvKiBfX0xJ
TlVYX0RNQV9GRU5DRV9IICovDQo+PiAtLSANCj4+IDIuMjUuMQ0KPj4NCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
