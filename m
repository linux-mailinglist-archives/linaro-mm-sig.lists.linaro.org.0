Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B55E201C0C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 22:11:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2458D665BB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 20:11:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 19401665CA; Fri, 19 Jun 2020 20:11:09 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A382665BE;
	Fri, 19 Jun 2020 20:10:26 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id DFCF9665B5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 20:10:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C0316665BE; Fri, 19 Jun 2020 20:10:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
 by lists.linaro.org (Postfix) with ESMTPS id 8B878665B5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 20:10:21 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-8-OXocr5PeP2CcqCjY-9Fygw-1; Fri, 19 Jun 2020 16:10:17 -0400
X-MC-Unique: OXocr5PeP2CcqCjY-9Fygw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E9E831005512;
 Fri, 19 Jun 2020 20:10:14 +0000 (UTC)
Received: from redhat.com (ovpn-112-200.rdu2.redhat.com [10.10.112.200])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6849210013D7;
 Fri, 19 Jun 2020 20:10:13 +0000 (UTC)
Date: Fri, 19 Jun 2020 16:10:11 -0400
From: Jerome Glisse <jglisse@redhat.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20200619201011.GB13117@redhat.com>
References: <20200618150051.GS20149@phenom.ffwll.local>
 <20200618172338.GM6578@ziepe.ca>
 <CAKMK7uEbqTu4q-amkLXyd1i8KNtLaoO2ZFoGqYiG6D0m0FKpOg@mail.gmail.com>
 <20200619113934.GN6578@ziepe.ca>
 <CAKMK7uE-kWA==Cko5uenMrcnopEjq42HxoDTDywzBAbHqsN13g@mail.gmail.com>
 <20200619151551.GP6578@ziepe.ca>
 <CAKMK7uEvkshAM6KUYZu8_OCpF4+1Y_SM7cQ9nJWpagfke8s8LA@mail.gmail.com>
 <20200619172308.GQ6578@ziepe.ca>
 <20200619180935.GA10009@redhat.com>
 <20200619181849.GR6578@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200619181849.GR6578@ziepe.ca>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
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

T24gRnJpLCBKdW4gMTksIDIwMjAgYXQgMDM6MTg6NDlQTSAtMDMwMCwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOgo+IE9uIEZyaSwgSnVuIDE5LCAyMDIwIGF0IDAyOjA5OjM1UE0gLTA0MDAsIEplcm9t
ZSBHbGlzc2Ugd3JvdGU6Cj4gPiBPbiBGcmksIEp1biAxOSwgMjAyMCBhdCAwMjoyMzowOFBNIC0w
MzAwLCBKYXNvbiBHdW50aG9ycGUgd3JvdGU6Cj4gPiA+IE9uIEZyaSwgSnVuIDE5LCAyMDIwIGF0
IDA2OjE5OjQxUE0gKzAyMDAsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gPiA+IAo+ID4gPiA+IFRo
ZSBtYWRuZXNzIGlzIG9ubHkgdGhhdCBkZXZpY2UgQidzIG1tdSBub3RpZmllciBtaWdodCBuZWVk
IHRvIHdhaXQKPiA+ID4gPiBmb3IgZmVuY2VfQiBzbyB0aGF0IHRoZSBkbWEgb3BlcmF0aW9uIGZp
bmlzaGVzLiBXaGljaCBpbiB0dXJuIGhhcyB0bwo+ID4gPiA+IHdhaXQgZm9yIGRldmljZSBBIHRv
IGZpbmlzaCBmaXJzdC4KPiA+ID4gCj4gPiA+IFNvLCBpdCBzb3VuZCwgZnVuZGFtZW50YWxseSB5
b3UndmUgZ290IHRoaXMgZ3JhcGggb2Ygb3BlcmF0aW9ucyBhY3Jvc3MKPiA+ID4gYW4gdW5rbm93
biBzZXQgb2YgZHJpdmVycyBhbmQgdGhlIGtlcm5lbCBjYW5ub3QgaW5zZXJ0IGl0c2VsZiBpbgo+
ID4gPiBkbWFfZmVuY2UgaGFuZCBvZmZzIHRvIHJlLXZhbGlkYXRlIGFueSBvZiB0aGUgYnVmZmVy
cyBpbnZvbHZlZD8KPiA+ID4gQnVmZmVycyB3aGljaCBieSBkZWZpbml0aW9uIGNhbm5vdCBiZSB0
b3VjaGVkIGJ5IHRoZSBoYXJkd2FyZSB5ZXQuCj4gPiA+IAo+ID4gPiBUaGF0IHJlYWxseSBpcyBh
IHByZXR0eSBob3JyaWJsZSBwbGFjZSB0byBlbmQgdXAuLgo+ID4gPiAKPiA+ID4gUGlubmluZyBy
ZWFsbHkgaXMgcmlnaHQgYW5zd2VyIGZvciB0aGlzIGtpbmQgb2Ygd29yayBmbG93LiBJIHRoaW5r
Cj4gPiA+IGNvbnZlcnRpbmcgcGlubmluZyB0byBub3RpZmVycyBzaG91bGQgbm90IGJlIGRvbmUg
dW5sZXNzIG5vdGlmaWVyCj4gPiA+IGludmFsaWRhdGlvbiBpcyByZWxhdGl2ZWx5IGJvdW5kZWQu
IAo+ID4gPiAKPiA+ID4gSSBrbm93IHBlb3BsZSBsaWtlIG5vdGlmaWVycyBiZWNhdXNlIHRoZXkg
Z2l2ZSBhIGJpdCBuaWNlciBwZXJmb3JtYW5jZQo+ID4gPiBpbiBzb21lIGhhcHB5IGNhc2VzLCBi
dXQgdGhpcyBjcmlwcGxlcyBhbGwgdGhlIGJhZCBjYXNlcy4uCj4gPiA+IAo+ID4gPiBJZiBwaW5u
aW5nIGRvZXNuJ3Qgd29yayBmb3Igc29tZSByZWFzb24gbWF5YmUgd2Ugc2hvdWxkIGFkZHJlc3Mg
dGhhdD8KPiA+IAo+ID4gTm90ZSB0aGF0IHRoZSBkbWEgZmVuY2UgaXMgb25seSB0cnVlIGZvciB1
c2VyIHB0ciBidWZmZXIgd2hpY2ggcHJlZGF0ZQo+ID4gYW55IEhNTSB3b3JrIGFuZCB0aHVzIHdl
cmUgdXNpbmcgbW11IG5vdGlmaWVyIGFscmVhZHkuIFlvdSBuZWVkIHRoZQo+ID4gbW11IG5vdGlm
aWVyIHRoZXJlIGJlY2F1c2Ugb2YgZm9yayBhbmQgb3RoZXIgY29ybmVyIGNhc2VzLgo+IAo+IEkg
d29uZGVyIGlmIHdlIHNob3VsZCB0cnkgdG8gZml4IHRoZSBmb3JrIGNhc2UgbW9yZSBkaXJlY3Rs
eSAtIFJETUEKPiBoYXMgdGhpcyBzYW1lIHByb2JsZW0gYW5kIGFkZGVkIE1BRFZfRE9OVEZPUksg
YSBsb25nIHRpbWUgYWdvIGFzIGEKPiBoYWNreSB3YXkgdG8gZGVhbCB3aXRoIGl0Lgo+Cj4gU29t
ZSBjcmF6eSBwYWdlIHBpbiB0aGF0IHJlc29sdmVkIENPVyBpbiBhIHdheSB0aGF0IGFsd2F5cyBr
ZXB0IHRoZQo+IHBoeXNpY2FsIG1lbW9yeSB3aXRoIHRoZSBtbSB0aGF0IGluaXRpYXRlZCB0aGUg
cGluPwoKSnVzdCBubyB3YXkgdG8gZGVhbCB3aXRoIGl0IGVhc2lseSwgaSB0aG91Z2h0IGFib3V0
IGZvcmNpbmcgdGhlCmFub25fdm1hIChwYWdlLT5tYXBwaW5nIGZvciBhbm9ueW1vdXMgcGFnZSkg
dG8gdGhlIGFub25fdm1hIHRoYXQKYmVsb25ncyB0byB0aGUgdm1hIGFnYWluc3Qgd2hpY2ggdGhl
IEdVUCB3YXMgZG9uZSBidXQgaXQgd291bGQKYnJlYWsgdGhpbmdzIGlmIHBhZ2UgaXMgYWxyZWFk
eSBpbiBvdGhlciBicmFuY2ggb2YgYSBmb3JrIHRyZWUuCkFsc28gdGhpcyBmb3JiaWQgZmFzdCBH
VVAuCgpRdWl0ZSBmcmFua2x5IHRoZSBmb3JrIHdhcyBub3QgdGhlIG1haW4gbW90aXZhdGluZyBm
YWN0b3IuIEdQVQpjYW4gcGluIHBvdGVudGlhbHkgR0J5dGVzIG9mIG1lbW9yeSB0aHVzIHdlIHdh
bnRlZCB0byBiZSBhYmxlCnRvIHJlbGVhc2UgaXQgYnV0IHNpbmNlIE1pY2hhbCBjaGFuZ2VzIHRv
IHJlY2xhaW0gY29kZSB0aGlzIGlzCm5vIGxvbmdlciBlZmZlY3RpdmUuCgpVc2VyIGJ1ZmZlciBz
aG91bGQgbmV2ZXIgZW5kIHVwIGluIHRob3NlIHdlaXJkIGNvcm5lciBjYXNlLCBpaXJjCnRoZSBm
aXJzdCB1c2FnZSB3YXMgZm9yIHhvcmcgZXhhIHRleHR1cmUgdXBsb2FkLCB0aGVuIGdlbmVyYWxp
emUKdG8gdGV4dHVyZSB1cGxvYWQgaW4gbWVzYSBhbmQgbGF0dGVyIG9uIHRvIG1vcmUgdXBsb2Fk
IGNhc2VzCih2ZXJ0aWNlcywgLi4uKS4gQXQgbGVhc3QgdGhpcyBpcyB3aGF0IGkgcmVtZW1iZXIg
dG9kYXkuIFNvIGluCnRob3NlIGNhc2VzIHdlIGRvIG5vdCBleHBlY3QgZm9yaywgc3BsaWNlLCBt
cmVtYXAsIG1wcm90ZWN0LCAuLi4KCk1heWJlIHdlIGNhbiBhdWRpdCBob3cgdXNlciBwdHIgYnVm
ZmVyIGFyZSB1c2UgdG9kYXkgYW5kIHNlZSBpZgp3ZSBjYW4gZGVmaW5lIGEgdXNhZ2UgcGF0dGVy
biB0aGF0IHdvdWxkIGFsbG93IHRvIGN1dCBjb3JuZXIgaW4Ka2VybmVsLiBGb3IgaW5zdGFuY2Ug
d2UgY291bGQgdXNlIG1tdSBub3RpZmllciBqdXN0IHRvIGJsb2NrIENQVQpwdGUgdXBkYXRlIHdo
aWxlIHdlIGRvIEdVUCBhbmQgdGh1cyBuZXZlciB3YWl0IG9uIGRtYSBmZW5jZS4KClRoZW4gR1BV
IGRyaXZlciBqdXN0IGtlZXAgdGhlIEdVUCBwaW4gYXJvdW5kIHVudGlsIHRoZXkgYXJlIGRvbmUK
d2l0aCB0aGUgcGFnZS4gVGhleSBjYW4gYWxzbyB1c2UgdGhlIG1tdSBub3RpZmllciB0byBrZWVw
IGEgZmxhZwpzbyB0aGF0IHRoZSBkcml2ZXIga25vdyBpZiBpdCBuZWVkcyB0byByZWRvIGEgR1VQ
IGllOgoKVGhlIG5vdGlmaWVyIHBhdGg6CiAgIEdQVV9tbXVfbm90aWZpZXJfc3RhcnRfY2FsbGJh
Y2socmFuZ2UpCiAgICAgICAgZ3B1X2xvY2tfY3B1X3BhZ2V0YWJsZShyYW5nZSkKICAgICAgICBm
b3JfZWFjaF9ib19pbihibywgcmFuZ2UpIHsKICAgICAgICAgICAgYm8tPm5lZWRfZ3VwID0gdHJ1
ZTsKICAgICAgICB9CiAgICAgICAgZ3B1X3VubG9ja19jcHVfcGFnZXRhYmxlKHJhbmdlKQoKICAg
R1BVX3ZhbGlkYXRlX2J1ZmZlcl9wYWdlcyhibykKICAgICAgICBpZiAoIWJvLT5uZWVkX2d1cCkK
ICAgICAgICAgICAgcmV0dXJuOwogICAgICAgIHB1dF9wYWdlcyhiby0+cGFnZXMpOwogICAgICAg
IHJhbmdlID0gYm9fdmFkZHJfcmFuZ2UoYm8pCiAgICAgICAgZ3B1X2xvY2tfY3B1X3BhZ2V0YWJs
ZShyYW5nZSkKICAgICAgICBHVVAoYm8tPnBhZ2VzLCByYW5nZSkKICAgICAgICBncHVfdW5sb2Nr
X2NwdV9wYWdldGFibGUocmFuZ2UpCgoKRGVwZW5kaW5nIG9uIGhvdyB1c2VyX3B0ciBhcmUgdXNl
IHRvZGF5IHRoaXMgY291bGQgd29yay4KCgo+IChpc24ndCB0aGlzIGJyb2tlbiBmb3IgT19ESVJF
Q1QgYXMgd2VsbCBhbnlob3c/KQoKWWVzIGl0IGNhbiBpbiB0aGVvcnksIGlmIHlvdSBoYXZlIGFu
IGFwcGxpY2F0aW9uIHRoYXQgZG9lcyBPX0RJUkVDVAphbmQgZm9yayBjb25jdXJyZW50bHkgKGll
IE9fRElSRUNUIGluIG9uZSB0aHJlYWQgYW5kIGZvcmsgaW4gYW5vdGhlcikuCk5vdGUgdGhhdCBP
X0RJUkVDVCBhZnRlciBmb3JrIGlzIGZpbmUsIGl0IGlzIGFuIGlzc3VlIG9ubHkgaWYgR1VQX2Zh
c3QKd2FzIGFibGUgdG8gbG9va3VwIGEgcGFnZSB3aXRoIHdyaXRlIHBlcm1pc3Npb24gYmVmb3Jl
IGZvcmsgaGFkIHRoZQpjaGFuY2UgdG8gdXBkYXRlIGl0IHRvIHJlYWQgb25seSBmb3IgQ09XLgoK
QnV0IGRvaW5nIE9fRElSRUNUIChvciBhbnl0aGluZyB0aGF0IHVzZSBHVVAgZmFzdCkgaW4gb25l
IHRocmVhZCBhbmQKZm9yayBpbiBhbm90aGVyIGlzIGluaGVyZW50bHkgYnJva2VuIGllIHRoZXJl
IGlzIG5vIHdheSB0byBmaXggaXQuCgpTZWUgMTc4Mzk4NTZmZDU4OGY0YWI2Yjc4OWY0ODJlZDNm
ZmQ3YzQwM2UxZgoKPiAKPiBIb3cgZG9lcyBtbXVfbm90aWZpZXJzIGhlbHAgdGhlIGZvcmsgY2Fz
ZSBhbnlob3c/IEJsb2NrIGZvcmsgZnJvbQo+IHByb2dyZXNzaW5nPwoKSXQgZW5mb3JjZSBvcmRl
cmluZyBiZXR3ZWVuIGZvcmsgYW5kIEdVUCwgaWYgZm9yayBpcyBmaXJzdCBpdCBibG9ja3MKR1VQ
IGFuZCBpZiBmb3JrcyBpcyBsYXN0IHRoZW4gZm9yayB3YWl0cyBvbiBHVVAgYW5kIHRoZW4gdXNl
ciBidWZmZXIKZ2V0IGludmFsaWRhdGVkLgoKPiAKPiA+IEkgcHJvYmFibHkgbmVlZCB0byB3YXJu
IEFNRCBmb2xrcyBhZ2FpbiB0aGF0IHVzaW5nIEhNTSBtZWFucyB0aGF0IHlvdQo+ID4gbXVzdCBi
ZSBhYmxlIHRvIHVwZGF0ZSB0aGUgR1BVIHBhZ2UgdGFibGUgYXN5bmNocm9ub3VzbHkgd2l0aG91
dAo+ID4gZmVuY2Ugd2FpdC4KPiAKPiBJdCBpcyBraW5kIG9mIHVucmVsYXRlZCB0byBITU0sIGl0
IGp1c3Qgc2hvdWxkbid0IGJlIHVzaW5nIG1tdQo+IG5vdGlmaWVycyB0byByZXBsYWNlIHBhZ2Ug
cGlubmluZy4uCgpXZWxsIG15IFBPViBpcyB0aGF0IGlmIHlvdSBhYmlkZSBieSBydWxlcyBITU0g
ZGVmaW5lZCB0aGVuIHlvdSBkbwpub3QgbmVlZCB0byBwaW4gcGFnZXMuIFRoZSBydWxlIGlzIGFz
eW5jaHJvbm91cyBkZXZpY2UgcGFnZSB0YWJsZQp1cGRhdGUuCgpQaW5uaW5nIHBhZ2VzIGlzIHBy
b2JsZW1hdGljIGl0IGJsb2NrcyBtYW55IGNvcmUgbW0gZmVhdHVyZXMgYW5kCml0IGlzIGp1c3Qg
YmFkIGFsbCBhcm91bmQuIEFsc28gaXQgaXMgaW5oZXJlbnRseSBicm9rZW4gaW4gZnJvbnQKb2Yg
Zm9yay9tcmVtYXAvc3BsaWNlLy4uLgoKQ2hlZXJzLApKw6lyw7RtZQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
