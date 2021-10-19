Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC28433B36
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Oct 2021 17:51:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 62F9560933
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Oct 2021 15:51:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 212B960833; Tue, 19 Oct 2021 15:51:47 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 58049605FE;
	Tue, 19 Oct 2021 15:51:44 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7FC9D605D7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Oct 2021 15:51:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7BCB1605FE; Tue, 19 Oct 2021 15:51:43 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 by lists.linaro.org (Postfix) with ESMTPS id 70F71605D7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Oct 2021 15:51:41 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id
 o24-20020a05600c511800b0030d9da600aeso3739863wms.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Oct 2021 08:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=6ZFaxOZuF+IhLUiqvXFEEaubfNfset/rnTpcy2dgnJg=;
 b=UKPHdrSwzYVYfSOaQNp28TlNw8ngnMfJFfd+bxj8K6Yk60xlDM3U3CMVv7havbe6d5
 mlhmi+ZablsSB8GX3O3JLakmBpT4p/UFv6EBMQiUNmbHp8w86++d1P1D9eE34J3Xn/UN
 QrvCaOe6Ebj8ZPQYzkFrNuKm3+BHxHE851Thul43ZfsCvMn6vJLjX/1jgzAIhCGEsN9e
 oA6TExBNqjmvTTgQ2W+mkivR9ovsuQ+VhByjzxqAuRfHXRfx5Ud+CtKkUj+9Ug0bjCHI
 VE4zU2MMS/hPW/IwgxZGY94R9f58Jq8wLe5F7m7aFOEQMkeVwKU2si3Tqe+jcKFK6Bdb
 WfLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=6ZFaxOZuF+IhLUiqvXFEEaubfNfset/rnTpcy2dgnJg=;
 b=UpUY504v/r33Lq1Pnyj1y9EcVMlkJ8ql4TvUcHhHy/tcMUzfMf+LXhddKrG2pUNnK5
 sxvKvxBQUWx05M6vWwklJPVHh1f9gffj6grCvx3aoGZaXI7qG+qKek8g44WGAxBACxK6
 EPhT7KFynT+jywStmV5e4+S7nRkBEGHFcZV+Jq8SvLrNcZ6ZksxUsavj7YC62Bz9f2bQ
 SV4wN1F0wrX0NUg7Z8YT1dcfUlTlHTGocIVbsF0PwVCwcIPVpPIdfzEeWtjq5RobIXkJ
 z0xZHf00QIiZMqP2M1fPGxLss8OuXtynAK83tD3I6BPThNeRRdxSD67JykoQvCt0uBul
 JQbg==
X-Gm-Message-State: AOAM5300n5usME3NoTAIH7oXmeUk3HFocw5nfD740+BHRo57lAtidB3b
 erc0GTK+qX2dZocGw25jmBM=
X-Google-Smtp-Source: ABdhPJz4XNeACAlrFxmsoMuUEFHsdoY3ZgMk/DqPLSEBGgjXzSylOvjXgNMCJTEtcGYcpIsBs1s+Tw==
X-Received: by 2002:a7b:c114:: with SMTP id w20mr6922264wmi.143.1634658700577; 
 Tue, 19 Oct 2021 08:51:40 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:4fc4:fae2:bc41:a808?
 ([2a02:908:1252:fb60:4fc4:fae2:bc41:a808])
 by smtp.gmail.com with ESMTPSA id 133sm2560203wmb.24.2021.10.19.08.51.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 Oct 2021 08:51:40 -0700 (PDT)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-25-christian.koenig@amd.com>
 <YWbr0/ey1rCbb0Yi@phenom.ffwll.local>
 <405b9df8-58fd-b8f2-cec2-acde69aa5633@gmail.com>
 <YW7WmU/GLzgJbDQc@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <35416546-b60b-d5cf-7fe9-abaa0dde63e2@gmail.com>
Date: Tue, 19 Oct 2021 17:51:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YW7WmU/GLzgJbDQc@phenom.ffwll.local>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 24/28] drm: use new iterator in
 drm_gem_plane_helper_prepare_fb v2
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
Cc: linaro-mm-sig@lists.linaro.org, tvrtko.ursulin@linux.intel.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTkuMTAuMjEgdW0gMTY6MzAgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIFR1ZSwgT2N0
IDE5LCAyMDIxIGF0IDAzOjAyOjI2UE0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+
IEFtIDEzLjEwLjIxIHVtIDE2OjIzIHNjaHJpZWIgRGFuaWVsIFZldHRlcjoKPj4+IE9uIFR1ZSwg
T2N0IDA1LCAyMDIxIGF0IDAxOjM3OjM4UE0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6
Cj4+Pj4gTWFrZXMgdGhlIGhhbmRsaW5nIGEgYml0IG1vcmUgY29tcGxleCwgYnV0IGF2b2lkcyB0
aGUgdXNlIG9mCj4+Pj4gZG1hX3Jlc3ZfZ2V0X2V4Y2xfdW5sb2NrZWQoKS4KPj4+Pgo+Pj4+IHYy
OiBpbXByb3ZlIGNvZGluZyBhbmQgZG9jdW1lbnRhdGlvbgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1i
eTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+Pj4+IC0tLQo+
Pj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX2F0b21pY19oZWxwZXIuYyB8IDEzICsrKysr
KysrKysrLS0KPj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9h
dG9taWNfaGVscGVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9hdG9taWNfaGVscGVyLmMK
Pj4+PiBpbmRleCBlNTcwMzk4YWJkNzguLjg1MzRmNzhkNGQ2ZCAxMDA2NDQKPj4+PiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vZHJtX2dlbV9hdG9taWNfaGVscGVyLmMKPj4+PiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vZHJtX2dlbV9hdG9taWNfaGVscGVyLmMKPj4+PiBAQCAtMTQzLDYgKzE0Myw3IEBA
Cj4+Pj4gICAgICovCj4+Pj4gICAgaW50IGRybV9nZW1fcGxhbmVfaGVscGVyX3ByZXBhcmVfZmIo
c3RydWN0IGRybV9wbGFuZSAqcGxhbmUsIHN0cnVjdCBkcm1fcGxhbmVfc3RhdGUgKnN0YXRlKQo+
Pj4+ICAgIHsKPj4+PiArCXN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNvcjsKPj4+PiAgICAJc3Ry
dWN0IGRybV9nZW1fb2JqZWN0ICpvYmo7Cj4+Pj4gICAgCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNl
Owo+Pj4+IEBAIC0xNTAsOSArMTUxLDE3IEBAIGludCBkcm1fZ2VtX3BsYW5lX2hlbHBlcl9wcmVw
YXJlX2ZiKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLCBzdHJ1Y3QgZHJtX3BsYW5lX3N0Cj4+Pj4g
ICAgCQlyZXR1cm4gMDsKPj4+PiAgICAJb2JqID0gZHJtX2dlbV9mYl9nZXRfb2JqKHN0YXRlLT5m
YiwgMCk7Cj4+Pj4gLQlmZW5jZSA9IGRtYV9yZXN2X2dldF9leGNsX3VubG9ja2VkKG9iai0+cmVz
dik7Cj4+Pj4gLQlkcm1fYXRvbWljX3NldF9mZW5jZV9mb3JfcGxhbmUoc3RhdGUsIGZlbmNlKTsK
Pj4+PiArCWRtYV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNvciwgb2JqLT5yZXN2LCBmYWxzZSk7Cj4+
Pj4gKwlkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZCgmY3Vyc29yLCBmZW5jZSkgewo+
Pj4+ICsJCS8qIFRPRE86IFdlIG9ubHkgdXNlIHRoZSBmaXJzdCB3cml0ZSBmZW5jZSBoZXJlIGFu
ZCBuZWVkIHRvIGZpeAo+Pj4+ICsJCSAqIHRoZSBkcm1fYXRvbWljX3NldF9mZW5jZV9mb3JfcGxh
bmUoKSBBUEkgdG8gYWNjZXB0IG1vcmUgdGhhbgo+Pj4+ICsJCSAqIG9uZS4gKi8KPj4+IEknbSBj
b25mdXNlZCwgcmlnaHQgbm93IHRoZXJlIGlzIG9ubHkgb25lIHdyaXRlIGZlbmNlLiBTbyBubyBu
ZWVkIHRvCj4+PiBpdGVyYXRlLCBhbmQgYWxzbyBubyBuZWVkIHRvIGFkZCBhIFRPRE8uIElmL3do
ZW4gd2UgYWRkIG1vcmUgd3JpdGUgZmVuY2VzCj4+PiB0aGVuIEkgdGhpbmsgdGhpcyBuZWVkcyB0
byBiZSByZXZpc2l0ZWQsIGFuZCBvZmMgdGhlbiB3ZSBkbyBuZWVkIHRvIHVwZGF0ZQo+Pj4gdGhl
IHNldF9mZW5jZSBoZWxwZXJzIHRvIGNhcnJ5IGFuIGVudGlyZSBhcnJheSBvZiBmZW5jZXMuCj4+
IFdlbGwgY291bGQgYmUgdGhhdCBJIG1pc3VuZGVyc3Rvb2QgeW91LCBidXQgaW4geW91ciBsYXN0
IGV4cGxhbmF0aW9uIGl0Cj4+IHNvdW5kZWQgbGlrZSB0aGUgZHJtX2F0b21pY19zZXRfZmVuY2Vf
Zm9yX3BsYW5lKCkgZnVuY3Rpb24gbmVlZHMgZml4aW5nCj4+IGFueXdheSBiZWNhdXNlIGEgcGxh
bmUgY291bGQgaGF2ZSBtdWx0aXBsZSBCT3MuCj4+Cj4+IFNvIGluIG15IHVuZGVyc3RhbmRpbmcg
d2hhdCB3ZSBuZWVkIGlzIGEKPj4gZHJtX2F0b21pY19hZGRfZGVwZW5kZW5jeV9mb3JfcGxhbmUo
KSBmdW5jdGlvbiB3aGljaCByZWNvcmRzIHRoYXQgYSBjZXJ0YWluCj4+IGZlbmNlIG5lZWRzIHRv
IGJlIHNpZ25hbGVkIGJlZm9yZSBhIGZsaXAuCj4gWWVhaCB0aGF0J3MgYW5vdGhlciBpc3N1ZSwg
YnV0IGluIHByYWN0aWNlIHRoZXJlJ3Mgbm8gbGlidmEgd2hpY2ggZGVjb2Rlcwo+IGludG8gcGxh
bmFyIHl1diB3aXRoIGRpZmZlcmVudCBmZW5jZXMgYmV0d2VlbiB0aGUgcGxhbmVzLiBTbyBub3Qg
YSBidWcgaW4KPiBwcmFjdGljZS4KPgo+IEJ1dCB0aGlzIGlzIGVudGlyZWx5IG9ydGhvZ29uYWwg
dG8geW91IHBpY2tpbmcgdXAgdGhlIHdyb25nIGZlbmNlIGhlcmUgaWYKPiB0aGVyZSdzIG5vdCBl
eGNsdXNpdmUgZmVuY2Ugc2V0Ogo+Cj4gLSBvbGQgY29kZTogRWl0aGVyIHBpY2sgdGhlIGV4Y2x1
c2l2ZSBmZW5jZSwgb3Igbm90IGZlbmNlIGlmIHRoZSBleGNsdXNpdmUKPiAgICBvbmUgaXMgbm90
IHNldC4KPgo+IC0gbmV3IGNvZGU6IFBpY2sgdGhlIGV4Y2x1c2l2ZSBmZW5jZSBvciB0aGUgZmly
c3Qgc2hhcmVkIGZlbmNlCgpIdWkgd2hhdD8KCldlIHVzZSAiZG1hX3Jlc3ZfaXRlcl9iZWdpbigm
Y3Vyc29yLCBvYmotPnJlc3YsICpmYWxzZSopOyIgaGVyZSB3aGljaCAKbWVhbnMgdGhhdCBvbmx5
IHRoZSBleGNsdXNpdmUgZmVuY2UgaXMgcmV0dXJuZWQgYW5kIG5vIHNoYXJlZCBmZW5jZXMgCndo
YXRzb2V2ZXIuCgpNeSBuZXh0IHN0ZXAgaXMgdG8gcmVwbGFjZSB0aGUgYm9vbGVhbiB3aXRoIGEg
YnVuY2ggb2YgdXNlIGNhc2UgCmRlc2NyaWJpbmcgZW51bXMuIEkgaG9wZSB0aGF0IHdpbGwgbWFr
ZSBpdCBtdWNoIGNsZWFyZXIgd2hhdCdzIGdvaW5nIG9uIApoZXJlLgoKQ2hyaXN0aWFuLgoKPiBO
ZXcgYmVoYXZpb3VyIGlzIGJ1c3RlZCwgYmVjYXVzZSBzY2FubmluZyBvdXQgYW5kIHJlYWRpbmcg
ZnJvbSBhIGJ1ZmZlciBhdAo+IHRoZSBzYW1lIHRpbWUgKGZvciB0aGUgbmV4dCBmcmFtZSwgZS5n
LiB0byBjb3B5IG92ZXIgZGFtYWdlZCBhcmVhcyBvciBzb21lCj4gb3RoZXIgdHJpY2tzKSBpcyB2
ZXJ5IG11Y2ggYSBzdXBwb3J0ZWQgdGhpbmcuIEF0b21pYyBfb25seV8gd2FudHMgdG8gbG9vawo+
IGF0IHRoZSBleGNsdXNpdmUgZmVuY2Ugc2xvdCwgd2hpY2ggbWVhbiAidGhlcmUgaXMgYW4gaW1w
bGljaXRseSBzeW5jZWQKPiB3cml0ZSB0byB0aGlzIGJ1ZmZlcnMiLiBJbXBsaWNpdGx5IHN5bmNl
ZCByZWFkcyBfbXVzdF8gYmUgaWdub3JlZC4KCgo+Cj4gTm93IGFtZGdwdSBkb2Vzbid0IGhhdmUg
dGhpcyBkaXN0aW5jdGlvbiBpbiBpdHMgdWFwaSwgYnV0IG1hbnkgZHJpdmVycyBkby4KPiAtRGFu
aWVsCj4KPj4gU3VwcG9ydCBmb3IgbW9yZSB0aGFuIG9uZSB3cml0ZSBmZW5jZSB0aGVuIGNvbWVz
IHRvdGFsbHkgbmF0dXJhbGx5Lgo+Pgo+PiBDaHJpc3RpYW4uCj4+Cj4+PiAtRGFuaWVsCj4+Pgo+
Pj4+ICsJCWRtYV9mZW5jZV9nZXQoZmVuY2UpOwo+Pj4+ICsJCWJyZWFrOwo+Pj4+ICsJfQo+Pj4+
ICsJZG1hX3Jlc3ZfaXRlcl9lbmQoJmN1cnNvcik7Cj4+Pj4gKwlkcm1fYXRvbWljX3NldF9mZW5j
ZV9mb3JfcGxhbmUoc3RhdGUsIGZlbmNlKTsKPj4+PiAgICAJcmV0dXJuIDA7Cj4+Pj4gICAgfQo+
Pj4+ICAgIEVYUE9SVF9TWU1CT0xfR1BMKGRybV9nZW1fcGxhbmVfaGVscGVyX3ByZXBhcmVfZmIp
Owo+Pj4+IC0tIAo+Pj4+IDIuMjUuMQo+Pj4+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlz
dGluZm8vbGluYXJvLW1tLXNpZwo=
