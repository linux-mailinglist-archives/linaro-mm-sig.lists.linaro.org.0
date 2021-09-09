Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0044C40459E
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Sep 2021 08:31:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2371663421
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Sep 2021 06:31:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id ED90861ED8; Thu,  9 Sep 2021 06:31:13 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0B496608CD;
	Thu,  9 Sep 2021 06:31:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 28AEB605DC
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Sep 2021 06:31:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1D698608CD; Thu,  9 Sep 2021 06:31:09 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by lists.linaro.org (Postfix) with ESMTPS id 11985605DC
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Sep 2021 06:31:07 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id i28so879701wrb.2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Sep 2021 23:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=3IIOvoD+yUfy3tqc9beXnyqk7oU/rmbOi70xv9g3SEc=;
 b=AX4TaQ6wVEpRpmcZpkrgyw2u3V27gM9p4rBBT7sFt2HMjIpfNtT7DZmbS/eiXSvhGY
 XpwQJ5vnQccRB802fybVetUZ9iYjkAoaJZKisvUE0Dzk+3nzQmk9+Wi8upfNg8U3Us6g
 p8USJ3bDklQIWNgr0k8mfHq32nbk4uc0v4WyFbOabdticCQw7SdUmvajVrwS6urNhMOJ
 IP3n4vsCL9FqMGJ7/f9+hW6JsrILdv25Cuxq0+v6p0HwU/mtjqQh4mHzHjET3Oj9RnZ2
 v3QsVUxiE8EpdlhNPZdXIVLD8RnyZ//uJFEjTiFSux9Z5RUX1WScxmPouh7ElN5egUfA
 rluw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=3IIOvoD+yUfy3tqc9beXnyqk7oU/rmbOi70xv9g3SEc=;
 b=uMhVoYlSg9TyAGV3PkuJtv1Eoov8n2CR9fhbMdITIqQtzbMPtwfWvbBuvWcS1iODE8
 2Ditvq0XjQuMjbA83dFwIGPoUE7XpJ0wOGtq6L278ziYxJFYhrkjRBf/9PgzVZDcJvz9
 DzIIO4axQrXFsdxH3l1QI02FZz+ypSZQhO1ueqNClR+I0OjjJlhMaRcl/JIIh6b1OZaP
 4P8aaBd/EEq0LaagqzuxjII0El0P5WM6jrKivmtl6/UGD6H+Co5GzF4/MadvWLeIvVzF
 LmnEovj6enfwcmJm0LLU6XqM7TKGoedAnMqRM7mGrWYIHLvfik9q8Ij3NMGfJB+OiLQT
 0eRg==
X-Gm-Message-State: AOAM532vniR4DnSaZqP7CkhOqFGhHHxnZ+VPIFQeV2/WUxPzkgKIKUvm
 OTNO2xjFl9od52uUCj3cE/fw3eb2fSs=
X-Google-Smtp-Source: ABdhPJwC+1MPyUNLIAlszUOunTZlDyF09mgrO7ASkXbziaNGzhijQarC83+OwLlBBLMJlFzBrAsVaQ==
X-Received: by 2002:a5d:56c4:: with SMTP id m4mr1510523wrw.225.1631169066042; 
 Wed, 08 Sep 2021 23:31:06 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:327b:a453:3daa:de36?
 ([2a02:908:1252:fb60:327b:a453:3daa:de36])
 by smtp.gmail.com with ESMTPSA id i4sm670080wmd.5.2021.09.08.23.31.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Sep 2021 23:31:05 -0700 (PDT)
To: Rob Clark <robdclark@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>, =?UTF-8?Q?Michel_D=c3=a4nzer?=
 <michel@daenzer.net>, Pekka Paalanen <ppaalanen@gmail.com>,
 Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>,
 Gustavo Padovan <gustavo@padovan.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20210903184806.1680887-1-robdclark@gmail.com>
 <20210903184806.1680887-8-robdclark@gmail.com>
 <YTj4yPk1YuFk3oeL@phenom.ffwll.local>
 <CAF6AEGs3DhSKhDkft58VqkM6GwMMSq87GZkQAaPf_LLavDdacA@mail.gmail.com>
 <YTkExzW4QWBC6hMa@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <422d6afd-149b-5d4c-9af6-7300058e60d6@gmail.com>
Date: Thu, 9 Sep 2021 08:31:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YTkExzW4QWBC6hMa@phenom.ffwll.local>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v3 7/9] dma-buf/fence-chain: Add fence
 deadline support
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMDguMDkuMjEgdW0gMjA6NDUgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIFdlZCwgU2Vw
IDA4LCAyMDIxIGF0IDExOjE5OjE1QU0gLTA3MDAsIFJvYiBDbGFyayB3cm90ZToKPj4gT24gV2Vk
LCBTZXAgOCwgMjAyMSBhdCAxMDo1NCBBTSBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+
IHdyb3RlOgo+Pj4gT24gRnJpLCBTZXAgMDMsIDIwMjEgYXQgMTE6NDc6NThBTSAtMDcwMCwgUm9i
IENsYXJrIHdyb3RlOgo+Pj4+IEZyb206IFJvYiBDbGFyayA8cm9iZGNsYXJrQGNocm9taXVtLm9y
Zz4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IFJvYiBDbGFyayA8cm9iZGNsYXJrQGNocm9taXVt
Lm9yZz4KPj4+PiAtLS0KPj4+PiAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYyB8
IDEzICsrKysrKysrKysrKysKPj4+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCsp
Cj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5j
IGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5jCj4+Pj4gaW5kZXggMWI0Y2IzZTVj
ZWM5Li43MzZhOWFkM2VhNmQgMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1m
ZW5jZS1jaGFpbi5jCj4+Pj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5j
Cj4+Pj4gQEAgLTIwOCw2ICsyMDgsMTggQEAgc3RhdGljIHZvaWQgZG1hX2ZlbmNlX2NoYWluX3Jl
bGVhc2Uoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpCj4+Pj4gICAgICAgIGRtYV9mZW5jZV9mcmVl
KGZlbmNlKTsKPj4+PiAgIH0KPj4+Pgo+Pj4+ICsKPj4+PiArc3RhdGljIHZvaWQgZG1hX2ZlbmNl
X2NoYWluX3NldF9kZWFkbGluZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwKPj4+PiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBrdGltZV90IGRlYWRsaW5lKQo+Pj4+ICt7
Cj4+Pj4gKyAgICAgZG1hX2ZlbmNlX2NoYWluX2Zvcl9lYWNoKGZlbmNlLCBmZW5jZSkgewo+Pj4+
ICsgICAgICAgICAgICAgc3RydWN0IGRtYV9mZW5jZV9jaGFpbiAqY2hhaW4gPSB0b19kbWFfZmVu
Y2VfY2hhaW4oZmVuY2UpOwo+Pj4+ICsgICAgICAgICAgICAgc3RydWN0IGRtYV9mZW5jZSAqZiA9
IGNoYWluID8gY2hhaW4tPmZlbmNlIDogZmVuY2U7Cj4+PiBEb2Vzbid0IHRoaXMganVzdCBlbmQg
dXAgY2FsbGluZyBzZXRfZGVhZGxpbmUgb24gYSBjaGFpbiwgcG90ZW5ldGlhbGx5Cj4+PiByZXN1
bHRpbmcgaW4gcmVjdXJzaW9uPyBBbHNvIEkgZG9uJ3QgdGhpbmsgdGhpcyBzaG91bGQgZXZlciBo
YXBwZW4sIHdoeQo+Pj4gZGlkIHlvdSBhZGQgdGhhdD8KPj4gVGJoIHRoZSBmZW5jZS1jaGFpbiB3
YXMgdGhlIHBhcnQgSSB3YXMgYSBiaXQgZnV6enkgYWJvdXQsIGFuZCB0aGUgbWFpbgo+PiByZWFz
b24gSSBhZGRlZCBpZ3QgdGVzdHMuICBUaGUgaXRlcmF0aW9uIGlzIHNpbWlsYXIgdG8gaG93LCBm
b3IgZXgsCj4+IGRtYV9mZW5jZV9jaGFpbl9zaWduYWxlZCgpIHdvcmssIGFuZCBhY2NvcmRpbmcg
dG8gdGhlIGlndCB0ZXN0IGl0IGRvZXMKPj4gd2hhdCB3YXMgaW50ZW5kZWQKPiBIdWggaW5kZWVk
LiBNYXliZSBzb21ldGhpbmcgd2Ugc2hvdWxkIGZpeCwgbGlrZSB3aHkgZG9lcyB0aGUKPiBkbWFf
ZmVuY2VfY2hhaW5fZm9yX2VhY2ggbm90IGdpdmUgeW91IHRoZSB1cGNhc3QgY2hhaW4gcG9pbnRl
ciAuLi4gSSBndWVzcwo+IHRoaXMgYWxzbyBuZWVkcyBtb3JlIENocmlzdGlhbiBhbmQgbGVzcyBt
ZS4KClllYWggSSB3YXMgYWxzbyBhbHJlYWR5IHRoaW5raW5nIGFib3V0IGhhdmluZyBhIApkbWFf
ZmVuY2VfY2hhaW5fZm9yX2VhY2hfY29udGFpbmVkKCkgbWFjcm8gd2hpY2ggZGlyZWN0bHkgcmV0
dXJucyB0aGUgCmNvbnRhaW5pbmcgZmVuY2UsIGp1c3QgZGlkbid0IGhhZCB0aW1lIHRvIGltcGxl
bWVudC9jbGVhbiB0aGF0IHVwLgoKQW5kIHllcyB0aGUgcGF0Y2ggaXMgY29ycmVjdCBhcyBpdCBp
cyBhbmQgYXZvaWQgdGhlIHJlY3Vyc2lvbiwgc28gClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IGZvciB0aGlzIG9uZS4KClJlZ2FyZHMsCkNo
cmlzdGlhbi4KCj4gLURhbmllbAo+Cj4+IEJSLAo+PiAtUgo+Pgo+Pj4gLURhbmllbAo+Pj4KPj4+
PiArCj4+Pj4gKyAgICAgICAgICAgICBkbWFfZmVuY2Vfc2V0X2RlYWRsaW5lKGYsIGRlYWRsaW5l
KTsKPj4+PiArICAgICB9Cj4+Pj4gK30KPj4+PiArCj4+Pj4gICBjb25zdCBzdHJ1Y3QgZG1hX2Zl
bmNlX29wcyBkbWFfZmVuY2VfY2hhaW5fb3BzID0gewo+Pj4+ICAgICAgICAudXNlXzY0Yml0X3Nl
cW5vID0gdHJ1ZSwKPj4+PiAgICAgICAgLmdldF9kcml2ZXJfbmFtZSA9IGRtYV9mZW5jZV9jaGFp
bl9nZXRfZHJpdmVyX25hbWUsCj4+Pj4gQEAgLTIxNSw2ICsyMjcsNyBAQCBjb25zdCBzdHJ1Y3Qg
ZG1hX2ZlbmNlX29wcyBkbWFfZmVuY2VfY2hhaW5fb3BzID0gewo+Pj4+ICAgICAgICAuZW5hYmxl
X3NpZ25hbGluZyA9IGRtYV9mZW5jZV9jaGFpbl9lbmFibGVfc2lnbmFsaW5nLAo+Pj4+ICAgICAg
ICAuc2lnbmFsZWQgPSBkbWFfZmVuY2VfY2hhaW5fc2lnbmFsZWQsCj4+Pj4gICAgICAgIC5yZWxl
YXNlID0gZG1hX2ZlbmNlX2NoYWluX3JlbGVhc2UsCj4+Pj4gKyAgICAgLnNldF9kZWFkbGluZSA9
IGRtYV9mZW5jZV9jaGFpbl9zZXRfZGVhZGxpbmUsCj4+Pj4gICB9Owo+Pj4+ICAgRVhQT1JUX1NZ
TUJPTChkbWFfZmVuY2VfY2hhaW5fb3BzKTsKPj4+Pgo+Pj4+IC0tCj4+Pj4gMi4zMS4xCj4+Pj4K
Pj4+IC0tCj4+PiBEYW5pZWwgVmV0dGVyCj4+PiBTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29y
cG9yYXRpb24KPj4+IGh0dHA6Ly9ibG9nLmZmd2xsLmNoCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxt
YW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
