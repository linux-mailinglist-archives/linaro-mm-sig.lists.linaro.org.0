Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E83201C71
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 22:33:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7D10E665BF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 20:33:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6CCB7665C3; Fri, 19 Jun 2020 20:33:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 77F5C665BE;
	Fri, 19 Jun 2020 20:32:33 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 07E14665B5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 20:32:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id ED570665BE; Fri, 19 Jun 2020 20:32:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
 by lists.linaro.org (Postfix) with ESMTPS id B8E61665B5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 20:32:28 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-6-1iFxF6w7NlWEkZxAuvaRDQ-1; Fri, 19 Jun 2020 16:32:21 -0400
X-MC-Unique: 1iFxF6w7NlWEkZxAuvaRDQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6E422871254;
 Fri, 19 Jun 2020 20:31:52 +0000 (UTC)
Received: from redhat.com (ovpn-112-200.rdu2.redhat.com [10.10.112.200])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EE21810002B5;
 Fri, 19 Jun 2020 20:31:48 +0000 (UTC)
Date: Fri, 19 Jun 2020 16:31:47 -0400
From: Jerome Glisse <jglisse@redhat.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20200619203147.GC13117@redhat.com>
References: <CAKMK7uEbqTu4q-amkLXyd1i8KNtLaoO2ZFoGqYiG6D0m0FKpOg@mail.gmail.com>
 <20200619113934.GN6578@ziepe.ca>
 <CAKMK7uE-kWA==Cko5uenMrcnopEjq42HxoDTDywzBAbHqsN13g@mail.gmail.com>
 <20200619151551.GP6578@ziepe.ca>
 <CAKMK7uEvkshAM6KUYZu8_OCpF4+1Y_SM7cQ9nJWpagfke8s8LA@mail.gmail.com>
 <20200619172308.GQ6578@ziepe.ca>
 <20200619180935.GA10009@redhat.com>
 <20200619181849.GR6578@ziepe.ca>
 <56008d64-772d-5757-6136-f20591ef71d2@amd.com>
 <20200619195538.GT6578@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200619195538.GT6578@ziepe.ca>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
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

T24gRnJpLCBKdW4gMTksIDIwMjAgYXQgMDQ6NTU6MzhQTSAtMDMwMCwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOgo+IE9uIEZyaSwgSnVuIDE5LCAyMDIwIGF0IDAzOjQ4OjQ5UE0gLTA0MDAsIEZlbGl4
IEt1ZWhsaW5nIHdyb3RlOgo+ID4gQW0gMjAyMC0wNi0xOSB1bSAyOjE4IHAubS4gc2NocmllYiBK
YXNvbiBHdW50aG9ycGU6Cj4gPiA+IE9uIEZyaSwgSnVuIDE5LCAyMDIwIGF0IDAyOjA5OjM1UE0g
LTA0MDAsIEplcm9tZSBHbGlzc2Ugd3JvdGU6Cj4gPiA+PiBPbiBGcmksIEp1biAxOSwgMjAyMCBh
dCAwMjoyMzowOFBNIC0wMzAwLCBKYXNvbiBHdW50aG9ycGUgd3JvdGU6Cj4gPiA+Pj4gT24gRnJp
LCBKdW4gMTksIDIwMjAgYXQgMDY6MTk6NDFQTSArMDIwMCwgRGFuaWVsIFZldHRlciB3cm90ZToK
PiA+ID4+Pgo+ID4gPj4+PiBUaGUgbWFkbmVzcyBpcyBvbmx5IHRoYXQgZGV2aWNlIEIncyBtbXUg
bm90aWZpZXIgbWlnaHQgbmVlZCB0byB3YWl0Cj4gPiA+Pj4+IGZvciBmZW5jZV9CIHNvIHRoYXQg
dGhlIGRtYSBvcGVyYXRpb24gZmluaXNoZXMuIFdoaWNoIGluIHR1cm4gaGFzIHRvCj4gPiA+Pj4+
IHdhaXQgZm9yIGRldmljZSBBIHRvIGZpbmlzaCBmaXJzdC4KPiA+ID4+PiBTbywgaXQgc291bmQs
IGZ1bmRhbWVudGFsbHkgeW91J3ZlIGdvdCB0aGlzIGdyYXBoIG9mIG9wZXJhdGlvbnMgYWNyb3Nz
Cj4gPiA+Pj4gYW4gdW5rbm93biBzZXQgb2YgZHJpdmVycyBhbmQgdGhlIGtlcm5lbCBjYW5ub3Qg
aW5zZXJ0IGl0c2VsZiBpbgo+ID4gPj4+IGRtYV9mZW5jZSBoYW5kIG9mZnMgdG8gcmUtdmFsaWRh
dGUgYW55IG9mIHRoZSBidWZmZXJzIGludm9sdmVkPwo+ID4gPj4+IEJ1ZmZlcnMgd2hpY2ggYnkg
ZGVmaW5pdGlvbiBjYW5ub3QgYmUgdG91Y2hlZCBieSB0aGUgaGFyZHdhcmUgeWV0Lgo+ID4gPj4+
Cj4gPiA+Pj4gVGhhdCByZWFsbHkgaXMgYSBwcmV0dHkgaG9ycmlibGUgcGxhY2UgdG8gZW5kIHVw
Li4KPiA+ID4+Pgo+ID4gPj4+IFBpbm5pbmcgcmVhbGx5IGlzIHJpZ2h0IGFuc3dlciBmb3IgdGhp
cyBraW5kIG9mIHdvcmsgZmxvdy4gSSB0aGluawo+ID4gPj4+IGNvbnZlcnRpbmcgcGlubmluZyB0
byBub3RpZmVycyBzaG91bGQgbm90IGJlIGRvbmUgdW5sZXNzIG5vdGlmaWVyCj4gPiA+Pj4gaW52
YWxpZGF0aW9uIGlzIHJlbGF0aXZlbHkgYm91bmRlZC4gCj4gPiA+Pj4KPiA+ID4+PiBJIGtub3cg
cGVvcGxlIGxpa2Ugbm90aWZpZXJzIGJlY2F1c2UgdGhleSBnaXZlIGEgYml0IG5pY2VyIHBlcmZv
cm1hbmNlCj4gPiA+Pj4gaW4gc29tZSBoYXBweSBjYXNlcywgYnV0IHRoaXMgY3JpcHBsZXMgYWxs
IHRoZSBiYWQgY2FzZXMuLgo+ID4gPj4+Cj4gPiA+Pj4gSWYgcGlubmluZyBkb2Vzbid0IHdvcmsg
Zm9yIHNvbWUgcmVhc29uIG1heWJlIHdlIHNob3VsZCBhZGRyZXNzIHRoYXQ/Cj4gPiA+PiBOb3Rl
IHRoYXQgdGhlIGRtYSBmZW5jZSBpcyBvbmx5IHRydWUgZm9yIHVzZXIgcHRyIGJ1ZmZlciB3aGlj
aCBwcmVkYXRlCj4gPiA+PiBhbnkgSE1NIHdvcmsgYW5kIHRodXMgd2VyZSB1c2luZyBtbXUgbm90
aWZpZXIgYWxyZWFkeS4gWW91IG5lZWQgdGhlCj4gPiA+PiBtbXUgbm90aWZpZXIgdGhlcmUgYmVj
YXVzZSBvZiBmb3JrIGFuZCBvdGhlciBjb3JuZXIgY2FzZXMuCj4gPiA+IEkgd29uZGVyIGlmIHdl
IHNob3VsZCB0cnkgdG8gZml4IHRoZSBmb3JrIGNhc2UgbW9yZSBkaXJlY3RseSAtIFJETUEKPiA+
ID4gaGFzIHRoaXMgc2FtZSBwcm9ibGVtIGFuZCBhZGRlZCBNQURWX0RPTlRGT1JLIGEgbG9uZyB0
aW1lIGFnbyBhcyBhCj4gPiA+IGhhY2t5IHdheSB0byBkZWFsIHdpdGggaXQuCj4gPiA+Cj4gPiA+
IFNvbWUgY3JhenkgcGFnZSBwaW4gdGhhdCByZXNvbHZlZCBDT1cgaW4gYSB3YXkgdGhhdCBhbHdh
eXMga2VwdCB0aGUKPiA+ID4gcGh5c2ljYWwgbWVtb3J5IHdpdGggdGhlIG1tIHRoYXQgaW5pdGlh
dGVkIHRoZSBwaW4/Cj4gPiA+Cj4gPiA+IChpc24ndCB0aGlzIGJyb2tlbiBmb3IgT19ESVJFQ1Qg
YXMgd2VsbCBhbnlob3c/KQo+ID4gPgo+ID4gPiBIb3cgZG9lcyBtbXVfbm90aWZpZXJzIGhlbHAg
dGhlIGZvcmsgY2FzZSBhbnlob3c/IEJsb2NrIGZvcmsgZnJvbQo+ID4gPiBwcm9ncmVzc2luZz8K
PiA+IAo+ID4gSG93IG11Y2ggdGhlIG1tdV9ub3RpZmllciBibG9ja3MgZm9yayBwcm9ncmVzcyBk
ZXBlbmRzLCBvbiBxdWlja2x5IHdlCj4gPiBjYW4gcHJlZW1wdCBHUFUgam9icyBhY2Nlc3Npbmcg
YWZmZWN0ZWQgbWVtb3J5LiBJZiB3ZSBkb24ndCBoYXZlCj4gPiBmaW5lLWdyYWluZWQgcHJlZW1w
dGlvbiBjYXBhYmlsaXR5IChncmFwaGljcyksIHRoZSBiZXN0IHdlIGNhbiBkbyBpcwo+ID4gd2Fp
dCBmb3IgdGhlIEdQVSBqb2JzIHRvIGNvbXBsZXRlLiBXZSBjYW4gYWxzbyBkZWxheSBzdWJtaXNz
aW9uIG9mIG5ldwo+ID4gR1BVIGpvYnMgdG8gdGhlIHNhbWUgbWVtb3J5IHVudGlsIHRoZSBNTVUg
bm90aWZpZXIgaXMgZG9uZS4gRnV0dXJlIGpvYnMKPiA+IHdvdWxkIHVzZSB0aGUgbmV3IHBhZ2Ug
YWRkcmVzc2VzLgo+ID4gCj4gPiBXaXRoIGZpbmUtZ3JhaW5lZCBwcmVlbXB0aW9uIChST0NtIGNv
bXB1dGUpLCB3ZSBjYW4gcHJlZW1wdCBHUFUgd29yayBvbgo+ID4gdGhlIGFmZmVjdGVkIGFkZGVy
cyBzcGFjZSB0byBtaW5pbWl6ZSB0aGUgZGVsYXkgc2VlbiBieSBmb3JrLgo+ID4gCj4gPiBXaXRo
IHJlY292ZXJhYmxlIGRldmljZSBwYWdlIGZhdWx0cywgd2UgY2FuIGludmFsaWRhdGUgR1BVIHBh
Z2UgdGFibGUKPiA+IGVudHJpZXMsIHNvIGRldmljZSBhY2Nlc3MgdG8gdGhlIGFmZmVjdGVkIHBh
Z2VzIHN0b3BzIGltbWVkaWF0ZWx5Lgo+ID4gCj4gPiBJbiBhbGwgY2FzZXMsIHRoZSBlbmQgcmVz
dWx0IGlzLCB0aGF0IHRoZSBkZXZpY2UgcGFnZSB0YWJsZSBnZXRzIHVwZGF0ZWQKPiA+IHdpdGgg
dGhlIGFkZHJlc3Mgb2YgdGhlIGNvcGllZCBwYWdlcyBiZWZvcmUgdGhlIEdQVSBhY2Nlc3NlcyB0
aGUgQ09XCj4gPiBtZW1vcnkgYWdhaW4uV2l0aG91dCB0aGUgTU1VIG5vdGlmaWVyLCB3ZSdkIGVu
ZCB1cCB3aXRoIHRoZSBHUFUKPiA+IGNvcnJ1cHRpbmcgbWVtb3J5IG9mIHRoZSBvdGhlciBwcm9j
ZXNzLgo+IAo+IFRoZSBtb2RlbCBoZXJlIGluIGZvcmsgaGFzIGJlZW4gd3JvbmcgZm9yIGEgbG9u
ZyB0aW1lLCBhbmQgSSBkbyB3b25kZXIKPiBob3cgT19ESVJFQ1QgbWFuYWdlcyB0byBub3QgYmUg
YnJva2VuIHRvby4uIEkgZ3Vlc3MgdGhlIHRpbWUgd2luZG93cwo+IHRoZXJlIGFyZSB0b28gc21h
bGwgdG8gZ2V0IHVubHVja3kuCgpUaGlzIHdhcyBkaXNjdXNzIGV4dGVuc2l2ZWx5IGluIHRoZSBH
VVAgd29ya3MgSm9obiBoYXZlIGJlZW4gZG9pbmcuClllcyBPX0RJUkVDVCBjYW4gcG90ZW50aWFs
eSBicmVhayBidXQgb25seSBpZiB5b3UgYXJlIHdyaXR0aW5nIHRvCkNPVyBwYWdlcyBhbmQgeW91
IGluaXRpYXRlZCB0aGUgT19ESVJFQ1QgcmlnaHQgYmVmb3JlIHRoZSBmb3JrIGFuZApHVVAgaGFw
cGVuIGJlZm9yZSBmb3JrIHdhcyBhYmxlIHRvIHdyaXRlIHByb3RlY3QgdGhlIHBhZ2VzLgoKSWYg
eW91IE9fRElSRUNUIGJ1dCB1c2UgbWVtb3J5IGFzIGlucHV0IGllIHlvdSBhcmUgd3JpdHRpbmcg
dGhlCm1lbW9yeSB0byB0aGUgZmlsZSBub3QgcmVhZGluZyBmcm9tIHRoZSBmaWxlLiBUaGVuIGZv
cmsgaXMgaGFybWxlc3MKYXMgeW91IGFyZSBqdXN0IHJlYWRpbmcgbWVtb3J5LiBZb3UgY2FuIHN0
aWxsIGZhY2UgdGhlIENPVyB1bmNlcnRhaW50eQoodGhlIHByb2Nlc3MgYWdhaW5zdCB3aGljaCB5
b3UgZGlkIHRoZSBPX0RJUkVDVCBnZXQgIm5ldyIgcGFnZXMgYnV0IHlvdXIKT19ESVJFQ1QgZ29l
cyBvbiB3aXRoIHRoZSAib2xkIiBwYWdlcykgYnV0IGRvaW5nIE9fRElSRUNUIGFuZCBmb3JrCmNv
bmN1cmVudGx5IGlzIGFza2luZyBmb3IgdHJvdWJsZS4KCj4gCj4gSWYgeW91IGhhdmUgYSB3cml0
ZSBwaW4gb24gYSBwYWdlIHRoZW4gaXQgc2hvdWxkIG5vdCBiZSBDT1cnZCBpbnRvIHRoZQo+IGZv
cmsnZCBwcm9jZXNzIGJ1dCBjb3BpZWQgd2l0aCB0aGUgb3JpZ2luYXRpbmcgcGFnZSByZW1haW5p
bmcgd2l0aCB0aGUKPiBvcmlnaW5hbCBtbS4KPiAKPiBJIHdvbmRlciBpZiB0aGVyZSBpcyBzb21l
IGVhc3kgd2F5IHRvIGFjaGl2ZSB0aGF0IC0gaWYgdGhhdCBpcyB0aGUKPiBtYWluIHJlYXNvbiB0
byB1c2Ugbm90aWZpZXJzIHRoZW4gaXQgd291bGQgYmUgYSBiZXR0ZXIgc29sdXRpb24uCgpOb3Qg
ZG9hYmxlIGFzIHBhZ2UgcmVmY291bnQgY2FuIGNoYW5nZSBmb3IgdGhpbmdzIHVucmVsYXRlZCB0
byBHVVAsIHdpdGgKSm9obiBjaGFuZ2VzIHdlIGNhbiBpZGVudGlmeSBHVVAgYW5kIHdlIGNvdWxk
IHBvdGVudGlhbHkgY29weSBHVVBlZCBwYWdlCmluc3RlYWQgb2YgQ09XIGJ1dCB0aGlzIGNhbiBw
b3RlbnRpYWx5IHNsb3cgZG93biBmb3JrKCkgYW5kIGkgYW0gbm90IHN1cmUKaG93IGFjY2VwdGFi
bGUgdGhpcyB3b3VsZCBiZS4gQWxzbyB0aGlzIGRvZXMgbm90IHNvbHZlIEdVUCBhZ2FpbnN0IHBh
Z2UKdGhhdCBhcmUgYWxyZWFkeSBpbiBmb3JrIHRyZWUgaWUgcGFnZSBQMCBpcyBpbiBwcm9jZXNz
IEEgd2hpY2ggZm9ya3MsCndlIG5vdyBoYXZlIHBhZ2UgUDAgaW4gcHJvY2VzcyBBIGFuZCBCLiBO
b3cgd2UgaGF2ZSBwcm9jZXNzIEEgd2hpY2ggZm9ya3MKYWdhaW4gYW5kIHdlIGhhdmUgcGFnZSBQ
MCBpbiBBLCBCLCBhbmQgQy4gSGVyZSBCIGFuZCBDIGFyZSB0d28gYnJhbmNoZXMKd2l0aCByb290
IGluIEEuIEIgYW5kL29yIEMgY2FuIGtlZXAgZm9ya2luZyBhbmQgZ3JvdyB0aGUgZm9yayB0cmVl
LgoKTm93IGlmIHJlYWQgb25seSBHVVAgb24gUDAgaGFwcGVucyBpbiBDIChvciBCIGV2ZXJ5dGhp
bmcgaXMgc3ltZXRyaWNhbCBpbgpyZXNwZWN0IHRvIHJvb3QgQSkgdGhlbiBQMCBtaWdodCBub3Qg
YmUgdGhlIHBhZ2UgdGhhdCBpcyBpbiBDIGFmdGVyIHRoZQpHVVAgaWUgaWYgc29tZXRoaW5nIGlu
IEMgd3JpdGUgdG8gdGhlIHZpcnR1YWwgYWRkcmVzcyBjb3JyZXNwb25kaW5nIHRvIFAwCnRoZW4g
YSBuZXcgcGFnZSBtaWdodCBnZXQgYWxsb2NhdGVkIGFuZCB0aGUgdmlydHVhbCBhZGRyZXNzIHdp
bGwgbm8gbG9uZ2VyCnBvaW50IHRvIFAwIGZvciBDLgoKU2VtYW50aWMgd2FzIGNoYW5nZSB3aXRo
IDE3ODM5ODU2ZmQ1ODhmNGFiNmI3ODlmNDgyZWQzZmZkN2M0MDNlMWYgdG8gc29tZQp3aGF0ICJm
aXgiIHRoYXQgYnV0IEdVUCBmYXN0IGlzIHN0aWxsIHN1Y2NlcHRpYmxlIHRvIHRoaXMuCgpOb3Rl
IHRoYXQgYWJvdmUgY29tbWl0IG9ubHkgYWRkcmVzcyB0aGUgR1VQIGFmdGVyL3doaWxlIGZvcmtp
bmcuIEdVUApiZWZvcmUgZm9yaygpIG5lZWQgbW11IG5vdGlmaWVyIChvciBmb3JjaW5nIHBhZ2Ug
Y29weSBpbnN0ZWFkIG9mIENPVykuCgpDaGVlcnMsCkrDqXLDtG1lCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3Jn
L21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
