Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEA41D0B6B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 11:03:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 38CC3619EA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 09:03:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 215C365F83; Wed, 13 May 2020 09:03:58 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 258FE65F81;
	Wed, 13 May 2020 09:03:28 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 90BE060E68
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 09:03:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 73D1B65F81; Wed, 13 May 2020 09:03:25 +0000 (UTC)
Received: from theia.8bytes.org (8bytes.org [81.169.241.247])
 by lists.linaro.org (Postfix) with ESMTPS id 02F0660E68
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 09:03:24 +0000 (UTC)
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 63BBB46A; Wed, 13 May 2020 11:03:22 +0200 (CEST)
Date: Wed, 13 May 2020 11:03:21 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <20200513090320.GH9820@8bytes.org>
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090108eucas1p2168167ab5e1de09df0d5def83f64dbfe@eucas1p2.samsung.com>
 <20200512090058.14910-3-m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512090058.14910-3-m.szyprowski@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 iommu@lists.linux-foundation.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

SGkgTWFyZWssCgpPbiBUdWUsIE1heSAxMiwgMjAyMCBhdCAxMTowMDoyM0FNICswMjAwLCBNYXJl
ayBTenlwcm93c2tpIHdyb3RlOgo+IC0tLQo+ICBpbmNsdWRlL2xpbnV4L2lvbW11LmggfCAxNiAr
KysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspCgpTb21l
IG5pdHMgYmVsb3csIHdpdGggdGhvc2UgZml4ZWQ6CgoJQWNrZWQtYnk6IEpvZXJnIFJvZWRlbCA8
anJvZWRlbEBzdXNlLmRlPgoKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9pb21tdS5oIGIv
aW5jbHVkZS9saW51eC9pb21tdS5oCj4gaW5kZXggN2NmZDJkZC4uYmE2NjJiYSAxMDA2NDQKPiAt
LS0gYS9pbmNsdWRlL2xpbnV4L2lvbW11LmgKPiArKysgYi9pbmNsdWRlL2xpbnV4L2lvbW11LmgK
PiBAQCAtNDc4LDYgKzQ3OCwyMiBAQCBleHRlcm4gc2l6ZV90IGlvbW11X21hcF9zZ19hdG9taWMo
c3RydWN0IGlvbW11X2RvbWFpbiAqZG9tYWluLAo+ICBleHRlcm4gdm9pZCBpb21tdV9zZXRfZmF1
bHRfaGFuZGxlcihzdHJ1Y3QgaW9tbXVfZG9tYWluICpkb21haW4sCj4gIAkJCWlvbW11X2ZhdWx0
X2hhbmRsZXJfdCBoYW5kbGVyLCB2b2lkICp0b2tlbik7Cj4gIAo+ICsvKioKPiArICogaW9tbXVf
bWFwX3NndGFibGUgLSBNYXAgdGhlIGdpdmVuIGJ1ZmZlciB0byB0aGUgSU9NTVUgZG9tYWluCj4g
KyAqIEBkb21haW46CVRoZSBJT01NVSBkb21haW4gdG8gcGVyZm9yCiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIF5eXl5eXiBUcnVuY2F0ZWQgY29tbWVudD8KPiArICogQGlvdmE6
CVRoZSBzdGFydCBhZGRyZWVzIHRvIG1hcCB0aGUgYnVmZmVyCiAgICAgICAgICAgICAgICAgICAg
ICAgICAgXl5eXl5eXiBUeXBvCgo+ICsgKiBAc2d0OglUaGUgc2dfdGFibGUgb2JqZWN0IGRlc2Ny
aWJpbmcgdGhlIGJ1ZmZlcgo+ICsgKiBAcHJvdDoJSU9NTVUgcHJvdGVjdGlvbiBiaXRzCj4gKyAq
Cj4gKyAqIENyZWF0ZSBhIG1hcHBpbmcgYXQgQGlvdmEgZm9yIHRoZSBidWZmZXIgZGVzY3JpYmVk
IGJ5IGEgc2NhdHRlcmxpc3QKPiArICogc3RvcmVkIGluIHRoZSBnaXZlbiBzZ190YWJsZSBvYmpl
Y3QgaW4gdGhlIHByb3ZpZGVkIElPTU1VIGRvbWFpbi4KPiArICovCj4gK3N0YXRpYyBpbmxpbmUg
c2l6ZV90IGlvbW11X21hcF9zZ3RhYmxlKHN0cnVjdCBpb21tdV9kb21haW4gKmRvbWFpbiwKPiAr
CQkJdW5zaWduZWQgbG9uZyBpb3ZhLCBzdHJ1Y3Qgc2dfdGFibGUgKnNndCwgaW50IHByb3QpCj4g
K3sKPiArCXJldHVybiBpb21tdV9tYXBfc2coZG9tYWluLCBpb3ZhLCBzZ3QtPnNnbCwgc2d0LT5v
cmlnX25lbnRzLCBwcm90KTsKPiArfQo+ICsKPiAgZXh0ZXJuIHZvaWQgaW9tbXVfZ2V0X3Jlc3Zf
cmVnaW9ucyhzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBsaXN0X2hlYWQgKmxpc3QpOwo+ICBl
eHRlcm4gdm9pZCBpb21tdV9wdXRfcmVzdl9yZWdpb25zKHN0cnVjdCBkZXZpY2UgKmRldiwgc3Ry
dWN0IGxpc3RfaGVhZCAqbGlzdCk7Cj4gIGV4dGVybiB2b2lkIGdlbmVyaWNfaW9tbXVfcHV0X3Jl
c3ZfcmVnaW9ucyhzdHJ1Y3QgZGV2aWNlICpkZXYsCj4gLS0gCj4gMS45LjEKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJv
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
