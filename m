Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FFE46EB28
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Dec 2021 16:27:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A556561C3F
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Dec 2021 15:27:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7DFA461EB5; Thu,  9 Dec 2021 15:27:50 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C44F3617AB;
	Thu,  9 Dec 2021 15:27:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C1B5460559
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Dec 2021 15:27:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BF594617AB; Thu,  9 Dec 2021 15:27:46 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
 [209.85.208.181])
 by lists.linaro.org (Postfix) with ESMTPS id B6AB960559
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Dec 2021 15:27:44 +0000 (UTC)
Received: by mail-lj1-f181.google.com with SMTP id l7so9561898lja.2
 for <linaro-mm-sig@lists.linaro.org>; Thu, 09 Dec 2021 07:27:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=OD6dYNHp3btewwqvoNpB45FBLhPMDMantLC3BV7Jwf8=;
 b=ptKqzU0lblnbFQfnFsgXMY56ZMm6hIK+YQHm7mhiCZyk98AA1QuLf+LKWJTzP4iHM5
 7L4MXYXYRFTel5qGrkB0pkpQRj8k7rrnkN8bYzppq15x284viWL7fwJJAhcGll16XLjd
 4BXZh+0sPpaGaevNZlSq8LwHolN1rre9Ldwm2wJlUCKoOEa/viJMibpl1KxGbdwG65Ap
 3+czmC9WaSX3A5EOxWLcZTEZYORCQV1km0PSk85Up8L9DeaJazfvgqgFU9Ag+HMIDczR
 L1f2WZQSwYJ6rUjs0r9kJDgfp8Bo2n05DkjQp2ap/xJq+CgNvf0aoff8gGao2PnCuP5O
 6Z4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=OD6dYNHp3btewwqvoNpB45FBLhPMDMantLC3BV7Jwf8=;
 b=QxdMiMxv6h10eM05dgCGkNttgrrh1KdTXp3DZlB216o0TP8H9BvdRyntv6fLNZ7pIv
 pekk4JnW023uEyJrrU7rFw1YAKBDg1UWQsbqVFebTmXlMVVjCECG+HbxSe5ZvsT1SsXp
 xzWB54eX2qFZ4V5QrLd3LsGJbfR/asxhpGjp21Ob7Y3IykMGwFVg35R1dcm+g5MvXR7/
 3lC1fHg6FT9b4JPk0FafMjCR7Yf0idpE+FnVfufaKaEHt/M+ofW9vYK5nB+YMgsel6fe
 9+shapaxcnvoEtpoJrYISGUeU6nDADtphHMvJOjbeOHHfdwQlamUjbJaR5itBhpgJDNl
 6ysg==
X-Gm-Message-State: AOAM532PTUdMmQEdeT1vbtMGAycVmkKO7M76Uy9gZPwTWDKGm7CsUbr6
 54g5H8Lkn/jXS2t0P7+foU4=
X-Google-Smtp-Source: ABdhPJxSeQGBSZJYWjqYDF7X0RJoeNROhixN+DYE4tIatKvSS72CGZCgQCS0z23+R58yd2ZKFmcZkQ==
X-Received: by 2002:a2e:e09:: with SMTP id 9mr6798621ljo.172.1639063663537;
 Thu, 09 Dec 2021 07:27:43 -0800 (PST)
Received: from [192.168.2.145] (94-29-46-111.dynamic.spd-mgts.ru.
 [94.29.46.111])
 by smtp.googlemail.com with ESMTPSA id y7sm21114lfj.90.2021.12.09.07.27.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Dec 2021 07:27:43 -0800 (PST)
To: Akhil R <akhilrajeev@nvidia.com>, andy.shevchenko@gmail.com,
 christian.koenig@amd.com, dri-devel@lists.freedesktop.org,
 jonathanh@nvidia.com, ldewangan@nvidia.com, linaro-mm-sig@lists.linaro.org,
 linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-tegra@vger.kernel.org,
 p.zabel@pengutronix.de, sumit.semwal@linaro.org, thierry.reding@gmail.com,
 robh+dt@kernel.org, devicetree@vger.kernel.org
References: <1639062321-18840-1-git-send-email-akhilrajeev@nvidia.com>
 <1639062321-18840-3-git-send-email-akhilrajeev@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <72ea6030-5f2d-4f51-3a42-8386c3638c65@gmail.com>
Date: Thu, 9 Dec 2021 18:27:42 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <1639062321-18840-3-git-send-email-akhilrajeev@nvidia.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 2/2] i2c: tegra: Add SMBus block read
 and SMBus alert functions
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

MDkuMTIuMjAyMSAxODowNSwgQWtoaWwgUiDQv9C40YjQtdGCOgo+IEVtdWxhdGUgdGhlIFNNQnVz
IGJsb2NrIHJlYWQgdXNpbmcgQ29udGludWVYZmVyIGFuZCBTTUJ1cyB1c2luZyBHUElPCj4gaW50
ZXJydXB0Lgo+IAo+IEZvciBTTUJ1cyBibG9jayByZWFkLCB0aGUgZHJpdmVyICByZWFkcyB0aGUg
Zmlyc3QgYnl0ZSB3aXRoIENvbnRpbnVlWGZlcgo+IHNldCB3aGljaCB3aWxsIGhlbHAgdG8gcGFy
c2UgdGhlIGRhdGEgY291bnQgYW5kIHJlYWQgdGhlIHJlbWFpbmluZyBieXRlcwo+IHdpdGhvdXQg
c3RvcCBjb25kaXRpb24gaW4gYmV0d2Vlbi4KPiBTTUJ1cyBhbGVydCBpcyBpbXBsZW1lbnRlZCB1
c2luZyBleHRlcm5hbCBncGlvIGludGVycnVwdC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBBa2hpbCBS
IDxha2hpbHJhamVldkBudmlkaWEuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2kyYy9idXNzZXMvaTJj
LXRlZ3JhLmMgfCA1NCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0K
PiAgMSBmaWxlIGNoYW5nZWQsIDUzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy10ZWdyYS5jIGIvZHJpdmVycy9pMmMv
YnVzc2VzL2kyYy10ZWdyYS5jCj4gaW5kZXggYTViZThmMC4uM2I3MDAxMyAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLXRlZ3JhLmMKPiArKysgYi9kcml2ZXJzL2kyYy9idXNz
ZXMvaTJjLXRlZ3JhLmMKPiBAQCAtMTQsNiArMTQsNyBAQAo+ICAjaW5jbHVkZSA8bGludXgvZG1h
LW1hcHBpbmcuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2Vyci5oPgo+ICAjaW5jbHVkZSA8bGludXgv
aTJjLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9pMmMtc21idXMuaD4KPiAgI2luY2x1ZGUgPGxpbnV4
L2luaXQuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2ludGVycnVwdC5oPgo+ICAjaW5jbHVkZSA8bGlu
dXgvaW8uaD4KPiBAQCAtMjI2LDYgKzIyNywxMSBAQCBzdHJ1Y3QgdGVncmFfaTJjX2h3X2ZlYXR1
cmUgewo+ICAJYm9vbCBoYXNfaW50ZXJmYWNlX3RpbWluZ19yZWc7Cj4gIH07Cj4gIAo+ICtzdHJ1
Y3QgdGVncmFfaTJjX3NtYmFsZXJ0IHsKCnNtYmFsZXJ0IGlzbid0IGEgd29yZCwgc2hvdWxkIGJl
IHNtYnVzX2FsZXJ0LiBTYW1lIGZvciB0aGUgR1BJTyBuYW1lIGFuZApvdGhlciBwbGFjZXMuCgo+
ICsJc3RydWN0IGkyY19zbWJ1c19hbGVydF9zZXR1cCBhbGVydF9kYXRhOwo+ICsJc3RydWN0IGky
Y19jbGllbnQgKmFyYTsKCldoYXQgImFyYSIgc3RhbmRzIGZvcj8gUGxlYXNlIHVzZSBtZWFuaW5n
ZnVsIG5hbWVzLCBsaWtlIGFsZXJ0X2RldiBmb3IKZXhhbXBsZS4KCkkgZG9uJ3Qgc2VlIHdoZXJl
IHRoaXMgbWVtYmVyIGlzIHVzZWQgYXQgYWxsLCBwbGVhc2UgcmVtb3ZlIGl0LgoKPiArfTsKPiAr
Cj4gIC8qKgo+ICAgKiBzdHJ1Y3QgdGVncmFfaTJjX2RldiAtIHBlciBkZXZpY2UgSTJDIGNvbnRl
eHQKPiAgICogQGRldjogZGV2aWNlIHJlZmVyZW5jZSBmb3IgcG93ZXIgbWFuYWdlbWVudAo+IEBA
IC0yODAsNiArMjg2LDggQEAgc3RydWN0IHRlZ3JhX2kyY19kZXYgewo+ICAJaW50IG1zZ19lcnI7
Cj4gIAl1OCAqbXNnX2J1ZjsKPiAgCj4gKwlzdHJ1Y3QgdGVncmFfaTJjX3NtYmFsZXJ0IHNtYmFs
ZXJ0OwoKQWxsIHByb3BlcnRpZXMgbXVzdCBoYXZlIGRvYyBjb21tZW50LgoKPiAgCXN0cnVjdCBj
b21wbGV0aW9uIGRtYV9jb21wbGV0ZTsKPiAgCXN0cnVjdCBkbWFfY2hhbiAqdHhfZG1hX2NoYW47
Cj4gIAlzdHJ1Y3QgZG1hX2NoYW4gKnJ4X2RtYV9jaGFuOwo+IEBAIC0xMjMyLDYgKzEyNDAsMTEg
QEAgc3RhdGljIGludCB0ZWdyYV9pMmNfeGZlcl9tc2coc3RydWN0IHRlZ3JhX2kyY19kZXYgKmky
Y19kZXYsCj4gIAkJcmV0dXJuIGVycjsKPiAgCj4gIAlpMmNfZGV2LT5tc2dfYnVmID0gbXNnLT5i
dWY7Cj4gKwo+ICsJLyogVGhlIGNvbmRpdGlvbiB0cnVlIGltcGxpZXMgc21idXMgYmxvY2sgcmVh
ZCBhbmQgbGVuIGlzIGFscmVhZHkgcmVhZCovCgpQcm9wZXIgU01CdXMgY2FwaXRhbGl6YXRpb24g
aW4gY29tbWVudHMuIE11c3Npbmcgd2hpdGVzcGFjZSBpbiB0aGUgZW5kCm9mIHRoZSBjb21tZW50
LgoKPiArCWlmIChtc2ctPmZsYWdzICYgSTJDX01fUkVDVl9MRU4gJiYgZW5kX3N0YXRlICE9IE1T
R19FTkRfQ09OVElOVUUpCj4gKwkJaTJjX2Rldi0+bXNnX2J1ZiA9IG1zZy0+YnVmICsgMTsKPiAr
Cj4gIAlpMmNfZGV2LT5tc2dfYnVmX3JlbWFpbmluZyA9IG1zZy0+bGVuOwo+ICAJaTJjX2Rldi0+
bXNnX2VyciA9IEkyQ19FUlJfTk9ORTsKPiAgCWkyY19kZXYtPm1zZ19yZWFkID0gISEobXNnLT5m
bGFncyAmIEkyQ19NX1JEKTsKPiBAQCAtMTM4OCw2ICsxNDAxLDE1IEBAIHN0YXRpYyBpbnQgdGVn
cmFfaTJjX3hmZXIoc3RydWN0IGkyY19hZGFwdGVyICphZGFwLCBzdHJ1Y3QgaTJjX21zZyBtc2dz
W10sCj4gIAkJCWVsc2UKPiAgCQkJCWVuZF90eXBlID0gTVNHX0VORF9SRVBFQVRfU1RBUlQ7Cj4g
IAkJfQo+ICsJCS8qIElmIE1fUkVDVl9MRU4gdXNlIENvbnRpbnVlWGZlciB0byByZWFkIHRoZSBm
aXJzdCBieXRlICovCj4gKwkJaWYgKG1zZ3NbaV0uZmxhZ3MgJiBJMkNfTV9SRUNWX0xFTikgewo+
ICsJCQlyZXQgPSB0ZWdyYV9pMmNfeGZlcl9tc2coaTJjX2RldiwgJm1zZ3NbaV0sIE1TR19FTkRf
Q09OVElOVUUpOwo+ICsJCQlpZiAocmV0KQo+ICsJCQkJYnJlYWs7Cj4gKwkJCS8qIFNldCB0aGUg
cmVhZCBieXRlIGFzIG1zZyBsZW4gKi8KPiArCQkJbXNnc1tpXS5sZW4gPSBtc2dzW2ldLmJ1Zlsw
XTsKPiArCQkJZGV2X2RiZyhpMmNfZGV2LT5kZXYsICJyZWFkaW5nICVkIGJ5dGVzXG4iLCBtc2dz
W2ldLmxlbik7Cj4gKwkJfQo+ICAJCXJldCA9IHRlZ3JhX2kyY194ZmVyX21zZyhpMmNfZGV2LCAm
bXNnc1tpXSwgZW5kX3R5cGUpOwo+ICAJCWlmIChyZXQpCj4gIAkJCWJyZWFrOwo+IEBAIC0xNDE1
LDcgKzE0MzcsOCBAQCBzdGF0aWMgdTMyIHRlZ3JhX2kyY19mdW5jKHN0cnVjdCBpMmNfYWRhcHRl
ciAqYWRhcCkKPiAgewo+ICAJc3RydWN0IHRlZ3JhX2kyY19kZXYgKmkyY19kZXYgPSBpMmNfZ2V0
X2FkYXBkYXRhKGFkYXApOwo+ICAJdTMyIHJldCA9IEkyQ19GVU5DX0kyQyB8IChJMkNfRlVOQ19T
TUJVU19FTVVMICYgfkkyQ19GVU5DX1NNQlVTX1FVSUNLKSB8Cj4gLQkJICBJMkNfRlVOQ18xMEJJ
VF9BRERSIHwJSTJDX0ZVTkNfUFJPVE9DT0xfTUFOR0xJTkc7Cj4gKwkJICBJMkNfRlVOQ19TTUJV
U19SRUFEX0JMT0NLX0RBVEEgfCBJMkNfRlVOQ18xMEJJVF9BRERSIHwKPiArCQkgIEkyQ19GVU5D
X1BST1RPQ09MX01BTkdMSU5HOwo+ICAKPiAgCWlmIChpMmNfZGV2LT5ody0+aGFzX2NvbnRpbnVl
X3hmZXJfc3VwcG9ydCkKPiAgCQlyZXQgfD0gSTJDX0ZVTkNfTk9TVEFSVDsKPiBAQCAtMTcyNyw2
ICsxNzUwLDI5IEBAIHN0YXRpYyBpbnQgdGVncmFfaTJjX2luaXRfaGFyZHdhcmUoc3RydWN0IHRl
Z3JhX2kyY19kZXYgKmkyY19kZXYpCj4gIAlyZXR1cm4gcmV0Owo+ICB9Cj4gIAo+ICtzdGF0aWMg
aW50IHRlZ3JhX2kyY19zZXR1cF9zbWJhbGVydChzdHJ1Y3QgdGVncmFfaTJjX2RldiAqaTJjX2Rl
dikKPiArewo+ICsJc3RydWN0IHRlZ3JhX2kyY19zbWJhbGVydCAqc21iYWxlcnQgPSAmaTJjX2Rl
di0+c21iYWxlcnQ7Cj4gKwlzdHJ1Y3QgZ3Bpb19kZXNjICphbGVydF9ncGlvZDsKPiArCXN0cnVj
dCBpMmNfY2xpZW50ICphcmE7Cj4gKwo+ICsJYWxlcnRfZ3Bpb2QgPSBkZXZtX2dwaW9kX2dldChp
MmNfZGV2LT5kZXYsICJzbWJhbGVydCIsIEdQSU9EX0lOKTsKPiArCWlmIChJU19FUlIoYWxlcnRf
Z3Bpb2QpKQo+ICsJCXJldHVybiBQVFJfRVJSKGFsZXJ0X2dwaW9kKTsKPiArCj4gKwlzbWJhbGVy
dC0+YWxlcnRfZGF0YS5pcnEgPSBncGlvZF90b19pcnEoYWxlcnRfZ3Bpb2QpOwo+ICsJaWYgKHNt
YmFsZXJ0LT5hbGVydF9kYXRhLmlycSA8PSAwKQo+ICsJCXJldHVybiBzbWJhbGVydC0+YWxlcnRf
ZGF0YS5pcnE7Cj4gKwo+ICsJYXJhID0gaTJjX25ld19zbWJ1c19hbGVydF9kZXZpY2UoJmkyY19k
ZXYtPmFkYXB0ZXIsICZzbWJhbGVydC0+YWxlcnRfZGF0YSk7Cj4gKwlpZiAoSVNfRVJSKGFyYSkp
Cj4gKwkJcmV0dXJuIFBUUl9FUlIoYXJhKTsKPiArCj4gKwlzbWJhbGVydC0+YXJhID0gYXJhOwo+
ICsKPiArCXJldHVybiAwOwo+ICt9Cj4gKwo+ICBzdGF0aWMgaW50IHRlZ3JhX2kyY19wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICB7Cj4gIAlzdHJ1Y3QgdGVncmFfaTJjX2Rl
diAqaTJjX2RldjsKPiBAQCAtMTgyMSw2ICsxODY3LDEyIEBAIHN0YXRpYyBpbnQgdGVncmFfaTJj
X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAlpZiAoZXJyKQo+ICAJCWdv
dG8gcmVsZWFzZV9ycG07Cj4gIAo+ICsJaWYgKGRldmljZV9wcm9wZXJ0eV9yZWFkX2Jvb2woaTJj
X2Rldi0+ZGV2LCAic21idXMtYWxlcnQiKSkgewoKSSdkIG1vdmUgdGhpcyBkZXZpY2VfcHJvcGVy
dHlfcmVhZF9ib29sKCkgaW5zaWRlIG9mCnRlZ3JhX2kyY19zZXR1cF9zbWJ1c19hbGVydCgpLCBm
b3IgY29uc2lzdGVuY3kgd2l0aCB0aGUgcmVzdCBvZiB0aGUgY29kZQppbiB0aGlzIGRyaXZlci4K
CkFsdGhvdWdoLCB5b3Ugc2hvdWxkbid0IG5lZWQgaXQgYXQgYWxsLCB1c2UgZGV2bV9ncGlvZF9n
ZXRfb3B0aW9uYWwoKS4KCj4gKwkJZXJyID0gdGVncmFfaTJjX3NldHVwX3NtYmFsZXJ0KGkyY19k
ZXYpOwo+ICsJCWlmIChlcnIpCj4gKwkJCWRldl93YXJuKCZwZGV2LT5kZXYsICJzbWJ1cy1hbGVy
dCBzZXR1cCBmYWlsZWQ6ICVkXG4iLCBlcnIpOwoKR1BJTyBtYXkgcHJvYmUtZGVmZXIsIG11c3Qg
YmUgZGV2X2Vycl9wcm9iZSgpIGhlcmUuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==
