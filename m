Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A05F7431711
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Oct 2021 13:21:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3F1DA6039A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Oct 2021 11:21:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1D9FC603A4; Mon, 18 Oct 2021 11:21:07 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AD07460398;
	Mon, 18 Oct 2021 11:21:04 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EA5996038C
 for <linaro-mm-sig@lists.linaro.org>; Mon, 18 Oct 2021 11:21:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DD1EE60398; Mon, 18 Oct 2021 11:21:02 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by lists.linaro.org (Postfix) with ESMTPS id D3DA36038C
 for <linaro-mm-sig@lists.linaro.org>; Mon, 18 Oct 2021 11:21:00 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id y3so40846178wrl.1
 for <linaro-mm-sig@lists.linaro.org>; Mon, 18 Oct 2021 04:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=QbH/Fqw/UOsr06hrqcKDzrGD6snva7obhtkW4dGOEG0=;
 b=gEP6Zsv4iTEQfqQhQ6PSUkK5LmnQxup7arS8BiN/NhzvZ3EM5wwC/BXjBTgT1mGrYS
 uyrhjnhoBhJILyXAIrNza/EY3Tyeirz4iCE6PzeePdAj8V0HiRUqTCDNGcLnpJfsGCJ2
 rqI2kUOdtMX2EmHHupUodvJ2Mrr8Mg27IXWzRj2yMRsHXniEjSVNB5t3MVyDl3YLIKh0
 197iOLVWVf3rpC8CkXmk9V79Rw3ArnA7ZGS5hBJNdRZrxCHkZDB5lkSibX/+XdpNiy0b
 U2kGFQIreHLKiUkBLpv+bzXCr6HNbEhF1DR69HWoIWxaXHFIiJWFr4fe3rFxzw0vQH/B
 AEJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=QbH/Fqw/UOsr06hrqcKDzrGD6snva7obhtkW4dGOEG0=;
 b=z/Tztk3efASF0QJmGg41I9Ijbc8ksNiz2o54dSLjekwDysibllR6JSFOcqqRBlRAIK
 9t5QmsWU43bVX5esNLDFBMQAf/3nxwzhNAUU0TOK4YKWn37JpnPXliPcgcYQ7KhCQ+37
 vK/J3kWq7YV9QTbE6181uR180M/5wEpY+xyViVBPlE17Lxpi0OkjRkA+8YL1lbGZHvIw
 msdXJp4nNH2D90h7Q6KUOYXm7kptwGjB8vfEll8rdZWbmez2JuFOg3pt+kg1DHuAk1MJ
 sBOWfrlqnmnoV4QPNN8QCM6oIFe7nY0IBm4epXeBNskEhON8VLECyyMSbkz8yNF9kgMt
 Pbag==
X-Gm-Message-State: AOAM533KmRWhDv8rykUZ+Y6xnzegWt0kCHa3vUZVElzE08DdeDlYmNhi
 FZwb6bVwClOU7cyNfSSWrQ62IP78Gsc=
X-Google-Smtp-Source: ABdhPJzst1hKKHknD8c8eC2/0lOgPCnCZXcKGJyLN1b2VHU1SOjdDLkI1QP4E3tOvy7v8o6mXSZZGQ==
X-Received: by 2002:adf:a48f:: with SMTP id g15mr33539327wrb.259.1634556059919; 
 Mon, 18 Oct 2021 04:20:59 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:c473:1c84:fac2:c272?
 ([2a02:908:1252:fb60:c473:1c84:fac2:c272])
 by smtp.gmail.com with ESMTPSA id p12sm9449645wrr.67.2021.10.18.04.20.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 Oct 2021 04:20:59 -0700 (PDT)
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org
References: <20211015115720.79958-1-maarten.lankhorst@linux.intel.com>
 <20211015115720.79958-2-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <ff661be5-3a7a-3868-a67f-c3c80d91f385@gmail.com>
Date: Mon, 18 Oct 2021 13:20:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211015115720.79958-2-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] dma-buf: Fix dma_resv_wait_timeout
 handling of timeout = 0.
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
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTUuMTAuMjEgdW0gMTM6NTcgc2NocmllYiBNYWFydGVuIExhbmtob3JzdDoKPiBDb21taXQg
YWRhNWM0OGIxMWEzICgiZG1hLWJ1ZjogdXNlIG5ldyBpdGVyYXRvciBpbiBkbWFfcmVzdl93YWl0
X3RpbWVvdXQiKQo+IGFjY2lkZW50YWxseSBzdGFydGVkIG1pc2hhbmRsaW5nIHRpbWVvdXQgPSAw
LCBieSBmb3JjaW5nIGEgYmxvY2tpbmcgd2FpdAo+IHdpdGggdGltZW91dCA9IDEgcGFzc2VkIHRv
IGZlbmNlcy4gVGhpcyBpcyBub3QgaW50ZW5kZWQsIGFzIHRpbWVvdXQgPSAwCj4gbWF5IGJlIHVz
ZWQgZm9yIHBlZWtpbmcsIHNpbWlsYXIgdG8gdGVzdF9zaWduYWxlZC4KPgo+IEZpeGVzOiBhZGE1
YzQ4YjExYTMgKCJkbWEtYnVmOiB1c2UgbmV3IGl0ZXJhdG9yIGluIGRtYV9yZXN2X3dhaXRfdGlt
ZW91dCIpCj4gQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4K
PiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KPiBTaWduZWQtb2Zm
LWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29t
PgoKU29ycnkgZm9yIHRoZSBkZWxheSwgYmFjayBmcm9tIHNpY2sgbGVhdmUganVzdCB0b2RheS4K
Ckdvb2QgY2F0Y2gsIGJ1dCB3aGVuIEkgcmVhZCB0aGUgb2xkIGNvZGUgY29ycmVjdGx5IHRoYXQg
d2FzIGFsc28gYnJva2VuIApiZWZvcmUgYnkgcGFzc2luZyBpbiAxIHRvIGRtYV9mZW5jZV93YWl0
X3RpbWVvdXQoKSBmb3IgYSB0aW1lb3V0IG9mIDAuCgo+IC0tLQo+ICAgZHJpdmVycy9kbWEtYnVm
L2RtYS1yZXN2LmMgfCAxMiArKysrKystLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2Vy
dGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVm
L2RtYS1yZXN2LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwo+IGluZGV4IDllYjJiYWEz
ODdkNC4uNzBhODA4MjY2MGM1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVz
di5jCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKPiBAQCAtNjE3LDE4ICs2MTcs
MTggQEAgRVhQT1JUX1NZTUJPTF9HUEwoZG1hX3Jlc3ZfZ2V0X2ZlbmNlcyk7Cj4gICBsb25nIGRt
YV9yZXN2X3dhaXRfdGltZW91dChzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgYm9vbCB3YWl0X2FsbCwg
Ym9vbCBpbnRyLAo+ICAgCQkJICAgdW5zaWduZWQgbG9uZyB0aW1lb3V0KQo+ICAgewo+IC0JbG9u
ZyByZXQgPSB0aW1lb3V0ID8gdGltZW91dCA6IDE7Cj4gKwlsb25nIHJldCA9IHRpbWVvdXQgPzog
MTsKClBsZWFzZSBkb24ndCBjaGFuZ2UgdGhlIGNvZGluZyBzdHlsZSBoZXJlLgoKQXBhcnQgZnJv
bSB0aGF0IGxvb2tzIGdvb2QgdG8gbWUuCgpDaHJpc3RpYW4uCgo+ICAgCXN0cnVjdCBkbWFfcmVz
dl9pdGVyIGN1cnNvcjsKPiAgIAlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKPiAgIAo+ICAgCWRt
YV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNvciwgb2JqLCB3YWl0X2FsbCk7Cj4gICAJZG1hX3Jlc3Zf
Zm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQoJmN1cnNvciwgZmVuY2UpIHsKPiArCQlyZXQgPSBkbWFf
ZmVuY2Vfd2FpdF90aW1lb3V0KGZlbmNlLCBpbnRyLCB0aW1lb3V0KTsKPiArCQlpZiAocmV0IDw9
IDApCj4gKwkJCWJyZWFrOwo+ICAgCj4gLQkJcmV0ID0gZG1hX2ZlbmNlX3dhaXRfdGltZW91dChm
ZW5jZSwgaW50ciwgcmV0KTsKPiAtCQlpZiAocmV0IDw9IDApIHsKPiAtCQkJZG1hX3Jlc3ZfaXRl
cl9lbmQoJmN1cnNvcik7Cj4gLQkJCXJldHVybiByZXQ7Cj4gLQkJfQo+ICsJCWlmICh0aW1lb3V0
KQo+ICsJCQl0aW1lb3V0ID0gcmV0Owo+ICAgCX0KPiAgIAlkbWFfcmVzdl9pdGVyX2VuZCgmY3Vy
c29yKTsKPiAgIAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK
