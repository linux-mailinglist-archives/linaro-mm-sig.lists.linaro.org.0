Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C08201A75
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 20:37:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 282FA665A5
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 18:37:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1D91C665B6; Fri, 19 Jun 2020 18:37:50 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 82EEC665CF;
	Fri, 19 Jun 2020 18:34:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A22BE6659B
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 18:16:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8C60E665BB; Fri, 19 Jun 2020 18:16:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by lists.linaro.org (Postfix) with ESMTPS id CA9CF6659B
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 18:13:36 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-270-0m28QoAtN9SxtVrQMRv6IA-1; Fri, 19 Jun 2020 14:13:32 -0400
X-MC-Unique: 0m28QoAtN9SxtVrQMRv6IA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0E8CF835B40;
 Fri, 19 Jun 2020 18:13:30 +0000 (UTC)
Received: from redhat.com (ovpn-112-200.rdu2.redhat.com [10.10.112.200])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6C9EA19723;
 Fri, 19 Jun 2020 18:13:28 +0000 (UTC)
Date: Fri, 19 Jun 2020 14:13:26 -0400
From: Jerome Glisse <jglisse@redhat.com>
To: Felix Kuehling <felix.kuehling@amd.com>
Message-ID: <20200619181326.GB10009@redhat.com>
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
 <20200604081224.863494-5-daniel.vetter@ffwll.ch>
 <b11c2140-1b9c-9013-d9bb-9eb2c1906710@shipmail.org>
 <20200611083430.GD20149@phenom.ffwll.local>
 <20200611141515.GW6578@ziepe.ca>
 <4702e170-fd02-88fa-3da4-ea64252fff9a@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4702e170-fd02-88fa-3da4-ea64252fff9a@amd.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, Jason Gunthorpe <jgg@ziepe.ca>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>, amd-gfx@lists.freedesktop.org,
 Daniel Vetter <daniel.vetter@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-media@vger.kernel.org
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

T24gVGh1LCBKdW4gMTEsIDIwMjAgYXQgMDc6MzU6MzVQTSAtMDQwMCwgRmVsaXggS3VlaGxpbmcg
d3JvdGU6Cj4gQW0gMjAyMC0wNi0xMSB1bSAxMDoxNSBhLm0uIHNjaHJpZWIgSmFzb24gR3VudGhv
cnBlOgo+ID4gT24gVGh1LCBKdW4gMTEsIDIwMjAgYXQgMTA6MzQ6MzBBTSArMDIwMCwgRGFuaWVs
IFZldHRlciB3cm90ZToKPiA+Pj4gSSBzdGlsbCBoYXZlIG15IGRvdWJ0cyBhYm91dCBhbGxvd2lu
ZyBmZW5jZSB3YWl0aW5nIGZyb20gd2l0aGluIHNocmlua2Vycy4KPiA+Pj4gSU1PIGlkZWFsbHkg
dGhleSBzaG91bGQgdXNlIGEgdHJ5d2FpdCBhcHByb2FjaCwgaW4gb3JkZXIgdG8gYWxsb3cgbWVt
b3J5Cj4gPj4+IGFsbG9jYXRpb24gZHVyaW5nIGNvbW1hbmQgc3VibWlzc2lvbiBmb3IgZHJpdmVy
cyB0aGF0Cj4gPj4+IHB1Ymxpc2ggZmVuY2VzIGJlZm9yZSBjb21tYW5kIHN1Ym1pc3Npb24uIChT
aW5jZSBlYXJseSByZXNlcnZhdGlvbiBvYmplY3QKPiA+Pj4gcmVsZWFzZSByZXF1aXJlcyB0aGF0
KS4KPiA+PiBZZWFoIGl0IGlzIGEgYml0IGFubm95aW5nLCBlLmcuIGZvciBkcm0vc2NoZWR1bGVy
IEkgdGhpbmsgd2UnbGwgZW5kIHVwCj4gPj4gd2l0aCBhIG1lbXBvb2wgdG8gbWFrZSBzdXJlIGl0
IGNhbiBoYW5kbGUgaXQncyBhbGxvY2F0aW9ucy4KPiA+Pgo+ID4+PiBCdXQgc2luY2UgZHJpdmVy
cyBhcmUgYWxyZWFkeSB3YWl0aW5nIGZyb20gd2l0aGluIHNocmlua2VycyBhbmQgSSB0YWtlIHlv
dXIKPiA+Pj4gd29yZCBmb3IgSE1NIHJlcXVpcmluZyB0aGlzLAo+ID4+IFllYWggdGhlIGJpZyB0
cm91YmxlIGlzIEhNTSBhbmQgbW11IG5vdGlmaWVycy4gVGhhdCdzIHRoZSByZWFsbHkgYXdrd2Fy
ZAo+ID4+IG9uZSwgdGhlIHNocmlua2VyIG9uZSBpcyBhIGxvdCBsZXNzIGVzdGFibGlzaGVkLgo+
ID4gSSByZWFsbHkgcXVlc3Rpb24gaWYgSFcgdGhhdCBuZWVkcyBzb21ldGhpbmcgbGlrZSBETUEg
ZmVuY2Ugc2hvdWxkCj4gPiBldmVuIGJlIHVzaW5nIG1tdSBub3RpZmllcnMgLSB0aGUgYmVzdCB1
c2UgaXMgSFcgdGhhdCBjYW4gZmVuY2UgdGhlCj4gPiBETUEgZGlyZWN0bHkgd2l0aG91dCBoYXZp
bmcgdG8gZ2V0IGludm9sdmVkIHdpdGggc29tZSBjb21tYW5kIHN0cmVhbQo+ID4gcHJvY2Vzc2lu
Zy4KPiA+Cj4gPiBPciBhdCB0aGUgdmVyeSBsZWFzdCBpdCBzaG91bGQgbm90IGJlIGEgZ2VuZXJp
YyBETUEgZmVuY2UgYnV0IGEKPiA+IG5hcnJvd2VkIGNvbXBsZXRpb24gdGllZCBvbmx5IGludG8g
dGhlIHNhbWUgR1BVIGRyaXZlcidzIGNvbW1hbmQKPiA+IGNvbXBsZXRpb24gcHJvY2Vzc2luZyB3
aGljaCBzaG91bGQgYmUgYWJsZSB0byBwcm9ncmVzcyB3aXRob3V0Cj4gPiBibG9ja2luZy4KPiA+
Cj4gPiBUaGUgaW50ZW50IG9mIG5vdGlmaWVycyB3YXMgbmV2ZXIgdG8gZW5kbGVzc2x5IGJsb2Nr
IHdoaWxlIHZhc3QKPiA+IGFtb3VudHMgb2YgU1cgZG9lcyB3b3JrLgo+ID4KPiA+IEdvaW5nIGFy
b3VuZCBhbmQgc3dpdGNoaW5nIGV2ZXJ5dGhpbmcgaW4gYSBHUFUgdG8gR0ZQX0FUT01JQyBzZWVt
cwo+ID4gbGlrZSBiYWQgaWRlYS4KPiA+Cj4gPj4gSSd2ZSBwaW5nZWQgYSBidW5jaCBvZiBhcm1z
b2MgZ3B1IGRyaXZlciBwZW9wbGUgYW5kIGFzayB0aGVtIGhvdyBtdWNoIHRoaXMKPiA+PiBodXJ0
cywgc28gdGhhdCB3ZSBoYXZlIGEgY2xlYXIgYW5zd2VyLiBPbiB4ODYgSSBkb24ndCB0aGluayB3
ZSBoYXZlIG11Y2gKPiA+PiBvZiBhIGNob2ljZSBvbiB0aGlzLCB3aXRoIHVzZXJwdHIgaW4gYW1k
IGFuZCBpOTE1IGFuZCBobW0gd29yayBpbiBub3V2ZWF1Cj4gPj4gKGJ1dCBub3V2ZWF1IEkgdGhp
bmsgZG9lc24ndCB1c2UgZG1hX2ZlbmNlIGluIHRoZXJlKS4gCj4gCj4gU29vbiBub3V2ZWF1IHdp
bGwgZ2V0IGNvbXBhbnkuIFdlJ3JlIHdvcmtpbmcgb24gYSByZWNvdmVyYWJsZSBwYWdlIGZhdWx0
Cj4gaW1wbGVtZW50YXRpb24gZm9yIEhNTSBpbiBhbWRncHUgd2hlcmUgd2UnbGwgbmVlZCB0byB1
cGRhdGUgcGFnZSB0YWJsZXMKPiB1c2luZyB0aGUgR1BVcyBTRE1BIGVuZ2luZSBhbmQgd2FpdCBm
b3IgY29ycmVzcG9uZGluZyBmZW5jZXMgaW4gTU1VCj4gbm90aWZpZXJzLgoKTm90ZSB0aGF0IEhN
TSBtYW5kYXRlLCBhbmQgaSBzdHJlc3NlZCB0aGF0IHNldmVyYWwgdGltZSBpbiB0aGUgcGFzdCwK
dGhhdCBhbGwgR1BVIHBhZ2UgdGFibGUgdXBkYXRlIGFyZSBhc3luY2hyb25vdXMgYW5kIGRvIG5v
dCBoYXZlIHRvCndhaXQgb24gX2FueXRoaW5nXy4KCkkgdW5kZXJzdGFuZCB0aGF0IHlvdSB1c2Ug
RE1BIGVuZ2luZSBmb3IgR1BVIHBhZ2UgdGFibGUgdXBkYXRlIGJ1dAppZiB5b3Ugd2FudCB0byBk
byBzbyB3aXRoIEhNTSB0aGVuIHlvdSBuZWVkIGEgR1BVIHBhZ2UgdGFibGUgdXBkYXRlCm9ubHkg
RE1BIGNvbnRleHQgd2hlcmUgYWxsIEdQVSBwYWdlIHRhYmxlIHVwZGF0ZSBnb2VzIHRocm91Z2gg
YW5kCndoZXJlIHVzZXIgc3BhY2UgY2FuIG5vdCBxdWV1ZSB1cCBqb2IuCgpJdCBjYW4gYmUgZm9y
IEhNTSBvbmx5IGJ1dCBpZiB5b3Ugd2FudCB0byBtaXggSE1NIHdpdGggbm9uIEhNTSB0aGVuCmV2
ZXJ5dGhpbmcgbmVlZCB0byBiZSBvbiB0aGF0IHF1ZXVlIGFuZCBvdGhlciBjb21tYW5kIHF1ZXVl
IHdpbGwgaGF2ZQp0byBkZXBlbmRzIG9uIGl0LgoKQ2hlZXJzLApKw6lyw7RtZQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGlu
YXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
