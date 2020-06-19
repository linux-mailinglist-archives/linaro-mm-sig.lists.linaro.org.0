Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 35548201B7F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 21:41:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 512FA665C3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 19:41:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 43477665C5; Fri, 19 Jun 2020 19:41:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E7E7E665BE;
	Fri, 19 Jun 2020 19:41:14 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BDA4A6657B
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 19:41:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B04AF665BE; Fri, 19 Jun 2020 19:41:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by lists.linaro.org (Postfix) with ESMTPS id 1C1E16657B
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 19:41:10 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-103-kZZ2RrShMPqb7khPp6FD2g-1; Fri, 19 Jun 2020 15:41:05 -0400
X-MC-Unique: kZZ2RrShMPqb7khPp6FD2g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EA8D41800D42;
 Fri, 19 Jun 2020 19:41:00 +0000 (UTC)
Received: from redhat.com (ovpn-112-200.rdu2.redhat.com [10.10.112.200])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8665619D7B;
 Fri, 19 Jun 2020 19:40:58 +0000 (UTC)
Date: Fri, 19 Jun 2020 15:40:56 -0400
From: Jerome Glisse <jglisse@redhat.com>
To: Felix Kuehling <felix.kuehling@amd.com>
Message-ID: <20200619194056.GA13117@redhat.com>
References: <20200618172338.GM6578@ziepe.ca>
 <CAKMK7uEbqTu4q-amkLXyd1i8KNtLaoO2ZFoGqYiG6D0m0FKpOg@mail.gmail.com>
 <20200619113934.GN6578@ziepe.ca>
 <CAKMK7uE-kWA==Cko5uenMrcnopEjq42HxoDTDywzBAbHqsN13g@mail.gmail.com>
 <20200619151551.GP6578@ziepe.ca>
 <CAKMK7uEvkshAM6KUYZu8_OCpF4+1Y_SM7cQ9nJWpagfke8s8LA@mail.gmail.com>
 <20200619172308.GQ6578@ziepe.ca>
 <20200619180935.GA10009@redhat.com>
 <CADnq5_Pw_85Kzh1of=MbDi4g9POeF3jO4AJ7p2FjY5XZW0=vsQ@mail.gmail.com>
 <86f7f5e5-81a0-5429-5a6e-0d3b0860cfae@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <86f7f5e5-81a0-5429-5a6e-0d3b0860cfae@amd.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Thomas Hellstrom <thomas.hellstrom@intel.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
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

T24gRnJpLCBKdW4gMTksIDIwMjAgYXQgMDM6MzA6MzJQTSAtMDQwMCwgRmVsaXggS3VlaGxpbmcg
d3JvdGU6Cj4gCj4gQW0gMjAyMC0wNi0xOSB1bSAzOjExIHAubS4gc2NocmllYiBBbGV4IERldWNo
ZXI6Cj4gPiBPbiBGcmksIEp1biAxOSwgMjAyMCBhdCAyOjA5IFBNIEplcm9tZSBHbGlzc2UgPGpn
bGlzc2VAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPj4gT24gRnJpLCBKdW4gMTksIDIwMjAgYXQgMDI6
MjM6MDhQTSAtMDMwMCwgSmFzb24gR3VudGhvcnBlIHdyb3RlOgo+ID4+PiBPbiBGcmksIEp1biAx
OSwgMjAyMCBhdCAwNjoxOTo0MVBNICswMjAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4+Pgo+
ID4+Pj4gVGhlIG1hZG5lc3MgaXMgb25seSB0aGF0IGRldmljZSBCJ3MgbW11IG5vdGlmaWVyIG1p
Z2h0IG5lZWQgdG8gd2FpdAo+ID4+Pj4gZm9yIGZlbmNlX0Igc28gdGhhdCB0aGUgZG1hIG9wZXJh
dGlvbiBmaW5pc2hlcy4gV2hpY2ggaW4gdHVybiBoYXMgdG8KPiA+Pj4+IHdhaXQgZm9yIGRldmlj
ZSBBIHRvIGZpbmlzaCBmaXJzdC4KPiA+Pj4gU28sIGl0IHNvdW5kLCBmdW5kYW1lbnRhbGx5IHlv
dSd2ZSBnb3QgdGhpcyBncmFwaCBvZiBvcGVyYXRpb25zIGFjcm9zcwo+ID4+PiBhbiB1bmtub3du
IHNldCBvZiBkcml2ZXJzIGFuZCB0aGUga2VybmVsIGNhbm5vdCBpbnNlcnQgaXRzZWxmIGluCj4g
Pj4+IGRtYV9mZW5jZSBoYW5kIG9mZnMgdG8gcmUtdmFsaWRhdGUgYW55IG9mIHRoZSBidWZmZXJz
IGludm9sdmVkPwo+ID4+PiBCdWZmZXJzIHdoaWNoIGJ5IGRlZmluaXRpb24gY2Fubm90IGJlIHRv
dWNoZWQgYnkgdGhlIGhhcmR3YXJlIHlldC4KPiA+Pj4KPiA+Pj4gVGhhdCByZWFsbHkgaXMgYSBw
cmV0dHkgaG9ycmlibGUgcGxhY2UgdG8gZW5kIHVwLi4KPiA+Pj4KPiA+Pj4gUGlubmluZyByZWFs
bHkgaXMgcmlnaHQgYW5zd2VyIGZvciB0aGlzIGtpbmQgb2Ygd29yayBmbG93LiBJIHRoaW5rCj4g
Pj4+IGNvbnZlcnRpbmcgcGlubmluZyB0byBub3RpZmVycyBzaG91bGQgbm90IGJlIGRvbmUgdW5s
ZXNzIG5vdGlmaWVyCj4gPj4+IGludmFsaWRhdGlvbiBpcyByZWxhdGl2ZWx5IGJvdW5kZWQuCj4g
Pj4+Cj4gPj4+IEkga25vdyBwZW9wbGUgbGlrZSBub3RpZmllcnMgYmVjYXVzZSB0aGV5IGdpdmUg
YSBiaXQgbmljZXIgcGVyZm9ybWFuY2UKPiA+Pj4gaW4gc29tZSBoYXBweSBjYXNlcywgYnV0IHRo
aXMgY3JpcHBsZXMgYWxsIHRoZSBiYWQgY2FzZXMuLgo+ID4+Pgo+ID4+PiBJZiBwaW5uaW5nIGRv
ZXNuJ3Qgd29yayBmb3Igc29tZSByZWFzb24gbWF5YmUgd2Ugc2hvdWxkIGFkZHJlc3MgdGhhdD8K
PiA+PiBOb3RlIHRoYXQgdGhlIGRtYSBmZW5jZSBpcyBvbmx5IHRydWUgZm9yIHVzZXIgcHRyIGJ1
ZmZlciB3aGljaCBwcmVkYXRlCj4gPj4gYW55IEhNTSB3b3JrIGFuZCB0aHVzIHdlcmUgdXNpbmcg
bW11IG5vdGlmaWVyIGFscmVhZHkuIFlvdSBuZWVkIHRoZQo+ID4+IG1tdSBub3RpZmllciB0aGVy
ZSBiZWNhdXNlIG9mIGZvcmsgYW5kIG90aGVyIGNvcm5lciBjYXNlcy4KPiA+Pgo+ID4+IEZvciBu
b3V2ZWF1IHRoZSBub3RpZmllciBkbyBub3QgbmVlZCB0byB3YWl0IGZvciBhbnl0aGluZyBpdCBj
YW4gdXBkYXRlCj4gPj4gdGhlIEdQVSBwYWdlIHRhYmxlIHJpZ2h0IGF3YXkuIE1vZHVsbyBuZWVk
aW5nIHRvIHdyaXRlIHRvIEdQVSBtZW1vcnkKPiA+PiB1c2luZyBkbWEgZW5naW5lIGlmIHRoZSBH
UFUgcGFnZSB0YWJsZSBpcyBpbiBHUFUgbWVtb3J5IHRoYXQgaXMgbm90Cj4gPj4gYWNjZXNzaWJs
ZSBmcm9tIHRoZSBDUFUgYnV0IHRoYXQncyBuZXZlciB0aGUgY2FzZSBmb3Igbm91dmVhdSBzbyBm
YXIKPiA+PiAoYnV0IGkgZXhwZWN0IGl0IHdpbGwgYmUgYXQgb25lIHBvaW50KS4KPiA+Pgo+ID4+
Cj4gPj4gU28gaSBzZWUgdGhpcyBhcyAyIGRpZmZlcmVudCBjYXNlcywgdGhlIHVzZXIgcHRyIGNh
c2UsIHdoaWNoIGRvZXMgcGluCj4gPj4gcGFnZXMgYnkgdGhlIHdheSwgd2hlcmUgdGhpbmdzIGFy
ZSBzeW5jaHJvbm91cy4gVmVyc3VzIHRoZSBITU0gY2FzZXMKPiA+PiB3aGVyZSBldmVyeXRoaW5n
IGlzIGFzeW5jaHJvbm91cy4KPiA+Pgo+ID4+Cj4gPj4gSSBwcm9iYWJseSBuZWVkIHRvIHdhcm4g
QU1EIGZvbGtzIGFnYWluIHRoYXQgdXNpbmcgSE1NIG1lYW5zIHRoYXQgeW91Cj4gPj4gbXVzdCBi
ZSBhYmxlIHRvIHVwZGF0ZSB0aGUgR1BVIHBhZ2UgdGFibGUgYXN5bmNocm9ub3VzbHkgd2l0aG91
dAo+ID4+IGZlbmNlIHdhaXQuIFRoZSBpc3N1ZSBmb3IgQU1EIGlzIHRoYXQgdGhleSBhbHJlYWR5
IHVwZGF0ZSB0aGVpciBHUFUKPiA+PiBwYWdlIHRhYmxlIHVzaW5nIERNQSBlbmdpbmUuIEkgYmVs
aWV2ZSB0aGlzIGlzIHN0aWxsIGRvYWJsZSBpZiB0aGV5Cj4gPj4gdXNlIGEga2VybmVsIG9ubHkg
RE1BIGVuZ2luZSBjb250ZXh0LCB3aGVyZSBvbmx5IGtlcm5lbCBjYW4gcXVldWUgdXAKPiA+PiBq
b2JzIHNvIHRoYXQgeW91IGRvIG5vdCBuZWVkIHRvIHdhaXQgZm9yIHVucmVsYXRlZCB0aGluZ3Mg
YW5kIHlvdSBjYW4KPiA+PiBwcmlvcml0aXplIEdQVSBwYWdlIHRhYmxlIHVwZGF0ZSB3aGljaCBz
aG91bGQgdHJhbnNsYXRlIGluIGZhc3QgR1BVCj4gPj4gcGFnZSB0YWJsZSB1cGRhdGUgd2l0aG91
dCBETUEgZmVuY2UuCj4gPiBBbGwgZGV2aWNlcyB3aGljaCBzdXBwb3J0IHJlY292ZXJhYmxlIHBh
Z2UgZmF1bHRzIGFsc28gaGF2ZSBhCj4gPiBkZWRpY2F0ZWQgcGFnaW5nIGVuZ2luZSBmb3IgdGhl
IGtlcm5lbCBkcml2ZXIgd2hpY2ggdGhlIGRyaXZlciBhbHJlYWR5Cj4gPiBtYWtlcyB1c2Ugb2Yu
ICBXZSBjYW4gYWxzbyB1cGRhdGUgdGhlIEdQVSBwYWdlIHRhYmxlcyB3aXRoIHRoZSBDUFUuCj4g
Cj4gV2UgaGF2ZSBhIHBvdGVudGlhbCBwcm9ibGVtIHdpdGggQ1BVIHVwZGF0aW5nIHBhZ2UgdGFi
bGVzIHdoaWxlIHRoZSBHUFUKPiBpcyByZXRyeWluZyBvbiBwYWdlIHRhYmxlIGVudHJpZXMgYmVj
YXVzZSA2NCBiaXQgQ1BVIHRyYW5zYWN0aW9ucyBkb24ndAo+IGFycml2ZSBpbiBkZXZpY2UgbWVt
b3J5IGF0b21pY2FsbHkuCj4gCj4gV2UgYXJlIHVzaW5nIFNETUEgZm9yIHBhZ2UgdGFibGUgdXBk
YXRlcy4gVGhpcyBjdXJyZW50bHkgZ29lcyB0aHJvdWdoIGEKPiB0aGUgRFJNIEdQVSBzY2hlZHVs
ZXIgdG8gYSBzcGVjaWFsIFNETUEgcXVldWUgdGhhdCdzIHVzZWQgYnkga2VybmVsLW1vZGUKPiBv
bmx5LiBCdXQgc2luY2UgaXQncyBiYXNlZCBvbiB0aGUgRFJNIEdQVSBzY2hlZHVsZXIsIHdlIGRv
IHVzZSBkbWEtZmVuY2UKPiB0byB3YWl0IGZvciBjb21wbGV0aW9uLgoKWWVhaCBteSB3b3JyeSBp
cyBtb3N0bHkgdGhhdCBzb21lIGNyb3NzIGRtYSBmZW5jZSBsZWFrIGludG8gaXQgYnV0Cml0IHNo
b3VsZCBuZXZlciBoYXBwZW4gcmVhbHksIG1heWJlIHRoZXJlIGlzIGEgd2F5IHRvIGNhdGNoIGlm
IGl0CmRvZXMgYW5kIHByaW50IGEgd2FybmluZy4KClNvIHllcyB5b3UgY2FuIHVzZSBkbWEgZmVu
Y2UsIGFzIGxvbmcgYXMgdGhleSBkbyBub3QgaGF2ZSBjcm9zcy1kZXAuCkFub3RoZXIgZXhwZWN0
YXRpb24gaXMgdGhhdCB0aGV5IGNvbXBsZXRlIHF1aWNrbHkgYW5kIHVzdWFseSBwYWdlCnRhYmxl
IHVwZGF0ZSBkby4KCkNoZWVycywKSsOpcsO0bWUKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW5hcm8tbW0tc2lnCg==
