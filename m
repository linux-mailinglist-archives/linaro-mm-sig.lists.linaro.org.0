Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 70145201A6E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 20:36:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8ACD9665A5
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 18:36:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7EBFA665B6; Fri, 19 Jun 2020 18:36:33 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,RDNS_NONE,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 129F06653E;
	Fri, 19 Jun 2020 18:34:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 487716659B
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 18:12:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3931D665D0; Fri, 19 Jun 2020 18:12:11 +0000 (UTC)
Received: from us-smtp-delivery-1.mimecast.com (unknown [205.139.110.61])
 by lists.linaro.org (Postfix) with ESMTPS id 237996659B
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 18:09:44 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-360-NaeDjSMGMDa8QaLfGotVwQ-1; Fri, 19 Jun 2020 14:09:41 -0400
X-MC-Unique: NaeDjSMGMDa8QaLfGotVwQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 46A1D464;
 Fri, 19 Jun 2020 18:09:39 +0000 (UTC)
Received: from redhat.com (ovpn-112-200.rdu2.redhat.com [10.10.112.200])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4FD907C1E8;
 Fri, 19 Jun 2020 18:09:37 +0000 (UTC)
Date: Fri, 19 Jun 2020 14:09:35 -0400
From: Jerome Glisse <jglisse@redhat.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20200619180935.GA10009@redhat.com>
References: <CAKMK7uE7DKUo9Z+yCpY+mW5gmKet8ugbF3yZNyHGqsJ=e-g_hA@mail.gmail.com>
 <20200617152835.GF6578@ziepe.ca>
 <20200618150051.GS20149@phenom.ffwll.local>
 <20200618172338.GM6578@ziepe.ca>
 <CAKMK7uEbqTu4q-amkLXyd1i8KNtLaoO2ZFoGqYiG6D0m0FKpOg@mail.gmail.com>
 <20200619113934.GN6578@ziepe.ca>
 <CAKMK7uE-kWA==Cko5uenMrcnopEjq42HxoDTDywzBAbHqsN13g@mail.gmail.com>
 <20200619151551.GP6578@ziepe.ca>
 <CAKMK7uEvkshAM6KUYZu8_OCpF4+1Y_SM7cQ9nJWpagfke8s8LA@mail.gmail.com>
 <20200619172308.GQ6578@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200619172308.GQ6578@ziepe.ca>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
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

T24gRnJpLCBKdW4gMTksIDIwMjAgYXQgMDI6MjM6MDhQTSAtMDMwMCwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOgo+IE9uIEZyaSwgSnVuIDE5LCAyMDIwIGF0IDA2OjE5OjQxUE0gKzAyMDAsIERhbmll
bCBWZXR0ZXIgd3JvdGU6Cj4gCj4gPiBUaGUgbWFkbmVzcyBpcyBvbmx5IHRoYXQgZGV2aWNlIEIn
cyBtbXUgbm90aWZpZXIgbWlnaHQgbmVlZCB0byB3YWl0Cj4gPiBmb3IgZmVuY2VfQiBzbyB0aGF0
IHRoZSBkbWEgb3BlcmF0aW9uIGZpbmlzaGVzLiBXaGljaCBpbiB0dXJuIGhhcyB0bwo+ID4gd2Fp
dCBmb3IgZGV2aWNlIEEgdG8gZmluaXNoIGZpcnN0Lgo+IAo+IFNvLCBpdCBzb3VuZCwgZnVuZGFt
ZW50YWxseSB5b3UndmUgZ290IHRoaXMgZ3JhcGggb2Ygb3BlcmF0aW9ucyBhY3Jvc3MKPiBhbiB1
bmtub3duIHNldCBvZiBkcml2ZXJzIGFuZCB0aGUga2VybmVsIGNhbm5vdCBpbnNlcnQgaXRzZWxm
IGluCj4gZG1hX2ZlbmNlIGhhbmQgb2ZmcyB0byByZS12YWxpZGF0ZSBhbnkgb2YgdGhlIGJ1ZmZl
cnMgaW52b2x2ZWQ/Cj4gQnVmZmVycyB3aGljaCBieSBkZWZpbml0aW9uIGNhbm5vdCBiZSB0b3Vj
aGVkIGJ5IHRoZSBoYXJkd2FyZSB5ZXQuCj4gCj4gVGhhdCByZWFsbHkgaXMgYSBwcmV0dHkgaG9y
cmlibGUgcGxhY2UgdG8gZW5kIHVwLi4KPiAKPiBQaW5uaW5nIHJlYWxseSBpcyByaWdodCBhbnN3
ZXIgZm9yIHRoaXMga2luZCBvZiB3b3JrIGZsb3cuIEkgdGhpbmsKPiBjb252ZXJ0aW5nIHBpbm5p
bmcgdG8gbm90aWZlcnMgc2hvdWxkIG5vdCBiZSBkb25lIHVubGVzcyBub3RpZmllcgo+IGludmFs
aWRhdGlvbiBpcyByZWxhdGl2ZWx5IGJvdW5kZWQuIAo+IAo+IEkga25vdyBwZW9wbGUgbGlrZSBu
b3RpZmllcnMgYmVjYXVzZSB0aGV5IGdpdmUgYSBiaXQgbmljZXIgcGVyZm9ybWFuY2UKPiBpbiBz
b21lIGhhcHB5IGNhc2VzLCBidXQgdGhpcyBjcmlwcGxlcyBhbGwgdGhlIGJhZCBjYXNlcy4uCj4g
Cj4gSWYgcGlubmluZyBkb2Vzbid0IHdvcmsgZm9yIHNvbWUgcmVhc29uIG1heWJlIHdlIHNob3Vs
ZCBhZGRyZXNzIHRoYXQ/CgpOb3RlIHRoYXQgdGhlIGRtYSBmZW5jZSBpcyBvbmx5IHRydWUgZm9y
IHVzZXIgcHRyIGJ1ZmZlciB3aGljaCBwcmVkYXRlCmFueSBITU0gd29yayBhbmQgdGh1cyB3ZXJl
IHVzaW5nIG1tdSBub3RpZmllciBhbHJlYWR5LiBZb3UgbmVlZCB0aGUKbW11IG5vdGlmaWVyIHRo
ZXJlIGJlY2F1c2Ugb2YgZm9yayBhbmQgb3RoZXIgY29ybmVyIGNhc2VzLgoKRm9yIG5vdXZlYXUg
dGhlIG5vdGlmaWVyIGRvIG5vdCBuZWVkIHRvIHdhaXQgZm9yIGFueXRoaW5nIGl0IGNhbiB1cGRh
dGUKdGhlIEdQVSBwYWdlIHRhYmxlIHJpZ2h0IGF3YXkuIE1vZHVsbyBuZWVkaW5nIHRvIHdyaXRl
IHRvIEdQVSBtZW1vcnkKdXNpbmcgZG1hIGVuZ2luZSBpZiB0aGUgR1BVIHBhZ2UgdGFibGUgaXMg
aW4gR1BVIG1lbW9yeSB0aGF0IGlzIG5vdAphY2Nlc3NpYmxlIGZyb20gdGhlIENQVSBidXQgdGhh
dCdzIG5ldmVyIHRoZSBjYXNlIGZvciBub3V2ZWF1IHNvIGZhcgooYnV0IGkgZXhwZWN0IGl0IHdp
bGwgYmUgYXQgb25lIHBvaW50KS4KCgpTbyBpIHNlZSB0aGlzIGFzIDIgZGlmZmVyZW50IGNhc2Vz
LCB0aGUgdXNlciBwdHIgY2FzZSwgd2hpY2ggZG9lcyBwaW4KcGFnZXMgYnkgdGhlIHdheSwgd2hl
cmUgdGhpbmdzIGFyZSBzeW5jaHJvbm91cy4gVmVyc3VzIHRoZSBITU0gY2FzZXMKd2hlcmUgZXZl
cnl0aGluZyBpcyBhc3luY2hyb25vdXMuCgoKSSBwcm9iYWJseSBuZWVkIHRvIHdhcm4gQU1EIGZv
bGtzIGFnYWluIHRoYXQgdXNpbmcgSE1NIG1lYW5zIHRoYXQgeW91Cm11c3QgYmUgYWJsZSB0byB1
cGRhdGUgdGhlIEdQVSBwYWdlIHRhYmxlIGFzeW5jaHJvbm91c2x5IHdpdGhvdXQKZmVuY2Ugd2Fp
dC4gVGhlIGlzc3VlIGZvciBBTUQgaXMgdGhhdCB0aGV5IGFscmVhZHkgdXBkYXRlIHRoZWlyIEdQ
VQpwYWdlIHRhYmxlIHVzaW5nIERNQSBlbmdpbmUuIEkgYmVsaWV2ZSB0aGlzIGlzIHN0aWxsIGRv
YWJsZSBpZiB0aGV5CnVzZSBhIGtlcm5lbCBvbmx5IERNQSBlbmdpbmUgY29udGV4dCwgd2hlcmUg
b25seSBrZXJuZWwgY2FuIHF1ZXVlIHVwCmpvYnMgc28gdGhhdCB5b3UgZG8gbm90IG5lZWQgdG8g
d2FpdCBmb3IgdW5yZWxhdGVkIHRoaW5ncyBhbmQgeW91IGNhbgpwcmlvcml0aXplIEdQVSBwYWdl
IHRhYmxlIHVwZGF0ZSB3aGljaCBzaG91bGQgdHJhbnNsYXRlIGluIGZhc3QgR1BVCnBhZ2UgdGFi
bGUgdXBkYXRlIHdpdGhvdXQgRE1BIGZlbmNlLgoKCj4gPiBGdWxsIGRpc2Nsb3N1cmU6IFdlIGFy
ZSBhd2FyZSB0aGF0IHdlJ3ZlIGRlc2lnbmVkIG91cnNlbHZlcyBpbnRvIGFuCj4gPiBpbXByZXNz
aXZlIGNvcm5lciBoZXJlLCBhbmQgdGhlcmUncyBsb3RzIG9mIHRhbGtzIGdvaW5nIG9uIGFib3V0
Cj4gPiB1bnRhbmdsaW5nIHRoZSBkbWEgc3luY2hyb25pemF0aW9uIGZyb20gdGhlIG1lbW9yeSBt
YW5hZ2VtZW50Cj4gPiBjb21wbGV0ZWx5LiBCdXQKPiAKPiBJIHRoaW5rIHRoZSBkb2N1bWVudGlu
ZyBpcyByZWFsbHkgaW1wb3J0YW50OiBvbmx5IEdQVSBzaG91bGQgYmUgdXNpbmcKPiB0aGlzIHN0
dWZmIGFuZCBkcml2aW5nIG5vdGlmaWVycyB0aGlzIHdheS4gQ29tcGxldGUgTk8gZm9yIGFueQo+
IHRvdGFsbHktbm90LWEtR1BVIHRoaW5ncyBpbiBkcml2ZXJzL2FjY2VsIGZvciBzdXJlLgoKWWVz
IGZvciB1c2VyIHRoYXQgZXhwZWN0IEhNTSB0aGV5IG5lZWQgdG8gYmUgYXN5bmNocm9ub3VzLiBC
dXQgaXQgaXMKaGFyZCB0byByZXZlcnQgdXNlciBwdHIgaGFzIGl0IHdhcyBkb25lIGEgbG9uZyB0
aW1lIGFnby4KCkNoZWVycywKSsOpcsO0bWUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==
