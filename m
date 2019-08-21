Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFB597DB7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Aug 2019 16:55:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F255861810
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Aug 2019 14:55:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E7A056181C; Wed, 21 Aug 2019 14:55:55 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 26EDD61811;
	Wed, 21 Aug 2019 14:55:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 30CF36085A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 14:55:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1941861811; Wed, 21 Aug 2019 14:55:20 +0000 (UTC)
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by lists.linaro.org (Postfix) with ESMTPS id 934D96085A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 14:55:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18215646-1500050 for multiple; Wed, 21 Aug 2019 15:55:10 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 daniel.vetter@ffwll.ch, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 sumit.semwal@linaro.org
References: <20190821123147.110736-1-christian.koenig@amd.com>
 <20190821123147.110736-6-christian.koenig@amd.com>
In-Reply-To: <20190821123147.110736-6-christian.koenig@amd.com>
Message-ID: <156639930822.1374.18129686805314896871@skylake-alporthouse-com>
Date: Wed, 21 Aug 2019 15:55:08 +0100
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 05/10] dma-buf/resv: add
	dma_resv_prune_fences
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

UXVvdGluZyBDaHJpc3RpYW4gS8O2bmlnICgyMDE5LTA4LTIxIDEzOjMxOjQyKQo+IEFkZCBhIG5l
dyBkbWFfcmVzdl9wcnVuZV9mZW5jZXMoKSBmdW5jdGlvbiB0byBpbXByb3ZlIG1lbW9yeSBtYW5h
Z2VtZW50Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgICAgICAg
ICAgICAgICAgIHwgMzcgKysrKysrKysrKysrKysrKysrKysrKwo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fd2FpdC5jICAgfCAgMyArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9iYXRjaF9wb29sLmMgfCAgMiArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3ZtYS5jICAgICAgICAgICAgfCAgMyArLQo+ICBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9i
by5jICAgICAgICAgICAgICAgfCAgMiArLQo+ICBpbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmggICAg
ICAgICAgICAgICAgICAgfCAgMSArCj4gIDYgZmlsZXMgY2hhbmdlZCwgNDIgaW5zZXJ0aW9ucygr
KSwgNiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1y
ZXN2LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwo+IGluZGV4IDQyYThmM2YxMTY4MS4u
MjRhZGMzMmQzNmQ0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCj4g
KysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKPiBAQCAtMzAxLDYgKzMwMSw0MyBAQCB2
b2lkIGRtYV9yZXN2X2FkZF9leGNsX2ZlbmNlKHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmZW5jZSkKPiAgfQo+ICBFWFBPUlRfU1lNQk9MKGRtYV9yZXN2X2FkZF9leGNs
X2ZlbmNlKTsKPiAgCj4gKy8qKgo+ICsgKiBkbWFfcmVzdl9wcnVuZV9mZW5jZXMgLSBwcnVuZSBz
aWduYWxlZCBmZW5jZXMgZnJvbSB0aGUgcmVzdiBvYmplY3QKPiArICogQG9iajogdGhlIHJlc2Vy
dmF0aW9uIG9iamVjdCB0byBwcnVuZQo+ICsgKgo+ICsgKiBQcnVuZSBhbGwgc2lnbmFsZWQgZmVu
Y2VzIGZyb20gdGhlIHJlc2VydmF0aW9uIG9iamVjdC4KPiArICovCj4gK3ZvaWQgZG1hX3Jlc3Zf
cHJ1bmVfZmVuY2VzKHN0cnVjdCBkbWFfcmVzdiAqb2JqKQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3Qg
ZG1hX3Jlc3ZfbGlzdCAqbGlzdDsKPiArICAgICAgIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwo+
ICsgICAgICAgdW5zaWduZWQgaW50IGk7Cj4gKwo+ICsgICAgICAgZG1hX3Jlc3ZfYXNzZXJ0X2hl
bGQob2JqKTsKPiArCj4gKyAgICAgICBmZW5jZSA9IGRtYV9yZXN2X2dldF9leGNsKG9iaik7Cj4g
KyAgICAgICBpZiAoZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNlKSkgewo+ICsgICAgICAgICAg
ICAgICBSQ1VfSU5JVF9QT0lOVEVSKG9iai0+ZmVuY2VfZXhjbCwgTlVMTCk7Cj4gKyAgICAgICAg
ICAgICAgIGRtYV9mZW5jZV9wdXQoZmVuY2UpOwo+ICsgICAgICAgfQo+ICsKPiArICAgICAgIGxp
c3QgPSBkbWFfcmVzdl9nZXRfbGlzdChvYmopOwo+ICsgICAgICAgaWYgKCFsaXN0KQo+ICsgICAg
ICAgICAgICAgICByZXR1cm47Cj4gKwo+ICsgICAgICAgZm9yIChpID0gMDsgaSA8IGxpc3QtPnNo
YXJlZF9jb3VudDsgKytpKSB7Cj4gKyAgICAgICAgICAgICAgIGZlbmNlID0gcmN1X2RlcmVmZXJl
bmNlX3Byb3RlY3RlZChsaXN0LT5zaGFyZWRbaV0sCj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBkbWFfcmVzdl9oZWxkKG9iaikpOwo+ICsKPiArICAg
ICAgICAgICAgICAgaWYgKCFkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2UpKQo+ICsgICAgICAg
ICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+ICsKPiArICAgICAgICAgICAgICAgUkNVX0lOSVRf
UE9JTlRFUihsaXN0LT5zaGFyZWRbaV0sIGRtYV9mZW5jZV9nZXRfc3R1YigpKTsKPiArICAgICAg
ICAgICAgICAgZG1hX2ZlbmNlX3B1dChmZW5jZSk7CgpOb3Qgd29ydGggcmV1c2luZyB0aGUgY29t
cGFjdGlvbiBsb2dpYyBmcm9tIGFkZF9zaGFyZWRfZmVuY2U/Ci1DaHJpcwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
