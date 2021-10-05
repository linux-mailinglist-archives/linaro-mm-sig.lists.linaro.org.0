Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B3FF9422362
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 12:28:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 96A426068A
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Oct 2021 10:28:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1D22361E96; Tue,  5 Oct 2021 10:28:03 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4BF2B604F6;
	Tue,  5 Oct 2021 10:28:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EE88F603AB
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 10:27:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EA90F604F6; Tue,  5 Oct 2021 10:27:58 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
 [209.85.128.49])
 by lists.linaro.org (Postfix) with ESMTPS id E45F9603AB
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Oct 2021 10:27:56 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id
 m14-20020a05600c3b0e00b0030d4dffd04fso2504173wms.3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Oct 2021 03:27:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=kho0a35tcTvwlWpi5rtKIMqf35HFHYFjgSKnZBnXZsw=;
 b=T70aUK9jA4vKL40rXJdZt8UdxDE5rcJtolyMQHjgK2Xc0e+UYo2yuvRh/f35X9x/de
 90mNlB6c2BMXmufHRi/rySvgCZzt5Pc7aPNjP7UKLFuYJzSJr/FWO9MLbqV1xiZM+CPT
 GtSQ4eKOMKLlH13uQJWFfC4rPyfxHuSW24pnAXWQpQ01R6zZbzSXN4DJCo1OEk+WAdtN
 ujF4OekTH1TXkqNDf/amCQ0+PQqnGdgYkOP1qR/Av6S9Far6S/bl0xfHz2u8k6WzqLd1
 JFn2pScqoEF5OvoGHWePftYwpNZW/ioWtojRpz0UIHoe+qK1H79fagxwHL9vC+uuHJ68
 98xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=kho0a35tcTvwlWpi5rtKIMqf35HFHYFjgSKnZBnXZsw=;
 b=pKS5/f037pfoRtXpgYdXZDVlP8GJymkfDorzRBw63hEMrd2TIz5jZx6QOG3NYdVJ4K
 p9uVA2jVJV7NMpXcaV+UGPecU2JCV5S9ZnC9ppa0y9HxtWNVH8vMhfMrGJ5+V2KA0mfF
 +eB35CPBxQZJk+ORkHl6XI1obKCvEaNNZK0L24aE+Y3uFKscw+SLumxfE1kG7Wq0BK2J
 Q0dCd+etHQnx4FOvPRdwex9fdABvUbn/Co+8VbtpWWP9D2KkLEJB7iCc0/zIB91rftCH
 sUF1oHsSTOFiWqppLTyg5ub8E56cybFPBj9HlikyJXOTiZ/74+flP/y4wtey15VLrJ5G
 Wutg==
X-Gm-Message-State: AOAM530mooNeBzQjtYvHy+Xl1cOmJH4qFNKVfCuoi+NiiPVPVzashrnp
 mb7C0UqXddiaZjTZlZrfv5o=
X-Google-Smtp-Source: ABdhPJxfUh2w+bcIbJ9A2HD7U1SbcakoN0gg4Y1tCsPkyWfmc74pveYYb7fxwPzGvmatmwb+2YfI/g==
X-Received: by 2002:a05:600c:230f:: with SMTP id
 15mr2546316wmo.19.1633429676019; 
 Tue, 05 Oct 2021 03:27:56 -0700 (PDT)
Received: from [192.168.178.21] (p5b0ea1b5.dip0.t-ipconnect.de.
 [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id m14sm1390738wmi.47.2021.10.05.03.27.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 Oct 2021 03:27:55 -0700 (PDT)
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20211001100610.2899-1-christian.koenig@amd.com>
 <20211001100610.2899-25-christian.koenig@amd.com>
 <80bb132f-0e40-68a1-d034-2d4b17d321ad@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <4e94e263-fd20-4779-690a-b530c220b350@gmail.com>
Date: Tue, 5 Oct 2021 12:27:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <80bb132f-0e40-68a1-d034-2d4b17d321ad@linux.intel.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 24/28] drm: use new iterator in
 drm_gem_plane_helper_prepare_fb
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

QW0gMDUuMTAuMjEgdW0gMDk6NTMgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoKPgo+IE9uIDAxLzEw
LzIwMjEgMTE6MDYsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+IE1ha2VzIHRoZSBoYW5kbGlu
ZyBhIGJpdCBtb3JlIGNvbXBsZXgsIGJ1dCBhdm9pZHMgdGhlIHVzZSBvZgo+PiBkbWFfcmVzdl9n
ZXRfZXhjbF91bmxvY2tlZCgpLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0v
ZHJtX2dlbV9hdG9taWNfaGVscGVyLmMgfCAxMyArKysrKysrKysrKy0tCj4+IMKgIDEgZmlsZSBj
aGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fYXRvbWljX2hlbHBlci5jIAo+PiBiL2RyaXZlcnMv
Z3B1L2RybS9kcm1fZ2VtX2F0b21pY19oZWxwZXIuYwo+PiBpbmRleCBlNTcwMzk4YWJkNzguLjIx
ZWQ5MzAwNDJiOCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fYXRvbWlj
X2hlbHBlci5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX2F0b21pY19oZWxwZXIu
Ywo+PiBAQCAtMTQzLDYgKzE0Myw3IEBACj4+IMKgwqAgKi8KPj4gwqAgaW50IGRybV9nZW1fcGxh
bmVfaGVscGVyX3ByZXBhcmVfZmIoc3RydWN0IGRybV9wbGFuZSAqcGxhbmUsIHN0cnVjdCAKPj4g
ZHJtX3BsYW5lX3N0YXRlICpzdGF0ZSkKPj4gwqAgewo+PiArwqDCoMKgIHN0cnVjdCBkbWFfcmVz
dl9pdGVyIGN1cnNvcjsKPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iajsK
Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKPj4gwqAgQEAgLTE1MCw5ICsx
NTEsMTcgQEAgaW50IGRybV9nZW1fcGxhbmVfaGVscGVyX3ByZXBhcmVfZmIoc3RydWN0IAo+PiBk
cm1fcGxhbmUgKnBsYW5lLCBzdHJ1Y3QgZHJtX3BsYW5lX3N0Cj4+IMKgwqDCoMKgwqDCoMKgwqDC
oCByZXR1cm4gMDsKPj4gwqAgwqDCoMKgwqDCoCBvYmogPSBkcm1fZ2VtX2ZiX2dldF9vYmooc3Rh
dGUtPmZiLCAwKTsKPj4gLcKgwqDCoCBmZW5jZSA9IGRtYV9yZXN2X2dldF9leGNsX3VubG9ja2Vk
KG9iai0+cmVzdik7Cj4+IC3CoMKgwqAgZHJtX2F0b21pY19zZXRfZmVuY2VfZm9yX3BsYW5lKHN0
YXRlLCBmZW5jZSk7Cj4+ICvCoMKgwqAgZG1hX3Jlc3ZfaXRlcl9iZWdpbigmY3Vyc29yLCBvYmot
PnJlc3YsIGZhbHNlKTsKPj4gK8KgwqDCoCBkbWFfcmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tl
ZCgmY3Vyc29yLCBmZW5jZSkgewo+PiArwqDCoMKgwqDCoMKgwqAgZG1hX2ZlbmNlX2dldChmZW5j
ZSk7Cj4+ICvCoMKgwqDCoMKgwqDCoCBkbWFfcmVzdl9pdGVyX2VuZCgmY3Vyc29yKTsKPj4gK8Kg
wqDCoMKgwqDCoMKgIC8qIFRPRE86IFdlIG9ubHkgdXNlIHRoZSBmaXJzdCB3cml0ZSBmZW5jZSBo
ZXJlICovCj4KPiBXaGF0IGlzIHRoZSBUT0RPPyBOQiBpbnN0ZWFkPwoKVGhlIGRybSBhdG9taWMg
QVBJIGNhbiB1bmZvcnR1bmF0ZWx5IGhhbmRsZSBvbmx5IG9uZSBmZW5jZSBhbmQgd2UgY2FuIApj
ZXJ0YWlubHkgaGF2ZSBtb3JlIHRoYW4gdGhhdC4KCj4KPj4gKyBkcm1fYXRvbWljX3NldF9mZW5j
ZV9mb3JfcGxhbmUoc3RhdGUsIGZlbmNlKTsKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAwOwo+
PiArwqDCoMKgIH0KPj4gK8KgwqDCoCBkbWFfcmVzdl9pdGVyX2VuZCgmY3Vyc29yKTsKPj4gwqAg
K8KgwqDCoCBkcm1fYXRvbWljX3NldF9mZW5jZV9mb3JfcGxhbmUoc3RhdGUsIE5VTEwpOwo+Cj4g
wqDCoMKgwqBkbWFfcmVzdl9pdGVyX2JlZ2luKCZjdXJzb3IsIG9iai0+cmVzdiwgZmFsc2UpOwo+
IMKgwqDCoMKgZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQoJmN1cnNvciwgZmVuY2Up
IHsKPiDCoMKgwqDCoMKgwqDCoCBkbWFfZmVuY2VfZ2V0KGZlbmNlKTsKPiDCoMKgwqDCoMKgwqDC
oCBicmVhazsKPiDCoMKgwqDCoH0KPiDCoMKgwqDCoGRtYV9yZXN2X2l0ZXJfZW5kKCZjdXJzb3Ip
Owo+Cj4gwqDCoMKgwqBkcm1fYXRvbWljX3NldF9mZW5jZV9mb3JfcGxhbmUoc3RhdGUsIGZlbmNl
KTsKPgo+IERvZXMgdGhpcyB3b3JrPwoKWWVhaCB0aGF0IHNob3VsZCB3b3JrIGFzIHdlbGwuCgo+
Cj4gQnV0IG92ZXJhbGwgSSBhbSBub3Qgc3VyZSB0aGlzIGlzIG5pY2VyLiBJcyB0aGUgZ29hbCB0
byByZW1vdmUgCj4gZG1hX3Jlc3ZfZ2V0X2V4Y2xfdW5sb2NrZWQgYXMgQVBJIGl0IGp1c3QgZG9l
cyBub3QgaGFwcGVuIGluIHRoaXMgc2VyaWVzPwoKWWVzLCB0aGUgb25seSB1c2VyIGxlZnQgaXMg
dGhlIGk5MTVfZ2VtX29iamVjdF9sYXN0X3dyaXRlX2VuZ2luZSgpIApmdW5jdGlvbiBhbmQgdGhh
dCBvbmUgeW91IGFscmVhZHkgcmVtb3ZlZCBpbiBpOTE1LgoKUmVnYXJkcywKQ2hyaXN0aWFuLgoK
Pgo+IFJlZ2FyZHMsCj4KPiBUdnJ0a28KPgo+PiDCoMKgwqDCoMKgIHJldHVybiAwOwo+PiDCoCB9
Cj4+IMKgIEVYUE9SVF9TWU1CT0xfR1BMKGRybV9nZW1fcGxhbmVfaGVscGVyX3ByZXBhcmVfZmIp
Owo+PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0
dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
