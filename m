Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 49327EFF05
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Nov 2019 14:51:37 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6D6FE6079A
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Nov 2019 13:51:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5C6856195D; Tue,  5 Nov 2019 13:51:36 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9B9F961965;
	Tue,  5 Nov 2019 13:50:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0CDB76079A
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Nov 2019 13:50:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 007A061965; Tue,  5 Nov 2019 13:50:55 +0000 (UTC)
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by lists.linaro.org (Postfix) with ESMTPS id 98CB56079A
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Nov 2019 13:50:54 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id i185so17537234oif.9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Nov 2019 05:50:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=X3WH5qgCjdjTfEBC5QWqCj9RCp2b9w56vnVS224gMaQ=;
 b=P6m/KZtlXO0Tewc/8GRm4jgIsBdmwmglt69ICDojQZ6hsp3UXK0T7ZXMdXwaJ4aQZG
 7SkOt7ewMRb3+D3rk9Cho2IX++XtuuHEKGcti/naUZD/IL4q0rpilbqI3OjuOG6VDRpq
 HstJJ2yhuBv4ifp05/i821eEbxh66F4ZqydHNLwMDz07gUpe4D6vmpgf/0Rir3Cydirl
 6Yukc/asohDCU+jvWr2olEscVrks/SPZbvl/iVa0BWhicOaOzmH/53chxZB+uhuSvKi2
 hvakvCxkSSaBv8OWZfbDMp/JuxOttU5iNXQitMT8OLeyWSddy9kt7YnvwiIohIfdvkul
 ALXA==
X-Gm-Message-State: APjAAAVdSKV1iRjgyDr4qT4KmUQ4XX5URxulhhxWH8iuaRhjxmyHQsbG
 p3yIvWE4vs1Uda7oWvAFgEYNRoP4E45t6z8Zxw0TIw==
X-Google-Smtp-Source: APXvYqztZWp/1+PTkppdYkiJpHyZg08lbPMjBAFKULh9vuxjWqtRC7wQlOlPuNuS1e+GerZcGvGLUt2ipuqS1YeTi/o=
X-Received: by 2002:a05:6808:4cf:: with SMTP id
 a15mr3865723oie.132.1572961853926; 
 Tue, 05 Nov 2019 05:50:53 -0800 (PST)
MIME-Version: 1.0
References: <20191029104049.9011-1-christian.koenig@amd.com>
 <20191029104049.9011-6-christian.koenig@amd.com>
 <20191105105252.GE10326@phenom.ffwll.local>
 <0c506743-1def-2c49-886a-4fa125b33151@gmail.com>
In-Reply-To: <0c506743-1def-2c49-886a-4fa125b33151@gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 5 Nov 2019 14:50:42 +0100
Message-ID: <CAKMK7uEimcoB2vojTHDxQ1p2GaK7kBJQ3hWFzYoMtmDJYabwfA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>, intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 5/5] drm/amdgpu: implement
	amdgpu_gem_prime_move_notify
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gVHVlLCBOb3YgNSwgMjAxOSBhdCAyOjM5IFBNIENocmlzdGlhbiBLw7ZuaWcKPGNrb2VuaWcu
bGVpY2h0enVtZXJrZW5AZ21haWwuY29tPiB3cm90ZToKPgo+IEFtIDA1LjExLjE5IHVtIDExOjUy
IHNjaHJpZWIgRGFuaWVsIFZldHRlcjoKPiA+IE9uIFR1ZSwgT2N0IDI5LCAyMDE5IGF0IDExOjQw
OjQ5QU0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gPj4gSW1wbGVtZW50IHRoZSBp
bXBvcnRlciBzaWRlIG9mIHVucGlubmVkIERNQS1idWYgaGFuZGxpbmcuCj4gPj4KPiA+PiBTaWdu
ZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4g
Pj4gLS0tCj4gPj4gICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5j
IHwgMjggKysrKysrKysrKysrKysrKysrKystCj4gPj4gICBkcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHVfb2JqZWN0LmMgIHwgIDYgKysrKysKPiA+PiAgIDIgZmlsZXMgY2hhbmdlZCwg
MzMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMgYi9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jCj4gPj4gaW5kZXggMzYyOWNmZTUzYWFkLi5h
ZjM5NTUzYzUxYWQgMTAwNjQ0Cj4gPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X2RtYV9idWYuYwo+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV9kbWFfYnVmLmMKPiA+PiBAQCAtNDU2LDcgKzQ1NiwzMyBAQCBhbWRncHVfZG1hX2J1Zl9j
cmVhdGVfb2JqKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHN0cnVjdCBkbWFfYnVmICpkbWFfYnVm
KQo+ID4+ICAgICAgcmV0dXJuIEVSUl9QVFIocmV0KTsKPiA+PiAgIH0KPiA+Pgo+ID4+ICsvKioK
PiA+PiArICogYW1kZ3B1X2RtYV9idWZfbW92ZV9ub3RpZnkgLSAmYXR0YWNoLm1vdmVfbm90aWZ5
IGltcGxlbWVudGF0aW9uCj4gPj4gKyAqCj4gPj4gKyAqIEBhdHRhY2g6IHRoZSBETUEtYnVmIGF0
dGFjaG1lbnQKPiA+PiArICoKPiA+PiArICogSW52YWxpZGF0ZSB0aGUgRE1BLWJ1ZiBhdHRhY2ht
ZW50LCBtYWtpbmcgc3VyZSB0aGF0IHRoZSB3ZSByZS1jcmVhdGUgdGhlCj4gPj4gKyAqIG1hcHBp
bmcgYmVmb3JlIHRoZSBuZXh0IHVzZS4KPiA+PiArICovCj4gPj4gK3N0YXRpYyB2b2lkCj4gPj4g
K2FtZGdwdV9kbWFfYnVmX21vdmVfbm90aWZ5KHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0
dGFjaCkKPiA+PiArewo+ID4+ICsgICAgc3RydWN0IHR0bV9vcGVyYXRpb25fY3R4IGN0eCA9IHsg
ZmFsc2UsIGZhbHNlIH07Cj4gPj4gKyAgICBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiA9IGF0
dGFjaC0+aW1wb3J0ZXJfcHJpdjsKPiA+PiArICAgIHN0cnVjdCBhbWRncHVfYm8gKmJvID0gZ2Vt
X3RvX2FtZGdwdV9ibyhvYmopOwo+ID4+ICsgICAgc3RydWN0IHR0bV9wbGFjZW1lbnQgcGxhY2Vt
ZW50ID0ge307Cj4gPj4gKyAgICBpbnQgcjsKPiA+PiArCj4gPj4gKyAgICBpZiAoYm8tPnRiby5t
ZW0ubWVtX3R5cGUgPT0gVFRNX1BMX1NZU1RFTSkKPiA+PiArICAgICAgICAgICAgcmV0dXJuOwo+
ID4+ICsKPiA+PiArICAgIHIgPSB0dG1fYm9fdmFsaWRhdGUoJmJvLT50Ym8sICZwbGFjZW1lbnQs
ICZjdHgpOwo+ID4+ICsgICAgaWYgKHIpCj4gPj4gKyAgICAgICAgICAgIERSTV9FUlJPUigiRmFp
bGVkIHRvIGludmFsaWRhdGUgRE1BLWJ1ZiBpbXBvcnQgKCVkKSlcbiIsIHIpOwo+ID4gV2hlcmUg
ZG8geW91IHVwZGF0ZSBwYWdldGFibGVzPwo+ID4KPiA+IFRoZSBvbmx5IHRoaW5nIEkndmUgZm91
bmQgaXMgaW4gdGhlIGFtZGdwdSBDUyBjb2RlLCB3aGljaCBpcyB3YXkgdG8gbGF0ZQo+ID4gZm9y
IHRoaXMgc3R1ZmYgaGVyZS4gUGx1cyBUVE0gZG9lc24ndCBoYW5kbGUgdmlydHVhbCBtZW1vcnkg
YXQgYWxsIChhc2lkZQo+ID4gZnJvbSB0aGUgZ2FydCB0dCksIHNvIGNsZWFybHkgeW91IG5lZWQg
dG8gY2FsbCBpbnRvIGFtZGdwdSBjb2RlIHNvbWV3aGVyZQo+ID4gZm9yIHRoaXMuIEJ1dCBJIGRp
ZG4ndCBmaW5kIGl0LCBuZWl0aGVyIGluIHlvdXIgLT5tb3ZlX25vdGlmeSBub3IgdGhlCj4gPiAt
Pm1vdmUgY2FsbGJhY2sgaW4gdHRtX2JvX2RyaXZlci4KPiA+Cj4gPiBIb3cgZG9lcyB0aGlzIHdv
cms/Cj4KPiBQYWdlIHRhYmxlcyBhcmUgbm90IHVwZGF0ZWQgdW50aWwgdGhlIG5leHQgY29tbWFu
ZCBzdWJtaXNzaW9uLCBlLmcuIGluCj4gYW1kZ3B1X2NzLmMKPgo+IFRoaXMgaXMgc2F2ZSBzaW5j
ZSBhbGwgcHJldmlvdXMgY29tbWFuZCBzdWJtaXNzaW9ucyBhcmUgYWRkZWQgdG8gdGhlCj4gZG1h
X3Jlc3Ygb2JqZWN0IGFzIGZlbmNlcyBhbmQgdGhlIGRtYV9idWYgY2FuJ3QgYmUgbW92ZWQgYmVm
b3JlIHRob3NlCj4gYXJlIHNpZ25hbGVkLgoKSG0sIEkgdGhvdWdodCB5b3Ugc3RpbGwgYWxsb3cg
ZXhwbGljaXQgYnVmZmVyIGxpc3RzIGZvciBlYWNoIGNzIGluCmFtZGdwdT8gQ29kZSBsb29rcyBh
dCBsZWFzdCBsaWtlIHRoYXQsIG5vdCBldmVyeXRoaW5nIGdvZXMgdGhyb3VnaCB0aGUKY29udGV4
dCB3b3JraW5nIHNldCBzdHVmZi4KCkhvdyBkbyB5b3UgcHJldmVudCB0aGUgc2VjdXJpdHkgbGVh
ayBpZiB1c2Vyc3BhY2Ugc2ltcGx5IGxpZXMgYWJvdXQKbm90IHVzaW5nIGEgZ2l2ZW4gYnVmZmVy
IGluIGEgYmF0Y2gsIGFuZCB0aGVuIGFidXNpbmcgdGhhdCB0byByZWFkCnRoYXQgdmlydHVhbCBh
ZGRyZXNzIHJhbmdlIGFueXdheSBhbmQgcGVlayBhdCB3aGF0ZXZlciBpcyBub3cgZ29pbmcgdG8K
YmUgdGhlcmUgd2hlbiBhbiBldmljdGlvbiBoYXBwZW5lZD8KLURhbmllbAoKPgo+IENocmlzdGlh
bi4KPgo+ID4gLURhbmllbAo+ID4KPiA+PiArfQo+ID4+ICsKPiA+PiAgIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgZG1hX2J1Zl9hdHRhY2hfb3BzIGFtZGdwdV9kbWFfYnVmX2F0dGFjaF9vcHMgPSB7Cj4g
Pj4gKyAgICAubW92ZV9ub3RpZnkgPSBhbWRncHVfZG1hX2J1Zl9tb3ZlX25vdGlmeQo+ID4+ICAg
fTsKPiA+Pgo+ID4+ICAgLyoqCj4gPj4gQEAgLTQ5Miw3ICs1MTgsNyBAQCBzdHJ1Y3QgZHJtX2dl
bV9vYmplY3QgKmFtZGdwdV9nZW1fcHJpbWVfaW1wb3J0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYs
Cj4gPj4gICAgICAgICAgICAgIHJldHVybiBvYmo7Cj4gPj4KPiA+PiAgICAgIGF0dGFjaCA9IGRt
YV9idWZfZHluYW1pY19hdHRhY2goZG1hX2J1ZiwgZGV2LT5kZXYsCj4gPj4gLSAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICZhbWRncHVfZG1hX2J1Zl9hdHRhY2hfb3BzLCBOVUxM
KTsKPiA+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJmFtZGdwdV9kbWFf
YnVmX2F0dGFjaF9vcHMsIG9iaik7Cj4gPj4gICAgICBpZiAoSVNfRVJSKGF0dGFjaCkpIHsKPiA+
PiAgICAgICAgICAgICAgZHJtX2dlbV9vYmplY3RfcHV0KG9iaik7Cj4gPj4gICAgICAgICAgICAg
IHJldHVybiBFUlJfQ0FTVChhdHRhY2gpOwo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfb2JqZWN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfb2JqZWN0LmMKPiA+PiBpbmRleCBhYzc3NmQyNjIwZWIuLmNmYTQ2MzQxYzlhNyAx
MDA2NDQKPiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfb2JqZWN0
LmMKPiA+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfb2JqZWN0LmMK
PiA+PiBAQCAtODYxLDYgKzg2MSw5IEBAIGludCBhbWRncHVfYm9fcGluX3Jlc3RyaWN0ZWQoc3Ry
dWN0IGFtZGdwdV9ibyAqYm8sIHUzMiBkb21haW4sCj4gPj4gICAgICAgICAgICAgIHJldHVybiAw
Owo+ID4+ICAgICAgfQo+ID4+Cj4gPj4gKyAgICBpZiAoYm8tPnRiby5iYXNlLmltcG9ydF9hdHRh
Y2gpCj4gPj4gKyAgICAgICAgICAgIGRtYV9idWZfcGluKGJvLT50Ym8uYmFzZS5pbXBvcnRfYXR0
YWNoKTsKPiA+PiArCj4gPj4gICAgICBiby0+ZmxhZ3MgfD0gQU1ER1BVX0dFTV9DUkVBVEVfVlJB
TV9DT05USUdVT1VTOwo+ID4+ICAgICAgLyogZm9yY2UgdG8gcGluIGludG8gdmlzaWJsZSB2aWRl
byByYW0gKi8KPiA+PiAgICAgIGlmICghKGJvLT5mbGFncyAmIEFNREdQVV9HRU1fQ1JFQVRFX05P
X0NQVV9BQ0NFU1MpKQo+ID4+IEBAIC05NDQsNiArOTQ3LDkgQEAgaW50IGFtZGdwdV9ib191bnBp
bihzdHJ1Y3QgYW1kZ3B1X2JvICpibykKPiA+Pgo+ID4+ICAgICAgYW1kZ3B1X2JvX3N1YnRyYWN0
X3Bpbl9zaXplKGJvKTsKPiA+Pgo+ID4+ICsgICAgaWYgKGJvLT50Ym8uYmFzZS5pbXBvcnRfYXR0
YWNoKQo+ID4+ICsgICAgICAgICAgICBkbWFfYnVmX3VucGluKGJvLT50Ym8uYmFzZS5pbXBvcnRf
YXR0YWNoKTsKPiA+PiArCj4gPj4gICAgICBmb3IgKGkgPSAwOyBpIDwgYm8tPnBsYWNlbWVudC5u
dW1fcGxhY2VtZW50OyBpKyspIHsKPiA+PiAgICAgICAgICAgICAgYm8tPnBsYWNlbWVudHNbaV0u
bHBmbiA9IDA7Cj4gPj4gICAgICAgICAgICAgIGJvLT5wbGFjZW1lbnRzW2ldLmZsYWdzICY9IH5U
VE1fUExfRkxBR19OT19FVklDVDsKPiA+PiAtLQo+ID4+IDIuMTcuMQo+ID4+Cj4gPj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+PiBkcmktZGV2ZWwg
bWFpbGluZyBsaXN0Cj4gPj4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4+IGh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCj4K
CgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24K
KzQxICgwKSA3OSAzNjUgNTcgNDggLSBodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
