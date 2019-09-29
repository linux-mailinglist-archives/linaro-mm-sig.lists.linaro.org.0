Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B81F7C1982
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 29 Sep 2019 22:57:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E5BF960C15
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 29 Sep 2019 20:57:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D978D61063; Sun, 29 Sep 2019 20:57:55 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E1604608D0;
	Sun, 29 Sep 2019 20:57:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3F95760749
 for <linaro-mm-sig@lists.linaro.org>; Sun, 29 Sep 2019 20:57:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 25B10608D0; Sun, 29 Sep 2019 20:57:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by lists.linaro.org (Postfix) with ESMTPS id C8AC160749
 for <linaro-mm-sig@lists.linaro.org>; Sun, 29 Sep 2019 20:57:14 +0000 (UTC)
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com
 [209.85.221.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-51-yMvx9zSJMnCGJAaqctgk8g-1; Sun, 29 Sep 2019 16:57:13 -0400
Received: by mail-vk1-f198.google.com with SMTP id t200so5731168vkd.21
 for <linaro-mm-sig@lists.linaro.org>; Sun, 29 Sep 2019 13:57:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gFvDTt7rQrsZZ2B9OPwXJlEOA+EfFx47BQVi5RhehjE=;
 b=bQFXwo0ud2+mpn8mSjQ8UAIMI4qos+gFIAIrNx4QhF2oFFSDW+TQOqgaZ2BArZth4V
 MQzpXam3m/6kw3AlnHFXh3S3DjzCPsx1oPpDkWI8PrbSKP4SiUcRu9mEJ6lRGHY52Qw6
 znUEFybUcpWUgL6S+eLAmbwBIftwop5HbL+jPv2c+1IJjvni2nzgaQNNXegOlAkk/WVS
 S/XmkziuC8BAalGkBIV7BY/GoDIEUmZGlBLgue4XWERQRLBHv6PVcturfaWR/DsCqEbB
 hBiozM0WlVprm+g70XEE4km0DErzkvzhapYkCJuATqNtXbOjgkiC/su2R/tmaA+jBRfE
 7M0g==
X-Gm-Message-State: APjAAAWqDC9JLKf+jQDfHFrwmd6dOnu+RITS2J4dIYykCYj98JkSZC+T
 Ehk5rmVueNWf2wQblhekwLLTvSiIrzVKTAIx6UVnxUqs6t9twj6BhTCM9N2RUtAQmkdDQgTUEAK
 QBJ20khrzzC57NVQ8DnEmA/0vNOY=
X-Received: by 2002:a67:e953:: with SMTP id p19mr7940279vso.79.1569790632604; 
 Sun, 29 Sep 2019 13:57:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzh4aLzX78Mglpneti4IO9tW37qPuzGkqqbl4KUInJc9W0aU/g8pfaIxVb+kTYNDJVDGxfudw==
X-Received: by 2002:a67:e953:: with SMTP id p19mr7940242vso.79.1569790631423; 
 Sun, 29 Sep 2019 13:57:11 -0700 (PDT)
Received: from ?IPv6:2601:342:8200:6edc::b073? ([2601:342:8200:6edc::b073])
 by smtp.gmail.com with ESMTPSA id n189sm3395140vkf.40.2019.09.29.13.57.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 29 Sep 2019 13:57:10 -0700 (PDT)
To: jun.zhang@intel.com, sumit.semwal@linaro.org, gregkh@linuxfoundation.org, 
 arve@android.com, tkjos@android.com, maco@android.com,
 joel@joelfernandes.org, christian@brauner.io
References: <20190929072841.14848-1-jun.zhang@intel.com>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <7aad1995-4bb2-a74e-954f-872ea21a752b@redhat.com>
Date: Sun, 29 Sep 2019 16:57:08 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20190929072841.14848-1-jun.zhang@intel.com>
Content-Language: en-US
X-MC-Unique: yMvx9zSJMnCGJAaqctgk8g-1
X-Mimecast-Spam-Score: 0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devel@driverdev.osuosl.org, Jie A <jie.a.bai@intel.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, bo <bo.he@intel.com>
Subject: Re: [Linaro-mm-sig] [PATCH] ion_system_heap: support X86 archtecture
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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

T24gOS8yOS8xOSAzOjI4IEFNLCBqdW4uemhhbmdAaW50ZWwuY29tIHdyb3RlOgo+IEZyb206IHpo
YW5nIGp1biA8anVuLnpoYW5nQGludGVsLmNvbT4KPiAKPiB3ZSBzZWUgdG9ucyBvZiB3YXJuaW5n
IGxpa2U6Cj4gWyAgIDQ1Ljg0Njg3Ml0geDg2L1BBVDogTkRLIE1lZGlhQ29kZWNfOjM3NTMgbWFw
IHBmbiBSQU0gcmFuZ2UgcmVxCj4gd3JpdGUtY29tYmluaW5nIGZvciBbbWVtIDB4MWU3YTgwMDAw
LTB4MWU3YTg3ZmZmXSwgZ290IHdyaXRlLWJhY2sKPiBbICAgNDUuODQ4ODI3XSB4ODYvUEFUOiAu
dm9yYmlzLmRlY29kZXI6NDA4OCBtYXAgcGZuIFJBTSByYW5nZSByZXEKPiB3cml0ZS1jb21iaW5p
bmcgZm9yIFttZW0gMHgxZTdhNTgwMDAtMHgxZTdhNThmZmZdLCBnb3Qgd3JpdGUtYmFjawo+IFsg
ICA0NS44NDg4NzVdIHg4Ni9QQVQ6IE5ESyBNZWRpYUNvZGVjXzozNzUzIG1hcCBwZm4gUkFNIHJh
bmdlIHJlcQo+IHdyaXRlLWNvbWJpbmluZyBmb3IgW21lbSAweDFlN2E0ODAwMC0weDFlN2E0ZmZm
Zl0sIGdvdCB3cml0ZS1iYWNrCj4gWyAgIDQ1Ljg0OTQwM10geDg2L1BBVDogLnZvcmJpcy5kZWNv
ZGVyOjQwODggbWFwIHBmbiBSQU0gcmFuZ2UKPiByZXEgd3JpdGUtY29tYmluaW5nIGZvciBbbWVt
IDB4MWU3YTcwMDAwLTB4MWU3YTcwZmZmXSwgZ290IHdyaXRlLWJhY2sKPiAKPiBjaGVjayB0aGUg
a2VybmVsIERvY3VtZW50YXRpb24veDg2L3BhdC50eHQsIGl0IHNheXM6Cj4gQS4gRXhwb3J0aW5n
IHBhZ2VzIHRvIHVzZXJzIHdpdGggcmVtYXBfcGZuX3JhbmdlLCBpb19yZW1hcF9wZm5fcmFuZ2Us
Cj4gdm1faW5zZXJ0X3Bmbgo+IERyaXZlcnMgd2FudGluZyB0byBleHBvcnQgc29tZSBwYWdlcyB0
byB1c2Vyc3BhY2UgZG8gaXQgYnkgdXNpbmcKPiBtbWFwIGludGVyZmFjZSBhbmQgYSBjb21iaW5h
dGlvbiBvZgo+IDEpIHBncHJvdF9ub25jYWNoZWQoKQo+IDIpIGlvX3JlbWFwX3Bmbl9yYW5nZSgp
IG9yIHJlbWFwX3Bmbl9yYW5nZSgpIG9yIHZtX2luc2VydF9wZm4oKQo+IFdpdGggUEFUIHN1cHBv
cnQsIGEgbmV3IEFQSSBwZ3Byb3Rfd3JpdGVjb21iaW5lIGlzIGJlaW5nIGFkZGVkLgo+IFNvLCBk
cml2ZXJzIGNhbiBjb250aW51ZSB0byB1c2UgdGhlIGFib3ZlIHNlcXVlbmNlLCB3aXRoIGVpdGhl
cgo+IHBncHJvdF9ub25jYWNoZWQoKSBvciBwZ3Byb3Rfd3JpdGVjb21iaW5lKCkgaW4gc3RlcCAx
LCBmb2xsb3dlZCBieSBzdGVwIDIuCj4gCj4gSW4gYWRkaXRpb24sIHN0ZXAgMiBpbnRlcm5hbGx5
IHRyYWNrcyB0aGUgcmVnaW9uIGFzIFVDIG9yIFdDIGluCj4gbWVtdHlwZSBsaXN0IGluIG9yZGVy
IHRvIGVuc3VyZSBubyBjb25mbGljdGluZyBtYXBwaW5nLgo+IAo+IE5vdGUgdGhhdCB0aGlzIHNl
dCBvZiBBUElzIG9ubHkgd29ya3Mgd2l0aCBJTyAobm9uIFJBTSkgcmVnaW9ucy4KPiBJZiBkcml2
ZXIgYW50cyB0byBleHBvcnQgYSBSQU0gcmVnaW9uLCBpdCBoYXMgdG8gZG8gc2V0X21lbW9yeV91
YygpIG9yCj4gc2V0X21lbW9yeV93YygpIGFzIHN0ZXAgMCBhYm92ZSBhbmQgYWxzbyB0cmFjayB0
aGUgdXNhZ2Ugb2YgdGhvc2UgcGFnZXMKPiBhbmQgdXNlIHNldF9tZW1vcnlfd2IoKSBiZWZvcmUg
dGhlIHBhZ2UgaXMgZnJlZWQgdG8gZnJlZSBwb29sLgo+IAo+IHRoZSBmaXggZm9sbG93IHRoZSBw
YXQgZG9jdW1lbnQsIGRvIHNldF9tZW1vcnlfd2MoKSBhcyBzdGVwIDAgYW5kCj4gdXNlIHRoZSBz
ZXRfbWVtb3J5X3diKCkgYmVmb3JlIHRoZSBwYWdlIGlzIGZyZWVkLgo+IAoKQWxsIHRoaXMgd29y
ayBuZWVkcyB0byBiZSBkb25lIG9uIHRoZSBuZXcgZG1hLWJ1ZiBoZWFwIHJld29yayBhbmQgSQpk
b24ndCB0aGluayBpdCBtYWtlcyBzZW5zZSB0byBwdXQgaXQgb24gdGhlIHN0YWdpbmcgdmVyc2lv
bgoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDE5MDkwNjE4NDcxMi45MTk4MC0xLWpv
aG4uc3R1bHR6QGxpbmFyby5vcmcvCgooSSBhbHNvIGNvbnRpbnVlIHRvIHF1ZXN0aW9uIHRoZSB2
YWx1ZSBvZiB1bmNhY2hlZCBidWZmZXJzLCBlc3BlY2lhbGx5IG9uCng4NikKCj4gU2lnbmVkLW9m
Zi1ieTogaGUsIGJvIDxiby5oZUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogemhhbmcganVu
IDxqdW4uemhhbmdAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEJhaSwgSmllIEEgPGppZS5h
LmJhaUBpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9u
X3N5c3RlbV9oZWFwLmMgfCAyOCArKysrKysrKysrKysrKysrKystCj4gICAxIGZpbGUgY2hhbmdl
ZCwgMjcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uX3N5c3RlbV9oZWFwLmMgYi9kcml2ZXJzL3N0YWdp
bmcvYW5kcm9pZC9pb24vaW9uX3N5c3RlbV9oZWFwLmMKPiBpbmRleCBiODNhMWQxNmJkODkuLmQy
OThiODE5NDgyMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9u
X3N5c3RlbV9oZWFwLmMKPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uX3N5
c3RlbV9oZWFwLmMKPiBAQCAtMTMsNiArMTMsNyBAQAo+ICAgI2luY2x1ZGUgPGxpbnV4L3NjYXR0
ZXJsaXN0Lmg+Cj4gICAjaW5jbHVkZSA8bGludXgvc2xhYi5oPgo+ICAgI2luY2x1ZGUgPGxpbnV4
L3ZtYWxsb2MuaD4KPiArI2luY2x1ZGUgPGFzbS9zZXRfbWVtb3J5Lmg+Cj4gICAKPiAgICNpbmNs
dWRlICJpb24uaCIKPiAgIAo+IEBAIC0xMzQsNiArMTM1LDEzIEBAIHN0YXRpYyBpbnQgaW9uX3N5
c3RlbV9oZWFwX2FsbG9jYXRlKHN0cnVjdCBpb25faGVhcCAqaGVhcCwKPiAgIAlzZyA9IHRhYmxl
LT5zZ2w7Cj4gICAJbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKHBhZ2UsIHRtcF9wYWdlLCAmcGFn
ZXMsIGxydSkgewo+ICAgCQlzZ19zZXRfcGFnZShzZywgcGFnZSwgcGFnZV9zaXplKHBhZ2UpLCAw
KTsKPiArCj4gKyNpZmRlZiBDT05GSUdfWDg2Cj4gKwlpZiAoIShidWZmZXItPmZsYWdzICYgSU9O
X0ZMQUdfQ0FDSEVEKSkKPiArCQlzZXRfbWVtb3J5X3djKCh1bnNpZ25lZCBsb25nKXBhZ2VfYWRk
cmVzcyhzZ19wYWdlKHNnKSksCj4gKwkJCSAgICAgIFBBR0VfQUxJR04oc2ctPmxlbmd0aCkgPj4g
UEFHRV9TSElGVCk7Cj4gKyNlbmRpZgo+ICsKPiAgIAkJc2cgPSBzZ19uZXh0KHNnKTsKPiAgIAkJ
bGlzdF9kZWwoJnBhZ2UtPmxydSk7Cj4gICAJfQo+IEBAIC0xNjIsOCArMTcwLDE1IEBAIHN0YXRp
YyB2b2lkIGlvbl9zeXN0ZW1faGVhcF9mcmVlKHN0cnVjdCBpb25fYnVmZmVyICpidWZmZXIpCj4g
ICAJaWYgKCEoYnVmZmVyLT5wcml2YXRlX2ZsYWdzICYgSU9OX1BSSVZfRkxBR19TSFJJTktFUl9G
UkVFKSkKPiAgIAkJaW9uX2hlYXBfYnVmZmVyX3plcm8oYnVmZmVyKTsKPiAgIAo+IC0JZm9yX2Vh
Y2hfc2codGFibGUtPnNnbCwgc2csIHRhYmxlLT5uZW50cywgaSkKPiArCWZvcl9lYWNoX3NnKHRh
YmxlLT5zZ2wsIHNnLCB0YWJsZS0+bmVudHMsIGkpIHsKPiArI2lmZGVmIENPTkZJR19YODYKPiAr
CQlpZiAoIShidWZmZXItPmZsYWdzICYgSU9OX0ZMQUdfQ0FDSEVEKSkKPiArCQkJc2V0X21lbW9y
eV93YigodW5zaWduZWQgbG9uZylwYWdlX2FkZHJlc3Moc2dfcGFnZShzZykpLAo+ICsJCQkJICAg
ICAgUEFHRV9BTElHTihzZy0+bGVuZ3RoKSA+PiBQQUdFX1NISUZUKTsKPiArI2VuZGlmCj4gKwo+
ICAgCQlmcmVlX2J1ZmZlcl9wYWdlKHN5c19oZWFwLCBidWZmZXIsIHNnX3BhZ2Uoc2cpKTsKPiAr
CX0KPiAgIAlzZ19mcmVlX3RhYmxlKHRhYmxlKTsKPiAgIAlrZnJlZSh0YWJsZSk7Cj4gICB9Cj4g
QEAgLTMxNiw2ICszMzEsMTIgQEAgc3RhdGljIGludCBpb25fc3lzdGVtX2NvbnRpZ19oZWFwX2Fs
bG9jYXRlKHN0cnVjdCBpb25faGVhcCAqaGVhcCwKPiAgIAo+ICAgCWJ1ZmZlci0+c2dfdGFibGUg
PSB0YWJsZTsKPiAgIAo+ICsjaWZkZWYgQ09ORklHX1g4Ngo+ICsJaWYgKCEoYnVmZmVyLT5mbGFn
cyAmIElPTl9GTEFHX0NBQ0hFRCkpCj4gKwkJc2V0X21lbW9yeV93YygodW5zaWduZWQgbG9uZylw
YWdlX2FkZHJlc3MocGFnZSksCj4gKwkJCSAgICAgIFBBR0VfQUxJR04obGVuKSA+PiBQQUdFX1NI
SUZUKTsKPiArI2VuZGlmCj4gKwo+ICAgCXJldHVybiAwOwo+ICAgCj4gICBmcmVlX3RhYmxlOgo+
IEBAIC0zMzQsNiArMzU1LDExIEBAIHN0YXRpYyB2b2lkIGlvbl9zeXN0ZW1fY29udGlnX2hlYXBf
ZnJlZShzdHJ1Y3QgaW9uX2J1ZmZlciAqYnVmZmVyKQo+ICAgCXVuc2lnbmVkIGxvbmcgcGFnZXMg
PSBQQUdFX0FMSUdOKGJ1ZmZlci0+c2l6ZSkgPj4gUEFHRV9TSElGVDsKPiAgIAl1bnNpZ25lZCBs
b25nIGk7Cj4gICAKPiArI2lmZGVmIENPTkZJR19YODYKPiArCWlmICghKGJ1ZmZlci0+ZmxhZ3Mg
JiBJT05fRkxBR19DQUNIRUQpKQo+ICsJCXNldF9tZW1vcnlfd2IoKHVuc2lnbmVkIGxvbmcpcGFn
ZV9hZGRyZXNzKHBhZ2UpLCBwYWdlcyk7Cj4gKyNlbmRpZgo+ICsKPiAgIAlmb3IgKGkgPSAwOyBp
IDwgcGFnZXM7IGkrKykKPiAgIAkJX19mcmVlX3BhZ2UocGFnZSArIGkpOwo+ICAgCXNnX2ZyZWVf
dGFibGUodGFibGUpOwo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFy
by1tbS1zaWcK
