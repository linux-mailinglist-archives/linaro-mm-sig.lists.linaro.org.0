Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A802411025
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Sep 2021 09:35:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 47D1A63392
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Sep 2021 07:35:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D4F9F63221; Mon, 20 Sep 2021 07:35:30 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 853CA61081;
	Mon, 20 Sep 2021 07:35:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B61DF60C2C
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 07:35:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AB8A061031; Mon, 20 Sep 2021 07:35:25 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by lists.linaro.org (Postfix) with ESMTPS id A154460C2C
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 07:35:23 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id t8so27119806wrq.4
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Sep 2021 00:35:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=4P1io5nUKE9cYx4NjlZE02ncCC38OG0LveUarkFjV+4=;
 b=g1ECzyspCR1I5FXZUYHtyQjmn0g8obadz/rLTIBlDOnrWeK1lYdb3dq8fXweE8pgIm
 zeVqQxIrvocx0hYvxeUpUllzbjdMRJquTTNHCMqST+4ZUYhooFzm/It2BrdYC3HMLDnO
 CKvNyRc7uAY1bxU2Vac1ZSZySnmvoSB+UE4idjXKpjIEPn+fj0MfP4nPTwQWB/hJ+iKn
 2IAkDl8Wcz3jsqN1ck9SIn6J9NExLt/oGu9FfacfJqQwBghvkiGSAmbQ8+Sinn16cHj6
 JYMDp3ZC+4aP32H2XE2MPv2eqZGjXRM9J0pYcAF21RBHbCWTxF3rDxSFXMZZHnFTBbqG
 B0pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=4P1io5nUKE9cYx4NjlZE02ncCC38OG0LveUarkFjV+4=;
 b=MAmZgmFVzd/6MhaPR1xykaXLzlaeQujymjBP3k9xk6897DKOPgWKHmLV/6i9hNOfA2
 1QEACsbBZrwz/qoA017w+1vCAAIp5r8w0N9svmQKzSSezy+Ol+yoPyz0+kh49YM5fnfM
 RDYQy+LgUOzwJhweREhMg1dLu2qskIvCPLBBA5hLywvbyG2QfgAFn/4FaXLqrBxRtK8G
 NzK+hxWs+DSchXqozoT/5Vr41w8Pebt2IVS1mD7JIzn06aDTym9rh41xC1ICdTdEsq0e
 URuyTadnB53JDD05viBm0VgbBx/nF3b+Sd9Slc8dk9CUDyimeg3PoqTNpcHWpprVJjL8
 sPjg==
X-Gm-Message-State: AOAM533WJYN8xo1k3mz28SBTeadNZYPMQotU9lKMduQFj6VKLWVzMHpc
 bq1YqhvE6SvXO3X3PKo7NIo=
X-Google-Smtp-Source: ABdhPJypvNSGDrPpIVDHLrykJEmmH/dwdyUKHUY1DGVerjxgk4VaBJNzEgJNAkRV7PORtSTG0FxAig==
X-Received: by 2002:adf:ed92:: with SMTP id c18mr26101944wro.86.1632123322752; 
 Mon, 20 Sep 2021 00:35:22 -0700 (PDT)
Received: from [192.168.178.21] (p5b0ea1b5.dip0.t-ipconnect.de.
 [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id q11sm14805870wrn.65.2021.09.20.00.35.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Sep 2021 00:35:22 -0700 (PDT)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20210917123513.1106-1-christian.koenig@amd.com>
 <20210917123513.1106-22-christian.koenig@amd.com>
 <YUSsdbTxvJwaRv9x@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <2ded7e42-e1f3-72fb-5de6-810c000255be@gmail.com>
Date: Mon, 20 Sep 2021 09:35:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YUSsdbTxvJwaRv9x@phenom.ffwll.local>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 21/26] drm: use new iterator in
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
Cc: linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTcuMDkuMjEgdW0gMTY6NTUgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIEZyaSwgU2Vw
IDE3LCAyMDIxIGF0IDAyOjM1OjA4UE0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+
IE1ha2VzIHRoZSBoYW5kbGluZyBhIGJpdCBtb3JlIGNvbXBsZXgsIGJ1dCBhdm9pZHMgdGhlIHVz
ZSBvZgo+PiBkbWFfcmVzdl9nZXRfZXhjbF91bmxvY2tlZCgpLgo+Pgo+PiB2MjogYWRkIG1pc3Np
bmcgcmN1X3JlYWRfbG9jaygpL3VubG9jaygpCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVycy9n
cHUvZHJtL2RybV9nZW1fYXRvbWljX2hlbHBlci5jIHwgMTQgKysrKysrKysrKysrLS0KPj4gICAx
IGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4KPj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX2F0b21pY19oZWxwZXIuYyBiL2RyaXZl
cnMvZ3B1L2RybS9kcm1fZ2VtX2F0b21pY19oZWxwZXIuYwo+PiBpbmRleCBlNTcwMzk4YWJkNzgu
LmQ4ZjljNjQzMjU0NCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fYXRv
bWljX2hlbHBlci5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX2F0b21pY19oZWxw
ZXIuYwo+PiBAQCAtMTQzLDYgKzE0Myw3IEBACj4+ICAgICovCj4+ICAgaW50IGRybV9nZW1fcGxh
bmVfaGVscGVyX3ByZXBhcmVfZmIoc3RydWN0IGRybV9wbGFuZSAqcGxhbmUsIHN0cnVjdCBkcm1f
cGxhbmVfc3RhdGUgKnN0YXRlKQo+PiAgIHsKPj4gKwlzdHJ1Y3QgZG1hX3Jlc3ZfaXRlciBjdXJz
b3I7Cj4+ICAgCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqOwo+PiAgIAlzdHJ1Y3QgZG1hX2Zl
bmNlICpmZW5jZTsKPj4gICAKPj4gQEAgLTE1MCw5ICsxNTEsMTggQEAgaW50IGRybV9nZW1fcGxh
bmVfaGVscGVyX3ByZXBhcmVfZmIoc3RydWN0IGRybV9wbGFuZSAqcGxhbmUsIHN0cnVjdCBkcm1f
cGxhbmVfc3QKPj4gICAJCXJldHVybiAwOwo+PiAgIAo+PiAgIAlvYmogPSBkcm1fZ2VtX2ZiX2dl
dF9vYmooc3RhdGUtPmZiLCAwKTsKPj4gLQlmZW5jZSA9IGRtYV9yZXN2X2dldF9leGNsX3VubG9j
a2VkKG9iai0+cmVzdik7Cj4+IC0JZHJtX2F0b21pY19zZXRfZmVuY2VfZm9yX3BsYW5lKHN0YXRl
LCBmZW5jZSk7Cj4+ICsJcmN1X3JlYWRfbG9jaygpOwo+PiArCWRtYV9yZXN2X2l0ZXJfYmVnaW4o
JmN1cnNvciwgb2JqLT5yZXN2LCBmYWxzZSk7Cj4+ICsJZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2Vf
dW5sb2NrZWQoJmN1cnNvciwgZmVuY2UpIHsKPj4gKwkJcmN1X3JlYWRfdW5sb2NrKCk7Cj4+ICsJ
CS8qIFRPRE86IFdlIG9ubHkgdXNlIHRoZSBmaXJzdCB3cml0ZSBmZW5jZSBoZXJlICovCj4+ICsJ
CWRybV9hdG9taWNfc2V0X2ZlbmNlX2Zvcl9wbGFuZShzdGF0ZSwgZmVuY2UpOwo+IFllYWggSSB3
b25kZXIgd2hldGhlciB3ZSBzaG91bGQvbmVlZCB0byBjb2xsYXRlIHRoZW0gYWxsIHRvZ2V0aGVy
LiBCdXQgSQo+IGd1ZXNzcyB3aG9tZXZlciBoaXRzIHRoYXQgZmlyc3Qgd2l0aCB0aGVpciBmdW5u
eSBtdWx0aS1wbGFuZSB5dXYgb3IKPiB3aGF0ZXZlciBnZXRzIHRvIGRvIHRoYXQuIE9yIEknbSBu
b3QgY2xlYXIgb24gd2hhdCBleGFjdGx5IHlvdXIgVE9ETyBoZXJlCj4gbWVhbnM/CgpZZWFoLCBl
eGFjdGx5IHRoYXQuIEJhc2ljYWxseSB3ZSBoYXZlIHVzZSBjYXNlcyB3aGVyZSB3aGVyZSB3ZSBo
YXZlIG1vcmUgCnRoYW4gb25lIGZlbmNlIHRvIHdhaXQgZm9yLgoKVGhlIFRPRE8gaXMgaGVyZSBi
ZWNhdXNlIGFkZGluZyB0aGF0IHRvIHRoZSBhdG9taWMgaGVscGVyIGlzIGp1c3Qgbm90IG15IApj
b25zdHJ1Y3Rpb24gc2l0ZSBhdCB0aGUgbW9tZW50LgoKUmVnYXJkcywKQ2hyaXN0aWFuLgoKPgo+
PiArCQlyZXR1cm4gMDsKPj4gKwl9Cj4+ICsJZG1hX3Jlc3ZfaXRlcl9lbmQoJmN1cnNvcik7Cj4+
ICsJcmN1X3JlYWRfdW5sb2NrKCk7Cj4gSW1vIHdlIHNob3VsZCBkbyBmdWxsIGRtYV9yZXN2X2xv
Y2sgaGVyZS4gYXRvbWljIGhlbHBlcnMgYXJlIGRlc2lnbmVkIHRvCj4gYWxsb3cgdGhpcywgYW5k
IGl0IHNpbXBsaWZpZXMgdGhpbmdzLiBBbHNvIGl0IHJlYWxseSBkb2Vzbid0IG1hdHRlciBmb3IK
PiBhdG9taWMsIHdlIHNob3VsZCBiZSBhYmxlIHRvIGRvIDYwZnBzKmEgZmV3IHBsYW5lcyBlYXNp
bHkgOi0pCj4gLURhbmllbAo+Cj4+ICAgCj4+ICsJZHJtX2F0b21pY19zZXRfZmVuY2VfZm9yX3Bs
YW5lKHN0YXRlLCBOVUxMKTsKPj4gICAJcmV0dXJuIDA7Cj4+ICAgfQo+PiAgIEVYUE9SVF9TWU1C
T0xfR1BMKGRybV9nZW1fcGxhbmVfaGVscGVyX3ByZXBhcmVfZmIpOwo+PiAtLSAKPj4gMi4yNS4x
Cj4+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0
cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
