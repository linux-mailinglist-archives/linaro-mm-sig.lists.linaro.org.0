Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 975E3179536
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Mar 2020 17:28:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C64DB65FCC
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Mar 2020 16:28:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B704D65FCD; Wed,  4 Mar 2020 16:28:43 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B458B65FC8;
	Wed,  4 Mar 2020 16:28:08 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 235246087B
 for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Mar 2020 16:28:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 022B665FC8; Wed,  4 Mar 2020 16:28:06 +0000 (UTC)
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by lists.linaro.org (Postfix) with ESMTPS id 77D666087B
 for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Mar 2020 16:28:04 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id h62so2990267edd.12
 for <linaro-mm-sig@lists.linaro.org>; Wed, 04 Mar 2020 08:28:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=7TRIY9YZNfQ03l0XAD8uITch5RH+qIr9GBOry06eMOI=;
 b=gad1UaV3l65h8R3pbQR4REfFSjCHx6dxYp6CpNYICGHbr76o8E8fuHbbUYzYbp+ula
 XL3G/Wj559BFsfNn8rg/z7q8ySTqRQTgrm7YgOuB+T+fSfpGnScPdCBQwhDOG7Vep3Gm
 1Qg+Za67zJW9lVUYMz5TrLth35rNBL7IVPTrgI7zAKvObgmJWaxrACg8Wk/yvvyS/m9l
 l1Hd5UHehQuNKSLrTsbKWICfcLdiBmQZwX7/eOi7i9riRUZjgGOAk55NLyMQQ9aWLA76
 ZI7d8dSGdH77qMl6oMNeU0WW8p1ZDCsH02RQB2NwWvIcEnAFIHGMq6uu8iJhF6/WbZlW
 B6uw==
X-Gm-Message-State: ANhLgQ0+w6RBYnxsnSiDPbKAJ6nG7X7ixRjJqr5odPmbVDkGgbAzc2hV
 lCdRUktWfwhCUu0uo8YYYM52uVRmYoYuzFsokND0wQ==
X-Google-Smtp-Source: ADFU+vsSyopp0FIj9kIHIXWZFM6m95W5fA7PACVmDDg7Apxr6rZ0+SjUG+P1JsIhCXAPTgAxBiN91lx8DJJ0ecG4TlA=
X-Received: by 2002:a17:906:f258:: with SMTP id
 gy24mr927151ejb.120.1583339283393; 
 Wed, 04 Mar 2020 08:28:03 -0800 (PST)
MIME-Version: 1.0
References: <20200225235856.975366-1-jason@jlekstrand.net>
 <8066d8b2-dd6a-10ef-a7bb-2c18a0661912@amd.com>
 <20200226100523.GQ2363188@phenom.ffwll.local>
 <CAOFGe94O66HL212aXqhi9tdYqw---Xm-fwNSV4pxHyPmpSGpbg@mail.gmail.com>
 <CAP+8YyEUz29fXDW5kO_0ZG6c849=TuFWCK8ynT3LuM+Tn+rMzw@mail.gmail.com>
 <810a26e7-4294-a615-b7ee-18148ac70641@amd.com>
 <CAOFGe96namyeQXTvdrduM+=wkJuoWWx34CxcsJHS3fcCaKDadw@mail.gmail.com>
 <21aeacc0-f3ae-c5dd-66df-4d2f3d73f73e@amd.com>
In-Reply-To: <21aeacc0-f3ae-c5dd-66df-4d2f3d73f73e@amd.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Wed, 4 Mar 2020 10:27:51 -0600
Message-ID: <CAOFGe95Gx=kX=sxwhx1FYmXQuPtGAKwt2V5YodQBwJXujE3WwA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Chenbo Feng <fengc@google.com>, Daniel Stone <daniels@collabora.com>,
 James Jones <jajones@nvidia.com>, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>,
 LKML <linux-kernel@vger.kernel.org>, Greg Hackmann <ghackmann@google.com>,
 linaro-mm-sig@lists.linaro.org,
 =?UTF-8?Q?Kristian_H=C3=B8gsberg?= <hoegsberg@google.com>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Dave Airlie <airlied@redhat.com>, Jesse Hall <jessehall@google.com>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] RFC: dma-buf: Add an API for importing
	and exporting sync files
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

T24gV2VkLCBNYXIgNCwgMjAyMCBhdCAyOjM0IEFNIENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6Cj4KPiBBbSAwMy4wMy4yMCB1bSAyMDoxMCBzY2hyaWVi
IEphc29uIEVrc3RyYW5kOgo+ID4gT24gVGh1LCBGZWIgMjcsIDIwMjAgYXQgMjoyOCBBTSBDaHJp
c3RpYW4gS8O2bmlnCj4gPiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToKPiA+PiBb
U05JUF0KPiA+Pj4gSG93ZXZlciwgSSdtIG5vdCBzdXJlIHdoYXQgdGhlIGJlc3Qgd2F5IGlzIHRv
IGRvIGdhcmJhZ2UgY29sbGVjdGlvbiBvbgo+ID4+PiB0aGF0IHNvIHRoYXQgd2UgZG9uJ3QgZ2V0
IGFuIGltcG9zc2libHkgbGlzdCBvZiBmZW5jZSBhcnJheXMuCj4gPj4gRXhhY3RseSB5ZXMuIFRo
YXQncyBhbHNvIHRoZSByZWFzb24gd2h5IHRoZSBkbWFfZmVuY2VfY2hhaW4gY29udGFpbmVyIEkK
PiA+PiBjYW1lIHVwIHdpdGggZm9yIHRoZSBzeW5jIHRpbWVsaW5lIHN0dWZmIGhhcyBzdWNoIGEg
cmF0aGVyIHNvcGhpc3RpY2F0ZWQKPiA+PiBnYXJiYWdlIGNvbGxlY3Rpb24uCj4gPj4KPiA+PiBX
aGVuIHNvbWUgb2YgdGhlIGluY2x1ZGVkIGZlbmNlcyBzaWduYWwgeW91IG5lZWQgdG8gZnJlZSB1
cCB0aGUKPiA+PiBhcnJheS9jaGFpbiBhbmQgbWFrZSBzdXJlIHRoYXQgdGhlIG1lbW9yeSBmb3Ig
dGhlIGNvbnRhaW5lciBjYW4gYmUgcmV1c2VkLgo+ID4gQ3VycmVudGx5IChhcyBvZiB2MiksIEkn
bSB1c2luZyBkbWFfZmVuY2VfYXJyYXkgYW5kIGJlaW5nIGNhcmVmdWwgdG8KPiA+IG5vdCBib3Ro
ZXIgY29uc3RydWN0aW5nIG9uZSBpZiB0aGVyZSdzIG9ubHkgb25lIGZlbmNlIGluIHBsYXkuICBJ
cwo+ID4gdGhpcyBpbnN1ZmZpY2llbnQ/ICBJZiBzbywgbWF5YmUgd2Ugc2hvdWxkIGNvbnNpZGVy
IGltcHJvdmluZwo+ID4gZG1hX2ZlbmNlX2FycmF5Lgo+Cj4gVGhhdCBzdGlsbCB3b24ndCB3b3Jr
IGNvcnJlY3RseSBpbiBhbGwgY2FzZXMuIFNlZSB0aGUgcHJvYmxlbSBpcyBub3QKPiBvbmx5IG9w
dGltaXphdGlvbiwgYnV0IGFsc28gYXZvaWRpbmcgc2l0dWF0aW9ucyB3aGVyZSB1c2Vyc3BhY2Ug
Y2FuCj4gYWJ1c2UgdGhlIGludGVyZmFjZSB0byBkbyBuYXN0eSB0aGluZ3MuCj4KPiBGb3IgZXhh
bXBsZSBpZiB1c2Vyc3BhY2UganVzdCBjYWxscyB0aGF0IGZ1bmN0aW9uIGluIGEgbG9vcCB5b3Ug
Y2FuCj4gY3JlYXRlIGEgbG9uZyBjaGFpbiBvZiBkbWFfZmVuY2VfYXJyYXkgb2JqZWN0cy4KPgo+
IElmIHRoYXQgY2hhaW4gaXMgdGhlbiBzdWRkZW5seSByZWxlYXNlZCB0aGUgcmVjdXJzaXZlIGRy
b3BwaW5nIG9mCj4gcmVmZXJlbmNlcyBjYW4gb3ZlcndyaXRlIHRoZSBrZXJuZWwgc3RhY2suCj4K
PiBGb3IgcmVmZXJlbmNlIHNlZSB3aGF0IGRhbmNlIGlzIG5lY2Vzc2FyeSBpbiB0aGUgZG1hX2Zl
bmNlX2NoYWluX3JlbGVhc2UKPiBmdW5jdGlvbiB0byBhdm9pZCB0aGF0Ogo+ID4gICAgICAgICAv
KiBNYW51YWxseSB1bmxpbmsgdGhlIGNoYWluIGFzIG11Y2ggYXMgcG9zc2libGUgdG8gYXZvaWQK
PiA+IHJlY3Vyc2lvbgo+ID4gICAgICAgICAgKiBhbmQgcG90ZW50aWFsIHN0YWNrIG92ZXJmbG93
Lgo+ID4gICAgICAgICAgKi8KPiA+ICAgICAgICAgd2hpbGUgKChwcmV2ID0gcmN1X2RlcmVmZXJl
bmNlX3Byb3RlY3RlZChjaGFpbi0+cHJldiwgdHJ1ZSkpKSB7Cj4gLi4uLgo+Cj4gSXQgdG9vayBt
ZSBxdWl0ZSBhIHdoaWxlIHRvIGZpZ3VyZSBvdXQgaG93IHRvIGRvIHRoaXMgd2l0aG91dCBjYXVz
aW5nCj4gaXNzdWVzLiBCdXQgSSBkb24ndCBzZWUgaG93IHRoaXMgd291bGQgYmUgcG9zc2libGUg
Zm9yIGRtYV9mZW5jZV9hcnJheS4KCkFoLCBJIHNlZSB0aGUgaXNzdWUgbm93ISAgSXQgaGFkbid0
IGV2ZW4gb2NjdXJyZWQgdG8gbWUgdGhhdCB1c2Vyc3BhY2UKY291bGQgdXNlIHRoaXMgdG8gYnVp
bGQgdXAgYW4gaW5maW5pdGUgcmVjdXJzaW9uIGNoYWluLiAgVGhhdCdzIG5hc3R5IQogSSdsbCBn
aXZlIHRoaXMgc29tZSBtb3JlIHRob3VnaHQgYW5kIHNlZSBpZiBjYW4gY29tZSB1cCB3aXRoCnNv
bWV0aGluZyBjbGV2ZXIuCgpIZXJlJ3Mgb25lIHRob3VnaHQ6ICBXZSBjb3VsZCBtYWtlIGRtYV9m
ZW5jZV9hcnJheSBhdXRvbWF0aWNhbGx5CmNvbGxhcHNlIGFueSBhcnJheXMgaXQgcmVmZXJlbmNl
cyBhbmQgaW5zdGVhZCBkaXJlY3RseSByZWZlcmVuY2UgdGhlaXIKZmVuY2VzLiAgVGhpcyB3YXks
IG5vIG1hdHRlciBob3cgbXVjaCB0aGUgY2xpZW50IGNoYWlucyB0aGluZ3MsIHRoZXkKd2lsbCBu
ZXZlciBnZXQgbW9yZSB0aGFuIG9uZSBkbWFfZmVuY2VfYXJyYXkuICBPZiBjb3Vyc2UsIHRoZQpk
aWZmaWN1bHR5IGhlcmUgKGFuc3dlcmluZyBteSBvd24gcXVlc3Rpb24pIGNvbWVzIGlmIHRoZXkg
cGluZy1wb25nCmJhY2stYW5kLWZvcnRoIGJldHdlZW4gc29tZXRoaW5nIHdoaWNoIGNvbnN0cnVj
dHMgYSBkbWFfZmVuY2VfYXJyYXkKYW5kIHNvbWV0aGluZyB3aGljaCBjb25zdHJ1Y3RzIGEgZG1h
X2ZlbmNlX2NoYWluIHRvIGdldAphcnJheS1vZi1jaGFpbi1vZi1hcnJheS1vZi1jaGFpbi1vZi0u
Li4gIE1vcmUgdGhvdWdodCBuZWVkZWQuCgo+IEFzIGZhciBhcyBJIGNhbiBzZWUgdGhlIG9ubHkg
cmVhbCBvcHRpb24gdG8gaW1wbGVtZW50IHRoaXMgd291bGQgYmUgdG8KPiBjaGFuZ2UgdGhlIGRt
YV9yZXN2IG9iamVjdCBjb250YWluZXIgc28gdGhhdCB5b3UgY2FuIGFkZCBmZW5jZXMgd2l0aG91
dAo+IG92ZXJyaWRpbmcgZXhpc3Rpbmcgb25lcy4KPgo+IEZvciBzaGFyZWQgZmVuY2VzIHRoYXQg
Y2FuIGJlIGRvbmUgcmVsYXRpdmUgZWFzaWx5LCBidXQgSSBhYnNvbHV0ZWx5Cj4gZG9uJ3Qgc2Vl
IGhvdyB0byBkbyB0aGlzIGZvciBleGNsdXNpdmUgb25lcyB3aXRob3V0IGEgbGFyZ2VyIHJld29y
ay4KCkZhaXIgZW5vdWdoLiAgVGhhbmtzIGZvciB0YWtpbmcgdGhlIHRpbWUgdG8gZXhwbGFpbiB0
aGUgaXNzdWUuICBJJ2xsCmdpdmUgdGhpcyBzb21lIG1vcmUgdGhvdWdodC4KCi0tSmFzb24KCgo+
ID4+PiAgICAoTm90ZQo+ID4+PiB0aGUgZG1hX3Jlc3YgaGFzIGEgbG9jayB0aGF0IG5lZWRzIHRv
IGJlIHRha2VuIGJlZm9yZSBhZGRpbmcgYW4KPiA+Pj4gZXhjbHVzaXZlIGZlbmNlLCBtaWdodCBi
ZSB1c2VmdWwpLiBTb21lIGNvZGUgdGhhdCBkb2VzIGEgdGhpbmcgbGlrZQo+ID4+PiB0aGlzIGlz
IF9fZG1hX3Jlc3ZfbWFrZV9leGNsdXNpdmUgaW4KPiA+Pj4gZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X2RtYV9idWYuYwo+ID4+IFdhbnRlZCB0byBtb3ZlIHRoYXQgaW50byBkbWFf
cmVzdi5jIGZvciBxdWl0ZSBhIHdoaWxlIHNpbmNlIHRoZXJlIGFyZQo+ID4+IHF1aXRlIGEgZmV3
IG90aGVyIGNhc2VzIHdoZXJlIHdlIG5lZWQgdGhpcy4KPiA+IEkndmUgcm91Z2hseSBkb25lIHRo
YXQuICBUaGUgcHJpbWFyeSBkaWZmZXJlbmNlIGlzIHRoYXQgbXkgdmVyc2lvbgo+ID4gdGFrZXMg
YW4gb3B0aW9uYWwgYWRkaXRpb25hbCBmZW5jZSB0byBhZGQgdG8gdGhlIGFycmF5LiAgVGhpcyBt
YWtlcyBpdAo+ID4gYSBiaXQgbW9yZSBjb21wbGljYXRlZCBidXQgSSB0aGluayBJIGdvdCBpdCBt
b3N0bHkgcmlnaHQuCj4gPgo+ID4gSSd2ZSBhbHNvIHdyaXR0ZW4gdXNlcnNwYWNlIGNvZGUgd2hp
Y2ggZXhlcmNpc2VzIHRoaXMgYW5kIGl0IHNlZW1zIHRvCj4gPiB3b3JrLiAgSG9wZWZ1bGx5LCB0
aGF0IHdpbGwgZ2l2ZSBhIGJldHRlciBpZGVhIG9mIHdoYXQgSSdtIHRyeWluZyB0bwo+ID4gYWNj
b21wbGlzaC4KPgo+IFllcywgdGhhdCBpcyBpbmRlZWQgYSByZWFsbHkgbmljZSB0byBoYXZlIGZl
YXR1cmUuCj4KPiBSZWdhcmRzLAo+IENocmlzdGlhbi4KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
