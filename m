Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0851D490721
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Jan 2022 12:26:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BC9433EE58
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Jan 2022 11:26:43 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by lists.linaro.org (Postfix) with ESMTPS id 436853EE51
	for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Jan 2022 11:26:40 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id ay4-20020a05600c1e0400b0034a81a94607so21011646wmb.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Jan 2022 03:26:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=+4k5VumxcVJVVNeLV0hEcjh27R/lVPWNViYiPj+iiv4=;
        b=m2qCS0fEPAmlNhR7IohXzrLXojwPxkE7ljUHKg1Azcw+A1qSEFZtSS92EcTyHfZboI
         i07Zvukq0lsUePPXtxcb6KUbo5M+OZjnV+bcxjdIelzWoozeEC8ZCl4oLWJ3jxb8XZM+
         ruPgZOewOsIhBz+mrkNSW/zkPRX9wN5XLtfupLOCZ1IHZuc3fW+qBBe3Be6Y8TkypxE4
         2SnwCmTQFEtKzGpOAtYfoap/0Y02gX52cYOE+rYgmhBHlVrtKnRFX3DpGo8NPKa84pQn
         rQMA90XmNhUlq29MxIRdOoWqokJm6YKmY5y6mwfB4BHmKGrDPsL7PJlBG2PZUWcRrrmU
         w8wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=+4k5VumxcVJVVNeLV0hEcjh27R/lVPWNViYiPj+iiv4=;
        b=kcdfknxN28InwuTzbg3J620uuYrlrlT4rw9TnKOSgDdnrJMCZU7k+heSIKXI4PeqQ5
         x52qHIqokMmvPRVxycojJvOXBdaxUkhHb+9j9/R2jm9X4KZCCo3p+coBEcHOEnS4f84+
         xhvvzq2okNW03bfJS1WhHhQe7V+2kE6JJdyxxLci23rKUpHeFPuG4cKH7YOyQ3Q5QmnJ
         oM5Rrolu7ZA3xxJ7JJ98c/Gn45HModqghTjTx5Bc0+uZs/oA6JE0YkMSq5h9+YDrSMpd
         dfIeRIUh3OUkXxdEXtDOV5/pXmDHRFGvgdggMqT0IP/8jz7qvwcPEYCAjnqerEjDXTva
         XGqw==
X-Gm-Message-State: AOAM530o1QVr2VdFEYruHYQ58+hhCmlDUCKcN9iqHcgt7HN5qXslimVz
	52PxLo7HHgMXigbEh3D2eYIqxhXVxoc=
X-Google-Smtp-Source: ABdhPJzD8cm9J6JbfH4eaxYYGvBgTSYRK0FQLQwEnx+jtgP/ONrYrJx220lPXyIY78Y5IuZhIIaXbA==
X-Received: by 2002:a05:6000:1d84:: with SMTP id bk4mr18167740wrb.708.1642418799172;
        Mon, 17 Jan 2022 03:26:39 -0800 (PST)
Received: from [192.168.178.21] (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id t6sm10872638wmq.16.2022.01.17.03.26.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jan 2022 03:26:38 -0800 (PST)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20211207123411.167006-1-christian.koenig@amd.com>
 <20211207123411.167006-5-christian.koenig@amd.com>
 <YcOWyHzY22ZCCvef@phenom.ffwll.local>
 <95929048-b381-78d1-462c-e7b910c784b0@gmail.com>
 <YeGlbLXXuUITZlQP@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <0b7b9a9f-65d8-706e-163b-5363df426c8b@gmail.com>
Date: Mon, 17 Jan 2022 12:26:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YeGlbLXXuUITZlQP@phenom.ffwll.local>
Content-Language: en-US
Message-ID-Hash: OW7ZAH4TH62OM3GTVDT3RPVBQQ3ZST3I
X-Message-ID-Hash: OW7ZAH4TH62OM3GTVDT3RPVBQQ3ZST3I
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 04/24] dma-buf: add dma_resv_get_singleton v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OW7ZAH4TH62OM3GTVDT3RPVBQQ3ZST3I/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTQuMDEuMjIgdW0gMTc6MzEgc2NocmllYiBEYW5pZWwgVmV0dGVyOg0KPiBPbiBNb24sIEph
biAwMywgMjAyMiBhdCAxMjoxMzo0MVBNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0K
Pj4gQW0gMjIuMTIuMjEgdW0gMjI6MjEgc2NocmllYiBEYW5pZWwgVmV0dGVyOg0KPj4+IE9uIFR1
ZSwgRGVjIDA3LCAyMDIxIGF0IDAxOjMzOjUxUE0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3Jv
dGU6DQo+Pj4+IEFkZCBhIGZ1bmN0aW9uIHRvIHNpbXBsaWZ5IGdldHRpbmcgYSBzaW5nbGUgZmVu
Y2UgZm9yIGFsbCB0aGUgZmVuY2VzIGluDQo+Pj4+IHRoZSBkbWFfcmVzdiBvYmplY3QuDQo+Pj4+
DQo+Pj4+IHYyOiBmaXggcmVmIGxlYWsgaW4gZXJyb3IgaGFuZGxpbmcNCj4+Pj4NCj4+Pj4gU2ln
bmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0K
Pj4+PiAtLS0NCj4+Pj4gICAgZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgfCA1MiArKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0KPj4+PiAgICBpbmNsdWRlL2xpbnV4L2Rt
YS1yZXN2LmggICB8ICAyICsrDQo+Pj4+ICAgIDIgZmlsZXMgY2hhbmdlZCwgNTQgaW5zZXJ0aW9u
cygrKQ0KPj4+Pg0KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMg
Yi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYw0KPj4+PiBpbmRleCA0ODBjMzA1NTU0YTEuLjY5
NDcxNmEzZDY2ZCAxMDA2NDQNCj4+Pj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMN
Cj4+Pj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMNCj4+Pj4gQEAgLTM0LDYgKzM0
LDcgQEANCj4+Pj4gICAgICovDQo+Pj4+ICAgICNpbmNsdWRlIDxsaW51eC9kbWEtcmVzdi5oPg0K
Pj4+PiArI2luY2x1ZGUgPGxpbnV4L2RtYS1mZW5jZS1hcnJheS5oPg0KPj4+PiAgICAjaW5jbHVk
ZSA8bGludXgvZXhwb3J0Lmg+DQo+Pj4+ICAgICNpbmNsdWRlIDxsaW51eC9tbS5oPg0KPj4+PiAg
ICAjaW5jbHVkZSA8bGludXgvc2NoZWQvbW0uaD4NCj4+Pj4gQEAgLTY1Nyw2ICs2NTgsNTcgQEAg
aW50IGRtYV9yZXN2X2dldF9mZW5jZXMoc3RydWN0IGRtYV9yZXN2ICpvYmosIGJvb2wgd3JpdGUs
DQo+Pj4+ICAgIH0NCj4+Pj4gICAgRVhQT1JUX1NZTUJPTF9HUEwoZG1hX3Jlc3ZfZ2V0X2ZlbmNl
cyk7DQo+Pj4+ICsvKioNCj4+Pj4gKyAqIGRtYV9yZXN2X2dldF9zaW5nbGV0b24gLSBHZXQgYSBz
aW5nbGUgZmVuY2UgZm9yIGFsbCB0aGUgZmVuY2VzDQo+Pj4+ICsgKiBAb2JqOiB0aGUgcmVzZXJ2
YXRpb24gb2JqZWN0DQo+Pj4+ICsgKiBAd3JpdGU6IHRydWUgaWYgd2Ugc2hvdWxkIHJldHVybiBh
bGwgZmVuY2VzDQo+Pj4+ICsgKiBAZmVuY2U6IHRoZSByZXN1bHRpbmcgZmVuY2UNCj4+Pj4gKyAq
DQo+Pj4+ICsgKiBHZXQgYSBzaW5nbGUgZmVuY2UgcmVwcmVzZW50aW5nIGFsbCB0aGUgZmVuY2Vz
IGluc2lkZSB0aGUgcmVzdiBvYmplY3QuDQo+Pj4+ICsgKiBSZXR1cm5zIGVpdGhlciAwIGZvciBz
dWNjZXNzIG9yIC1FTk9NRU0uDQo+Pj4+ICsgKg0KPj4+PiArICogV2FybmluZzogVGhpcyBjYW4n
dCBiZSB1c2VkIGxpa2UgdGhpcyB3aGVuIGFkZGluZyB0aGUgZmVuY2UgYmFjayB0byB0aGUgcmVz
dg0KPj4+PiArICogb2JqZWN0IHNpbmNlIHRoYXQgY2FuIGxlYWQgdG8gc3RhY2sgY29ycnVwdGlv
biB3aGVuIGZpbmFsaXppbmcgdGhlDQo+Pj4+ICsgKiBkbWFfZmVuY2VfYXJyYXkuDQo+Pj4gVWgg
SSBkb24ndCBnZXQgdGhpcyBvbmU/IEkgdGhvdWdodCB0aGUgb25seSBwcm9ibGVtIHdpdGggbmVz
dGVkIGZlbmNlcyBpcw0KPj4+IHRoZSBzaWduYWxsaW5nIHJlY3Vyc2lvbiwgd2hpY2ggd2Ugd29y
ayBhcm91bmQgd2l0aCB0aGUgaXJxX3dvcms/DQo+PiBOb3BlLCB0aGUgbWFpbiBwcm9ibGVtIGlz
IGZpbmFsaXppbmcgdGhlIGRtYV9mZW5jZV9hcnJheS4NCj4+DQo+PiBFLmcuIGltYWdpbmUgdGhh
dCB5b3UgYnVpbGQgdXAgYSBjaGFpbiBvZiBkbWFfZmVuY2VfYXJyYXkgb2JqZWN0cyBsaWtlIHRo
aXM6DQo+PiBhPC1iPC1jPC1kPC1lPC1mLi4uLi4NCj4+DQo+PiBXaXRoIGVhY2ggb25lIHJlZmVy
ZW5jaW5nIHRoZSBwcmV2aW91cyBkbWFfZmVuY2VfYXJyYXkgYW5kIHRoZW4geW91IGNhbGwNCj4+
IGRtYV9mZW5jZV9wdXQoKSBvbiB0aGUgbGFzdCBvbmUuIFRoYXQgaW4gdHVybiB3aWxsIGNhdXNl
IGNhbGxpbmcNCj4+IGRtYV9mZW5jZV9wdXQoKSBvbiB0aGUgcHJldmlvdXMgb25lLCB3aGljaCBp
biB0dXJuIHdpbGwgY2F1c2UNCj4+IGRtYV9mZW5jZV9wdXQoKSBvbmUgdGhlIG9uZSBiZWZvcmUg
dGhlIHByZXZpb3VzIG9uZSBldGMuLi4uDQo+Pg0KPj4gSW4gb3RoZXIgd29yZHMgeW91IHJlY3Vy
c2UgYmVjYXVzZSBlYWNoIGRtYV9mZW5jZV9hcnJheSBpbnN0YW5jZSBkcm9wcyB0aGUNCj4+IGxh
c3QgcmVmZXJlbmNlIG9mIGl0J3MgcHJlZGVjZXNzb3IuDQo+Pg0KPj4gV2hhdCB3ZSBjb3VsZCBk
byBpcyB0byBkZWxlZ2F0ZSBkcm9wcGluZyB0aGUgcmVmZXJlbmNlIHRvIHRoZSBjb250YWluaW5n
DQo+PiBmZW5jZXMgaW4gYSBkbWFfZmVuY2VfYXJyYXkgYXMgd2VsbCwgYnV0IHRoYXQgd291bGQg
cmVxdWlyZSBzb21lIGNoYW5nZXMgdG8NCj4+IHRoZSBpcnFfd29ya19ydW5fbGlzdCgpIGZ1bmN0
aW9uIHRvIGJlIGhhbHZlIHdheSBlZmZpY2llbnQubw0KPj4NCj4+PiBBbHNvIGlmIHRoZXJlJ3Mg
cmVhbGx5IGFuIGlzc3VlIHdpdGggZG1hX2ZlbmNlX2FycmF5IGZlbmNlcywgdGhlbiB0aGF0DQo+
Pj4gd2FybmluZyBzaG91bGQgYmUgb24gdGhlIGRtYV9yZXN2IGtlcm5lbGRvYywgbm90IHNvbWV3
aGVyZSBoaWRkZW4gbGlrZQ0KPj4+IHRoaXMuIEFuZCBmaW5hbGx5IEkgcmVhbGx5IGRvbid0IHNl
ZSB3aGF0IGNhbiBnbyB3cm9uZywgc3VyZSB3ZSdsbCBlbmQgdXANCj4+PiB3aXRoIHRoZSBzYW1l
IGZlbmNlIG9uY2UgaW4gdGhlIGRtYV9yZXN2X2xpc3QgYW5kIHRoZW4gb25jZSBtb3JlIGluIHRo
ZQ0KPj4+IGZlbmNlIGFycmF5LiBCdXQgdGhleSdyZSBhbGwgcmVmY291bnRlZCwgc28gcmVhbGx5
IHNob3VsZG4ndCBtYXR0ZXIuDQo+Pj4NCj4+PiBUaGUgY29kZSBpdHNlbGYgbG9va3MgY29ycmVj
dCwgYnV0IG1lIG5vdCB1bmRlcnN0YW5kaW5nIHdoYXQgZXZlbiBnb2VzDQo+Pj4gd3JvbmcgaGVy
ZSBmcmVha3MgbWUgb3V0IGEgYml0Lg0KPj4gWWVhaCwgSUlSQyB3ZSBhbHJlYWR5IGRpc2N1c3Nl
ZCB0aGF0IHdpdGggSmFzb24gaW4gbGVuZ3RoIGFzIHdlbGwuDQo+Pg0KPj4gRXNzZW50aWFsbHkg
d2hhdCB5b3UgY2FuJ3QgZG8gaXMgdG8gcHV0IGEgZG1hX2ZlbmNlX2FycmF5IGludG8gYW5vdGhl
cg0KPj4gZG1hX2ZlbmNlX2FycmF5IHdpdGhvdXQgY2F1c2luZyBpc3N1ZXMuDQo+Pg0KPj4gU28g
SSB0aGluayB3ZSBzaG91bGQgbWF5YmUganVzdCBhZGQgYSBXQVJOX09OKCkgaW50byBkbWFfZmVu
Y2VfYXJyYXlfaW5pdCgpDQo+PiB0byBtYWtlIHN1cmUgdGhhdCB0aGlzIG5ldmVyIGhhcHBlbnMu
DQo+IFllYWggSSB0aGluayB0aGlzIHdvdWxkIGJlIG11Y2ggY2xlYXJlciBpbnN0ZWFkIG9mIHNw
cmlua2xpbmcgaGFsZiB0aGUNCj4gc3RvcnkgYXMgYSBzY2FyeSZjb25mdXNpbmcgd2FybmluZyBv
dmVyIGFsbCBraW5kcyBvZiB1c2VycyB3aGljaA0KPiBpbnRlcm5hbGx5IHVzZSBkbWEgZmVuY2Ug
YXJyYXlzLg0KPg0KPiBBbmQgdGhlbiBpZiBpdCBnb2VzIGJvb20gSSBndWVzcyB3ZSBjb3VsZCBm
aXggaXQgaW50ZXJuYWxseSBpbg0KPiBkbWFfZmVuY2VfYXJyYXlfaW5pdCBieSBmbGF0dGVuaW5n
IGZlbmNlcyBkb3duIGFnYWluLiBCdXQgb25seSBpZiBhY3R1YWxseQ0KPiBuZWVkZWQuDQoNCk9r
LCBnb2luZyB0byBkbyB0aGF0IGZpcnN0IHRoZW4uDQoNCj4NCj4gV2hhdCBjb25mdXNlZCBtZSBp
cyB3aHkgZG1hX3Jlc3YgaXMgc3BlY2lhbCwgYW5kIGZyb20geW91ciByZXBseSBpdCBzb3VuZHMN
Cj4gbGlrZSBpdCByZWFsbHkgaXNuJ3QuDQoNCldlbGwsIGl0IGlzbid0IHNwZWNpYWwgaW4gYW55
IHdheS4gSXQncyBqdXN0IHNvbWV0aGluZyB2ZXJ5IG9idmlvdXMgDQp3aGljaCBjb3VsZCBnbyB3
cm9uZy4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPiAtRGFuaWVsDQo+DQo+DQo+PiBSZWdh
cmRzLA0KPj4gQ2hyaXN0aWFuLg0KPj4NCj4+PiBJIGd1ZXNzIHNvbWV0aGluZyB0byBmaWd1cmUg
b3V0IG5leHQgeWVhciwgSSBraW5kYSBob3BlZCBJIGNvdWxkIHNxdWVlemUgYQ0KPj4+IHJldmll
dyBpbiBiZWZvcmUgSSBkaXNhcHBlYXIgOi0vDQo+Pj4gLURhbmllbA0KPj4+DQo+Pj4+ICsgKi8N
Cj4+Pj4gK2ludCBkbWFfcmVzdl9nZXRfc2luZ2xldG9uKHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBi
b29sIHdyaXRlLA0KPj4+PiArCQkJICAgc3RydWN0IGRtYV9mZW5jZSAqKmZlbmNlKQ0KPj4+PiAr
ew0KPj4+PiArCXN0cnVjdCBkbWFfZmVuY2VfYXJyYXkgKmFycmF5Ow0KPj4+PiArCXN0cnVjdCBk
bWFfZmVuY2UgKipmZW5jZXM7DQo+Pj4+ICsJdW5zaWduZWQgY291bnQ7DQo+Pj4+ICsJaW50IHI7
DQo+Pj4+ICsNCj4+Pj4gKwlyID0gZG1hX3Jlc3ZfZ2V0X2ZlbmNlcyhvYmosIHdyaXRlLCAmY291
bnQsICZmZW5jZXMpOw0KPj4+PiArICAgICAgICBpZiAocikNCj4+Pj4gKwkJcmV0dXJuIHI7DQo+
Pj4+ICsNCj4+Pj4gKwlpZiAoY291bnQgPT0gMCkgew0KPj4+PiArCQkqZmVuY2UgPSBOVUxMOw0K
Pj4+PiArCQlyZXR1cm4gMDsNCj4+Pj4gKwl9DQo+Pj4+ICsNCj4+Pj4gKwlpZiAoY291bnQgPT0g
MSkgew0KPj4+PiArCQkqZmVuY2UgPSBmZW5jZXNbMF07DQo+Pj4+ICsJCWtmcmVlKGZlbmNlcyk7
DQo+Pj4+ICsJCXJldHVybiAwOw0KPj4+PiArCX0NCj4+Pj4gKw0KPj4+PiArCWFycmF5ID0gZG1h
X2ZlbmNlX2FycmF5X2NyZWF0ZShjb3VudCwgZmVuY2VzLA0KPj4+PiArCQkJCSAgICAgICBkbWFf
ZmVuY2VfY29udGV4dF9hbGxvYygxKSwNCj4+Pj4gKwkJCQkgICAgICAgMSwgZmFsc2UpOw0KPj4+
PiArCWlmICghYXJyYXkpIHsNCj4+Pj4gKwkJd2hpbGUgKGNvdW50LS0pDQo+Pj4+ICsJCQlkbWFf
ZmVuY2VfcHV0KGZlbmNlc1tjb3VudF0pOw0KPj4+PiArCQlrZnJlZShmZW5jZXMpOw0KPj4+PiAr
CQlyZXR1cm4gLUVOT01FTTsNCj4+Pj4gKwl9DQo+Pj4+ICsNCj4+Pj4gKwkqZmVuY2UgPSAmYXJy
YXktPmJhc2U7DQo+Pj4+ICsJcmV0dXJuIDA7DQo+Pj4+ICt9DQo+Pj4+ICtFWFBPUlRfU1lNQk9M
X0dQTChkbWFfcmVzdl9nZXRfc2luZ2xldG9uKTsNCj4+Pj4gKw0KPj4+PiAgICAvKioNCj4+Pj4g
ICAgICogZG1hX3Jlc3Zfd2FpdF90aW1lb3V0IC0gV2FpdCBvbiByZXNlcnZhdGlvbidzIG9iamVj
dHMNCj4+Pj4gICAgICogc2hhcmVkIGFuZC9vciBleGNsdXNpdmUgZmVuY2VzLg0KPj4+PiBkaWZm
IC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oIGIvaW5jbHVkZS9saW51eC9kbWEtcmVz
di5oDQo+Pj4+IGluZGV4IGZhMjAwMjkzOWIxOS4uY2RmYmJkYTZmNjAwIDEwMDY0NA0KPj4+PiAt
LS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgNCj4+Pj4gKysrIGIvaW5jbHVkZS9saW51eC9k
bWEtcmVzdi5oDQo+Pj4+IEBAIC00MzgsNiArNDM4LDggQEAgdm9pZCBkbWFfcmVzdl9yZXBsYWNl
X2ZlbmNlcyhzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgdWludDY0X3QgY29udGV4dCwNCj4+Pj4gICAg
dm9pZCBkbWFfcmVzdl9hZGRfZXhjbF9mZW5jZShzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2UpOw0KPj4+PiAgICBpbnQgZG1hX3Jlc3ZfZ2V0X2ZlbmNlcyhzdHJ1
Y3QgZG1hX3Jlc3YgKm9iaiwgYm9vbCB3cml0ZSwNCj4+Pj4gICAgCQkJdW5zaWduZWQgaW50ICpu
dW1fZmVuY2VzLCBzdHJ1Y3QgZG1hX2ZlbmNlICoqKmZlbmNlcyk7DQo+Pj4+ICtpbnQgZG1hX3Jl
c3ZfZ2V0X3NpbmdsZXRvbihzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgYm9vbCB3cml0ZSwNCj4+Pj4g
KwkJCSAgIHN0cnVjdCBkbWFfZmVuY2UgKipmZW5jZSk7DQo+Pj4+ICAgIGludCBkbWFfcmVzdl9j
b3B5X2ZlbmNlcyhzdHJ1Y3QgZG1hX3Jlc3YgKmRzdCwgc3RydWN0IGRtYV9yZXN2ICpzcmMpOw0K
Pj4+PiAgICBsb25nIGRtYV9yZXN2X3dhaXRfdGltZW91dChzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwg
Ym9vbCB3YWl0X2FsbCwgYm9vbCBpbnRyLA0KPj4+PiAgICAJCQkgICB1bnNpZ25lZCBsb25nIHRp
bWVvdXQpOw0KPj4+PiAtLSANCj4+Pj4gMi4yNS4xDQo+Pj4+DQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
