Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CFF21A013
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 14:32:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6EA2760190
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 12:32:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 609D5604A8; Thu,  9 Jul 2020 12:32:34 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6EF22605DA;
	Thu,  9 Jul 2020 12:31:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8ADC560190
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jul 2020 12:31:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6562E605DA; Thu,  9 Jul 2020 12:31:52 +0000 (UTC)
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by lists.linaro.org (Postfix) with ESMTPS id 237FB60190
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jul 2020 12:31:51 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id e4so1747397oib.1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 09 Jul 2020 05:31:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KiDJy6GOzF4hs3a4674ttNieH4VUalBdDZ/NwtwQZfA=;
 b=N1Zbz6nBP9Nv2A/+38JqzVgwhwa+v7DcXTocB9D88qLu/+Mw+ZRLQoH59upYgTmVg9
 aioRSxqCwLmav0VS4LB/uWLrwp8BcOrCqZHnoyJfNRYSwdhp0IBBirJ1vbi0gMdx6yiI
 OSpnxQESQ7i4DpG0J091x9PbyQhXh8azkAUwDPXx9fn8Y8q88kNu2yJjdB7gUmUD0C+l
 agllMDKwN/8nyxngefyIUDVV0xAa6I8IbqYccgOsoh86gE2Bzl9oeGuETGG2B8k1YpBH
 WVvD9mx2j/RiLpJfoIWpCy1llQztPntsMC/U2bz7HGuvHBuPH874geqhX6xoPMqyfzQo
 5ZFg==
X-Gm-Message-State: AOAM5322WuGaMFLeY7w3ar9+LZBNjhQSTnaQPa3Khp70v5i0Gt5HgL3Q
 5jWLlg9ilJdM5RcEg+iq7g0QY2QJlZCarQZFk41XAQ==
X-Google-Smtp-Source: ABdhPJyI8E36+f5KGCTBz5yAx5csIil50BdgW5wTbo9ROaoMlgEYYqX4Zh0y84Cd5mvEYHzda2RKPPkUVIvSpgCpuaU=
X-Received: by 2002:aca:da03:: with SMTP id r3mr11062166oig.14.1594297910510; 
 Thu, 09 Jul 2020 05:31:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
 <20200707201229.472834-4-daniel.vetter@ffwll.ch>
 <CAPj87rO4mm-+sQbP07cgM8-=b6Q8Jbh5G0FsV8rwYx2hnEzPkA@mail.gmail.com>
 <20200709080458.GO3278063@phenom.ffwll.local>
 <CAPj87rPtD04099=sBzL2jKN6NNFNnM-hH3qfOLL10nPoF==VbA@mail.gmail.com>
In-Reply-To: <CAPj87rPtD04099=sBzL2jKN6NNFNnM-hH3qfOLL10nPoF==VbA@mail.gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 9 Jul 2020 14:31:39 +0200
Message-ID: <CAKMK7uG6T+86+11CKpRpEY8v6_Xrm=hWv01tzPPLHq_H7p-AuA@mail.gmail.com>
To: Daniel Stone <daniel@fooishbar.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Felix Kuehling <Felix.Kuehling@amd.com>,
 linux-rdma <linux-rdma@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 amd-gfx mailing list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Steve Pronovost <spronovo@microsoft.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Jesse Natalie <jenatali@microsoft.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH 03/25] dma-buf.rst: Document
 why idenfinite fences are a bad idea
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

T24gVGh1LCBKdWwgOSwgMjAyMCBhdCAyOjExIFBNIERhbmllbCBTdG9uZSA8ZGFuaWVsQGZvb2lz
aGJhci5vcmc+IHdyb3RlOgo+Cj4gT24gVGh1LCA5IEp1bCAyMDIwIGF0IDA5OjA1LCBEYW5pZWwg
VmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+IHdyb3RlOgo+ID4gT24gVGh1LCBKdWwgMDksIDIwMjAg
YXQgMDg6MzY6NDNBTSArMDEwMCwgRGFuaWVsIFN0b25lIHdyb3RlOgo+ID4gPiBPbiBUdWUsIDcg
SnVsIDIwMjAgYXQgMjE6MTMsIERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+
IHdyb3RlOgo+ID4gPiA+IENvbWVzIHVwIGV2ZXJ5IGZldyB5ZWFycywgZ2V0cyBzb21ld2hhdCB0
ZWRpb3VzIHRvIGRpc2N1c3MsIGxldCdzCj4gPiA+ID4gd3JpdGUgdGhpcyBkb3duIG9uY2UgYW5k
IGZvciBhbGwuCj4gPiA+Cj4gPiA+IFRoYW5rcyBmb3Igd3JpdGluZyB0aGlzIHVwISBJIHdvbmRl
ciBpZiBhbnkgb2YgdGhlIG5vdGVzIGZyb20gbXkgcmVwbHkKPiA+ID4gdG8gdGhlIHByZXZpb3Vz
LXZlcnNpb24gdGhyZWFkIHdvdWxkIGJlIGhlbHBmdWwgdG8gbW9yZSBleHBsaWNpdGx5Cj4gPiA+
IGVuY29kZSB0aGUgY2Fycm90IG9mIGRtYS1mZW5jZSdzIHBvc2l0aXZlIGd1YXJhbnRlZXMsIHJh
dGhlciB0aGFuIGp1c3QKPiA+ID4gdGhlIHN0aWNrIG9mICdkb24ndCBkbyB0aGlzJy4gOykgRWl0
aGVyIHdheSwgdGhpcyBpczoKPiA+Cj4gPiBJIHRoaW5rIHRoZSBjYXJyb3Qgc2hvdWxkIGdvIGlu
dG8gdGhlIGludHJvIHNlY3Rpb24gZm9yIGRtYS1mZW5jZSwgdGhpcwo+ID4gc2VjdGlvbiBoZXJl
IGlzIHZlcnkgbXVjaCBqdXN0IHRoZSAiZG9uJ3QgZG8gdGhpcyIgcGFydC4gVGhlIHByZXZpb3Vz
Cj4gPiBwYXRjaGVzIGhhdmUgYW4gYXR0ZW1wdCBhdCBlbmNvZGluZyB0aGlzIGEgYml0LCBtYXli
ZSBzZWUgd2hldGhlciB0aGVyZSdzCj4gPiBhIHBsYWNlIGZvciB5b3VyIHJlcGx5IChvciBwYXJ0
cyBvZiBpdCkgdG8gZml0Pwo+Cj4gU291bmRzIGdvb2QgdG8gbWUuCj4KPiA+ID4gQWNrZWQtYnk6
IERhbmllbCBTdG9uZSA8ZGFuaWVsc0Bjb2xsYWJvcmEuY29tPgo+ID4gPgo+ID4gPiA+IFdoYXQg
SSdtIG5vdCBzdXJlIGFib3V0IGlzIHdoZXRoZXIgdGhlIHRleHQgc2hvdWxkIGJlIG1vcmUgZXhw
bGljaXQgaW4KPiA+ID4gPiBmbGF0IG91dCBtYW5kYXRpbmcgdGhlIGFtZGtmZCBldmljdGlvbiBm
ZW5jZXMgZm9yIGxvbmcgcnVubmluZyBjb21wdXRlCj4gPiA+ID4gd29ya2xvYWRzIG9yIHdvcmts
b2FkcyB3aGVyZSB1c2Vyc3BhY2UgZmVuY2luZyBpcyBhbGxvd2VkLgo+ID4gPgo+ID4gPiAuLi4g
b3Igd2hldGhlciB3ZSBqdXN0IHNheSB0aGF0IHlvdSBjYW4gbmV2ZXIgdXNlIGRtYS1mZW5jZSBp
bgo+ID4gPiBjb25qdW5jdGlvbiB3aXRoIHVzZXJwdHIuCj4gPgo+ID4gVWggdXNlcnB0ciBpcyBl
bnRpcmVseSBkaWZmZXJlbnQgdGhpbmcuIFRoYXQgb25lIGlzIG9rLiBJdCdzIHVzZXJwc2FjZQo+
ID4gZmVuY2VzIG9yIGdwdSBmdXRleGVzIG9yIGZ1dHVyZSBmZW5jZXMgb3Igd2hhdGV2ZXIgd2Ug
d2FudCB0byBjYWxsIHRoZW0uCj4gPiBPciBpcyB0aGVyZSBzb21lIG90aGVyIGNvbmZ1c2lvbiBo
ZXJlPy4KPgo+IEkgbWVhbiBnZW5lcmF0aW5nIGEgZG1hX2ZlbmNlIGZyb20gYSBiYXRjaCB3aGlj
aCB3aWxsIHRyeSB0byBwYWdlIGluCj4gdXNlcnB0ci4gR2l2ZW4gdGhhdCB1c2VycHRyIGNvdWxk
IGJlIGJhY2tlZCBieSBhYnNvbHV0ZWx5IGFueXRoaW5nIGF0Cj4gYWxsLCBpdCBkb2Vzbid0IHNl
ZW0gc21hcnQgdG8gYWxsb3cgZmVuY2VzIHRvIHJlbHkgb24gYSBwb2ludGVyIHRvIGFuCj4gbW1h
cCdlZCBORlMgZmlsZS4gU28gaXQgc2VlbXMgbGlrZSBiYXRjaGVzIHNob3VsZCBiZSBtdXR1YWxs
eQo+IGV4Y2x1c2l2ZSBiZXR3ZWVuIGFyYml0cmFyeSBTVk0gdXNlcnB0ciBhbmQgZ2VuZXJhdGlu
ZyBhIGRtYS1mZW5jZT8KCkxvY2tpbmcgaXMgVHJpY2t5ICh0bSkgYnV0IGVzc2VudGlhbGx5IHdo
YXQgYXQgbGVhc3QgYW1kZ3B1IGRvZXMgaXMKcHVsbCBpbiB0aGUgYmFja2luZyBzdG9yYWdlIGJl
Zm9yZSB3ZSBwdWJsaXNoIGFueSBkbWEtZmVuY2UuIEFuZCB0aGVuCnNvbWUgc2VyaW91cyBsb2Nr
aW5nIG1hZ2ljIHRvIG1ha2Ugc3VyZSB0aGF0IGRvZXNuJ3QgcmFjZSB3aXRoIGEgY29yZQptbSBp
bnZhbGlkYXRpb24gZXZlbnQuIFNvIGZvciB5b3VyIGNhc2UgaGVyZSB0aGUgY3MgaW9jdGwganVz
dCBibG9ja3MKdW50aWwgdGhlIG5mcyBwYWdlcyBhcmUgcHVsbGVkIGluLgoKT25jZSB3ZSd2ZSBj
b21taXR0ZWQgZm9yIHRoZSBkbWEtZmVuY2UgaXQncyBvbmx5IHRoZSBvdGhlciB3YXkgcm91bmQs
CmkuZS4gY29yZSBtbSB3aWxsIHN0YWxsIG9uIHRoZSBkbWEtZmVuY2UgaWYgaXQgd2FudHMgdG8g
dGhyb3cgb3V0CnRoZXNlIHBhZ2VzIGFnYWluLiBNb3JlIG9yIGxlc3MgYXQgbGVhc3QuIFRoYXQg
d2F5IHdlIG5ldmVyIGhhdmUgYQpkbWEtZmVuY2UgZGVwZW5kaW5nIHVwb24gYW55IGNvcmUgbW0g
b3BlcmF0aW9ucy4gVGhlIG9ubHkgcGFpbiBoZXJlIGlzCnRoYXQgdGhpcyBzZXZlcmVseSBsaW1p
dHMgd2hhdCB5b3UgY2FuIGRvIGluIHRoZSBjcml0aWNhbCBwYXRoIHRvd2FyZHMKc2lnbmFsbGlu
ZyBhIGRtYS1mZW5jZSwgYmVjYXVzZSB0aGUgdGxkciBpcyAibm8gaW50ZXJhY3Rpbmcgd2l0aCBj
b3JlCm1tIGF0IGFsbCBhbGxvd2VkIi4KCj4gU3BlYWtpbmcgb2YgZW50aXJlbHkgZGlmZmVyZW50
IHRoaW5ncyAuLi4gdGhlIHZpcnRpby1ncHUgYml0IHJlYWxseQo+IGRvZXNuJ3QgYmVsb25nIGlu
IHRoaXMgcGF0Y2guCgpPb3BzLCBkdW5ubyB3aGVyZSBJIGxvc3QgdGhhdCBhcyBhIHNwYXJhdGUg
cGF0Y2guIFdpbGwgc3BsaXQgb3V0IGFnYWluIDotKAotRGFuaWVsCgo+Cj4gQ2hlZXJzLAo+IERh
bmllbAoKCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9y
YXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK
