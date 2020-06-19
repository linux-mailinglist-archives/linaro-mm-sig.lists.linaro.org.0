Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 04AFC2005A7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 11:45:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 257DF6659B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 09:45:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 198106659D; Fri, 19 Jun 2020 09:45:05 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 56FDE6659C;
	Fri, 19 Jun 2020 09:44:12 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 15A8B665A1
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 09:44:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 08D80665A6; Fri, 19 Jun 2020 09:44:08 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by lists.linaro.org (Postfix) with ESMTP id 1F486665A1
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 09:43:50 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6D1392B;
 Fri, 19 Jun 2020 02:43:49 -0700 (PDT)
Received: from [10.57.9.128] (unknown [10.57.9.128])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5BE7C3F71F;
 Fri, 19 Jun 2020 02:43:47 -0700 (PDT)
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154038eucas1p1acd4fcdd183de4c19c4004778527a755@eucas1p1.samsung.com>
 <20200618153956.29558-36-m.szyprowski@samsung.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <c2808024-943a-f46e-6ad8-5579a507bfdf@arm.com>
Date: Fri, 19 Jun 2020 10:43:46 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200618153956.29558-36-m.szyprowski@samsung.com>
Content-Language: en-GB
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Pawel Osciak <pawel@osciak.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH v6 35/36] videobuf2: use sgtable-based
 scatterlist wrappers
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

T24gMjAyMC0wNi0xOCAxNjozOSwgTWFyZWsgU3p5cHJvd3NraSB3cm90ZToKPiBVc2UgcmVjZW50
bHkgaW50cm9kdWNlZCBjb21tb24gd3JhcHBlcnMgb3BlcmF0aW5nIGRpcmVjdGx5IG9uIHRoZSBz
dHJ1Y3QKPiBzZ190YWJsZSBvYmplY3RzIGFuZCBzY2F0dGVybGlzdCBwYWdlIGl0ZXJhdG9ycyB0
byBtYWtlIHRoZSBjb2RlIGEgYml0Cj4gbW9yZSBjb21wYWN0LCByb2J1c3QsIGVhc2llciB0byBm
b2xsb3cgYW5kIGNvcHkvcGFzdGUgc2FmZS4KPiAKPiBObyBmdW5jdGlvbmFsIGNoYW5nZSwgYmVj
YXVzZSB0aGUgY29kZSBhbHJlYWR5IHByb3Blcmx5IGRpZCBhbGwgdGhlCj4gc2NhdGVybGlzdCBy
ZWxhdGVkIGNhbGxzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kgPG0uc3p5
cHJvd3NraUBzYW1zdW5nLmNvbT4KPiAtLS0KPiAgIC4uLi9jb21tb24vdmlkZW9idWYyL3ZpZGVv
YnVmMi1kbWEtY29udGlnLmMgICB8IDQxICsrKysrKysrLS0tLS0tLS0tLS0KPiAgIC4uLi9tZWRp
YS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEtc2cuYyB8IDMyICsrKysrKy0tLS0tLS0t
LQo+ICAgLi4uL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLXZtYWxsb2MuYyAgICAgIHwgMTIg
KystLS0tCj4gICAzIGZpbGVzIGNoYW5nZWQsIDM0IGluc2VydGlvbnMoKyksIDUxIGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlk
ZW9idWYyLWRtYS1jb250aWcuYyBiL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRl
b2J1ZjItZG1hLWNvbnRpZy5jCj4gaW5kZXggZjRiNGE3YzEzNWViLi5iYTAxYTg2OTJkODggMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1kbWEt
Y29udGlnLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYy
LWRtYS1jb250aWcuYwo+IEBAIC00OCwxNiArNDgsMTUgQEAgc3RydWN0IHZiMl9kY19idWYgewo+
ICAgCj4gICBzdGF0aWMgdW5zaWduZWQgbG9uZyB2YjJfZGNfZ2V0X2NvbnRpZ3VvdXNfc2l6ZShz
dHJ1Y3Qgc2dfdGFibGUgKnNndCkKPiAgIHsKPiAtCXN0cnVjdCBzY2F0dGVybGlzdCAqczsKPiAg
IAlkbWFfYWRkcl90IGV4cGVjdGVkID0gc2dfZG1hX2FkZHJlc3Moc2d0LT5zZ2wpOwo+IC0JdW5z
aWduZWQgaW50IGk7Cj4gKwlzdHJ1Y3Qgc2dfZG1hX3BhZ2VfaXRlciBkbWFfaXRlcjsKPiAgIAl1
bnNpZ25lZCBsb25nIHNpemUgPSAwOwo+ICAgCj4gLQlmb3JfZWFjaF9zZyhzZ3QtPnNnbCwgcywg
c2d0LT5uZW50cywgaSkgewo+IC0JCWlmIChzZ19kbWFfYWRkcmVzcyhzKSAhPSBleHBlY3RlZCkK
PiArCWZvcl9lYWNoX3NndGFibGVfZG1hX3BhZ2Uoc2d0LCAmZG1hX2l0ZXIsIDApIHsKPiArCQlp
ZiAoc2dfcGFnZV9pdGVyX2RtYV9hZGRyZXNzKCZkbWFfaXRlcikgIT0gZXhwZWN0ZWQpCj4gICAJ
CQlicmVhazsKPiAtCQlleHBlY3RlZCA9IHNnX2RtYV9hZGRyZXNzKHMpICsgc2dfZG1hX2xlbihz
KTsKPiAtCQlzaXplICs9IHNnX2RtYV9sZW4ocyk7Cj4gKwkJZXhwZWN0ZWQgKz0gUEFHRV9TSVpF
Owo+ICsJCXNpemUgKz0gUEFHRV9TSVpFOwoKU2FtZSBjb21tZW50IGFzIGZvciB0aGUgRFJNIHZl
cnNpb24uIEluIGZhY3QsIGdpdmVuIHRoYXQgaXQncyB0aGUgc2FtZSAKZnVuY3Rpb24gd2l0aCB0
aGUgc2FtZSBwdXJwb3NlLCBtaWdodCBpdCBiZSB3b3J0aCBob2lzdGluZyBvdXQgYXMgYSAKZ2Vu
ZXJpYyBoZWxwZXIgZm9yIHRoZSBzZ190YWJsZSBBUEkgaXRzZWxmPwoKPiAgIAl9Cj4gICAJcmV0
dXJuIHNpemU7Cj4gICB9ClsuLi5dCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvY29tbW9u
L3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLXNnLmMgYi9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRl
b2J1ZjIvdmlkZW9idWYyLWRtYS1zZy5jCj4gaW5kZXggOTIwNzJhMDhhZjI1Li42ZGRmOTUzZWZh
MTEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVm
Mi1kbWEtc2cuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1
ZjItZG1hLXNnLmMKPiBAQCAtMTQyLDkgKzE0Miw4IEBAIHN0YXRpYyB2b2lkICp2YjJfZG1hX3Nn
X2FsbG9jKHN0cnVjdCBkZXZpY2UgKmRldiwgdW5zaWduZWQgbG9uZyBkbWFfYXR0cnMsCj4gICAJ
ICogTm8gbmVlZCB0byBzeW5jIHRvIHRoZSBkZXZpY2UsIHRoaXMgd2lsbCBoYXBwZW4gbGF0ZXIg
d2hlbiB0aGUKPiAgIAkgKiBwcmVwYXJlKCkgbWVtb3AgaXMgY2FsbGVkLgo+ICAgCSAqLwo+IC0J
c2d0LT5uZW50cyA9IGRtYV9tYXBfc2dfYXR0cnMoYnVmLT5kZXYsIHNndC0+c2dsLCBzZ3QtPm9y
aWdfbmVudHMsCj4gLQkJCQkgICAgICBidWYtPmRtYV9kaXIsIERNQV9BVFRSX1NLSVBfQ1BVX1NZ
TkMpOwo+IC0JaWYgKCFzZ3QtPm5lbnRzKQo+ICsJaWYgKGRtYV9tYXBfc2d0YWJsZShidWYtPmRl
diwgc2d0LCBidWYtPmRtYV9kaXIsCj4gKwkJCSAgICBETUFfQVRUUl9TS0lQX0NQVV9TWU5DKSkg
ewoKQXMgMC1kYXkncyBleHBsb3Npb25zIG9mIG5vbnNlbnNlIGltcGx5LCB0aGVyZSdzIGEgcm9n
dWUgYnJhY2tldCBoZXJlLi4uCgo+ICAgCQlnb3RvIGZhaWxfbWFwOwo+ICAgCj4gICAJYnVmLT5o
YW5kbGVyLnJlZmNvdW50ID0gJmJ1Zi0+cmVmY291bnQ7Cj4gQEAgLTE4MCw4ICsxNzksOCBAQCBz
dGF0aWMgdm9pZCB2YjJfZG1hX3NnX3B1dCh2b2lkICpidWZfcHJpdikKPiAgIAlpZiAocmVmY291
bnRfZGVjX2FuZF90ZXN0KCZidWYtPnJlZmNvdW50KSkgewo+ICAgCQlkcHJpbnRrKDEsICIlczog
RnJlZWluZyBidWZmZXIgb2YgJWQgcGFnZXNcbiIsIF9fZnVuY19fLAo+ICAgCQkJYnVmLT5udW1f
cGFnZXMpOwo+IC0JCWRtYV91bm1hcF9zZ19hdHRycyhidWYtPmRldiwgc2d0LT5zZ2wsIHNndC0+
b3JpZ19uZW50cywKPiAtCQkJCSAgIGJ1Zi0+ZG1hX2RpciwgRE1BX0FUVFJfU0tJUF9DUFVfU1lO
Qyk7Cj4gKwkJZG1hX3VubWFwX3NndGFibGUoYnVmLT5kZXYsIHNndCwgYnVmLT5kbWFfZGlyLAo+
ICsJCQkJICBETUFfQVRUUl9TS0lQX0NQVV9TWU5DKTsKPiAgIAkJaWYgKGJ1Zi0+dmFkZHIpCj4g
ICAJCQl2bV91bm1hcF9yYW0oYnVmLT52YWRkciwgYnVmLT5udW1fcGFnZXMpOwo+ICAgCQlzZ19m
cmVlX3RhYmxlKGJ1Zi0+ZG1hX3NndCk7Cj4gQEAgLTIwMiw4ICsyMDEsNyBAQCBzdGF0aWMgdm9p
ZCB2YjJfZG1hX3NnX3ByZXBhcmUodm9pZCAqYnVmX3ByaXYpCj4gICAJaWYgKGJ1Zi0+ZGJfYXR0
YWNoKQo+ICAgCQlyZXR1cm47Cj4gICAKPiAtCWRtYV9zeW5jX3NnX2Zvcl9kZXZpY2UoYnVmLT5k
ZXYsIHNndC0+c2dsLCBzZ3QtPm9yaWdfbmVudHMsCj4gLQkJCSAgICAgICBidWYtPmRtYV9kaXIp
Owo+ICsJZG1hX3N5bmNfc2d0YWJsZV9mb3JfZGV2aWNlKGJ1Zi0+ZGV2LCBzZ3QsIGJ1Zi0+ZG1h
X2Rpcik7Cj4gICB9Cj4gICAKPiAgIHN0YXRpYyB2b2lkIHZiMl9kbWFfc2dfZmluaXNoKHZvaWQg
KmJ1Zl9wcml2KQo+IEBAIC0yMTUsNyArMjEzLDcgQEAgc3RhdGljIHZvaWQgdmIyX2RtYV9zZ19m
aW5pc2godm9pZCAqYnVmX3ByaXYpCj4gICAJaWYgKGJ1Zi0+ZGJfYXR0YWNoKQo+ICAgCQlyZXR1
cm47Cj4gICAKPiAtCWRtYV9zeW5jX3NnX2Zvcl9jcHUoYnVmLT5kZXYsIHNndC0+c2dsLCBzZ3Qt
Pm9yaWdfbmVudHMsIGJ1Zi0+ZG1hX2Rpcik7Cj4gKwlkbWFfc3luY19zZ3RhYmxlX2Zvcl9jcHUo
YnVmLT5kZXYsIHNndCwgYnVmLT5kbWFfZGlyKTsKPiAgIH0KPiAgIAo+ICAgc3RhdGljIHZvaWQg
KnZiMl9kbWFfc2dfZ2V0X3VzZXJwdHIoc3RydWN0IGRldmljZSAqZGV2LCB1bnNpZ25lZCBsb25n
IHZhZGRyLAo+IEBAIC0yNTgsOSArMjU2LDggQEAgc3RhdGljIHZvaWQgKnZiMl9kbWFfc2dfZ2V0
X3VzZXJwdHIoc3RydWN0IGRldmljZSAqZGV2LCB1bnNpZ25lZCBsb25nIHZhZGRyLAo+ICAgCSAq
IE5vIG5lZWQgdG8gc3luYyB0byB0aGUgZGV2aWNlLCB0aGlzIHdpbGwgaGFwcGVuIGxhdGVyIHdo
ZW4gdGhlCj4gICAJICogcHJlcGFyZSgpIG1lbW9wIGlzIGNhbGxlZC4KPiAgIAkgKi8KPiAtCXNn
dC0+bmVudHMgPSBkbWFfbWFwX3NnX2F0dHJzKGJ1Zi0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5vcmln
X25lbnRzLAo+IC0JCQkJICAgICAgYnVmLT5kbWFfZGlyLCBETUFfQVRUUl9TS0lQX0NQVV9TWU5D
KTsKPiAtCWlmICghc2d0LT5uZW50cykKPiArCWlmIChkbWFfbWFwX3NndGFibGUoYnVmLT5kZXYs
IHNndCwgYnVmLT5kbWFfZGlyLAo+ICsJCQkgICAgRE1BX0FUVFJfU0tJUF9DUFVfU1lOQykpIHsK
Ci4uLiBhbmQgaGVyZS4KClJvYmluLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=
