Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 231A2EFED9
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Nov 2019 14:40:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 54D276195D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Nov 2019 13:40:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 46E4A6196E; Tue,  5 Nov 2019 13:40:41 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EBC7261965;
	Tue,  5 Nov 2019 13:40:04 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 092816079A
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Nov 2019 13:40:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E5D9261965; Tue,  5 Nov 2019 13:40:01 +0000 (UTC)
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by lists.linaro.org (Postfix) with ESMTPS id 7E3146079A
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Nov 2019 13:40:00 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id z26so7778727wmi.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Nov 2019 05:40:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=b0UuCF0aZQ2aI4sXMhK55aJLis22oaUy2VUMpSDxgso=;
 b=do56azyxeGQH8ntRB4NEkZdeamcGucTll5ruIQOfo8oFAIO9ClpY/q0JLZYYvWztYd
 tkyi+SCqBkZ2DYY2nXy+EBo9OIHZEq9u0f8nyvY9FWAFMM+z08nLz3bSU25aY+T8aTsD
 VbCgHFwGp+tzD6vaz7lSBMpsXmyliK30MdRtblYSKwNkgeuao18g1pKJ/iSKLgtIO3Pd
 SmpMJp/5sO448aO9ftt+2d62HdWoS6wHm2nD+W1bAw+BBRT0QCq17zIk6TkBBIYhE1AW
 2mXwl5f8rX+clsp4yMbnTXSbwsZLLQ45sgWiwXvJ05j1a3+Q2gpiBm1D59zErjSL+JAF
 ay8w==
X-Gm-Message-State: APjAAAUTZqdqhw1p2mNLJTIaxh9VPj9mmuPaj3a0ltPwjRev0m4cDQQ2
 8FrGWfOMj7E6CnY4PL2xpqE=
X-Google-Smtp-Source: APXvYqzZ6sdPhnPCT5teu/ZgEP0SZG0SRu2jQT/ZQ3dDbBTGI9htRohDdc5AHqxb6x0HBdCoe6Uiag==
X-Received: by 2002:a7b:c350:: with SMTP id l16mr4081706wmj.139.1572961199528; 
 Tue, 05 Nov 2019 05:39:59 -0800 (PST)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id h124sm21913478wmf.30.2019.11.05.05.39.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 05 Nov 2019 05:39:58 -0800 (PST)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20191029104049.9011-1-christian.koenig@amd.com>
 <20191029104049.9011-6-christian.koenig@amd.com>
 <20191105105252.GE10326@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <0c506743-1def-2c49-886a-4fa125b33151@gmail.com>
Date: Tue, 5 Nov 2019 14:39:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191105105252.GE10326@phenom.ffwll.local>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 5/5] drm/amdgpu: implement
	amdgpu_gem_prime_move_notify
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

QW0gMDUuMTEuMTkgdW0gMTE6NTIgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIFR1ZSwgT2N0
IDI5LCAyMDE5IGF0IDExOjQwOjQ5QU0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+
IEltcGxlbWVudCB0aGUgaW1wb3J0ZXIgc2lkZSBvZiB1bnBpbm5lZCBETUEtYnVmIGhhbmRsaW5n
Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9k
bWFfYnVmLmMgfCAyOCArKysrKysrKysrKysrKysrKysrKy0KPj4gICBkcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfb2JqZWN0LmMgIHwgIDYgKysrKysKPj4gICAyIGZpbGVzIGNoYW5n
ZWQsIDMzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMgYi9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jCj4+IGluZGV4IDM2MjljZmU1M2FhZC4uYWYz
OTU1M2M1MWFkIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfZG1hX2J1Zi5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9k
bWFfYnVmLmMKPj4gQEAgLTQ1Niw3ICs0NTYsMzMgQEAgYW1kZ3B1X2RtYV9idWZfY3JlYXRlX29i
aihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1ZikKPj4gICAJ
cmV0dXJuIEVSUl9QVFIocmV0KTsKPj4gICB9Cj4+ICAgCj4+ICsvKioKPj4gKyAqIGFtZGdwdV9k
bWFfYnVmX21vdmVfbm90aWZ5IC0gJmF0dGFjaC5tb3ZlX25vdGlmeSBpbXBsZW1lbnRhdGlvbgo+
PiArICoKPj4gKyAqIEBhdHRhY2g6IHRoZSBETUEtYnVmIGF0dGFjaG1lbnQKPj4gKyAqCj4+ICsg
KiBJbnZhbGlkYXRlIHRoZSBETUEtYnVmIGF0dGFjaG1lbnQsIG1ha2luZyBzdXJlIHRoYXQgdGhl
IHdlIHJlLWNyZWF0ZSB0aGUKPj4gKyAqIG1hcHBpbmcgYmVmb3JlIHRoZSBuZXh0IHVzZS4KPj4g
KyAqLwo+PiArc3RhdGljIHZvaWQKPj4gK2FtZGdwdV9kbWFfYnVmX21vdmVfbm90aWZ5KHN0cnVj
dCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCkKPj4gK3sKPj4gKwlzdHJ1Y3QgdHRtX29wZXJh
dGlvbl9jdHggY3R4ID0geyBmYWxzZSwgZmFsc2UgfTsKPj4gKwlzdHJ1Y3QgZHJtX2dlbV9vYmpl
Y3QgKm9iaiA9IGF0dGFjaC0+aW1wb3J0ZXJfcHJpdjsKPj4gKwlzdHJ1Y3QgYW1kZ3B1X2JvICpi
byA9IGdlbV90b19hbWRncHVfYm8ob2JqKTsKPj4gKwlzdHJ1Y3QgdHRtX3BsYWNlbWVudCBwbGFj
ZW1lbnQgPSB7fTsKPj4gKwlpbnQgcjsKPj4gKwo+PiArCWlmIChiby0+dGJvLm1lbS5tZW1fdHlw
ZSA9PSBUVE1fUExfU1lTVEVNKQo+PiArCQlyZXR1cm47Cj4+ICsKPj4gKwlyID0gdHRtX2JvX3Zh
bGlkYXRlKCZiby0+dGJvLCAmcGxhY2VtZW50LCAmY3R4KTsKPj4gKwlpZiAocikKPj4gKwkJRFJN
X0VSUk9SKCJGYWlsZWQgdG8gaW52YWxpZGF0ZSBETUEtYnVmIGltcG9ydCAoJWQpKVxuIiwgcik7
Cj4gV2hlcmUgZG8geW91IHVwZGF0ZSBwYWdldGFibGVzPwo+Cj4gVGhlIG9ubHkgdGhpbmcgSSd2
ZSBmb3VuZCBpcyBpbiB0aGUgYW1kZ3B1IENTIGNvZGUsIHdoaWNoIGlzIHdheSB0byBsYXRlCj4g
Zm9yIHRoaXMgc3R1ZmYgaGVyZS4gUGx1cyBUVE0gZG9lc24ndCBoYW5kbGUgdmlydHVhbCBtZW1v
cnkgYXQgYWxsIChhc2lkZQo+IGZyb20gdGhlIGdhcnQgdHQpLCBzbyBjbGVhcmx5IHlvdSBuZWVk
IHRvIGNhbGwgaW50byBhbWRncHUgY29kZSBzb21ld2hlcmUKPiBmb3IgdGhpcy4gQnV0IEkgZGlk
bid0IGZpbmQgaXQsIG5laXRoZXIgaW4geW91ciAtPm1vdmVfbm90aWZ5IG5vciB0aGUKPiAtPm1v
dmUgY2FsbGJhY2sgaW4gdHRtX2JvX2RyaXZlci4KPgo+IEhvdyBkb2VzIHRoaXMgd29yaz8KClBh
Z2UgdGFibGVzIGFyZSBub3QgdXBkYXRlZCB1bnRpbCB0aGUgbmV4dCBjb21tYW5kIHN1Ym1pc3Np
b24sIGUuZy4gaW4gCmFtZGdwdV9jcy5jCgpUaGlzIGlzIHNhdmUgc2luY2UgYWxsIHByZXZpb3Vz
IGNvbW1hbmQgc3VibWlzc2lvbnMgYXJlIGFkZGVkIHRvIHRoZSAKZG1hX3Jlc3Ygb2JqZWN0IGFz
IGZlbmNlcyBhbmQgdGhlIGRtYV9idWYgY2FuJ3QgYmUgbW92ZWQgYmVmb3JlIHRob3NlIAphcmUg
c2lnbmFsZWQuCgpDaHJpc3RpYW4uCgo+IC1EYW5pZWwKPgo+PiArfQo+PiArCj4+ICAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBkbWFfYnVmX2F0dGFjaF9vcHMgYW1kZ3B1X2RtYV9idWZfYXR0YWNoX29w
cyA9IHsKPj4gKwkubW92ZV9ub3RpZnkgPSBhbWRncHVfZG1hX2J1Zl9tb3ZlX25vdGlmeQo+PiAg
IH07Cj4+ICAgCj4+ICAgLyoqCj4+IEBAIC00OTIsNyArNTE4LDcgQEAgc3RydWN0IGRybV9nZW1f
b2JqZWN0ICphbWRncHVfZ2VtX3ByaW1lX2ltcG9ydChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAo+
PiAgIAkJcmV0dXJuIG9iajsKPj4gICAKPj4gICAJYXR0YWNoID0gZG1hX2J1Zl9keW5hbWljX2F0
dGFjaChkbWFfYnVmLCBkZXYtPmRldiwKPj4gLQkJCQkJJmFtZGdwdV9kbWFfYnVmX2F0dGFjaF9v
cHMsIE5VTEwpOwo+PiArCQkJCQkmYW1kZ3B1X2RtYV9idWZfYXR0YWNoX29wcywgb2JqKTsKPj4g
ICAJaWYgKElTX0VSUihhdHRhY2gpKSB7Cj4+ICAgCQlkcm1fZ2VtX29iamVjdF9wdXQob2JqKTsK
Pj4gICAJCXJldHVybiBFUlJfQ0FTVChhdHRhY2gpOwo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X29iamVjdC5jCj4+IGluZGV4IGFjNzc2ZDI2MjBlYi4uY2ZhNDYzNDFjOWE3
IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfb2JqZWN0
LmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5jCj4+
IEBAIC04NjEsNiArODYxLDkgQEAgaW50IGFtZGdwdV9ib19waW5fcmVzdHJpY3RlZChzdHJ1Y3Qg
YW1kZ3B1X2JvICpibywgdTMyIGRvbWFpbiwKPj4gICAJCXJldHVybiAwOwo+PiAgIAl9Cj4+ICAg
Cj4+ICsJaWYgKGJvLT50Ym8uYmFzZS5pbXBvcnRfYXR0YWNoKQo+PiArCQlkbWFfYnVmX3Bpbihi
by0+dGJvLmJhc2UuaW1wb3J0X2F0dGFjaCk7Cj4+ICsKPj4gICAJYm8tPmZsYWdzIHw9IEFNREdQ
VV9HRU1fQ1JFQVRFX1ZSQU1fQ09OVElHVU9VUzsKPj4gICAJLyogZm9yY2UgdG8gcGluIGludG8g
dmlzaWJsZSB2aWRlbyByYW0gKi8KPj4gICAJaWYgKCEoYm8tPmZsYWdzICYgQU1ER1BVX0dFTV9D
UkVBVEVfTk9fQ1BVX0FDQ0VTUykpCj4+IEBAIC05NDQsNiArOTQ3LDkgQEAgaW50IGFtZGdwdV9i
b191bnBpbihzdHJ1Y3QgYW1kZ3B1X2JvICpibykKPj4gICAKPj4gICAJYW1kZ3B1X2JvX3N1YnRy
YWN0X3Bpbl9zaXplKGJvKTsKPj4gICAKPj4gKwlpZiAoYm8tPnRiby5iYXNlLmltcG9ydF9hdHRh
Y2gpCj4+ICsJCWRtYV9idWZfdW5waW4oYm8tPnRiby5iYXNlLmltcG9ydF9hdHRhY2gpOwo+PiAr
Cj4+ICAgCWZvciAoaSA9IDA7IGkgPCBiby0+cGxhY2VtZW50Lm51bV9wbGFjZW1lbnQ7IGkrKykg
ewo+PiAgIAkJYm8tPnBsYWNlbWVudHNbaV0ubHBmbiA9IDA7Cj4+ICAgCQliby0+cGxhY2VtZW50
c1tpXS5mbGFncyAmPSB+VFRNX1BMX0ZMQUdfTk9fRVZJQ1Q7Cj4+IC0tIAo+PiAyLjE3LjEKPj4K
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gZHJp
LWRldmVsIG1haWxpbmcgbGlzdAo+PiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+
IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVs
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6
Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
