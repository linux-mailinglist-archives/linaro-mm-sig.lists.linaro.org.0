Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 415D4483052
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Jan 2022 12:14:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7612E3ED79
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Jan 2022 11:14:10 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	by lists.linaro.org (Postfix) with ESMTPS id 6CC023E905
	for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Jan 2022 11:13:43 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id k18so32493274wrg.11
        for <linaro-mm-sig@lists.linaro.org>; Mon, 03 Jan 2022 03:13:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=/xDzVRxEQgayAR/omopzMywYnd6ZJL04kxWXjVBYmcY=;
        b=bxaad7VnMibEW4dJkJ6HWX5/Yc01WVK/oxOBJKAJt88uAdvC43ytPYU6vOnAuFdMoj
         8tw+BLHSaWLSVxmrz1fl9i2diL4C8CLnuq8hrnTyXw5K6C02mKkTTagRbrPPQV1MaT7e
         V2EMmUKe0C2R1z+gtmA82ipKzovJ3zm+/QBZyfyjyRgnkXNZ+49P7WUQJEgYxU6rBThL
         E3CeM6FNyHOxaM71++6t4moVTh9iNuSAggqycIB3sQx/0Cus89AovfqmRxgczEJqwTf7
         ZuLupS1XNbT16HF2RFHJyckqKfRWeWtaRhjx3M081n1BgHBINlYn45iNbuN4zxpAlx8g
         FwNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=/xDzVRxEQgayAR/omopzMywYnd6ZJL04kxWXjVBYmcY=;
        b=KPhpJOfFRZLMVtfn8ZZYDDBnzGYwqDXIZN2vtBYtFCJBLrNZ9BiMuQ8W7P2gO5VFRz
         oP2Q4FdsVhXOM7iTR8eQLYXGRk6Tb9KgS5B06KsyaxQNmtboXj1l+d5kmtJY2bYmYvRM
         ZVy5QGQAl+czJ14fVT9xJ1ZR0WEEIQYfF+3cE666OVxsk9TlpYNLw8myJodzdLowQEPI
         +Kn01aV/oH9cnCERx8n+E35BD7Mi97A76MuZm9v/35qxLcWs4OKAhqGBwuaNSYcYuyUH
         VxokwrSC85HF1/JStlMtPzxKIJFz/yZiLEfQs0ad/L9BpK2NO2bgrkylg6nhXGSr5/RI
         1KuA==
X-Gm-Message-State: AOAM533Jv8bDgHd3arPuO2gIcaLjEQzkruL2I/tzDz7/GfrpPt5lMjhg
	f5k/4PWaBvcolN+Cp0wyIAJen95yNc8=
X-Google-Smtp-Source: ABdhPJyW8Grrm1qyFuYKgMlpX+Xa8vCtLrhGQ0I2VioTMYdmGjNeBX1oMUxsHxqlcaq9M/5gTbsIag==
X-Received: by 2002:a5d:4acb:: with SMTP id y11mr38736631wrs.64.1641208422431;
        Mon, 03 Jan 2022 03:13:42 -0800 (PST)
Received: from ?IPv6:2a02:908:1252:fb60:4bf5:8542:f955:f736? ([2a02:908:1252:fb60:4bf5:8542:f955:f736])
        by smtp.gmail.com with ESMTPSA id z6sm40497699wmp.9.2022.01.03.03.13.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jan 2022 03:13:42 -0800 (PST)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20211207123411.167006-1-christian.koenig@amd.com>
 <20211207123411.167006-5-christian.koenig@amd.com>
 <YcOWyHzY22ZCCvef@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <95929048-b381-78d1-462c-e7b910c784b0@gmail.com>
Date: Mon, 3 Jan 2022 12:13:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YcOWyHzY22ZCCvef@phenom.ffwll.local>
Content-Language: en-US
Message-ID-Hash: KBAAQZRZMNROKLWWY6P53EN6WO4BEWXC
X-Message-ID-Hash: KBAAQZRZMNROKLWWY6P53EN6WO4BEWXC
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 04/24] dma-buf: add dma_resv_get_singleton v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KBAAQZRZMNROKLWWY6P53EN6WO4BEWXC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjIuMTIuMjEgdW0gMjI6MjEgc2NocmllYiBEYW5pZWwgVmV0dGVyOg0KPiBPbiBUdWUsIERl
YyAwNywgMjAyMSBhdCAwMTozMzo1MVBNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0K
Pj4gQWRkIGEgZnVuY3Rpb24gdG8gc2ltcGxpZnkgZ2V0dGluZyBhIHNpbmdsZSBmZW5jZSBmb3Ig
YWxsIHRoZSBmZW5jZXMgaW4NCj4+IHRoZSBkbWFfcmVzdiBvYmplY3QuDQo+Pg0KPj4gdjI6IGZp
eCByZWYgbGVhayBpbiBlcnJvciBoYW5kbGluZw0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4+IC0tLQ0KPj4gICBkcml2
ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyB8IDUyICsrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrDQo+PiAgIGluY2x1ZGUvbGludXgvZG1hLXJlc3YuaCAgIHwgIDIgKysNCj4+ICAg
MiBmaWxlcyBjaGFuZ2VkLCA1NCBpbnNlcnRpb25zKCspDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMNCj4+
IGluZGV4IDQ4MGMzMDU1NTRhMS4uNjk0NzE2YTNkNjZkIDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVy
cy9kbWEtYnVmL2RtYS1yZXN2LmMNCj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5j
DQo+PiBAQCAtMzQsNiArMzQsNyBAQA0KPj4gICAgKi8NCj4+ICAgDQo+PiAgICNpbmNsdWRlIDxs
aW51eC9kbWEtcmVzdi5oPg0KPj4gKyNpbmNsdWRlIDxsaW51eC9kbWEtZmVuY2UtYXJyYXkuaD4N
Cj4+ICAgI2luY2x1ZGUgPGxpbnV4L2V4cG9ydC5oPg0KPj4gICAjaW5jbHVkZSA8bGludXgvbW0u
aD4NCj4+ICAgI2luY2x1ZGUgPGxpbnV4L3NjaGVkL21tLmg+DQo+PiBAQCAtNjU3LDYgKzY1OCw1
NyBAQCBpbnQgZG1hX3Jlc3ZfZ2V0X2ZlbmNlcyhzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgYm9vbCB3
cml0ZSwNCj4+ICAgfQ0KPj4gICBFWFBPUlRfU1lNQk9MX0dQTChkbWFfcmVzdl9nZXRfZmVuY2Vz
KTsNCj4+ICAgDQo+PiArLyoqDQo+PiArICogZG1hX3Jlc3ZfZ2V0X3NpbmdsZXRvbiAtIEdldCBh
IHNpbmdsZSBmZW5jZSBmb3IgYWxsIHRoZSBmZW5jZXMNCj4+ICsgKiBAb2JqOiB0aGUgcmVzZXJ2
YXRpb24gb2JqZWN0DQo+PiArICogQHdyaXRlOiB0cnVlIGlmIHdlIHNob3VsZCByZXR1cm4gYWxs
IGZlbmNlcw0KPj4gKyAqIEBmZW5jZTogdGhlIHJlc3VsdGluZyBmZW5jZQ0KPj4gKyAqDQo+PiAr
ICogR2V0IGEgc2luZ2xlIGZlbmNlIHJlcHJlc2VudGluZyBhbGwgdGhlIGZlbmNlcyBpbnNpZGUg
dGhlIHJlc3Ygb2JqZWN0Lg0KPj4gKyAqIFJldHVybnMgZWl0aGVyIDAgZm9yIHN1Y2Nlc3Mgb3Ig
LUVOT01FTS4NCj4+ICsgKg0KPj4gKyAqIFdhcm5pbmc6IFRoaXMgY2FuJ3QgYmUgdXNlZCBsaWtl
IHRoaXMgd2hlbiBhZGRpbmcgdGhlIGZlbmNlIGJhY2sgdG8gdGhlIHJlc3YNCj4+ICsgKiBvYmpl
Y3Qgc2luY2UgdGhhdCBjYW4gbGVhZCB0byBzdGFjayBjb3JydXB0aW9uIHdoZW4gZmluYWxpemlu
ZyB0aGUNCj4+ICsgKiBkbWFfZmVuY2VfYXJyYXkuDQo+IFVoIEkgZG9uJ3QgZ2V0IHRoaXMgb25l
PyBJIHRob3VnaHQgdGhlIG9ubHkgcHJvYmxlbSB3aXRoIG5lc3RlZCBmZW5jZXMgaXMNCj4gdGhl
IHNpZ25hbGxpbmcgcmVjdXJzaW9uLCB3aGljaCB3ZSB3b3JrIGFyb3VuZCB3aXRoIHRoZSBpcnFf
d29yaz8NCg0KTm9wZSwgdGhlIG1haW4gcHJvYmxlbSBpcyBmaW5hbGl6aW5nIHRoZSBkbWFfZmVu
Y2VfYXJyYXkuDQoNCkUuZy4gaW1hZ2luZSB0aGF0IHlvdSBidWlsZCB1cCBhIGNoYWluIG9mIGRt
YV9mZW5jZV9hcnJheSBvYmplY3RzIGxpa2UgdGhpczoNCmE8LWI8LWM8LWQ8LWU8LWYuLi4uLg0K
DQpXaXRoIGVhY2ggb25lIHJlZmVyZW5jaW5nIHRoZSBwcmV2aW91cyBkbWFfZmVuY2VfYXJyYXkg
YW5kIHRoZW4geW91IGNhbGwgDQpkbWFfZmVuY2VfcHV0KCkgb24gdGhlIGxhc3Qgb25lLiBUaGF0
IGluIHR1cm4gd2lsbCBjYXVzZSBjYWxsaW5nIA0KZG1hX2ZlbmNlX3B1dCgpIG9uIHRoZSBwcmV2
aW91cyBvbmUsIHdoaWNoIGluIHR1cm4gd2lsbCBjYXVzZSANCmRtYV9mZW5jZV9wdXQoKSBvbmUg
dGhlIG9uZSBiZWZvcmUgdGhlIHByZXZpb3VzIG9uZSBldGMuLi4uDQoNCkluIG90aGVyIHdvcmRz
IHlvdSByZWN1cnNlIGJlY2F1c2UgZWFjaCBkbWFfZmVuY2VfYXJyYXkgaW5zdGFuY2UgZHJvcHMg
DQp0aGUgbGFzdCByZWZlcmVuY2Ugb2YgaXQncyBwcmVkZWNlc3Nvci4NCg0KV2hhdCB3ZSBjb3Vs
ZCBkbyBpcyB0byBkZWxlZ2F0ZSBkcm9wcGluZyB0aGUgcmVmZXJlbmNlIHRvIHRoZSBjb250YWlu
aW5nIA0KZmVuY2VzIGluIGEgZG1hX2ZlbmNlX2FycmF5IGFzIHdlbGwsIGJ1dCB0aGF0IHdvdWxk
IHJlcXVpcmUgc29tZSBjaGFuZ2VzIA0KdG8gdGhlIGlycV93b3JrX3J1bl9saXN0KCkgZnVuY3Rp
b24gdG8gYmUgaGFsdmUgd2F5IGVmZmljaWVudC4NCg0KPiBBbHNvIGlmIHRoZXJlJ3MgcmVhbGx5
IGFuIGlzc3VlIHdpdGggZG1hX2ZlbmNlX2FycmF5IGZlbmNlcywgdGhlbiB0aGF0DQo+IHdhcm5p
bmcgc2hvdWxkIGJlIG9uIHRoZSBkbWFfcmVzdiBrZXJuZWxkb2MsIG5vdCBzb21ld2hlcmUgaGlk
ZGVuIGxpa2UNCj4gdGhpcy4gQW5kIGZpbmFsbHkgSSByZWFsbHkgZG9uJ3Qgc2VlIHdoYXQgY2Fu
IGdvIHdyb25nLCBzdXJlIHdlJ2xsIGVuZCB1cA0KPiB3aXRoIHRoZSBzYW1lIGZlbmNlIG9uY2Ug
aW4gdGhlIGRtYV9yZXN2X2xpc3QgYW5kIHRoZW4gb25jZSBtb3JlIGluIHRoZQ0KPiBmZW5jZSBh
cnJheS4gQnV0IHRoZXkncmUgYWxsIHJlZmNvdW50ZWQsIHNvIHJlYWxseSBzaG91bGRuJ3QgbWF0
dGVyLg0KPg0KPiBUaGUgY29kZSBpdHNlbGYgbG9va3MgY29ycmVjdCwgYnV0IG1lIG5vdCB1bmRl
cnN0YW5kaW5nIHdoYXQgZXZlbiBnb2VzDQo+IHdyb25nIGhlcmUgZnJlYWtzIG1lIG91dCBhIGJp
dC4NCg0KWWVhaCwgSUlSQyB3ZSBhbHJlYWR5IGRpc2N1c3NlZCB0aGF0IHdpdGggSmFzb24gaW4g
bGVuZ3RoIGFzIHdlbGwuDQoNCkVzc2VudGlhbGx5IHdoYXQgeW91IGNhbid0IGRvIGlzIHRvIHB1
dCBhIGRtYV9mZW5jZV9hcnJheSBpbnRvIGFub3RoZXIgDQpkbWFfZmVuY2VfYXJyYXkgd2l0aG91
dCBjYXVzaW5nIGlzc3Vlcy4NCg0KU28gSSB0aGluayB3ZSBzaG91bGQgbWF5YmUganVzdCBhZGQg
YSBXQVJOX09OKCkgaW50byANCmRtYV9mZW5jZV9hcnJheV9pbml0KCkgdG8gbWFrZSBzdXJlIHRo
YXQgdGhpcyBuZXZlciBoYXBwZW5zLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+DQo+IEkg
Z3Vlc3Mgc29tZXRoaW5nIHRvIGZpZ3VyZSBvdXQgbmV4dCB5ZWFyLCBJIGtpbmRhIGhvcGVkIEkg
Y291bGQgc3F1ZWV6ZSBhDQo+IHJldmlldyBpbiBiZWZvcmUgSSBkaXNhcHBlYXIgOi0vDQo+IC1E
YW5pZWwNCj4NCj4+ICsgKi8NCj4+ICtpbnQgZG1hX3Jlc3ZfZ2V0X3NpbmdsZXRvbihzdHJ1Y3Qg
ZG1hX3Jlc3YgKm9iaiwgYm9vbCB3cml0ZSwNCj4+ICsJCQkgICBzdHJ1Y3QgZG1hX2ZlbmNlICoq
ZmVuY2UpDQo+PiArew0KPj4gKwlzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5ICphcnJheTsNCj4+ICsJ
c3RydWN0IGRtYV9mZW5jZSAqKmZlbmNlczsNCj4+ICsJdW5zaWduZWQgY291bnQ7DQo+PiArCWlu
dCByOw0KPj4gKw0KPj4gKwlyID0gZG1hX3Jlc3ZfZ2V0X2ZlbmNlcyhvYmosIHdyaXRlLCAmY291
bnQsICZmZW5jZXMpOw0KPj4gKyAgICAgICAgaWYgKHIpDQo+PiArCQlyZXR1cm4gcjsNCj4+ICsN
Cj4+ICsJaWYgKGNvdW50ID09IDApIHsNCj4+ICsJCSpmZW5jZSA9IE5VTEw7DQo+PiArCQlyZXR1
cm4gMDsNCj4+ICsJfQ0KPj4gKw0KPj4gKwlpZiAoY291bnQgPT0gMSkgew0KPj4gKwkJKmZlbmNl
ID0gZmVuY2VzWzBdOw0KPj4gKwkJa2ZyZWUoZmVuY2VzKTsNCj4+ICsJCXJldHVybiAwOw0KPj4g
Kwl9DQo+PiArDQo+PiArCWFycmF5ID0gZG1hX2ZlbmNlX2FycmF5X2NyZWF0ZShjb3VudCwgZmVu
Y2VzLA0KPj4gKwkJCQkgICAgICAgZG1hX2ZlbmNlX2NvbnRleHRfYWxsb2MoMSksDQo+PiArCQkJ
CSAgICAgICAxLCBmYWxzZSk7DQo+PiArCWlmICghYXJyYXkpIHsNCj4+ICsJCXdoaWxlIChjb3Vu
dC0tKQ0KPj4gKwkJCWRtYV9mZW5jZV9wdXQoZmVuY2VzW2NvdW50XSk7DQo+PiArCQlrZnJlZShm
ZW5jZXMpOw0KPj4gKwkJcmV0dXJuIC1FTk9NRU07DQo+PiArCX0NCj4+ICsNCj4+ICsJKmZlbmNl
ID0gJmFycmF5LT5iYXNlOw0KPj4gKwlyZXR1cm4gMDsNCj4+ICt9DQo+PiArRVhQT1JUX1NZTUJP
TF9HUEwoZG1hX3Jlc3ZfZ2V0X3NpbmdsZXRvbik7DQo+PiArDQo+PiAgIC8qKg0KPj4gICAgKiBk
bWFfcmVzdl93YWl0X3RpbWVvdXQgLSBXYWl0IG9uIHJlc2VydmF0aW9uJ3Mgb2JqZWN0cw0KPj4g
ICAgKiBzaGFyZWQgYW5kL29yIGV4Y2x1c2l2ZSBmZW5jZXMuDQo+PiBkaWZmIC0tZ2l0IGEvaW5j
bHVkZS9saW51eC9kbWEtcmVzdi5oIGIvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oDQo+PiBpbmRl
eCBmYTIwMDI5MzliMTkuLmNkZmJiZGE2ZjYwMCAxMDA2NDQNCj4+IC0tLSBhL2luY2x1ZGUvbGlu
dXgvZG1hLXJlc3YuaA0KPj4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oDQo+PiBAQCAt
NDM4LDYgKzQzOCw4IEBAIHZvaWQgZG1hX3Jlc3ZfcmVwbGFjZV9mZW5jZXMoc3RydWN0IGRtYV9y
ZXN2ICpvYmosIHVpbnQ2NF90IGNvbnRleHQsDQo+PiAgIHZvaWQgZG1hX3Jlc3ZfYWRkX2V4Y2xf
ZmVuY2Uoc3RydWN0IGRtYV9yZXN2ICpvYmosIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKTsNCj4+
ICAgaW50IGRtYV9yZXN2X2dldF9mZW5jZXMoc3RydWN0IGRtYV9yZXN2ICpvYmosIGJvb2wgd3Jp
dGUsDQo+PiAgIAkJCXVuc2lnbmVkIGludCAqbnVtX2ZlbmNlcywgc3RydWN0IGRtYV9mZW5jZSAq
KipmZW5jZXMpOw0KPj4gK2ludCBkbWFfcmVzdl9nZXRfc2luZ2xldG9uKHN0cnVjdCBkbWFfcmVz
diAqb2JqLCBib29sIHdyaXRlLA0KPj4gKwkJCSAgIHN0cnVjdCBkbWFfZmVuY2UgKipmZW5jZSk7
DQo+PiAgIGludCBkbWFfcmVzdl9jb3B5X2ZlbmNlcyhzdHJ1Y3QgZG1hX3Jlc3YgKmRzdCwgc3Ry
dWN0IGRtYV9yZXN2ICpzcmMpOw0KPj4gICBsb25nIGRtYV9yZXN2X3dhaXRfdGltZW91dChzdHJ1
Y3QgZG1hX3Jlc3YgKm9iaiwgYm9vbCB3YWl0X2FsbCwgYm9vbCBpbnRyLA0KPj4gICAJCQkgICB1
bnNpZ25lZCBsb25nIHRpbWVvdXQpOw0KPj4gLS0gDQo+PiAyLjI1LjENCj4+DQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
