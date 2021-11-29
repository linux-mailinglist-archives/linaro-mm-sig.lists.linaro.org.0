Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A06B46152D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 13:34:03 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EF99960E8E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 12:34:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CF10160E24; Mon, 29 Nov 2021 12:34:00 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3731E602FB;
	Mon, 29 Nov 2021 12:33:57 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A4C5C60286
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:33:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9AC95602FB; Mon, 29 Nov 2021 12:33:55 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by lists.linaro.org (Postfix) with ESMTPS id 8EDF660286
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:33:53 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id
 o19-20020a1c7513000000b0033a93202467so12308586wmc.2
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 04:33:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=kaVxrwVEtTbeJnjXaUCkv6CWik1QhuxvLenwaFBoirs=;
 b=MzOePiOjeO+9rFJW/L3ufzaJ7aKVgdNabJCBa6WE8ZEnnwH6f8+5Z78eXo0rpwV4Ad
 GEvf2aPlvvv41C3hoczdLVz1AQSV1BOfwF037XOeV3b6NIlU+FBGCDlLjbuvPwVrWxnq
 eJLVi7gEgz5LAAv8HzFFEowHs2Trev1dgRD6JNNHt32Rm40lyrlvMuKyNFIZYZXjwzoe
 lL7NVJ2Kl03vdei7y9db0iQQFFo0C0YkyWkaBllxyq020DI214nux4gb5Tev3CBscfRL
 flNvUi4wz6lD4uyJtbv2TE54ncvrztXiYz+AxlcKBP84Gc6OwolXBw5das0l4Yh911u0
 xCCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=kaVxrwVEtTbeJnjXaUCkv6CWik1QhuxvLenwaFBoirs=;
 b=vxG+s0UNv8ojITzwFwkVH7q2jD5OpSTDY3zmyRtCsYcj8Z0PL+bjkXnBjW/WbVXZeI
 88M39w0dTwhamITHFShWpWISkzBeL8nuyWTR7nABpG79dnJr2YU1WpDZ4UwctXkkgUnI
 fqQzqgfbieClxe1hvTGyFF6laysPlyVorLO5gvJycqH62fZM1rjVmQtf8Q6c392nd8eO
 /cdcxQkBnGmjYf2a3w70MgM1OznW6R3t2SkRcoJhf+qiOcy/kseHaJVFlUqTem5GMIAm
 EAML70zJhNp/C/pYNEK58FFX0pacn7LU0JEDNOjUWLtedr2E76cqAWtSf5dB59pnsJy7
 zXbw==
X-Gm-Message-State: AOAM532SWSd8JnKqeT01K6a1zo2520bmvbc650n1+kQ/RwnAHV6voH2X
 zfip2N6ktagPJL3FBN72YLs=
X-Google-Smtp-Source: ABdhPJzwL5Z1wVujNmmTgEoXqYcxg5hOojSUWfwHYUFW9PF1AvtSDxZzvw3c/34O/ChA2rjQvZQaiQ==
X-Received: by 2002:a7b:c0d5:: with SMTP id s21mr9595438wmh.115.1638189232627; 
 Mon, 29 Nov 2021 04:33:52 -0800 (PST)
Received: from [192.168.178.21] (p57b0b77b.dip0.t-ipconnect.de.
 [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id bg34sm19068692wmb.47.2021.11.29.04.33.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 29 Nov 2021 04:33:52 -0800 (PST)
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@intel.com>
References: <20211129073533.414008-1-thomas.hellstrom@linux.intel.com>
 <4fd0eee6-342f-fb31-717c-901440f38c35@gmail.com>
 <58ca11648ab29d96b84640760d2acc3ac2d39d19.camel@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <e4d8e272-8175-4298-f227-240febc0bda0@gmail.com>
Date: Mon, 29 Nov 2021 13:33:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <58ca11648ab29d96b84640760d2acc3ac2d39d19.camel@linux.intel.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma_fence_array: Fix PENDING_ERROR leak
 in dma_fence_array_signaled()
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
Cc: linaro-mm-sig@lists.linaro.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjkuMTEuMjEgdW0gMTM6MjMgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPiBIaSwgQ2hy
aXN0aWFuLAo+Cj4gT24gTW9uLCAyMDIxLTExLTI5IGF0IDA5OjIxICswMTAwLCBDaHJpc3RpYW4g
S8O2bmlnIHdyb3RlOgo+PiBBbSAyOS4xMS4yMSB1bSAwODozNSBzY2hyaWViIFRob21hcyBIZWxs
c3Ryw7ZtOgo+Pj4gSWYgYSBkbWFfZmVuY2VfYXJyYXkgaXMgcmVwb3J0ZWQgc2lnbmFsZWQgYnkg
YSBjYWxsIHRvCj4+PiBkbWFfZmVuY2VfaXNfc2lnbmFsZWQoKSwgaXQgbWF5IGxlYWsgdGhlIFBF
TkRJTkdfRVJST1Igc3RhdHVzLgo+Pj4KPj4+IEZpeCB0aGlzIGJ5IGNsZWFyaW5nIHRoZSBQRU5E
SU5HX0VSUk9SIHN0YXR1cyBpZiB3ZSByZXR1cm4gdHJ1ZSBpbgo+Pj4gZG1hX2ZlbmNlX2FycmF5
X3NpZ25hbGVkKCkuCj4+Pgo+Pj4gRml4ZXM6IDFmNzBiOGI4MTJmMyAoImRtYS1mZW5jZTogUHJv
cGFnYXRlIGVycm9ycyB0byBkbWEtZmVuY2UtCj4+PiBhcnJheSBjb250YWluZXIiKQo+Pj4gQ2M6
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+Pj4gQ2M6IENocmlzdGlhbiBLw7ZuaWcg
PGNrb2VuaWcubGVpY2h0enVtZXJrZW5AZ21haWwuY29tPgo+Pj4gQ2M6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+Pj4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxz
dHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgo+PiBSZXZpZXdlZC1ieTog
Q2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IEhvdyBhcmUgdGhl
IGRtYS1idWYgLyBkbWEtZmVuY2UgcGF0Y2hlcyB0eXBpY2FsbHkgbWVyZ2VkPyBJZiBpOTE1IGlz
Cj4gdGhlIG9ubHkgZmVuY2UtPmVycm9yIHVzZXIsIGNvdWxkIHdlIHRha2UgdGhpcyB0aHJvdWdo
IGRybS1pbnRlbCB0bwo+IGF2b2lkIGEgYmFja21lcmdlIGZvciB1cGNvbWluZyBpOTE1IHdvcms/
CgpXZWxsIHRoYXQgb25lIGhlcmUgbG9va3MgbGlrZSBhIGJ1Z2ZpeCB0byBtZSwgc28gZWl0aGVy
IHRocm91Z2ggCmRybS1taXNjLWZpeGVzIG9yZSBzb21lIGk5MTUgLWZpeGVzIGJyYW5jaCBzb3Vu
ZHMgZmluZSB0byBtZS4KCklmIHlvdSBoYXZlIGFueSBuZXcgZGV2ZWxvcG1lbnQgYmFzZWQgb24g
dGhhdCBhIGJhY2ttZXJnZSBvZiB0aGUgLWZpeGVzIAppbnRvIHlvdXIgLW5leHQgYnJhbmNoIGlz
IHVuYXZvaWRhYmxlIGFueXdheS4KClJlZ2FyZHMsCkNocmlzdGlhbi4KCj4KPiAvVGhvbWFzCj4K
Pgo+Pj4gLS0tCj4+PiAgwqAgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jIHwgNiAr
KysrKy0KPj4+ICDCoCAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXku
YyBiL2RyaXZlcnMvZG1hLQo+Pj4gYnVmL2RtYS1mZW5jZS1hcnJheS5jCj4+PiBpbmRleCBkM2Zi
ZDk1MGJlOTQuLjNlMDdmOTYxZTJmMyAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtZmVuY2UtYXJyYXkuYwo+Pj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJh
eS5jCj4+PiBAQCAtMTA0LDcgKzEwNCwxMSBAQCBzdGF0aWMgYm9vbCBkbWFfZmVuY2VfYXJyYXlf
c2lnbmFsZWQoc3RydWN0Cj4+PiBkbWFfZmVuY2UgKmZlbmNlKQo+Pj4gIMKgIHsKPj4+ICDCoMKg
wqDCoMKgwqDCoMKgc3RydWN0IGRtYV9mZW5jZV9hcnJheSAqYXJyYXkgPSB0b19kbWFfZmVuY2Vf
YXJyYXkoZmVuY2UpOwo+Pj4gICAgCj4+PiAtwqDCoMKgwqDCoMKgwqByZXR1cm4gYXRvbWljX3Jl
YWQoJmFycmF5LT5udW1fcGVuZGluZykgPD0gMDsKPj4+ICvCoMKgwqDCoMKgwqDCoGlmIChhdG9t
aWNfcmVhZCgmYXJyYXktPm51bV9wZW5kaW5nKSA+IDApCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgcmV0dXJuIGZhbHNlOwo+Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoMKgZG1hX2Zl
bmNlX2FycmF5X2NsZWFyX3BlbmRpbmdfZXJyb3IoYXJyYXkpOwo+Pj4gK8KgwqDCoMKgwqDCoMKg
cmV0dXJuIHRydWU7Cj4+PiAgwqAgfQo+Pj4gICAgCj4+PiAgwqAgc3RhdGljIHZvaWQgZG1hX2Zl
bmNlX2FycmF5X3JlbGVhc2Uoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpCj4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFy
by5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
