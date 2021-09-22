Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDBF414C71
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 16:50:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0502A61805
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Sep 2021 14:50:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 243C361978; Wed, 22 Sep 2021 14:50:21 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BA9F561793;
	Wed, 22 Sep 2021 14:50:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D470E60A81
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 14:50:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C73CB61793; Wed, 22 Sep 2021 14:50:15 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by lists.linaro.org (Postfix) with ESMTPS id B448660A81
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 14:50:13 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id d21so7508138wra.12
 for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Sep 2021 07:50:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=Eao9BWrz4ZEpvjvPekZB5G5ZtGhlHSk/4Hlz/e8xCbA=;
 b=e+iQRrJaGNbhRYtfaer7tRDjfOMBybl7ZXrqAH1QAnYMPxjDEsed1HOTKoTfA9wlBz
 Nk/GCELMVvKzS3YpsCrlOrVbUVWxT7myvqYLCgGYczzldw7a7khAMhnQ9iN/GE+0+1eg
 c3Y01VkDWhGW1N0i6WASoRgCYIuQbKESS8NKQGxCtno38nZrcD9FGmvCstZ4I1g19v1d
 8tvdmmumAU8c7iLSiHv2HW3CHOWGWp3P3g7Vx2AFgPw2duSDVml5uQIoKmt5WPSAjEnK
 lgTFLLKBAztPQnL7wOA787+nElODI4f2ewGSfA8Z3dh6ejBFv9egrEgED273XTAZzJ7h
 yFVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Eao9BWrz4ZEpvjvPekZB5G5ZtGhlHSk/4Hlz/e8xCbA=;
 b=bfctzenhvwgb00NY4gmTI8tiobVW6B4kfmx6hEMybI1w+GFdGTCR6dOVLY93fNg5W8
 ggpeWEjBZ/YDK7HVIL13FoyAJR+2APlTPHk9Tal3pwX2Rlijbwo55FRfrdNvCP1nWrOd
 luueQIbE8sESxZgEK8QiQepKQPEAFqYDo4RIIxssTjxFv1hML+Sx6wpt1ju8gxULqd2A
 q5STtX0Ophvd23lckwdkrTtcUIa/PzUDarbR9S2QVxjW2rx1Q0EN+Ze7tTn33pWnkYgY
 Baupaku1+dAbwL22HgT5JLz7FhAPxEy8yIVdTzE3M9ks1tIESd/nqQwMme3mRDtHLpP1
 yHpw==
X-Gm-Message-State: AOAM531MVAw8+VBHk98mm9B4V6/KVqT5U520pPpHOqpHjsJl3nlbTs2+
 DFTQokVvZ+UxUBBt4Ax2Mus=
X-Google-Smtp-Source: ABdhPJzgMi5c914so+rNIjQe9Fsfeoxy5GyiIbiDLGWPeuJJ5n9tKlohnCYczRNFHB7P3snLhByBag==
X-Received: by 2002:a1c:2b04:: with SMTP id r4mr11111516wmr.89.1632322212730; 
 Wed, 22 Sep 2021 07:50:12 -0700 (PDT)
Received: from [192.168.158.115] (ip-178-202-40-91.hsi09.unitymediagroup.de.
 [178.202.40.91])
 by smtp.gmail.com with ESMTPSA id c7sm2474917wmq.13.2021.09.22.07.50.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Sep 2021 07:50:12 -0700 (PDT)
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20210922091044.2612-1-christian.koenig@amd.com>
 <20210922091044.2612-2-christian.koenig@amd.com>
 <093432d2-de8e-9684-03aa-7cb4842ea755@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <347e66cf-fd85-da15-6a00-cecab25c2d49@gmail.com>
Date: Wed, 22 Sep 2021 16:50:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <093432d2-de8e-9684-03aa-7cb4842ea755@linux.intel.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 01/26] dma-buf: add
 dma_resv_for_each_fence_unlocked v4
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
Cc: daniel@ffwll.ch
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjIuMDkuMjEgdW0gMTY6MzYgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoKPj4gKwo+PiArLyoq
Cj4+ICsgKiBkbWFfcmVzdl9pdGVyX2ZpcnN0X3VubG9ja2VkIC0gZmlyc3QgZmVuY2UgaW4gYW4g
dW5sb2NrZWQgCj4+IGRtYV9yZXN2IG9iai4KPj4gKyAqIEBjdXJzb3I6IHRoZSBjdXJzb3Igd2l0
aCB0aGUgY3VycmVudCBwb3NpdGlvbgo+PiArICoKPj4gKyAqIFJldHVybnMgdGhlIGZpcnN0IGZl
bmNlIGZyb20gYW4gdW5sb2NrZWQgZG1hX3Jlc3Ygb2JqLgo+PiArICovCj4+ICtzdHJ1Y3QgZG1h
X2ZlbmNlICpkbWFfcmVzdl9pdGVyX2ZpcnN0X3VubG9ja2VkKHN0cnVjdCBkbWFfcmVzdl9pdGVy
IAo+PiAqY3Vyc29yKQo+PiArewo+PiArwqDCoMKgIHJjdV9yZWFkX2xvY2soKTsKPj4gK8KgwqDC
oCBkbyB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBkbWFfcmVzdl9pdGVyX3Jlc3RhcnRfdW5sb2NrZWQo
Y3Vyc29yKTsKPj4gK8KgwqDCoMKgwqDCoMKgIGRtYV9yZXN2X2l0ZXJfd2Fsa191bmxvY2tlZChj
dXJzb3IpOwo+PiArwqDCoMKgIH0gd2hpbGUgKHJlYWRfc2VxY291bnRfcmV0cnkoJmN1cnNvci0+
b2JqLT5zZXEsIGN1cnNvci0+c2VxKSk7Cj4+ICvCoMKgwqAgcmN1X3JlYWRfdW5sb2NrKCk7Cj4+
ICsKPj4gK8KgwqDCoCByZXR1cm4gY3Vyc29yLT5mZW5jZTsKPj4gK30KPj4gK0VYUE9SVF9TWU1C
T0woZG1hX3Jlc3ZfaXRlcl9maXJzdF91bmxvY2tlZCk7Cj4KPiBXaHkgaXMgdGhpcyBvbmUgc3Bs
aXQgZnJvbSBkbWFfcmVzdl9pdGVyX2JlZ2luIGFuZCBldmVuIGV4cG9ydGVkPwoKSSd2ZSBzcGxp
dCBpdCB0byBiZSBhYmxlIHRvIHVzZSBkbWFfcmVzdl9pdGVyX2JlZ2luIGluIGJvdGggdGhlIHVu
bG9ja2VkIAphbmQgbG9ja2VkIGl0ZXJhdG9yLgoKPiBJIGNvdWxkbid0IGZpbmQgYW55IHVzZXJz
IGluIHRoZSBzZXJpZXMuCgpUaGlzIGlzIHVzZWQgaW4gdGhlIGRtYV9yZXN2X2Zvcl9lYWNoX2Zl
bmNlX3VubG9ja2VkKCkgbWFjcm8gdG8gcmV0dXJuIAp0aGUgZmlyc3QgZmVuY2UuCgo+Cj4+ICsK
Pj4gKy8qKgo+PiArICogZG1hX3Jlc3ZfaXRlcl9uZXh0X3VubG9ja2VkIC0gbmV4dCBmZW5jZSBp
biBhbiB1bmxvY2tlZCBkbWFfcmVzdiAKPj4gb2JqLgo+PiArICogQGN1cnNvcjogdGhlIGN1cnNv
ciB3aXRoIHRoZSBjdXJyZW50IHBvc2l0aW9uCj4+ICsgKgo+PiArICogUmV0dXJucyB0aGUgbmV4
dCBmZW5jZSBmcm9tIGFuIHVubG9ja2VkIGRtYV9yZXN2IG9iai4KPj4gKyAqLwo+PiArc3RydWN0
IGRtYV9mZW5jZSAqZG1hX3Jlc3ZfaXRlcl9uZXh0X3VubG9ja2VkKHN0cnVjdCBkbWFfcmVzdl9p
dGVyIAo+PiAqY3Vyc29yKQo+PiArewo+PiArwqDCoMKgIGJvb2wgcmVzdGFydDsKPj4gKwo+PiAr
wqDCoMKgIHJjdV9yZWFkX2xvY2soKTsKPj4gK8KgwqDCoCBjdXJzb3ItPmlzX3Jlc3RhcnRlZCA9
IGZhbHNlOwo+PiArwqDCoMKgIHJlc3RhcnQgPSByZWFkX3NlcWNvdW50X3JldHJ5KCZjdXJzb3It
Pm9iai0+c2VxLCBjdXJzb3ItPnNlcSk7Cj4+ICvCoMKgwqAgZG8gewo+PiArwqDCoMKgwqDCoMKg
wqAgaWYgKHJlc3RhcnQpCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRtYV9yZXN2X2l0ZXJf
cmVzdGFydF91bmxvY2tlZChjdXJzb3IpOwo+PiArwqDCoMKgwqDCoMKgwqAgZG1hX3Jlc3ZfaXRl
cl93YWxrX3VubG9ja2VkKGN1cnNvcik7Cj4+ICvCoMKgwqDCoMKgwqDCoCByZXN0YXJ0ID0gdHJ1
ZTsKPj4gK8KgwqDCoCB9IHdoaWxlIChyZWFkX3NlcWNvdW50X3JldHJ5KCZjdXJzb3ItPm9iai0+
c2VxLCBjdXJzb3ItPnNlcSkpOwo+PiArwqDCoMKgIHJjdV9yZWFkX3VubG9jaygpOwo+PiArCj4+
ICvCoMKgwqAgcmV0dXJuIGN1cnNvci0+ZmVuY2U7Cj4+ICt9Cj4+ICtFWFBPUlRfU1lNQk9MKGRt
YV9yZXN2X2l0ZXJfbmV4dF91bmxvY2tlZCk7Cj4KPiBDb3VsZG4ndCBkbWFfcmVzdl9pdGVyX2Zp
cnN0X3VubG9ja2VkIGFuZCBkbWFfcmVzdl9pdGVyX25leHRfdW5sb2NrZWQgCj4gc2hhcmUgdGhl
IHNhbWUgaW1wbGVtZW50YXRpb24/IEVzcGVjaWFsbHkgaWYgeW91IGFyZSBhYmxlIHRvIHJlcGxh
Y2UgCj4gY3Vyc29yLT5pc19yZXN0YXJ0ZWQgd2l0aCBjdXJzb3ItPmluZGV4ID09IC0xLgoKVGhh
dCdzIHdoYXQgSSBoYWQgaW5pdGlhbGx5LCBidXQgRGFuaWVsIGRpc2xpa2VkIGl0IGZvciBzb21l
IHJlYXNvbi4gWW91IAp0aGVuIG5lZWQgYSBjZW50cmFsaXplZCB3YWxrIGZ1bmN0aW9uIGluc3Rl
YWQgb2YgZmlyc3QvbmV4dC4KClRoYW5rcywKQ2hyaXN0aWFuLgoKPiBSZWdhcmRzLAo+Cj4gVHZy
dGtvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0
cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
