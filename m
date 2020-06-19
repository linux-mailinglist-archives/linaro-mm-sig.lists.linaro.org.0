Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D04201CD3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 23:00:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0CD4E60733
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 21:00:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F24FF665BE; Fri, 19 Jun 2020 21:00:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 09D43665BF;
	Fri, 19 Jun 2020 20:59:26 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8D7CB665BB
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 20:59:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 74DAF665BF; Fri, 19 Jun 2020 20:59:22 +0000 (UTC)
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by lists.linaro.org (Postfix) with ESMTPS id 4FA3D665BB
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 20:59:21 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-354-rrXxSD6nM6-QXDL_hIU0dg-1; Fri, 19 Jun 2020 16:59:17 -0400
X-MC-Unique: rrXxSD6nM6-QXDL_hIU0dg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D0E84193F560;
 Fri, 19 Jun 2020 20:59:14 +0000 (UTC)
Received: from redhat.com (ovpn-112-200.rdu2.redhat.com [10.10.112.200])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A800B7C1E3;
 Fri, 19 Jun 2020 20:59:12 +0000 (UTC)
Date: Fri, 19 Jun 2020 16:59:10 -0400
From: Jerome Glisse <jglisse@redhat.com>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20200619205910.GA14480@redhat.com>
References: <CAKMK7uEbqTu4q-amkLXyd1i8KNtLaoO2ZFoGqYiG6D0m0FKpOg@mail.gmail.com>
 <20200619113934.GN6578@ziepe.ca>
 <CAKMK7uE-kWA==Cko5uenMrcnopEjq42HxoDTDywzBAbHqsN13g@mail.gmail.com>
 <20200619151551.GP6578@ziepe.ca>
 <CAKMK7uEvkshAM6KUYZu8_OCpF4+1Y_SM7cQ9nJWpagfke8s8LA@mail.gmail.com>
 <20200619172308.GQ6578@ziepe.ca>
 <20200619180935.GA10009@redhat.com>
 <20200619181849.GR6578@ziepe.ca>
 <20200619201011.GB13117@redhat.com>
 <CAKMK7uFZgQH3bP4iC9MPArpngeSHESK62KFEeJvYyV9NSJ_GRw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uFZgQH3bP4iC9MPArpngeSHESK62KFEeJvYyV9NSJ_GRw@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Thomas Hellstrom <thomas.hellstrom@intel.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
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

T24gRnJpLCBKdW4gMTksIDIwMjAgYXQgMTA6NDM6MjBQTSArMDIwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiBPbiBGcmksIEp1biAxOSwgMjAyMCBhdCAxMDoxMCBQTSBKZXJvbWUgR2xpc3NlIDxq
Z2xpc3NlQHJlZGhhdC5jb20+IHdyb3RlOgo+ID4KPiA+IE9uIEZyaSwgSnVuIDE5LCAyMDIwIGF0
IDAzOjE4OjQ5UE0gLTAzMDAsIEphc29uIEd1bnRob3JwZSB3cm90ZToKPiA+ID4gT24gRnJpLCBK
dW4gMTksIDIwMjAgYXQgMDI6MDk6MzVQTSAtMDQwMCwgSmVyb21lIEdsaXNzZSB3cm90ZToKPiA+
ID4gPiBPbiBGcmksIEp1biAxOSwgMjAyMCBhdCAwMjoyMzowOFBNIC0wMzAwLCBKYXNvbiBHdW50
aG9ycGUgd3JvdGU6Cj4gPiA+ID4gPiBPbiBGcmksIEp1biAxOSwgMjAyMCBhdCAwNjoxOTo0MVBN
ICswMjAwLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gPiA+ID4KPiA+ID4gPiA+ID4gVGhlIG1h
ZG5lc3MgaXMgb25seSB0aGF0IGRldmljZSBCJ3MgbW11IG5vdGlmaWVyIG1pZ2h0IG5lZWQgdG8g
d2FpdAo+ID4gPiA+ID4gPiBmb3IgZmVuY2VfQiBzbyB0aGF0IHRoZSBkbWEgb3BlcmF0aW9uIGZp
bmlzaGVzLiBXaGljaCBpbiB0dXJuIGhhcyB0bwo+ID4gPiA+ID4gPiB3YWl0IGZvciBkZXZpY2Ug
QSB0byBmaW5pc2ggZmlyc3QuCj4gPiA+ID4gPgo+ID4gPiA+ID4gU28sIGl0IHNvdW5kLCBmdW5k
YW1lbnRhbGx5IHlvdSd2ZSBnb3QgdGhpcyBncmFwaCBvZiBvcGVyYXRpb25zIGFjcm9zcwo+ID4g
PiA+ID4gYW4gdW5rbm93biBzZXQgb2YgZHJpdmVycyBhbmQgdGhlIGtlcm5lbCBjYW5ub3QgaW5z
ZXJ0IGl0c2VsZiBpbgo+ID4gPiA+ID4gZG1hX2ZlbmNlIGhhbmQgb2ZmcyB0byByZS12YWxpZGF0
ZSBhbnkgb2YgdGhlIGJ1ZmZlcnMgaW52b2x2ZWQ/Cj4gPiA+ID4gPiBCdWZmZXJzIHdoaWNoIGJ5
IGRlZmluaXRpb24gY2Fubm90IGJlIHRvdWNoZWQgYnkgdGhlIGhhcmR3YXJlIHlldC4KPiA+ID4g
PiA+Cj4gPiA+ID4gPiBUaGF0IHJlYWxseSBpcyBhIHByZXR0eSBob3JyaWJsZSBwbGFjZSB0byBl
bmQgdXAuLgo+ID4gPiA+ID4KPiA+ID4gPiA+IFBpbm5pbmcgcmVhbGx5IGlzIHJpZ2h0IGFuc3dl
ciBmb3IgdGhpcyBraW5kIG9mIHdvcmsgZmxvdy4gSSB0aGluawo+ID4gPiA+ID4gY29udmVydGlu
ZyBwaW5uaW5nIHRvIG5vdGlmZXJzIHNob3VsZCBub3QgYmUgZG9uZSB1bmxlc3Mgbm90aWZpZXIK
PiA+ID4gPiA+IGludmFsaWRhdGlvbiBpcyByZWxhdGl2ZWx5IGJvdW5kZWQuCj4gPiA+ID4gPgo+
ID4gPiA+ID4gSSBrbm93IHBlb3BsZSBsaWtlIG5vdGlmaWVycyBiZWNhdXNlIHRoZXkgZ2l2ZSBh
IGJpdCBuaWNlciBwZXJmb3JtYW5jZQo+ID4gPiA+ID4gaW4gc29tZSBoYXBweSBjYXNlcywgYnV0
IHRoaXMgY3JpcHBsZXMgYWxsIHRoZSBiYWQgY2FzZXMuLgo+ID4gPiA+ID4KPiA+ID4gPiA+IElm
IHBpbm5pbmcgZG9lc24ndCB3b3JrIGZvciBzb21lIHJlYXNvbiBtYXliZSB3ZSBzaG91bGQgYWRk
cmVzcyB0aGF0Pwo+ID4gPiA+Cj4gPiA+ID4gTm90ZSB0aGF0IHRoZSBkbWEgZmVuY2UgaXMgb25s
eSB0cnVlIGZvciB1c2VyIHB0ciBidWZmZXIgd2hpY2ggcHJlZGF0ZQo+ID4gPiA+IGFueSBITU0g
d29yayBhbmQgdGh1cyB3ZXJlIHVzaW5nIG1tdSBub3RpZmllciBhbHJlYWR5LiBZb3UgbmVlZCB0
aGUKPiA+ID4gPiBtbXUgbm90aWZpZXIgdGhlcmUgYmVjYXVzZSBvZiBmb3JrIGFuZCBvdGhlciBj
b3JuZXIgY2FzZXMuCj4gPiA+Cj4gPiA+IEkgd29uZGVyIGlmIHdlIHNob3VsZCB0cnkgdG8gZml4
IHRoZSBmb3JrIGNhc2UgbW9yZSBkaXJlY3RseSAtIFJETUEKPiA+ID4gaGFzIHRoaXMgc2FtZSBw
cm9ibGVtIGFuZCBhZGRlZCBNQURWX0RPTlRGT1JLIGEgbG9uZyB0aW1lIGFnbyBhcyBhCj4gPiA+
IGhhY2t5IHdheSB0byBkZWFsIHdpdGggaXQuCj4gPiA+Cj4gPiA+IFNvbWUgY3JhenkgcGFnZSBw
aW4gdGhhdCByZXNvbHZlZCBDT1cgaW4gYSB3YXkgdGhhdCBhbHdheXMga2VwdCB0aGUKPiA+ID4g
cGh5c2ljYWwgbWVtb3J5IHdpdGggdGhlIG1tIHRoYXQgaW5pdGlhdGVkIHRoZSBwaW4/Cj4gPgo+
ID4gSnVzdCBubyB3YXkgdG8gZGVhbCB3aXRoIGl0IGVhc2lseSwgaSB0aG91Z2h0IGFib3V0IGZv
cmNpbmcgdGhlCj4gPiBhbm9uX3ZtYSAocGFnZS0+bWFwcGluZyBmb3IgYW5vbnltb3VzIHBhZ2Up
IHRvIHRoZSBhbm9uX3ZtYSB0aGF0Cj4gPiBiZWxvbmdzIHRvIHRoZSB2bWEgYWdhaW5zdCB3aGlj
aCB0aGUgR1VQIHdhcyBkb25lIGJ1dCBpdCB3b3VsZAo+ID4gYnJlYWsgdGhpbmdzIGlmIHBhZ2Ug
aXMgYWxyZWFkeSBpbiBvdGhlciBicmFuY2ggb2YgYSBmb3JrIHRyZWUuCj4gPiBBbHNvIHRoaXMg
Zm9yYmlkIGZhc3QgR1VQLgo+ID4KPiA+IFF1aXRlIGZyYW5rbHkgdGhlIGZvcmsgd2FzIG5vdCB0
aGUgbWFpbiBtb3RpdmF0aW5nIGZhY3Rvci4gR1BVCj4gPiBjYW4gcGluIHBvdGVudGlhbHkgR0J5
dGVzIG9mIG1lbW9yeSB0aHVzIHdlIHdhbnRlZCB0byBiZSBhYmxlCj4gPiB0byByZWxlYXNlIGl0
IGJ1dCBzaW5jZSBNaWNoYWwgY2hhbmdlcyB0byByZWNsYWltIGNvZGUgdGhpcyBpcwo+ID4gbm8g
bG9uZ2VyIGVmZmVjdGl2ZS4KPiAKPiBXaGF0IHdoZXJlIGhvdz8gTXkgcGF0Y2ggdG8gYW5ub3Rl
IHJlY2xhaW0gcGF0aHMgd2l0aCBtbXUgbm90aWZpZXIKPiBwb3NzaWJpbGl0eSBqdXN0IGxhbmRl
ZCBpbiAtbW0sIHNvIGlmIGRpcmVjdCByZWNsYWltIGNhbid0IHJlY2xhaW0gbW11Cj4gbm90aWZp
ZXInZWQgc3R1ZmYgYW55bW9yZSB3ZSBuZWVkIHRvIGtub3cuCj4gCj4gQWxzbyB0aGlzIHdvdWxk
IHJlc29sdmUgdGhlIGVudGlyZSBwYWluIHdlJ3JlIGRpc2N1c3NpbmcgaW4gdGhpcwo+IHRocmVh
ZCBhYm91dCBkbWFfZmVuY2Vfd2FpdCBkZWFkbG9ja2luZyBhZ2FpbnN0IGFueXRoaW5nIHRoYXQn
cyBub3QKPiBHRlBfQVRPTUlDIC4uLgoKU29ycnkgbXkgYmFkLCByZWNsYWltIHN0aWxsIHdvcmtz
LCBvbmx5IG9vbSBza2lwLiBJdCB3YXMgY291cGxlCnllYXJzIGFnbyBhbmQgaSB0aG91Z2h0IHRo
YXQgc29tZSBvZiB0aGUgdGhpbmdzIGRpc2N1c3Mgd2hpbGUKYmFjayBkaWQgbWFrZSBpdCB1cHN0
cmVhbS4KCkl0IGlzIHByb2JhYmx5IGEgZ29vZCB0aW1lIHRvIGFsc28gcG9pbnQgb3V0IHRoYXQg
d2hhdCBpIHdhbnRlZAp0byBkbyBpcyBoYXZlIGFsbCB0aGUgbW11IG5vdGlmaWVyIGNhbGxiYWNr
IHByb3ZpZGUgc29tZSBraW5kCm9mIGZlbmNlIChub3QgZG1hIGZlbmNlKSBzbyB0aGF0IHdlIGNh
biBzcGxpdCB0aGUgbm90aWZpY2F0aW9uCmludG8gc3RlcDoKICAgIEEtIHNjaGVkdWxlIG5vdGlm
aWNhdGlvbiBvbiBhbGwgZGV2aWNlcy9zeXN0ZW0gZ2V0IGZlbmNlcwogICAgICAgdGhpcyBzdGVw
IHNob3VsZCBtaW5pbWl6ZSBsb2NrIGRlcGVuZGVuY3kgYW5kIHNob3VsZAogICAgICAgbm90IGhh
dmUgdG8gd2FpdCBmb3IgYW55dGhpbmcgYWxzbyBiZXN0IGlmIHlvdSBjYW4gYXZvaWQKICAgICAg
IG1lbW9yeSBhbGxvY2F0aW9uIGZvciBpbnN0YW5jZSBieSBwcmUtYWxsb2NhdGluZyB3aGF0CiAg
ICAgICB5b3UgbmVlZCBmb3Igbm90aWZpY2F0aW9uLgogICAgQi0gbW0gY2FuIGRvIHRoaW5ncyBs
aWtlIHVubWFwIGJ1dCBjYW4gbm90IG1hcCBuZXcgcGFnZQogICAgICAgc28gd3JpdGUgc3BlY2lh
bCBzd2FwIHB0ZSB0byBjcHUgcGFnZSB0YWJsZQogICAgQy0gd2FpdCBvbiBlYWNoIGZlbmNlcyBm
cm9tIEEKICAgIC4uLiByZXN1bWUgb2xkIGNvZGUgaWUgcmVwbGFjZSBwdGUgb3IgZmluaXNoIHVu
bWFwIC4uLgoKVGhlIGlkZWEgaGVyZSBpcyB0aGF0IGF0IHN0ZXAgQyB0aGUgY29yZSBtbSBjYW4g
ZGVjaWRlIHRvIGJhY2sKb2ZmIGlmIGFueSBmZW5jZSByZXR1cm5lZCBmcm9tIEEgaGF2ZSB0byB3
YWl0LiBUaGlzIG1lYW5zIHRoYXQKZXZlcnkgZGV2aWNlIGlzIGludmFsaWRhdGluZyBmb3Igbm90
aGluZyBidXQgaWYgd2UgZ2V0IHRoZXJlCnRoZW4gaXQgbWlnaHQgc3RpbGwgYmUgYSBnb29kIHRo
aW5nIGFzIG5leHQgdGltZSBhcm91bmQgbWF5YmUKdGhlIGtlcm5lbCB3b3VsZCBiZSBzdWNjZXNz
ZnVsbCB3aXRob3V0IGEgd2FpdC4KClRoaXMgd291bGQgYWxsb3cgdGhpbmdzIGxpa2UgcmVjbGFp
bSB0byBtYWtlIGZvcndhcmQgcHJvZ3Jlc3MKYW5kIHNraXAgb3ZlciBvciBsaW1pdCB3YWl0IHRp
bWUgdG8gZ2l2ZW4gdGltZW91dC4KCkFsc28gSSB0aG91Z2h0IHRvIGV4dGVuZCB0aGlzIGV2ZW4g
dG8gbXVsdGktY3B1IHRsYiBmbHVzaCBzbwp0aGF0IGRldmljZSBhbmQgQ1BVcyBmb2xsb3cgc2Ft
ZSBwYXR0ZXJuIGFuZCB3ZSBjYW4gbWFrZSAvLwpwcm9ncmVzcyBvbiBlYWNoLgoKCkdldHRpbmcg
dG8gc3VjaCBzY2hlbWUgaXMgYSBsb3Qgb2Ygd29yay4gTXkgcGxhbiB3YXMgdG8gZmlyc3QKZ2V0
IHRoZSBmZW5jZSBhcyBwYXJ0IG9mIHRoZSBub3RpZmllciB1c2VyIEFQSSBhbmQgaGlkZSBpdCBm
cm9tCm1tIGluc2lkZSBub3RpZmllciBjb21tb24gY29kZS4gVGhlbiB1cGRhdGUgZWFjaCBjb3Jl
IG1tIHBhdGggdG8KbmV3IG1vZGVsIGFuZCBzZWUgaWYgdGhlcmUgaXMgYW55IGJlbmVmaXQgZnJv
bSBpdC4gUmVjbGFpbSB3b3VsZApiZSBmaXJzdCBjYW5kaWRhdGUuCgpDaGVlcnMsCkrDqXLDtG1l
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6
Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
