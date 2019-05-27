Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F902B297
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 May 2019 12:56:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 60CE8607FE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 May 2019 10:56:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 52EC860DF8; Mon, 27 May 2019 10:56:53 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A2130608A8;
	Mon, 27 May 2019 10:56:22 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0AAD3607FE
 for <linaro-mm-sig@lists.linaro.org>; Mon, 27 May 2019 10:56:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EE74E609C4; Mon, 27 May 2019 10:56:19 +0000 (UTC)
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by lists.linaro.org (Postfix) with ESMTPS id A7DF7607FE
 for <linaro-mm-sig@lists.linaro.org>; Mon, 27 May 2019 10:56:18 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id e2so7715203wrv.6
 for <linaro-mm-sig@lists.linaro.org>; Mon, 27 May 2019 03:56:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=NgHnGCvNMHq7295bMMDORWVKD+vXnKaZP5KT2iaVdZY=;
 b=D/26+ywfBsw+TyYWBt7j4iS2O46iVBCpsknfosjzC2o7rhYMiLuAY+DjFUEi3+LA3u
 /S6wMGBwUa5kn6cBFjKqktCMLRXhLtM6vcEBYFI6GdPminkm2HgykLSGsgA196zuk6Yg
 19lShPqNqZ4JcvYv/4PhoRvN+5EL+crM15CFUvYlJE00oyj9+bqfdcBAShrPY/9YYYCs
 5FOFIs89eGFJkvszidz0o0FSXBzuTFUs7Y+eyl1p5SJntWYhtH092gaXP4TF7/B55h8A
 TNbOstEIykGZWRljUoluAIsrEg/3s93i2Uiw57TvFlPxLEyWl7mNU5PUhXh2YUvTx0lL
 StpQ==
X-Gm-Message-State: APjAAAWs+u5VXRV8QQIv4T38RpQ4k5RhRyIp1w9nHpupIyv/hHUM+ZQb
 +q9rG7Z4iXlWF12PW2LfZPI=
X-Google-Smtp-Source: APXvYqx8kZRC7ah5RK8wi+cmUjWfiwmMDV79Lnhar/TOLTyXGvi8+Fn5qTph5amrQFkilVRQv57vaA==
X-Received: by 2002:a5d:688f:: with SMTP id h15mr14307927wru.44.1558954577790; 
 Mon, 27 May 2019 03:56:17 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id y18sm12197618wmd.29.2019.05.27.03.56.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 03:56:17 -0700 (PDT)
To: Hillf Danton <hdanton@sina.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <20190416183841.1577-1-christian.koenig@amd.com>
 <20190416183841.1577-3-christian.koenig@amd.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <76bc8afb-8797-9057-ccb5-2d4f788d2f9e@gmail.com>
Date: Mon, 27 May 2019 12:56:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190416183841.1577-3-christian.koenig@amd.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 02/12] dma-buf: add
 dma_buf_(un)map_attachment_locked variants v3
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

VGhhbmtzIGZvciB0aGUgY29tbWVudHMsIGJ1dCB5b3UgYXJlIGxvb2tpbmcgYXQgYSBjb21wbGV0
ZWx5IG91dGRhdGVkIApwYXRjaHNldC4KCklmIHlvdSBhcmUgaW50ZXJlc3RlZCBpbiB0aGUgbmV3
ZXN0IG9uZSBwbGVhc2UgcGluZyBtZSBhbmQgSSdtIGdvaW5nIHRvIApDQyB5b3Ugd2hlbiBJIHNl
bmQgb3V0IHRoZSBuZXh0IHZlcnNpb24uCgpDaHJpc3RpYW4uCgpBbSAyNS4wNS4xOSB1bSAwMzow
NCBzY2hyaWViIEhpbGxmIERhbnRvbjoKPiBPbiBUdWUsIDE2IEFwciAyMDE5IDIwOjM4OjMxICsw
MjAwIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+IEFkZCBmdW5jdGlvbiB2YXJpYW50cyB3aGlj
aCBjYW4gYmUgY2FsbGVkIHdpdGggdGhlIHJlc2VydmF0aW9uIGxvY2sKPj4gYWxyZWFkeSBoZWxk
Lgo+Pgo+PiB2MjogcmVvcmRlcmVkLCBhZGQgbG9ja2RlcCBhc3NlcnRzLCBmaXgga2VybmVsZG9j
Cj4+IHYzOiByZWJhc2VkIG9uIHNndCBjYWNoaW5nCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYuYyB8IDYzICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKwo+PiAgIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi5oICAgfCAgNSArKysrCj4+ICAgMiBm
aWxlcyBjaGFuZ2VkLCA2OCBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+PiBpbmRleCA2
NTE2MWE4MmQ0ZDUuLmVmNDgwZTVmYjIzOSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9kbWEtYnVm
L2RtYS1idWYuYwo+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4+IEBAIC02MjMs
NiArNjIzLDQzIEBAIHZvaWQgZG1hX2J1Zl9kZXRhY2goc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwg
c3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoKQo+PiAgIH0KPj4gICBFWFBPUlRfU1lN
Qk9MX0dQTChkbWFfYnVmX2RldGFjaCk7Cj4+ICAgCj4+ICsvKioKPj4gKyAqIGRtYV9idWZfbWFw
X2F0dGFjaG1lbnRfbG9ja2VkIC0gTWFwcyB0aGUgYnVmZmVyIGludG8gX2RldmljZV8gYWRkcmVz
cyBzcGFjZQo+PiArICogd2l0aCB0aGUgcmVzZXJ2YXRpb24gbG9jayBoZWxkLiBJcyBhIHdyYXBw
ZXIgZm9yIG1hcF9kbWFfYnVmKCkgb2YgdGhlCj4gU29tZXRoaW5nIGlzIG1pc3Npbmc7IHNlZW1z
IHRvIGJlIHMvb2YgdGhlL29mIHRoZSBkbWFfYnVmX29wcy4vCj4+ICsgKgo+PiArICogUmV0dXJu
cyB0aGUgc2NhdHRlcmxpc3QgdGFibGUgb2YgdGhlIGF0dGFjaG1lbnQ7Cj4+ICsgKiBkbWFfYnVm
X29wcy4KPiBPaCBpdCBpcyBzaXR0aW5nIGhlcmUhCj4KPj4gKyAqIEBhdHRhY2g6CVtpbl0JYXR0
YWNobWVudCB3aG9zZSBzY2F0dGVybGlzdCBpcyB0byBiZSByZXR1cm5lZAo+PiArICogQGRpcmVj
dGlvbjoJW2luXQlkaXJlY3Rpb24gb2YgRE1BIHRyYW5zZmVyCj4+ICsgKgo+PiArICogUmV0dXJu
cyBzZ190YWJsZSBjb250YWluaW5nIHRoZSBzY2F0dGVybGlzdCB0byBiZSByZXR1cm5lZDsgcmV0
dXJucyBFUlJfUFRSCj4+ICsgKiBvbiBlcnJvci4gTWF5IHJldHVybiAtRUlOVFIgaWYgaXQgaXMg
aW50ZXJydXB0ZWQgYnkgYSBzaWduYWwuCj4+ICsgKgo+IEVJTlRSIGxvb2tzIGltcG9zc2libGUg
aW4gdGhlIGNvZGUuCj4KPj4gKyAqIEEgbWFwcGluZyBtdXN0IGJlIHVubWFwcGVkIGJ5IHVzaW5n
IGRtYV9idWZfdW5tYXBfYXR0YWNobWVudF9sb2NrZWQoKS4gTm90ZQo+PiArICogdGhhdCB0aGUg
dW5kZXJseWluZyBiYWNraW5nIHN0b3JhZ2UgaXMgcGlubmVkIGZvciBhcyBsb25nIGFzIGEgbWFw
cGluZwo+PiArICogZXhpc3RzLCB0aGVyZWZvcmUgdXNlcnMvaW1wb3J0ZXJzIHNob3VsZCBub3Qg
aG9sZCBvbnRvIGEgbWFwcGluZyBmb3IgdW5kdWUKPj4gKyAqIGFtb3VudHMgb2YgdGltZS4KPj4g
KyAqLwo+PiArc3RydWN0IHNnX3RhYmxlICoKPj4gK2RtYV9idWZfbWFwX2F0dGFjaG1lbnRfbG9j
a2VkKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwKPj4gKwkJCSAgICAgIGVudW0g
ZG1hX2RhdGFfZGlyZWN0aW9uIGRpcmVjdGlvbikKPj4gK3sKPj4gKwlzdHJ1Y3Qgc2dfdGFibGUg
KnNnX3RhYmxlOwo+PiArCj4+ICsJbWlnaHRfc2xlZXAoKTsKPj4gKwlyZXNlcnZhdGlvbl9vYmpl
Y3RfYXNzZXJ0X2hlbGQoYXR0YWNoLT5kbWFidWYtPnJlc3YpOwo+PiArCj4+ICsJaWYgKGF0dGFj
aC0+c2d0KQo+PiArCQlyZXR1cm4gYXR0YWNoLT5zZ3Q7Cj4+ICsKPj4gKwlzZ190YWJsZSA9IGF0
dGFjaC0+ZG1hYnVmLT5vcHMtPm1hcF9kbWFfYnVmKGF0dGFjaCwgZGlyZWN0aW9uKTsKPj4gKwlp
ZiAoIXNnX3RhYmxlKQo+PiArCQlzZ190YWJsZSA9IEVSUl9QVFIoLUVOT01FTSk7Cj4+ICsKPj4g
KwlyZXR1cm4gc2dfdGFibGU7Cj4+ICt9Cj4+ICtFWFBPUlRfU1lNQk9MX0dQTChkbWFfYnVmX21h
cF9hdHRhY2htZW50X2xvY2tlZCk7Cj4+ICsKPiBCZXN0IFJlZ2FyZHMKPiBIaWxsZgo+Cj4KPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGFtZC1nZngg
bWFpbGluZyBsaXN0Cj4gYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2FtZC1nZngKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFy
by5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
