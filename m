Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C5AE6411004
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Sep 2021 09:23:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9C1D963523
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Sep 2021 07:23:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 09740634DC; Mon, 20 Sep 2021 07:23:21 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A70EC61031;
	Mon, 20 Sep 2021 07:23:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 84EC560C2C
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 07:23:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 795A861031; Mon, 20 Sep 2021 07:23:17 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by lists.linaro.org (Postfix) with ESMTPS id 6FFAC60C2C
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 07:23:15 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id
 b21-20020a1c8015000000b003049690d882so14757435wmd.5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 00:23:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=0M+kSw4lGcuEpkngLdEE2aUmmhCoCvNuYWVNUrrpaN8=;
 b=Y+tYcuGrVLiqvrZMolyepjQd20o6WKAck4ITrk2efyspM1rbEMBgH5InWQwkOhxrV9
 FGpUFJ492K0i4fsYk500qKzG/ru7qw6nBUe4vcOVY2j6lCR3nSdmu/VkoJu2hBvpTCz6
 JhFRv/k4lUqHUWUUzMVC9gGAoO2dJkXj9xNhMUXD9qcTxNg8zcZnwc4xreH4SNo/ziff
 /n0HRLUnY32+5LB3K1laH+iPzuLa44u0cB3Ig0XTMVbPdX43ccWOMges6Vg09G0sGNJG
 ErFzb/zIYd39lVTFRGcPRYDeZnRrPsdejCrgfbF2HMOM71+HH0T5nPzEkf4gRHCigszu
 sj6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=0M+kSw4lGcuEpkngLdEE2aUmmhCoCvNuYWVNUrrpaN8=;
 b=4k72QSwDC9NPhz4fNxgdcIUFyZyMXgj5hAAxjdtvjSdncLZNnNJdf3uVm1Njec9kHw
 QsSSmnAH3NShDsKJrdl55P2TrEYUV4lYsh1f2rCBbrEkxhcnOJfgzjzZvmaeZWJYBuPn
 oU7o9ib46rZR6Mtj2sC80TnTVmLK7kOheAuR0lLKc3odmT6IsKZyns1EEYNR7LGtpenQ
 FneZ7PueBB/fKNsr7vU5p+X9QVvh7VmqcmySeO0lF6+bADv7lFQ5n2vLuOPfbvdLDvaX
 v3TlLAP/zTl1PDaPXxRYVB6xh6QdG8WN9RGIotLDOk5SCa++po1vMzyIPhfaIfNQBNfW
 IUhw==
X-Gm-Message-State: AOAM533VwDprLY0o8PFu2a7bRVzKPVS2hMtxY0YeVR/9v/vr1ztYeX8c
 v5fEen+zb5O/4rfnllmCsaGkxaavxCk=
X-Google-Smtp-Source: ABdhPJwZtfUC9F+9WQXGaFkX9XQ2onZ9sbJUuGe3PpumfGeONn0tOhWXjuYUb0VVgAXXufQyWYhQmw==
X-Received: by 2002:a05:600c:2109:: with SMTP id
 u9mr7813185wml.6.1632122594458; 
 Mon, 20 Sep 2021 00:23:14 -0700 (PDT)
Received: from [192.168.178.21] (p5b0ea1b5.dip0.t-ipconnect.de.
 [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id 135sm10197632wma.32.2021.09.20.00.23.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Sep 2021 00:23:14 -0700 (PDT)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20210917123513.1106-1-christian.koenig@amd.com>
 <20210917123513.1106-4-christian.koenig@amd.com>
 <YUSnqqsMjXOPNB6W@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <49eb0395-5446-62b8-da06-9c4c23eda843@gmail.com>
Date: Mon, 20 Sep 2021 09:23:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YUSnqqsMjXOPNB6W@phenom.ffwll.local>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 03/26] dma-buf: use new iterator in
 dma_resv_copy_fences
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTcuMDkuMjEgdW0gMTY6MzUgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIEZyaSwgU2Vw
IDE3LCAyMDIxIGF0IDAyOjM0OjUwUE0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+
IFRoaXMgbWFrZXMgdGhlIGZ1bmN0aW9uIG11Y2ggc2ltcGxlciBzaW5jZSB0aGUgY29tcGxleAo+
PiByZXRyeSBsb2dpYyBpcyBub3cgaGFuZGxlZCBlbHNlIHdoZXJlLgo+Pgo+PiBTaWduZWQtb2Zm
LWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4+IC0tLQo+
PiAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIHwgODYgKysrKysrKysrKysrKysrKy0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMzUgaW5zZXJ0aW9ucygrKSwg
NTEgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJl
c3YuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCj4+IGluZGV4IGEzYzc5YTk5ZmI0NC4u
NDA2MTUwZGVhNWU0IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwo+
PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwo+PiBAQCAtNDI2LDc0ICs0MjYsNTgg
QEAgRVhQT1JUX1NZTUJPTF9HUEwoZG1hX3Jlc3ZfaXRlcl93YWxrKTsKPj4gICAgKi8KPj4gICBp
bnQgZG1hX3Jlc3ZfY29weV9mZW5jZXMoc3RydWN0IGRtYV9yZXN2ICpkc3QsIHN0cnVjdCBkbWFf
cmVzdiAqc3JjKQo+PiAgIHsKPj4gLQlzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqc3JjX2xpc3QsICpk
c3RfbGlzdDsKPj4gLQlzdHJ1Y3QgZG1hX2ZlbmNlICpvbGQsICpuZXc7Cj4+IC0JdW5zaWduZWQg
aW50IGk7Cj4+ICsJc3RydWN0IGRtYV9yZXN2X2l0ZXIgY3Vyc29yOwo+PiArCXN0cnVjdCBkbWFf
cmVzdl9saXN0ICpsaXN0Owo+PiArCXN0cnVjdCBkbWFfZmVuY2UgKmYsICpleGNsOwo+PiAgIAo+
PiAgIAlkbWFfcmVzdl9hc3NlcnRfaGVsZChkc3QpOwo+PiAgIAo+PiAtCXJjdV9yZWFkX2xvY2so
KTsKPj4gLQlzcmNfbGlzdCA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KHNyYyk7Cj4+IC0KPj4gLXJl
dHJ5Ogo+PiAtCWlmIChzcmNfbGlzdCkgewo+PiAtCQl1bnNpZ25lZCBpbnQgc2hhcmVkX2NvdW50
ID0gc3JjX2xpc3QtPnNoYXJlZF9jb3VudDsKPj4gLQo+PiAtCQlyY3VfcmVhZF91bmxvY2soKTsK
Pj4gKwlsaXN0ID0gTlVMTDsKPj4gKwlleGNsID0gTlVMTDsKPj4gICAKPj4gLQkJZHN0X2xpc3Qg
PSBkbWFfcmVzdl9saXN0X2FsbG9jKHNoYXJlZF9jb3VudCk7Cj4+IC0JCWlmICghZHN0X2xpc3Qp
Cj4+IC0JCQlyZXR1cm4gLUVOT01FTTsKPj4gKwlyY3VfcmVhZF9sb2NrKCk7Cj4+ICsJZG1hX3Jl
c3ZfaXRlcl9iZWdpbigmY3Vyc29yLCBzcmMsIHRydWUpOwo+PiArCWRtYV9yZXN2X2Zvcl9lYWNo
X2ZlbmNlX3VubG9ja2VkKCZjdXJzb3IsIGYpIHsKPj4gICAKPj4gLQkJcmN1X3JlYWRfbG9jaygp
Owo+PiAtCQlzcmNfbGlzdCA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KHNyYyk7Cj4+IC0JCWlmICgh
c3JjX2xpc3QgfHwgc3JjX2xpc3QtPnNoYXJlZF9jb3VudCA+IHNoYXJlZF9jb3VudCkgewo+PiAt
CQkJa2ZyZWUoZHN0X2xpc3QpOwo+PiAtCQkJZ290byByZXRyeTsKPj4gLQkJfQo+PiArCQlpZiAo
Y3Vyc29yLmlzX2ZpcnN0KSB7Cj4gTWF5YmUgaGF2ZSBhIHdyYXBwZXIgZm9yIHRoaXMsIGxpa2Ug
ZG1hX3Jlc3ZfaXRlcl9pc19yZXNldCBvciBpc19maXJzdCBvcgo+IGlzX3Jlc3RhcnQgKG15IHBy
ZWZlcmVuY2UpIHdpdGggc29tZSBuaWNlIGRvY3MgdGhhdCB0aGlzIHJldHVybnMgdHJ1ZQo+IGV2
ZXJ5dGltZSB3ZSBoYWQgdG8gcmVzdGFydCB0aGUgc2VxdWVuY2U/CgpFeGFjdGx5IHRoYXQncyB3
aGF0IEkgd2FudGVkIHRvIGF2b2lkIHNpbmNlIHRoZSBpc19maXJzdCAob3Igd2hhdGV2ZXIpIApm
dW5jdGlvbiBzaG91bGQgb25seSBiZSB1c2VkIGluc2lkZSBvZiB0aGUgZG1hX3Jlc3YuYyBjb2Rl
LgoKT24gdGhlIG90aGVyIGhhbmQgSSBjYW4ganVzdCBtYWtlIHRoYXQgc3RhdGljIGhlcmUgYW5k
IGRvY3VtZW50IHRoYXQgaXQgCnNob3VsZCBuZXZlciBiZSBleHBvcnRlZC4KCkNocmlzdGlhbi4K
Cj4KPiBPdGhlcndpc2UgSSBmdWxseSBhZ3JlZSwgdGhpcyBpcyBzbyBtdWNoIGJldHRlciB3aXRo
IGFsbCB0aGUgaGFpcnkKPiByZXN0YXJ0aW5nIGFuZCBnZXRfcmN1IGFuZCB0ZXN0X2JpdCBzaG92
ZWxsZWQgYXdheSBzb21ld2hlcmUuCj4KPiBFaXRoZXIgd2F5IChidXQgSSBtdWNoIHByZWZlciBh
IHdyYXBwZXIgZm9yIGlzX2ZpcnN0KToKPgo+IFJldmlld2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxk
YW5pZWwudmV0dGVyQGZmd2xsLmNoPgo+Cj4+ICsJCQlkbWFfcmVzdl9saXN0X2ZyZWUobGlzdCk7
Cj4+ICsJCQlkbWFfZmVuY2VfcHV0KGV4Y2wpOwo+PiAgIAo+PiAtCQlkc3RfbGlzdC0+c2hhcmVk
X2NvdW50ID0gMDsKPj4gLQkJZm9yIChpID0gMDsgaSA8IHNyY19saXN0LT5zaGFyZWRfY291bnQ7
ICsraSkgewo+PiAtCQkJc3RydWN0IGRtYV9mZW5jZSBfX3JjdSAqKmRzdDsKPj4gLQkJCXN0cnVj
dCBkbWFfZmVuY2UgKmZlbmNlOwo+PiArCQkJaWYgKGN1cnNvci5mZW5jZXMpIHsKPj4gKwkJCQl1
bnNpZ25lZCBpbnQgY250ID0gY3Vyc29yLmZlbmNlcy0+c2hhcmVkX2NvdW50Owo+PiAgIAo+PiAt
CQkJZmVuY2UgPSByY3VfZGVyZWZlcmVuY2Uoc3JjX2xpc3QtPnNoYXJlZFtpXSk7Cj4+IC0JCQlp
ZiAodGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklULAo+PiAtCQkJCSAgICAgJmZl
bmNlLT5mbGFncykpCj4+IC0JCQkJY29udGludWU7Cj4+ICsJCQkJcmN1X3JlYWRfdW5sb2NrKCk7
Cj4+ICsJCQkJbGlzdCA9IGRtYV9yZXN2X2xpc3RfYWxsb2MoY250KTsKPj4gKwkJCQlpZiAoIWxp
c3QpIHsKPj4gKwkJCQkJZG1hX3Jlc3ZfaXRlcl9lbmQoJmN1cnNvcik7Cj4+ICsJCQkJCXJldHVy
biAtRU5PTUVNOwo+PiArCQkJCX0KPj4gICAKPj4gLQkJCWlmICghZG1hX2ZlbmNlX2dldF9yY3Uo
ZmVuY2UpKSB7Cj4+IC0JCQkJZG1hX3Jlc3ZfbGlzdF9mcmVlKGRzdF9saXN0KTsKPj4gLQkJCQlz
cmNfbGlzdCA9IGRtYV9yZXN2X3NoYXJlZF9saXN0KHNyYyk7Cj4+IC0JCQkJZ290byByZXRyeTsK
Pj4gLQkJCX0KPj4gKwkJCQlsaXN0LT5zaGFyZWRfY291bnQgPSAwOwo+PiArCQkJCXJjdV9yZWFk
X2xvY2soKTsKPj4gICAKPj4gLQkJCWlmIChkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2UpKSB7
Cj4+IC0JCQkJZG1hX2ZlbmNlX3B1dChmZW5jZSk7Cj4+IC0JCQkJY29udGludWU7Cj4+ICsJCQl9
IGVsc2Ugewo+PiArCQkJCWxpc3QgPSBOVUxMOwo+PiAgIAkJCX0KPj4gLQo+PiAtCQkJZHN0ID0g
JmRzdF9saXN0LT5zaGFyZWRbZHN0X2xpc3QtPnNoYXJlZF9jb3VudCsrXTsKPj4gLQkJCXJjdV9h
c3NpZ25fcG9pbnRlcigqZHN0LCBmZW5jZSk7Cj4+ICsJCQlleGNsID0gTlVMTDsKPj4gICAJCX0K
Pj4gLQl9IGVsc2Ugewo+PiAtCQlkc3RfbGlzdCA9IE5VTEw7Cj4+IC0JfQo+PiAgIAo+PiAtCW5l
dyA9IGRtYV9mZW5jZV9nZXRfcmN1X3NhZmUoJnNyYy0+ZmVuY2VfZXhjbCk7Cj4+ICsJCWRtYV9m
ZW5jZV9nZXQoZik7Cj4+ICsJCWlmIChkbWFfcmVzdl9pdGVyX2lzX2V4Y2x1c2l2ZSgmY3Vyc29y
KSkKPj4gKwkJCWV4Y2wgPSBmOwo+PiArCQllbHNlCj4+ICsJCQlSQ1VfSU5JVF9QT0lOVEVSKGxp
c3QtPnNoYXJlZFtsaXN0LT5zaGFyZWRfY291bnQrK10sIGYpOwo+PiArCX0KPj4gKwlkbWFfcmVz
dl9pdGVyX2VuZCgmY3Vyc29yKTsKPj4gICAJcmN1X3JlYWRfdW5sb2NrKCk7Cj4+ICAgCj4+IC0J
c3JjX2xpc3QgPSBkbWFfcmVzdl9zaGFyZWRfbGlzdChkc3QpOwo+PiAtCW9sZCA9IGRtYV9yZXN2
X2V4Y2xfZmVuY2UoZHN0KTsKPj4gLQo+PiAgIAl3cml0ZV9zZXFjb3VudF9iZWdpbigmZHN0LT5z
ZXEpOwo+PiAtCS8qIHdyaXRlX3NlcWNvdW50X2JlZ2luIHByb3ZpZGVzIHRoZSBuZWNlc3Nhcnkg
bWVtb3J5IGJhcnJpZXIgKi8KPj4gLQlSQ1VfSU5JVF9QT0lOVEVSKGRzdC0+ZmVuY2VfZXhjbCwg
bmV3KTsKPj4gLQlSQ1VfSU5JVF9QT0lOVEVSKGRzdC0+ZmVuY2UsIGRzdF9saXN0KTsKPj4gKwll
eGNsID0gcmN1X3JlcGxhY2VfcG9pbnRlcihkc3QtPmZlbmNlX2V4Y2wsIGV4Y2wsIGRtYV9yZXN2
X2hlbGQoZHN0KSk7Cj4+ICsJbGlzdCA9IHJjdV9yZXBsYWNlX3BvaW50ZXIoZHN0LT5mZW5jZSwg
bGlzdCwgZG1hX3Jlc3ZfaGVsZChkc3QpKTsKPj4gICAJd3JpdGVfc2VxY291bnRfZW5kKCZkc3Qt
PnNlcSk7Cj4+ICAgCj4+IC0JZG1hX3Jlc3ZfbGlzdF9mcmVlKHNyY19saXN0KTsKPj4gLQlkbWFf
ZmVuY2VfcHV0KG9sZCk7Cj4+ICsJZG1hX3Jlc3ZfbGlzdF9mcmVlKGxpc3QpOwo+PiArCWRtYV9m
ZW5jZV9wdXQoZXhjbCk7Cj4+ICAgCj4+ICAgCXJldHVybiAwOwo+PiAgIH0KPj4gLS0gCj4+IDIu
MjUuMQo+PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
Cmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
