Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 606BD31B86A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Feb 2021 12:54:17 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 89FEF607B9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Feb 2021 11:54:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7E4C366008; Mon, 15 Feb 2021 11:54:16 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C65E2619C1;
	Mon, 15 Feb 2021 11:53:42 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E4B59607B9
 for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Feb 2021 11:53:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CABCC619C1; Mon, 15 Feb 2021 11:53:39 +0000 (UTC)
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [85.220.165.71])
 by lists.linaro.org (Postfix) with ESMTPS id 304F7607B9
 for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Feb 2021 11:53:38 +0000 (UTC)
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1lBcRZ-0005X3-Sr; Mon, 15 Feb 2021 12:53:33 +0100
Message-ID: <8d23f1ca6fe76d8971365bf54ca71ba71698980d.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Simon Ser
 <contact@emersion.fr>
Date: Mon, 15 Feb 2021 12:53:32 +0100
In-Reply-To: <da9edfa0-8a18-44a2-fa79-83b4177afd8e@amd.com>
References: <91ff0bbb-ea3a-2663-3453-dea96ccd6dd8@amd.com>
 <GUuZYSQk2hxgykDhSxfB2GWo47lQlVrKBtWMwQUG7Ar2GAag5WQDxBI0zq6nDTooPBzTktyRpnu25Ju1UKE3FYD9yHbkNMAHcmSI96hoJhA=@emersion.fr>
 <da9edfa0-8a18-44a2-fa79-83b4177afd8e@amd.com>
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linaro-mm-sig@lists.linaro.org
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, linux-media <linux-media@vger.kernel.org>,
 lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, "Sharma,
 Shashank" <Shashank.Sharma@amd.com>
Subject: Re: [Linaro-mm-sig] DMA-buf and uncached system memory
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

QW0gTW9udGFnLCBkZW0gMTUuMDIuMjAyMSB1bSAxMDozNCArMDEwMCBzY2hyaWViIENocmlzdGlh
biBLw7ZuaWc6Cj4gCj4gQW0gMTUuMDIuMjEgdW0gMTA6MDYgc2NocmllYiBTaW1vbiBTZXI6Cj4g
PiBPbiBNb25kYXksIEZlYnJ1YXJ5IDE1dGgsIDIwMjEgYXQgOTo1OCBBTSwgQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToKPiA+IAo+ID4gPiB3ZSBhcmUg
Y3VycmVudGx5IHdvcmtpbmcgYW4gRnJlZXN5bmMgYW5kIGRpcmVjdCBzY2FuIG91dCBmcm9tIHN5
c3RlbQo+ID4gPiBtZW1vcnkgb24gQU1EIEFQVXMgaW4gQStBIGxhcHRvcHMuCj4gPiA+IAo+ID4g
PiBPbiBwcm9ibGVtIHdlIHN0dW1ibGVkIG92ZXIgaXMgdGhhdCBvdXIgZGlzcGxheSBoYXJkd2Fy
ZSBuZWVkcyB0byBzY2FuCj4gPiA+IG91dCBmcm9tIHVuY2FjaGVkIHN5c3RlbSBtZW1vcnkgYW5k
IHdlIGN1cnJlbnRseSBkb24ndCBoYXZlIGEgd2F5IHRvCj4gPiA+IGNvbW11bmljYXRlIHRoYXQg
dGhyb3VnaCBETUEtYnVmLgo+ID4gPiAKPiA+ID4gRm9yIG91ciBzcGVjaWZpYyB1c2UgY2FzZSBh
dCBoYW5kIHdlIGFyZSBnb2luZyB0byBpbXBsZW1lbnQgc29tZXRoaW5nCj4gPiA+IGRyaXZlciBz
cGVjaWZpYywgYnV0IHRoZSBxdWVzdGlvbiBpcyBzaG91bGQgd2UgaGF2ZSBzb21ldGhpbmcgbW9y
ZQo+ID4gPiBnZW5lcmljIGZvciB0aGlzPwo+ID4gPiAKPiA+ID4gQWZ0ZXIgYWxsIHRoZSBzeXN0
ZW0gbWVtb3J5IGFjY2VzcyBwYXR0ZXJuIGlzIGEgUENJZSBleHRlbnNpb24gYW5kIGFzCj4gPiA+
IHN1Y2ggc29tZXRoaW5nIGdlbmVyaWMuCj4gPiBJbnRlbCBhbHNvIG5lZWRzIHVuY2FjaGVkIHN5
c3RlbSBtZW1vcnkgaWYgSSdtIG5vdCBtaXN0YWtlbj8KPiAKPiBObyBpZGVhLCB0aGF0J3Mgd2h5
IEknbSBhc2tpbmcuIENvdWxkIGJlIHRoYXQgdGhpcyBpcyBhbHNvIGludGVyZXN0aW5nIAo+IGZv
ciBJK0Egc3lzdGVtcy4KPiAKPiA+IFdoZXJlIGFyZSB0aGUgYnVmZmVycyBhbGxvY2F0ZWQ/IElm
IEdCTSwgdGhlbiBpdCBuZWVkcyB0byBhbGxvY2F0ZSBtZW1vcnkgdGhhdAo+ID4gY2FuIGJlIHNj
YW5uZWQgb3V0IGlmIHRoZSBVU0VfU0NBTk9VVCBmbGFnIGlzIHNldCBvciBpZiBhIHNjYW5vdXQt
Y2FwYWJsZQo+ID4gbW9kaWZpZXIgaXMgcGlja2VkLgo+ID4gCj4gPiBJZiB0aGlzIGlzIGFib3V0
IGNvbW11bmljYXRpbmcgYnVmZmVyIGNvbnN0cmFpbnRzIGJldHdlZW4gZGlmZmVyZW50IGNvbXBv
bmVudHMKPiA+IG9mIHRoZSBzdGFjaywgdGhlcmUgd2VyZSBhIGZldyBwcm9wb3NhbHMgYWJvdXQg
aXQuIFRoZSBtb3N0IHJlY2VudCBvbmUgaXMgWzFdLgo+IAo+IFdlbGwgdGhlIHByb2JsZW0gaGVy
ZSBpcyBvbiBhIGRpZmZlcmVudCBsZXZlbCBvZiB0aGUgc3RhY2suCj4gCj4gU2VlIHJlc29sdXRp
b24sIHBpdGNoIGV0YzouLiBjYW4gZWFzaWx5IGNvbW11bmljYXRlZCBpbiB1c2Vyc3BhY2UgCj4g
d2l0aG91dCBpbnZvbHZlbWVudCBvZiB0aGUga2VybmVsLiBUaGUgd29yc3QgdGhpbmcgd2hpY2gg
Y2FuIGhhcHBlbiBpcyAKPiB0aGF0IHlvdSBkcmF3IGdhcmJhZ2UgaW50byB5b3VyIG93biBhcHBs
aWNhdGlvbiB3aW5kb3cuCj4gCj4gQnV0IGlmIHlvdSBnZXQgdGhlIGNhY2hpbmcgYXR0cmlidXRl
cyBpbiB0aGUgcGFnZSB0YWJsZXMgKGJvdGggQ1BVIGFzIAo+IHdlbGwgYXMgSU9NTVUsIGRldmlj
ZSBldGMuLi4pIHdyb25nIHRoZW4gQVJNIGZvciBleGFtcGxlIGhhcyB0aGUgCj4gdGVuZGVuY3kg
dG8ganVzdCBzcG9udGFuZW91c2x5IHJlYm9vdAo+IAo+IFg4NiBpcyBmb3J0dW5hdGVseSBhIGJp
dCBtb3JlIGdyYWNlZnVsbHkgYW5kIHlvdSBvbmx5IGVuZCB1cCB3aXRoIHJhbmRvbSAKPiBkYXRh
IGNvcnJ1cHRpb24sIGJ1dCB0aGF0IGlzIG9ubHkgbWFyZ2luYWxseSBiZXR0ZXIuCj4gCj4gU28g
dG8gc3VtIGl0IHVwIHRoYXQgaXMgbm90IHNvbWV0aGluZyB3aGljaCB3ZSBjYW4gbGVhdmUgaW4g
dGhlIGhhbmRzIG9mIAo+IHVzZXJzcGFjZS4KPiAKPiBJIHRoaW5rIHRoYXQgZXhwb3J0ZXJzIGlu
IHRoZSBETUEtYnVmIGZyYW1ld29yayBzaG91bGQgaGF2ZSB0aGUgYWJpbGl0eSAKPiB0byB0ZWxs
IGltcG9ydGVycyBpZiB0aGUgc3lzdGVtIG1lbW9yeSBzbm9vcGluZyBpcyBuZWNlc3Nhcnkgb3Ig
bm90LgoKVGhlcmUgaXMgYWxyZWFkeSBhIGNvYXJzZS1ncmFpbmVkIHdheSB0byBkbyBzbzogdGhl
IGRtYV9jb2hlcmVudApwcm9wZXJ0eSBpbiBzdHJ1Y3QgZGV2aWNlLCB3aGljaCB5b3UgY2FuIGNo
ZWNrIGF0IGRtYWJ1ZiBhdHRhY2ggdGltZS4KCkhvd2V2ZXIgaXQgbWF5IG5vdCBiZSBlbm91Z2gg
Zm9yIHRoZSByZXF1aXJlbWVudHMgb2YgYSBHUFUgd2hlcmUgdGhlIAplbmdpbmVzIGNvdWxkIGRp
ZmZlciBpbiB0aGVpciBkbWEgY29oZXJlbmN5IHJlcXVpcmVtZW50cy4gRm9yIHRoYXQgeW91Cm5l
ZWQgdG8gZWl0aGVyIGhhdmUgZmFrZSBzdHJ1Y3QgZGV2aWNlcyBmb3IgdGhlIGluZGl2aWR1YWwg
ZW5naW5lcyBvcgpjb21lIHVwIHdpdGggYSBtb3JlIGZpbmUtZ3JhaW5lZCB3YXkgdG8gY29tbXVu
aWNhdGUgdGhvc2UgcmVxdWlyZW1lbnRzLgoKPiBVc2Vyc3BhY2UgY29tcG9uZW50cyBjYW4gdGhl
biBvZiBjb3Vyc2UgdGVsbCB0aGUgZXhwb3J0ZXIgd2hhdCB0aGUgCj4gaW1wb3J0ZXIgbmVlZHMs
IGJ1dCB2YWxpZGF0aW9uIGlmIHRoYXQgc3R1ZmYgaXMgY29ycmVjdCBhbmQgZG9lc24ndCAKPiBj
cmFzaCB0aGUgc3lzdGVtIG11c3QgaGFwcGVuIGluIHRoZSBrZXJuZWwuCgpXaGF0IGV4YWN0bHkg
ZG8geW91IG1lYW4gYnkgInNjYW5vdXQgcmVxdWlyZXMgbm9uLWNvaGVyZW50IG1lbW9yeSI/CkRv
ZXMgdGhlIHNjYW5vdXQgcmVxdWVzdG9yIGFsd2F5cyBzZXQgdGhlIG5vLXNub29wIFBDSSBmbGFn
LCBzbyB5b3UgZ2V0CmdhcmJhZ2UgaWYgc29tZSB3cml0ZXMgdG8gbWVtb3J5IGFyZSBzdGlsbCBz
dHVjayBpbiB0aGUgY2FjaGVzLCBvciBpcwppdCBzb21lIG90aGVyIHJlcXVpcmVtZW50PwoKUmVn
YXJkcywKTHVjYXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0t
c2lnCg==
