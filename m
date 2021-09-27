Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1501941D7EA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Sep 2021 12:38:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7B87262175
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Sep 2021 10:38:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7A11961170; Thu, 30 Sep 2021 10:38:16 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5A7A86141A;
	Thu, 30 Sep 2021 10:38:11 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C4F18603E6
 for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Sep 2021 10:25:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 592236322E; Mon, 27 Sep 2021 07:35:00 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
 [209.85.208.50])
 by lists.linaro.org (Postfix) with ESMTPS id 50738630F1
 for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Sep 2021 07:34:58 +0000 (UTC)
Received: by mail-ed1-f50.google.com with SMTP id bd28so3891202edb.9
 for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Sep 2021 00:34:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=zQB26B5eWUnzl+964mpUpFb8aQd6/nGrTcRgYihaeWc=;
 b=hhkZKKfmY6xHACewDTWjOFBz4xjAdw6xepF6ktK90NO/v63YVfo3bclcJjktmyxKd9
 Z/c4igoFBRypdKeRup7kuFoUmC/X1Ve6oHCvfGuhIPEsLfcEPQw33+GPKhEzsaTZc8AB
 FRO4bjD10C8Oh8tk8cVFMIHRCrcV/nFhAVuQJwEXZYxXtzHVZWPwpH6WwM4X58xMxD3G
 ANTPz2NS8tzJLST011L1Ub4nsekD7rgLMNy021dE0rsoWx/yWUahwOlLMkjDzbTjLZyQ
 gg06B5E6Oq2eJ6mqcnpBhkZzaI05ZMPzkrFUOtTv6WPupPyIVVbHmiOWBJUuvTNXTRaP
 2vyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=zQB26B5eWUnzl+964mpUpFb8aQd6/nGrTcRgYihaeWc=;
 b=XwdM8pxEFcS3Scy8cFVqfpV0XDO4XWpAeOkgo8DhUuR2OlhzgGKZdARgeAIHI5ZwTq
 BRxDsc0Ga9AUjy/fWEx1AB+SQvujJzPz6r26FJTviPO9tu3WSPAQHqxi4NVFbTFZkjzY
 pdfDOihMfbLaotfS4wRIms6cheviF0M5p62VoydGXEMHtN9ATcL6/OBoDThmNkI1QrOM
 E/rq6ByV1NvDdjtGtgk6i8l8HARzulqyJwj26RNh0lSi4mUfldhF781ygKyOw1yVMRTZ
 EiuqgZYUmfPI2T59MMxkAo/SrTAQE94o/BQdfih9/+0I7owySfDLuw19PkZlTrs30fj2
 fiNw==
X-Gm-Message-State: AOAM530Fe+tSjU1PQCVvHMqIA6pXNNZAPIhYhrIqGMtcJG0a89oKf1vU
 h6NSWHDJrg71JLU8LEmdxwpgV5OD/r4=
X-Google-Smtp-Source: ABdhPJyKxcFSxLyjYTbrEPilQCvwXzB/i+kykltwhE6uBKLPaKa7c1AQMv9DtFoICMHeA7Ce1DlXbg==
X-Received: by 2002:a5d:6a08:: with SMTP id m8mr25303052wru.336.1632726080941; 
 Mon, 27 Sep 2021 00:01:20 -0700 (PDT)
Received: from [192.168.178.21] (p5b0ea1b5.dip0.t-ipconnect.de.
 [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id w21sm2167288wmk.15.2021.09.27.00.01.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Sep 2021 00:01:20 -0700 (PDT)
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
To: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, etnaviv@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org
References: <20210924071759.22659-1-christian.koenig@amd.com>
 <20210924071759.22659-2-christian.koenig@amd.com>
Message-ID: <dbf6b324-511e-45d4-3316-f41f076c4f82@gmail.com>
Date: Mon, 27 Sep 2021 09:01:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210924071759.22659-2-christian.koenig@amd.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 2/4] drm/msm: allow compile_test on !ARM
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
Cc: christian.gmeiner@gmail.com, linux+etnaviv@armlinux.org.uk, sean@poorly.run,
 robdclark@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QXMgbG9uZyBhcyBub2JvZHkgb2JqZWN0cyBJJ20gZ29pbmcgdG8gcHVzaCB0aGlzIG9uZSBoZXJl
IHRvIApkcm0tbWlzYy1uZXh0IHdpdGggUm9iJ3MgcmIuCgpUaGUgb3RoZXIgcGF0Y2hlcyBzdGls
bCBuZWVkIGEgYml0IG1vcmUgd29yaywgYnV0IGJlaW5nIGFibGUgdG8gYXQgbGVhc3QgCmNvbXBp
bGUgdGVzdCBNU00gb24geDg2IGlzIHJlYWxseSBoZWxwZnVsLgoKQ2hyaXN0aWFuLgoKQW0gMjQu
MDkuMjEgdW0gMDk6MTcgc2NocmllYiBDaHJpc3RpYW4gS8O2bmlnOgo+IE1TTSBpcyBvbmUgb2Yg
dGhlIGZldyBkcml2ZXJzIHdoaWNoIHdvbid0IGV2ZW4gY29tcGlsZQo+IHRlc3Qgb24gIUFSTSBw
bGF0Zm9ybXMuCj4KPiBMb29raW5nIGludG8gdGhpcyBhIGJpdCBtb3JlIGl0IHR1cm5lZCBvdXQg
dGhhdCB0aGVyZSBpcwo+IGFjdHVhbGx5IG5vdCB0aGF0IG11Y2ggbWlzc2luZyB0byBhdCBsZWFz
dCBsZXQgdGhlIGRyaXZlcgo+IGNvbXBpbGUgb24geDg2IGFzIHdlbGwuCj4KPiBTbyB0aGlzIHBh
dGNoIHJlcGxhY2VzIHRoZSB1c2Ugb2YgcGh5c190b19wYWdlKCkgd2l0aCB0aGUKPiBvcGVuIGNv
ZGVkIHZlcnNpb24gYW5kIHByb3ZpZGVzIGEgZHVtbXkgZm9yIG9mX2RybV9maW5kX2JyaWRnZSgp
Lgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL21zbS9LY29uZmlnICAgfCAgNCArKy0t
Cj4gICBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYyB8ICAyICstCj4gICBpbmNsdWRlL2Ry
bS9kcm1fYnJpZGdlLmggICAgICB8IDEwICsrKysrKysrKy0KPiAgIDMgZmlsZXMgY2hhbmdlZCwg
MTIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vbXNtL0tjb25maWcgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL0tjb25maWcKPiBpbmRl
eCBlOWM2YWY3OGIxZDcuLjU4NzlmNjdiYzg4YyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vbXNtL0tjb25maWcKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL0tjb25maWcKPiBAQCAt
Myw5ICszLDkgQEAKPiAgIGNvbmZpZyBEUk1fTVNNCj4gICAJdHJpc3RhdGUgIk1TTSBEUk0iCj4g
ICAJZGVwZW5kcyBvbiBEUk0KPiAtCWRlcGVuZHMgb24gQVJDSF9RQ09NIHx8IFNPQ19JTVg1IHx8
IChBUk0gJiYgQ09NUElMRV9URVNUKQo+ICsJZGVwZW5kcyBvbiBBUkNIX1FDT00gfHwgU09DX0lN
WDUgfHwgQ09NUElMRV9URVNUCj4gICAJZGVwZW5kcyBvbiBJT01NVV9TVVBQT1JUCj4gLQlkZXBl
bmRzIG9uIE9GICYmIENPTU1PTl9DTEsKPiArCWRlcGVuZHMgb24gKE9GICYmIENPTU1PTl9DTEsp
IHx8IENPTVBJTEVfVEVTVAo+ICAgCWRlcGVuZHMgb24gUUNPTV9PQ01FTSB8fCBRQ09NX09DTUVN
PW4KPiAgIAlkZXBlbmRzIG9uIFFDT01fTExDQyB8fCBRQ09NX0xMQ0M9bgo+ICAgCWRlcGVuZHMg
b24gUUNPTV9DT01NQU5EX0RCIHx8IFFDT01fQ09NTUFORF9EQj1uCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2Vt
LmMKPiBpbmRleCAxNDkwNzYyMjc2OWYuLjViZDUxMWYwN2MwNyAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNt
X2dlbS5jCj4gQEAgLTg1LDcgKzg1LDcgQEAgc3RhdGljIHN0cnVjdCBwYWdlICoqZ2V0X3BhZ2Vz
X3ZyYW0oc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmosIGludCBucGFnZXMpCj4gICAKPiAgIAlw
YWRkciA9IHBoeXNhZGRyKG9iaik7Cj4gICAJZm9yIChpID0gMDsgaSA8IG5wYWdlczsgaSsrKSB7
Cj4gLQkJcFtpXSA9IHBoeXNfdG9fcGFnZShwYWRkcik7Cj4gKwkJcFtpXSA9IHBmbl90b19wYWdl
KF9fcGh5c190b19wZm4ocGFkZHIpKTsKPiAgIAkJcGFkZHIgKz0gUEFHRV9TSVpFOwo+ICAgCX0K
PiAgIAo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fYnJpZGdlLmggYi9pbmNsdWRlL2Ry
bS9kcm1fYnJpZGdlLmgKPiBpbmRleCA5Y2RiZDIwOTM4OGUuLmE0NDUyOThlMWMyNSAxMDA2NDQK
PiAtLS0gYS9pbmNsdWRlL2RybS9kcm1fYnJpZGdlLmgKPiArKysgYi9pbmNsdWRlL2RybS9kcm1f
YnJpZGdlLmgKPiBAQCAtNzkwLDExICs3OTAsMTkgQEAgZHJtX3ByaXZfdG9fYnJpZGdlKHN0cnVj
dCBkcm1fcHJpdmF0ZV9vYmogKnByaXYpCj4gICAKPiAgIHZvaWQgZHJtX2JyaWRnZV9hZGQoc3Ry
dWN0IGRybV9icmlkZ2UgKmJyaWRnZSk7Cj4gICB2b2lkIGRybV9icmlkZ2VfcmVtb3ZlKHN0cnVj
dCBkcm1fYnJpZGdlICpicmlkZ2UpOwo+IC1zdHJ1Y3QgZHJtX2JyaWRnZSAqb2ZfZHJtX2ZpbmRf
YnJpZGdlKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnApOwo+ICAgaW50IGRybV9icmlkZ2VfYXR0YWNo
KHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2Rlciwgc3RydWN0IGRybV9icmlkZ2UgKmJyaWRnZSwK
PiAgIAkJICAgICAgc3RydWN0IGRybV9icmlkZ2UgKnByZXZpb3VzLAo+ICAgCQkgICAgICBlbnVt
IGRybV9icmlkZ2VfYXR0YWNoX2ZsYWdzIGZsYWdzKTsKPiAgIAo+ICsjaWZkZWYgQ09ORklHX09G
Cj4gK3N0cnVjdCBkcm1fYnJpZGdlICpvZl9kcm1fZmluZF9icmlkZ2Uoc3RydWN0IGRldmljZV9u
b2RlICpucCk7Cj4gKyNlbHNlCj4gK3N0YXRpYyBpbmxpbmUgc3RydWN0IGRybV9icmlkZ2UgKm9m
X2RybV9maW5kX2JyaWRnZShzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wKQo+ICt7Cj4gKwlyZXR1cm4g
TlVMTDsKPiArfQo+ICsjZW5kaWYKPiArCj4gICAvKioKPiAgICAqIGRybV9icmlkZ2VfZ2V0X25l
eHRfYnJpZGdlKCkgLSBHZXQgdGhlIG5leHQgYnJpZGdlIGluIHRoZSBjaGFpbgo+ICAgICogQGJy
aWRnZTogYnJpZGdlIG9iamVjdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK
