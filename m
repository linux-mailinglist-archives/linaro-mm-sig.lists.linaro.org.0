Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB301D14D9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 15:28:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 560FD65F89
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 13:28:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3BC0E65F8F; Wed, 13 May 2020 13:28:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 404E065F8B;
	Wed, 13 May 2020 13:28:01 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 92AAA65F89
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:27:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7D12865F88; Wed, 13 May 2020 13:27:58 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by lists.linaro.org (Postfix) with ESMTP id 16E3865F88
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:27:57 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D01F230E;
 Wed, 13 May 2020 06:27:56 -0700 (PDT)
Received: from [10.57.36.85] (unknown [10.57.36.85])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 101FC3F71E;
 Wed, 13 May 2020 06:27:54 -0700 (PDT)
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090108eucas1p2168167ab5e1de09df0d5def83f64dbfe@eucas1p2.samsung.com>
 <20200512090058.14910-3-m.szyprowski@samsung.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <a5f6922a-686e-d36d-e706-e36d02bff141@arm.com>
Date: Wed, 13 May 2020 14:27:52 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200512090058.14910-3-m.szyprowski@samsung.com>
Content-Language: en-GB
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Joerg Roedel <joro@8bytes.org>,
 Daniel Vetter <daniel@ffwll.ch>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v4 03/38] iommu: add generic helper for
 mapping sgtable objects
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

T24gMjAyMC0wNS0xMiAxMDowMCBhbSwgTWFyZWsgU3p5cHJvd3NraSB3cm90ZToKPiBzdHJ1Y3Qg
c2dfdGFibGUgaXMgYSBjb21tb24gc3RydWN0dXJlIHVzZWQgZm9yIGRlc2NyaWJpbmcgYSBtZW1v
cnkKPiBidWZmZXIuIEl0IGNvbnNpc3RzIG9mIGEgc2NhdHRlcmxpc3Qgd2l0aCBtZW1vcnkgcGFn
ZXMgYW5kIERNQSBhZGRyZXNzZXMKPiAoc2dsIGVudHJ5KSwgYXMgd2VsbCBhcyB0aGUgbnVtYmVy
IG9mIHNjYXR0ZXJsaXN0IGVudHJpZXM6IENQVSBwYWdlcwo+IChvcmlnX25lbnRzIGVudHJ5KSBh
bmQgRE1BIG1hcHBlZCBwYWdlcyAobmVudHMgZW50cnkpLgo+IAo+IEl0IHR1cm5lZCBvdXQgdGhh
dCBpdCB3YXMgYSBjb21tb24gbWlzdGFrZSB0byBtaXN1c2UgbmVudHMgYW5kIG9yaWdfbmVudHMK
PiBlbnRyaWVzLCBjYWxsaW5nIG1hcHBpbmcgZnVuY3Rpb25zIHdpdGggYSB3cm9uZyBudW1iZXIg
b2YgZW50cmllcy4KPiAKPiBUbyBhdm9pZCBzdWNoIGlzc3VlcywgbGV0cyBpbnRyb2R1Y2UgYSBj
b21tb24gd3JhcHBlciBvcGVyYXRpbmcgZGlyZWN0bHkKPiBvbiB0aGUgc3RydWN0IHNnX3RhYmxl
IG9iamVjdHMsIHdoaWNoIHRha2UgY2FyZSBvZiB0aGUgcHJvcGVyIHVzZSBvZgo+IHRoZSBuZW50
cyBhbmQgb3JpZ19uZW50cyBlbnRyaWVzLgoKTW9kdWxvIEpvZXJnJ3MgY29tbWVudHMsCgpSZXZp
ZXdlZC1ieTogUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4KCj4gU2lnbmVkLW9m
Zi1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgo+IC0tLQo+
IEZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWUgJ1tQQVRDSCB2NCAwMC8zOF0gRFJNOiBmaXggc3Ry
dWN0IHNnX3RhYmxlIG5lbnRzCj4gdnMuIG9yaWdfbmVudHMgbWlzdXNlJyB0aHJlYWQ6Cj4gaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzIwMjAwNTEyMDg1NzEwLjE0Njg4LTEtbS5z
enlwcm93c2tpQHNhbXN1bmcuY29tL1QvCj4gLS0tCj4gICBpbmNsdWRlL2xpbnV4L2lvbW11Lmgg
fCAxNiArKysrKysrKysrKysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygr
KQo+IAo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2lvbW11LmggYi9pbmNsdWRlL2xpbnV4
L2lvbW11LmgKPiBpbmRleCA3Y2ZkMmRkLi5iYTY2MmJhIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUv
bGludXgvaW9tbXUuaAo+ICsrKyBiL2luY2x1ZGUvbGludXgvaW9tbXUuaAo+IEBAIC00NzgsNiAr
NDc4LDIyIEBAIGV4dGVybiBzaXplX3QgaW9tbXVfbWFwX3NnX2F0b21pYyhzdHJ1Y3QgaW9tbXVf
ZG9tYWluICpkb21haW4sCj4gICBleHRlcm4gdm9pZCBpb21tdV9zZXRfZmF1bHRfaGFuZGxlcihz
dHJ1Y3QgaW9tbXVfZG9tYWluICpkb21haW4sCj4gICAJCQlpb21tdV9mYXVsdF9oYW5kbGVyX3Qg
aGFuZGxlciwgdm9pZCAqdG9rZW4pOwo+ICAgCj4gKy8qKgo+ICsgKiBpb21tdV9tYXBfc2d0YWJs
ZSAtIE1hcCB0aGUgZ2l2ZW4gYnVmZmVyIHRvIHRoZSBJT01NVSBkb21haW4KPiArICogQGRvbWFp
bjoJVGhlIElPTU1VIGRvbWFpbiB0byBwZXJmb3IKPiArICogQGlvdmE6CVRoZSBzdGFydCBhZGRy
ZWVzIHRvIG1hcCB0aGUgYnVmZmVyCj4gKyAqIEBzZ3Q6CVRoZSBzZ190YWJsZSBvYmplY3QgZGVz
Y3JpYmluZyB0aGUgYnVmZmVyCj4gKyAqIEBwcm90OglJT01NVSBwcm90ZWN0aW9uIGJpdHMKPiAr
ICoKPiArICogQ3JlYXRlIGEgbWFwcGluZyBhdCBAaW92YSBmb3IgdGhlIGJ1ZmZlciBkZXNjcmli
ZWQgYnkgYSBzY2F0dGVybGlzdAo+ICsgKiBzdG9yZWQgaW4gdGhlIGdpdmVuIHNnX3RhYmxlIG9i
amVjdCBpbiB0aGUgcHJvdmlkZWQgSU9NTVUgZG9tYWluLgo+ICsgKi8KPiArc3RhdGljIGlubGlu
ZSBzaXplX3QgaW9tbXVfbWFwX3NndGFibGUoc3RydWN0IGlvbW11X2RvbWFpbiAqZG9tYWluLAo+
ICsJCQl1bnNpZ25lZCBsb25nIGlvdmEsIHN0cnVjdCBzZ190YWJsZSAqc2d0LCBpbnQgcHJvdCkK
PiArewo+ICsJcmV0dXJuIGlvbW11X21hcF9zZyhkb21haW4sIGlvdmEsIHNndC0+c2dsLCBzZ3Qt
Pm9yaWdfbmVudHMsIHByb3QpOwo+ICt9Cj4gKwo+ICAgZXh0ZXJuIHZvaWQgaW9tbXVfZ2V0X3Jl
c3ZfcmVnaW9ucyhzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBsaXN0X2hlYWQgKmxpc3QpOwo+
ICAgZXh0ZXJuIHZvaWQgaW9tbXVfcHV0X3Jlc3ZfcmVnaW9ucyhzdHJ1Y3QgZGV2aWNlICpkZXYs
IHN0cnVjdCBsaXN0X2hlYWQgKmxpc3QpOwo+ICAgZXh0ZXJuIHZvaWQgZ2VuZXJpY19pb21tdV9w
dXRfcmVzdl9yZWdpb25zKHN0cnVjdCBkZXZpY2UgKmRldiwKPiAKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
