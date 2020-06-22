Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 132602041C5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Jun 2020 22:16:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3CB03665BB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Jun 2020 20:16:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 31CBF665BE; Mon, 22 Jun 2020 20:16:27 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,RDNS_NONE,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AEE326653E;
	Mon, 22 Jun 2020 20:15:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 24F23664F0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Jun 2020 20:15:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 077D76653E; Mon, 22 Jun 2020 20:15:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (unknown [205.139.110.120])
 by lists.linaro.org (Postfix) with ESMTPS id 0D14B664F0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Jun 2020 20:15:52 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-420-f7cc3XQuNW-UeEjQYsAiCA-1; Mon, 22 Jun 2020 16:15:47 -0400
X-MC-Unique: f7cc3XQuNW-UeEjQYsAiCA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 03BD218FF665;
 Mon, 22 Jun 2020 20:15:45 +0000 (UTC)
Received: from redhat.com (ovpn-119-159.rdu2.redhat.com [10.10.119.159])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8972560F89;
 Mon, 22 Jun 2020 20:15:42 +0000 (UTC)
Date: Mon, 22 Jun 2020 16:15:40 -0400
From: Jerome Glisse <jglisse@redhat.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20200622201540.GB9708@redhat.com>
References: <CAKMK7uE-kWA==Cko5uenMrcnopEjq42HxoDTDywzBAbHqsN13g@mail.gmail.com>
 <20200619151551.GP6578@ziepe.ca>
 <CAKMK7uEvkshAM6KUYZu8_OCpF4+1Y_SM7cQ9nJWpagfke8s8LA@mail.gmail.com>
 <20200619172308.GQ6578@ziepe.ca>
 <20200619180935.GA10009@redhat.com>
 <20200619181849.GR6578@ziepe.ca>
 <56008d64-772d-5757-6136-f20591ef71d2@amd.com>
 <20200619195538.GT6578@ziepe.ca>
 <20200619203147.GC13117@redhat.com>
 <20200622114617.GU6578@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200622114617.GU6578@ziepe.ca>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Felix Kuehling <felix.kuehling@amd.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 Daniel Vetter <daniel.vetter@intel.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Mika Kuoppala <mika.kuoppala@intel.com>
Subject: Re: [Linaro-mm-sig] [PATCH 04/18] dma-fence: prime lockdep
 annotations
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

T24gTW9uLCBKdW4gMjIsIDIwMjAgYXQgMDg6NDY6MTdBTSAtMDMwMCwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOgo+IE9uIEZyaSwgSnVuIDE5LCAyMDIwIGF0IDA0OjMxOjQ3UE0gLTA0MDAsIEplcm9t
ZSBHbGlzc2Ugd3JvdGU6Cj4gPiBOb3QgZG9hYmxlIGFzIHBhZ2UgcmVmY291bnQgY2FuIGNoYW5n
ZSBmb3IgdGhpbmdzIHVucmVsYXRlZCB0byBHVVAsIHdpdGgKPiA+IEpvaG4gY2hhbmdlcyB3ZSBj
YW4gaWRlbnRpZnkgR1VQIGFuZCB3ZSBjb3VsZCBwb3RlbnRpYWx5IGNvcHkgR1VQZWQgcGFnZQo+
ID4gaW5zdGVhZCBvZiBDT1cgYnV0IHRoaXMgY2FuIHBvdGVudGlhbHkgc2xvdyBkb3duIGZvcmso
KSBhbmQgaSBhbSBub3Qgc3VyZQo+ID4gaG93IGFjY2VwdGFibGUgdGhpcyB3b3VsZCBiZS4gQWxz
byB0aGlzIGRvZXMgbm90IHNvbHZlIEdVUCBhZ2FpbnN0IHBhZ2UKPiA+IHRoYXQgYXJlIGFscmVh
ZHkgaW4gZm9yayB0cmVlIGllIHBhZ2UgUDAgaXMgaW4gcHJvY2VzcyBBIHdoaWNoIGZvcmtzLAo+
ID4gd2Ugbm93IGhhdmUgcGFnZSBQMCBpbiBwcm9jZXNzIEEgYW5kIEIuIE5vdyB3ZSBoYXZlIHBy
b2Nlc3MgQSB3aGljaCBmb3Jrcwo+ID4gYWdhaW4gYW5kIHdlIGhhdmUgcGFnZSBQMCBpbiBBLCBC
LCBhbmQgQy4gSGVyZSBCIGFuZCBDIGFyZSB0d28gYnJhbmNoZXMKPiA+IHdpdGggcm9vdCBpbiBB
LiBCIGFuZC9vciBDIGNhbiBrZWVwIGZvcmtpbmcgYW5kIGdyb3cgdGhlIGZvcmsgdHJlZS4KPiAK
PiBGb3IgYSBsb25nIHRpbWUgbm93IFJETUEgaGFzIGJyb2tlbiBDT1cgcGFnZXMgd2hlbiBjcmVh
dGluZyB1c2VyIERNQQo+IHJlZ2lvbnMuCj4gCj4gVGhlIHByb2JsZW0gaGFzIGJlZW4gdGhhdCBm
b3JrIHJlLUNPVydzIHJlZ2lvbnMgdGhhdCBoYWQgdGhlaXIgQ09XCj4gYnJva2VuLgo+IAo+IFNv
LCBpZiB5b3UgYnJlYWsgdGhlIENPVyB1cG9uIG1hcHBpbmcgYW5kIHByZXZlbnQgZm9yayAoYW5k
IG90aGVycykKPiBmcm9tIGNvcHlpbmcgRE1BIHBpbm5lZCB0aGVuIHlvdSdkIGNvdmVyIHRoZSBj
YXNlcy4KCkkgYW0gbm90IHN1cmUgd2Ugd2FudCB0byBwcmV2ZW50IENPVyBmb3IgcGlubmVkIEdV
UCBwYWdlcywgdGhpcyB3b3VsZApjaGFuZ2UgY3VycmVudCBzZW1hbnRpYyBhbmQgcG90ZW50aWFs
eSBicmVhay9zbG93IGRvd24gZXhpc3RpbmcgYXBwcy4KCkFueXdheSBpIHRoaW5rIHdlIGZvY3Vz
IHRvbyBtdWNoIG9uIGZvcmsvQ09XLCBpdCBpcyBqdXN0IGFuIHVuZml4YWJsZQpicm9rZW4gY29y
bmVyIGNhc2VzLCBtbXUgbm90aWZpZXIgYWxsb3dzIHlvdSB0byBhdm9pZCBpdC4gRm9yY2luZyBy
ZWFsCmNvcHkgb24gZm9yayB3b3VsZCBsaWtlbHkgYmUgc2VlbiBhcyByZWdyZXNzaW9uIGJ5IG1v
c3QgcGVvcGxlLgoKCj4gPiBTZW1hbnRpYyB3YXMgY2hhbmdlIHdpdGggMTc4Mzk4NTZmZDU4OGY0
YWI2Yjc4OWY0ODJlZDNmZmQ3YzQwM2UxZiB0byBzb21lCj4gPiB3aGF0ICJmaXgiIHRoYXQgYnV0
IEdVUCBmYXN0IGlzIHN0aWxsIHN1Y2NlcHRpYmxlIHRvIHRoaXMuCj4gCj4gQWgsIHNvIGV2ZXJ5
b25lIGJyZWFrcyB0aGUgQ09XIG5vdywgbm90IGp1c3QgUkRNQS4uCj4gCj4gV2hhdCBkbyB5b3Ug
bWVhbiAnR1VQIGZhc3QgaXMgc3RpbGwgc3VjY2VwdGlibGUgdG8gdGhpcycgPwoKTm90IGFsbCBH
VVAgZmFzdCBwYXRoIGFyZSB1cGRhdGVkIChpbnRlbnRpb25hbHkpIF9fZ2V0X3VzZXJfcGFnZXNf
ZmFzdCgpCmZvciBpbnN0YW5jZSBzdGlsbCBrZWVwcyBDT1cgaW50YWN0LiBQZW9wbGUgdXNpbmcg
R1VQIHNob3VsZCByZWFsbHkga25vd3MKd2hhdCB0aGV5IGFyZSBkb2luZy4KCkNoZWVycywKSsOp
csO0bWUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpo
dHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
