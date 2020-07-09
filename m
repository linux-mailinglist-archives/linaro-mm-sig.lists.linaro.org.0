Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E15F219FEF
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 14:24:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B542560190
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 12:24:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A785D6038C; Thu,  9 Jul 2020 12:24:30 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 342BA66588;
	Thu,  9 Jul 2020 12:12:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 91AEB66572
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jul 2020 12:12:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8146C665AA; Thu,  9 Jul 2020 12:12:50 +0000 (UTC)
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by lists.linaro.org (Postfix) with ESMTPS id 67E8666572
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Jul 2020 12:11:24 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id f139so1542717wmf.5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 09 Jul 2020 05:11:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=76Pr5Imry6Y6+NQUV46pzWGDfBUpjBEUH8MLbXYDtq8=;
 b=S0wi605CZCc02oq780rUR9zPt/BUZBLtE45R2RXSXT2LrExcFJFHwozCahnihkejjy
 ij+myHTTwK+/wxIzSOatTP1aIvcRweD+kgfvi68uONBi026FOjjQvqeGNHcD72UU1pgE
 +n5vvkdZGnziMItwByMuTSzUNskU8eRpwfTCtikpvyDloQofnD/7Teqqr3m8hxiqHX6X
 hYVsvDGUgqY1EUsQbOSxV7rzjikwjBRBW+1xyNCv22JdpRP9ZmgQuWRUvmI2JXUq1OX4
 Jxvx5J9k9nZ93Cqz8tc3wBQiUMn41h9YPIYGa1Dm/Y8MBe8QnZUv1QPS/iVfwIzETV+z
 HRqA==
X-Gm-Message-State: AOAM530UMc3GeBSarAb3Ip3/L10z+Dj/hOFHapwbUG27loohIh8Ie88J
 cXGbSTNkM3K+EDm78POKdWDM5HEZdgTnidnyUoiWIQ==
X-Google-Smtp-Source: ABdhPJxv2bOOBtwBiOGYgL5OIERVoKiGIkkOEtt5HovOBMNjbTSQatsMIYv39pPFy2HfkEl1IbeCaLvATVq/PpV25+k=
X-Received: by 2002:a1c:bdc3:: with SMTP id n186mr13815672wmf.84.1594296683336; 
 Thu, 09 Jul 2020 05:11:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
 <20200707201229.472834-4-daniel.vetter@ffwll.ch>
 <CAPj87rO4mm-+sQbP07cgM8-=b6Q8Jbh5G0FsV8rwYx2hnEzPkA@mail.gmail.com>
 <20200709080458.GO3278063@phenom.ffwll.local>
In-Reply-To: <20200709080458.GO3278063@phenom.ffwll.local>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 9 Jul 2020 13:11:12 +0100
Message-ID: <CAPj87rPtD04099=sBzL2jKN6NNFNnM-hH3qfOLL10nPoF==VbA@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
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

T24gVGh1LCA5IEp1bCAyMDIwIGF0IDA5OjA1LCBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwu
Y2g+IHdyb3RlOgo+IE9uIFRodSwgSnVsIDA5LCAyMDIwIGF0IDA4OjM2OjQzQU0gKzAxMDAsIERh
bmllbCBTdG9uZSB3cm90ZToKPiA+IE9uIFR1ZSwgNyBKdWwgMjAyMCBhdCAyMToxMywgRGFuaWVs
IFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4gd3JvdGU6Cj4gPiA+IENvbWVzIHVwIGV2
ZXJ5IGZldyB5ZWFycywgZ2V0cyBzb21ld2hhdCB0ZWRpb3VzIHRvIGRpc2N1c3MsIGxldCdzCj4g
PiA+IHdyaXRlIHRoaXMgZG93biBvbmNlIGFuZCBmb3IgYWxsLgo+ID4KPiA+IFRoYW5rcyBmb3Ig
d3JpdGluZyB0aGlzIHVwISBJIHdvbmRlciBpZiBhbnkgb2YgdGhlIG5vdGVzIGZyb20gbXkgcmVw
bHkKPiA+IHRvIHRoZSBwcmV2aW91cy12ZXJzaW9uIHRocmVhZCB3b3VsZCBiZSBoZWxwZnVsIHRv
IG1vcmUgZXhwbGljaXRseQo+ID4gZW5jb2RlIHRoZSBjYXJyb3Qgb2YgZG1hLWZlbmNlJ3MgcG9z
aXRpdmUgZ3VhcmFudGVlcywgcmF0aGVyIHRoYW4ganVzdAo+ID4gdGhlIHN0aWNrIG9mICdkb24n
dCBkbyB0aGlzJy4gOykgRWl0aGVyIHdheSwgdGhpcyBpczoKPgo+IEkgdGhpbmsgdGhlIGNhcnJv
dCBzaG91bGQgZ28gaW50byB0aGUgaW50cm8gc2VjdGlvbiBmb3IgZG1hLWZlbmNlLCB0aGlzCj4g
c2VjdGlvbiBoZXJlIGlzIHZlcnkgbXVjaCBqdXN0IHRoZSAiZG9uJ3QgZG8gdGhpcyIgcGFydC4g
VGhlIHByZXZpb3VzCj4gcGF0Y2hlcyBoYXZlIGFuIGF0dGVtcHQgYXQgZW5jb2RpbmcgdGhpcyBh
IGJpdCwgbWF5YmUgc2VlIHdoZXRoZXIgdGhlcmUncwo+IGEgcGxhY2UgZm9yIHlvdXIgcmVwbHkg
KG9yIHBhcnRzIG9mIGl0KSB0byBmaXQ/CgpTb3VuZHMgZ29vZCB0byBtZS4KCj4gPiBBY2tlZC1i
eTogRGFuaWVsIFN0b25lIDxkYW5pZWxzQGNvbGxhYm9yYS5jb20+Cj4gPgo+ID4gPiBXaGF0IEkn
bSBub3Qgc3VyZSBhYm91dCBpcyB3aGV0aGVyIHRoZSB0ZXh0IHNob3VsZCBiZSBtb3JlIGV4cGxp
Y2l0IGluCj4gPiA+IGZsYXQgb3V0IG1hbmRhdGluZyB0aGUgYW1ka2ZkIGV2aWN0aW9uIGZlbmNl
cyBmb3IgbG9uZyBydW5uaW5nIGNvbXB1dGUKPiA+ID4gd29ya2xvYWRzIG9yIHdvcmtsb2FkcyB3
aGVyZSB1c2Vyc3BhY2UgZmVuY2luZyBpcyBhbGxvd2VkLgo+ID4KPiA+IC4uLiBvciB3aGV0aGVy
IHdlIGp1c3Qgc2F5IHRoYXQgeW91IGNhbiBuZXZlciB1c2UgZG1hLWZlbmNlIGluCj4gPiBjb25q
dW5jdGlvbiB3aXRoIHVzZXJwdHIuCj4KPiBVaCB1c2VycHRyIGlzIGVudGlyZWx5IGRpZmZlcmVu
dCB0aGluZy4gVGhhdCBvbmUgaXMgb2suIEl0J3MgdXNlcnBzYWNlCj4gZmVuY2VzIG9yIGdwdSBm
dXRleGVzIG9yIGZ1dHVyZSBmZW5jZXMgb3Igd2hhdGV2ZXIgd2Ugd2FudCB0byBjYWxsIHRoZW0u
Cj4gT3IgaXMgdGhlcmUgc29tZSBvdGhlciBjb25mdXNpb24gaGVyZT8uCgpJIG1lYW4gZ2VuZXJh
dGluZyBhIGRtYV9mZW5jZSBmcm9tIGEgYmF0Y2ggd2hpY2ggd2lsbCB0cnkgdG8gcGFnZSBpbgp1
c2VycHRyLiBHaXZlbiB0aGF0IHVzZXJwdHIgY291bGQgYmUgYmFja2VkIGJ5IGFic29sdXRlbHkg
YW55dGhpbmcgYXQKYWxsLCBpdCBkb2Vzbid0IHNlZW0gc21hcnQgdG8gYWxsb3cgZmVuY2VzIHRv
IHJlbHkgb24gYSBwb2ludGVyIHRvIGFuCm1tYXAnZWQgTkZTIGZpbGUuIFNvIGl0IHNlZW1zIGxp
a2UgYmF0Y2hlcyBzaG91bGQgYmUgbXV0dWFsbHkKZXhjbHVzaXZlIGJldHdlZW4gYXJiaXRyYXJ5
IFNWTSB1c2VycHRyIGFuZCBnZW5lcmF0aW5nIGEgZG1hLWZlbmNlPwoKU3BlYWtpbmcgb2YgZW50
aXJlbHkgZGlmZmVyZW50IHRoaW5ncyAuLi4gdGhlIHZpcnRpby1ncHUgYml0IHJlYWxseQpkb2Vz
bid0IGJlbG9uZyBpbiB0aGlzIHBhdGNoLgoKQ2hlZXJzLApEYW5pZWwKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
