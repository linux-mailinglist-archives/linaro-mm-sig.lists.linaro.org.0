Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D63D162705
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Feb 2020 14:20:48 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C7C80619B4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Feb 2020 13:20:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BB0E1619B6; Tue, 18 Feb 2020 13:20:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 73361619AF;
	Tue, 18 Feb 2020 13:20:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E970F619A0
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Feb 2020 13:20:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D7EB8619AF; Tue, 18 Feb 2020 13:20:10 +0000 (UTC)
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by lists.linaro.org (Postfix) with ESMTPS id 91BD3619A0
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Feb 2020 13:20:06 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id t23so2755363wmi.1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Feb 2020 05:20:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=U3h6aJz6L+CS9MjTdIAS5p90j+53sA+NzuXTs9Hdx+A=;
 b=B4eNB8DyNmQAjKii70+ONRmVgAfjoJM4eaJqZFwYpJA0YABZ4IPkl6tifU0jFFJed2
 V047OkzT3QlL2Uub8o64Bpxv9DzkEZpj047sEiYqG9y1n8DzJmgOOV8SXMB96hN693Ak
 yAEwXSbViVkSDRJVt3LTg+8OHKRFZQlaVwvmlVPA6pSKe8W8jNIaglcTGhdoZvzSWroo
 xQqkMrTjsffbomorFLEa8PNmbxGY1X4OI673vPS7yfe8xDLknEFWxb/d0FgJrgYrsLzl
 xvTs3oxBwVNCER6qaoUrTkpLiwyedPHV5gP9vteliOJLTLC7AB3r3TbeeuWbQTZns+wR
 2zdQ==
X-Gm-Message-State: APjAAAW3JlsS3HBswgk4ZPjxoj5epLv4jAEpxVMv3RwOuxtGreCVMEX7
 iunBhFhx/YJxTI5ewB0GnaE=
X-Google-Smtp-Source: APXvYqxs90yRwp11u2cPh92Slih7u9UJMgkAd+EynHMZhb5WK4JACCingOqk947Kuw3FR58afqOxtg==
X-Received: by 2002:a1c:e28a:: with SMTP id z132mr3091894wmg.157.1582032005691; 
 Tue, 18 Feb 2020 05:20:05 -0800 (PST)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id p11sm5988848wrn.40.2020.02.18.05.20.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Feb 2020 05:20:05 -0800 (PST)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20191029104049.9011-1-christian.koenig@amd.com>
 <20191029104049.9011-2-christian.koenig@amd.com>
 <20191105102045.GC10326@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <cb607ed5-eaeb-5332-d1de-77cae8512c1d@gmail.com>
Date: Tue, 18 Feb 2020 14:20:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191105102045.GC10326@phenom.ffwll.local>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 1/5] dma-buf: add dynamic DMA-buf
	handling v14
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
Reply-To: christian.koenig@amd.com
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMDUuMTEuMTkgdW0gMTE6MjAgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIFR1ZSwgT2N0
IDI5LCAyMDE5IGF0IDExOjQwOjQ1QU0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4g
W1NOSVBdCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYuYwo+PiBpbmRleCBkMzc3YjRjYTY2YmYuLmNlMjkzY2VlNzZlZCAx
MDA2NDQKPj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+PiArKysgYi9kcml2ZXJz
L2RtYS1idWYvZG1hLWJ1Zi5jCj4+IEBAIC01MjksNiArNTI5LDEwIEBAIHN0cnVjdCBkbWFfYnVm
ICpkbWFfYnVmX2V4cG9ydChjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9leHBvcnRfaW5mbyAqZXhwX2lu
Zm8pCj4+ICAgCQkgICAgZXhwX2luZm8tPm9wcy0+ZHluYW1pY19tYXBwaW5nKSkKPj4gICAJCXJl
dHVybiBFUlJfUFRSKC1FSU5WQUwpOwo+PiAgIAo+PiArCWlmIChXQVJOX09OKCFleHBfaW5mby0+
b3BzLT5keW5hbWljX21hcHBpbmcgJiYKPj4gKwkJICAgIChleHBfaW5mby0+b3BzLT5waW4gfHwg
ZXhwX2luZm8tPm9wcy0+dW5waW4pKSkKPj4gKwkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7Cj4g
SW1vIG1ha2UgdGhpcyBzdHJvbmdlciwgaGF2ZSBhIGR5bmFtaWMgbWFwcGluZyBpZmYgdGhlcmUn
cyBib3RoIGEgcGluIGFuZAo+IHVucGluIGZ1bmN0aW9uLiBPdGhlcndpc2UgdGhpcyBkb2Vzbid0
IG1ha2UgYSBsb3Qgb2Ygc2Vuc2UgdG8gbWUuCgpJIHdhbnQgdG8gYXZvaWQgdGhhdCBmb3IgdGhl
IGluaXRpYWwgaW1wbGVtZW50YXRpb24uIFNvIGZhciBkeW5hbWljIG9ubHkgCm1lYW50IHRoYXQg
d2UgaGF2ZSB0aGUgbmV3IGxvY2tpbmcgc2VtYW50aWNzLgoKV2UgY291bGQgbWFrZSB0aGF0IG1h
bmRhdG9yeSBhZnRlciB0aGlzIHBhdGNoIHNldCB3aGVuIGFtZGdwdSBpcyAKbWlncmF0ZWQgYW5k
IGhhcyBpbXBsZW1lbnRlZCB0aGUgbmVjZXNzYXJ5IGNhbGxiYWNrcy4KCj4+IFtTTklQXQo+PiBA
QCAtODIxLDEzICs4NzcsMjMgQEAgc3RydWN0IHNnX3RhYmxlICpkbWFfYnVmX21hcF9hdHRhY2ht
ZW50KHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwKPj4gICAJCXJldHVybiBhdHRh
Y2gtPnNndDsKPj4gICAJfQo+PiAgIAo+PiAtCWlmIChkbWFfYnVmX2lzX2R5bmFtaWMoYXR0YWNo
LT5kbWFidWYpKQo+PiArCWlmIChkbWFfYnVmX2lzX2R5bmFtaWMoYXR0YWNoLT5kbWFidWYpKSB7
Cj4+ICAgCQlkbWFfcmVzdl9hc3NlcnRfaGVsZChhdHRhY2gtPmRtYWJ1Zi0+cmVzdik7Cj4+ICsJ
CWlmICghYXR0YWNoLT5pbXBvcnRlcl9vcHMtPm1vdmVfbm90aWZ5KSB7Cj4gSW1vIGp1c3QgcmVx
dWlyZSAtPm1vdmVfbm90aWZ5IGZvciBpbXBvcnRlcnMgdGhhdCBnaXZlIHlvdSBhbiBvcHMKPiBm
dW5jdGlvbi4gRG9lc24ndCByZWFsbHkgbWFrZSBzZW5zZSB0byBhbGxvdyBkeW5hbWljIHdpdGhv
dXQgc3VwcG9ydAo+IC0+bW92ZV9ub3RpZnkuCgpTYW1lIHRoaW5nIGhlcmUuIFdlIGNvdWxkIG1h
a2UgdGhhdCBtYW5kYXRvcnkgYW5kIGNsZWFuIGl0IHVwIGFmdGVyIAptaWdyYXRpbmcgYW1kZ3B1
LgoKPj4gW1NOSVBdCj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaCBiL2lu
Y2x1ZGUvbGludXgvZG1hLWJ1Zi5oCj4+IGluZGV4IGFmNzNmODM1YzUxYy4uNzQ1NmJiOTM3NjM1
IDEwMDY0NAo+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaAo+PiArKysgYi9pbmNsdWRl
L2xpbnV4L2RtYS1idWYuaAo+PiBAQCAtOTMsMTQgKzkzLDQwIEBAIHN0cnVjdCBkbWFfYnVmX29w
cyB7Cj4+ICAgCSAqLwo+PiAgIAl2b2lkICgqZGV0YWNoKShzdHJ1Y3QgZG1hX2J1ZiAqLCBzdHJ1
Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICopOwo+PiAgIAo+PiArCS8qKgo+PiArCSAqIEBwaW46Cj4+
ICsJICoKPj4gKwkgKiBUaGlzIGlzIGNhbGxlZCBieSBkbWFfYnVmX3BpbiBhbmQgbGV0cyB0aGUg
ZXhwb3J0ZXIga25vdyB0aGF0IHRoZQo+PiArCSAqIERNQS1idWYgY2FuJ3QgYmUgbW92ZWQgYW55
IG1vcmUuCj4gSSB0aGluayB3ZSBzaG91bGQgYWRkIGEgd2FybmluZyBoZXJlIHRoYXQgcGlubmlu
ZyBpcyBvbmx5IG9rIGZvciBsaW1pdGVkCj4gdXNlLWNhc2VzIChsaWtlIHNjYW5vdXQgb3Igc2lt
aWxhciksIGFuZCBub3QgYXMgcGFydCBvZiBnZW5lcmFsIGJ1ZmZlcgo+IG1hbmFnZW1lbnQuCj4K
PiBpOTE1IHVzZXMgdGVtcG9yYXJ5IHBpbnMgdGhyb3VnaCBpdCdzIGV4ZWNidWYgbWFuYWdlbWVu
dCAoYW5kIGV2ZXJ5d2hlcmUKPiBlbHNlKSwgc28gd2UgaGF2ZSBhIF9sb3RfIG9mIHBlb3BsZSBp
biBkcmktZGV2ZWwgd2l0aCBxdWl0ZSBkaWZmZXJlbnQKPiBpZGVhcyBvZiB3aGF0IHRoaXMgbWln
aHQgYmUgZm9yIDotKQoKWWVhaCwgdGhhdCBpcyBhbHNvIGEgZ29vZCBpZGVhIGZvciB1cy4gV3Jv
dGUgYSBvbmUgbGluZXIsIGJ1dCB5b3UgbWlnaHQgCndhbnQgdG8gZG91YmxlIGNoZWNrIHRoZSB3
b3JkaW5nLgoKPj4gW1NOSVBdCj4+IEBAIC0xNDEsOSArMTY3LDYgQEAgc3RydWN0IGRtYV9idWZf
b3BzIHsKPj4gICAJICoKPj4gICAJICogVGhpcyBpcyBjYWxsZWQgYnkgZG1hX2J1Zl91bm1hcF9h
dHRhY2htZW50KCkgYW5kIHNob3VsZCB1bm1hcCBhbmQKPj4gICAJICogcmVsZWFzZSB0aGUgJnNn
X3RhYmxlIGFsbG9jYXRlZCBpbiBAbWFwX2RtYV9idWYsIGFuZCBpdCBpcyBtYW5kYXRvcnkuCj4+
IC0JICogSXQgc2hvdWxkIGFsc28gdW5waW4gdGhlIGJhY2tpbmcgc3RvcmFnZSBpZiB0aGlzIGlz
IHRoZSBsYXN0IG1hcHBpbmcKPj4gLQkgKiBvZiB0aGUgRE1BIGJ1ZmZlciwgaXQgdGhlIGV4cG9y
dGVyIHN1cHBvcnRzIGJhY2tpbmcgc3RvcmFnZQo+PiAtCSAqIG1pZ3JhdGlvbi4KPiBUaGlzIGlz
IHN0aWxsIHZhbGlkIGZvciBub24tZHluYW1pYyBleHBvcnRlcnMuIEltbyBrZWVwIGJ1dCBjbGFy
aWZ5IHRoYXQuCgpPSywgY2hhbmdlZC4KCj4+IFtTTklQXQo+PiBAQCAtNDM4LDE2ICs0OTEsMTkg
QEAgc3RhdGljIGlubGluZSBib29sIGRtYV9idWZfaXNfZHluYW1pYyhzdHJ1Y3QgZG1hX2J1ZiAq
ZG1hYnVmKQo+PiAgIHN0YXRpYyBpbmxpbmUgYm9vbAo+PiAgIGRtYV9idWZfYXR0YWNobWVudF9p
c19keW5hbWljKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCkKPj4gICB7Cj4+IC0J
cmV0dXJuIGF0dGFjaC0+ZHluYW1pY19tYXBwaW5nOwo+PiArCXJldHVybiAhIWF0dGFjaC0+aW1w
b3J0ZXJfb3BzOwo+IEhtIHdoeSBub3QgZG8gdGhlIHNhbWUgZm9yIGV4cG9ydGVycywgYW5kIG1h
a2UgdGhlbSBkeW5hbWljIGlmZiB0aGV5IGhhdmUKPiBwaW4vdW5waW4/CgpTYW1lIHRoaW5nIGFz
IGJlZm9yZSwgdG8gbWlncmF0ZSBhbWRncHUgdG8gdGhlIG5ldyBpbnRlcmZhY2UgZmlyc3QgYW5k
IAp0aGVuIG1ha2UgaXQgbWFuZGF0b3J5LgoKSSB0aGluayBJIHdpbGwganVzdCB3cml0ZSBhIGNs
ZWFudXAgcGF0Y2ggaW50byB0aGUgc2VyaWVzIHdoaWNoIGNvbWVzIAphZnRlciB0aGUgYW1kZ3B1
IGNoYW5nZXMuCgpUaGFua3MsCkNocmlzdGlhbi4KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbmFyby1tbS1zaWcK
