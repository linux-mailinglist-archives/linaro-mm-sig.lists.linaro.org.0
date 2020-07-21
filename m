Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A40B228815
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Jul 2020 20:19:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 282F9665D5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Jul 2020 18:19:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1A250665D6; Tue, 21 Jul 2020 18:19:51 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E6879665DA;
	Tue, 21 Jul 2020 18:19:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0C593665D5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Jul 2020 18:19:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E96F6665DA; Tue, 21 Jul 2020 18:19:10 +0000 (UTC)
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by lists.linaro.org (Postfix) with ESMTPS id 605F8665D5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Jul 2020 18:19:09 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id e90so15790401ote.1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Jul 2020 11:19:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=a22hQK6cJeMfHLvNiRw93Ty044K5y0nmFYyuDYDGOcI=;
 b=D9gZhGxTIiNG9fSX5CwrbIIc5vixxhmGeDgowlAjUEJg/sfIJtEuF6w/gr0Kn+I6xj
 y5tDE8qG/KK7w2yglBUhVyS5SGA6DpUFZnVYINiGcewMZkrRNM9Or+I1gxAw1wbbaoxf
 3zLDEon6kk/C55t7zw/I7VOeIDAuD0narIFkfEx8KrUS2SWwXLM0lIK3Kd9VqVrxduMd
 mZJLxpj5g1zbTDIn057p8qJgpXobKu05SKUfqmG7ra5pn7wukRlP59vF01ZbfUMnepiA
 kw0LKkxShbvpfth9U3pLn4cO16vhP/zPXKzE7Cesae3OMF20ZkQXMYeEy2KiU8F8r0Kn
 CZEQ==
X-Gm-Message-State: AOAM532ia3jxvoAk9ulbmFCoQoDGF8/BQ8ShiSWVMOl4ziWc8SJs7H5U
 ZkowT1JKr4phzuqQCVY8HTExqOhQAluWxcMPTHw/Ww==
X-Google-Smtp-Source: ABdhPJxcmcdY93XzSZSgT29lbh/+9cL9bNlOYjhUUtCZpNsuNRauZwGL7jeysaYtumdQH4HCtzK6O992FnCwdZ8uYq0=
X-Received: by 2002:a05:6830:1d0:: with SMTP id
 r16mr27028455ota.188.1595355548728; 
 Tue, 21 Jul 2020 11:19:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200707201229.472834-4-daniel.vetter@ffwll.ch>
 <20200709123339.547390-1-daniel.vetter@ffwll.ch>
 <93b673b7-bb48-96eb-dc2c-bd4f9304000e@shipmail.org>
 <20200721074157.GB3278063@phenom.ffwll.local>
 <3603bb71-318b-eb53-0532-9daab62dce86@amd.com>
 <57a5eb9d-b74f-8ce4-7199-94e911d9b68b@shipmail.org>
 <2ca2c004-1e11-87f5-4bd8-761e1b44d21f@amd.com>
 <74727f17-b3a5-ca12-6db6-e47543797b72@shipmail.org>
 <CAKMK7uFfMi5M5EkCeG6=tjuDANH4=gDLnFpxCYU-E-xyrxwYUg@mail.gmail.com>
 <ae4e4188-39e6-ec41-c11d-91e9211b4d3a@shipmail.org>
 <f8f73b9f-ce8d-ea02-7caa-d50b75b72809@amd.com>
 <6ed364c9-893b-8974-501a-418585eb4def@shipmail.org>
In-Reply-To: <6ed364c9-893b-8974-501a-418585eb4def@shipmail.org>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 21 Jul 2020 20:18:57 +0200
Message-ID: <CAKMK7uF9kFD+=2_6LJ1Wa2UNUAhAAjs5MNz7dmTfe-4_EFYjWA@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m_=28Intel=29?= <thomas_os@shipmail.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Daniel Stone <daniels@collabora.com>,
 linux-rdma <linux-rdma@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Steve Pronovost <spronovo@microsoft.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Jason Ekstrand <jason@jlekstrand.net>, Jesse Natalie <jenatali@microsoft.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] dma-buf.rst: Document why
 indefinite fences are a bad idea
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

T24gVHVlLCBKdWwgMjEsIDIwMjAgYXQgNzo0NiBQTSBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwp
Cjx0aG9tYXNfb3NAc2hpcG1haWwub3JnPiB3cm90ZToKPgo+Cj4gT24gMjAyMC0wNy0yMSAxNTo1
OSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPiA+IEFtIDIxLjA3LjIwIHVtIDEyOjQ3IHNjaHJp
ZWIgVGhvbWFzIEhlbGxzdHLDtm0gKEludGVsKToKPiAuLi4KPiA+PiBZZXMsIHdlIGNhbid0IGRv
IG1hZ2ljLiBBcyBzb29uIGFzIGFuIGluZGVmaW5pdGUgYmF0Y2ggbWFrZXMgaXQgdG8KPiA+PiBz
dWNoIGhhcmR3YXJlIHdlJ3ZlIGxvc3QuIEJ1dCBzaW5jZSB3ZSBjYW4gYnJlYWsgb3V0IHdoaWxl
IHRoZSBiYXRjaAo+ID4+IGlzIHN0dWNrIGluIHRoZSBzY2hlZHVsZXIgd2FpdGluZywgd2hhdCBJ
IGJlbGlldmUgd2UgKmNhbiogZG8gd2l0aAo+ID4+IHRoaXMgYXBwcm9hY2ggaXMgdG8gYXZvaWQg
ZGVhZGxvY2tzIGR1ZSB0byBsb2NhbGx5IHVua25vd24KPiA+PiBkZXBlbmRlbmNpZXMsIHdoaWNo
IGhhcyBzb21lIGJlYXJpbmcgb24gdGhpcyBkb2N1bWVudGF0aW9uIHBhdGNoLCBhbmQKPiA+PiBh
bHNvIHRvIGFsbG93IG1lbW9yeSBhbGxvY2F0aW9uIGluIGRtYS1mZW5jZSAobm90IG1lbW9yeS1m
ZW5jZSkKPiA+PiBjcml0aWNhbCBzZWN0aW9ucywgbGlrZSBncHUgZmF1bHQtIGFuZCBlcnJvciBo
YW5kbGVycyB3aXRob3V0Cj4gPj4gcmVzb3J0aW5nIHRvIHVzaW5nIG1lbW9yeSBwb29scy4KPiA+
Cj4gPiBBdm9pZGluZyBkZWFkbG9ja3MgaXMgb25seSB0aGUgdGlwIG9mIHRoZSBpY2ViZXJnIGhl
cmUuCj4gPgo+ID4gV2hlbiB5b3UgYWxsb3cgdGhlIGtlcm5lbCB0byBkZXBlbmQgb24gdXNlciBz
cGFjZSB0byBwcm9jZWVkIHdpdGggc29tZQo+ID4gb3BlcmF0aW9uIHRoZXJlIGFyZSBhIGxvdCBt
b3JlIHRoaW5ncyB3aGljaCBuZWVkIGNvbnNpZGVyYXRpb24uCj4gPgo+ID4gRS5nLiB3aGF0IGhh
cHBlbnMgd2hlbiBhbiB1c2Vyc3BhY2UgcHJvY2VzcyB3aGljaCBoYXMgc3VibWl0dGVkIHN0dWZm
Cj4gPiB0byB0aGUga2VybmVsIGlzIGtpbGxlZD8gQXJlIHRoZSBwcmVwYXJlZCBjb21tYW5kcyBz
ZW5kIHRvIHRoZQo+ID4gaGFyZHdhcmUgb3IgYWJvcnRlZCBhcyB3ZWxsPyBXaGF0IGRvIHdlIGRv
IHdpdGggb3RoZXIgcHJvY2Vzc2VzCj4gPiB3YWl0aW5nIGZvciB0aGF0IHN0dWZmPwo+ID4KPiA+
IEhvdyB0byB3ZSBkbyByZXNvdXJjZSBhY2NvdW50aW5nPyBXaGVuIHByb2Nlc3NlcyBuZWVkIHRv
IGJsb2NrIHdoZW4KPiA+IHN1Ym1pdHRpbmcgdG8gdGhlIGhhcmR3YXJlIHN0dWZmIHdoaWNoIGlz
IG5vdCByZWFkeSB3ZSBoYXZlIGEgcHJvY2Vzcwo+ID4gd2UgY2FuIHB1bmlzaCBmb3IgYmxvY2tp
bmcgcmVzb3VyY2VzLiBCdXQgaG93IGlzIGtlcm5lbCBtZW1vcnkgdXNlZAo+ID4gZm9yIGEgc3Vi
bWlzc2lvbiBhY2NvdW50ZWQ/IEhvdyBkbyB3ZSBhdm9pZCBkZW55IG9mIHNlcnZpY2UgYXR0YWNr
cwo+ID4gaGVyZSB3ZXJlIHNvbWVib2R5IGVhdHMgdXAgYWxsIG1lbW9yeSBieSBkb2luZyBzdWJt
aXNzaW9ucyB3aGljaCBjYW4ndAo+ID4gZmluaXNoPwo+ID4KPiBIbW0uIEFyZSB0aGVzZSBwcm9i
bGVtcyByZWFsbHkgdW5pcXVlIHRvIHVzZXItc3BhY2UgY29udHJvbGxlZAo+IGRlcGVuZGVuY2ll
cz8gQ291bGRuJ3QgeW91IGhpdCB0aGUgc2FtZSBvciBzaW1pbGFyIHByb2JsZW1zIHdpdGgKPiBt
aXMtYmVoYXZpbmcgc2hhZGVycyBibG9ja2luZyB0aW1lbGluZSBwcm9ncmVzcz8KCldlIGp1c3Qg
a2lsbCB0aGVtLCB3aGljaCB3ZSBjYW4gYmVjYXVzZSBzdHVmZiBuZWVkcyB0byBjb21wbGV0ZSBp
biBhCnRpbWVseSBmYXNoaW9uLCBhbmQgd2l0aG91dCBhbnkgZnVydGhlciBpbnRlcnZlbnRpb24g
LSBhbGwKcHJlcmVxdWlzaXRlIGRlcGVuZGVuY2llcyBtdXN0IGJlIGFuZCBhcmUga25vd24gYnkg
dGhlIGtlcm5lbC4KCkJ1dCB3aXRoIHRoZSBsb25nL2VuZGxlc3MgcnVubmluZyBjb21wdXRlIHN0
dWZmIHdpdGggdXNlcnNwYWNlIHN5bmMKcG9pbnQgYW5kIGV2ZXJ5dGhpbmcgZnJlZS13aGVlbGlu
ZywgaW5jbHVkaW5nIHN0dWZmIGxpa2UgImhleSBJJ2xsCnN1Ym1pdCB0aGlzIHBhdGNoIGJ1dCB0
aGUgbWVtb3J5IGlzbid0IGV2ZW4gYWxsIGFsbG9jYXRlZCB5ZXQsIHNvIEknbQpqdXN0IGdvaW5n
IHRvIGhhbmcgaXQgb24gdGhpcyBzZW1hcGhvcmUgdW50aWwgdGhhdCdzIGRvbmUiIGlzIGVudGly
ZWx5CmRpZmZlcmVudC4gVGhlcmUganVzdCBzaG9vdGluZyB0aGUgYmF0Y2gga2lsbHMgdGhlIHBy
b2dyYW1taW5nIG1vZGVsLAphbmQgYWJpdHJhcmlseSBob2xkaW5nIHVwIGEgYmF0Y2ggZm9yIGFu
b3RoZXIgb25lIHRvIGZpcnN0IGdldCBpdHMKbWVtb3J5IGFsc28gYnJlYWtzIGl0LCBiZWNhdXNl
IHVzZXJzcGFjZSBtaWdodCBoYXZlIGlzc3VlZCB0aGVtIHdpdGgKZGVwZW5kZW5jaWVzIGluIHRo
ZSBvdGhlciBvcmRlci4KClNvIHdpdGggdGhhdCBleGVjdXRpb24gbW9kZWwgeW91IGRvbid0IHJ1
biBiYXRjaGVzLCBidXQganVzdCBhbiBlbnRpcmUKY29udGV4dC4gVXAgdG8gdXNlcnNwYWNlIHdo
YXQgaXQgZG9lcyB3aXRoIHRoYXQsIGFuZCBsaWtlIHdpdGggY3B1CnRocmVhZHMganVzdCBydW5u
aW5nIGEgYnVzeSBsb29wIGRvaW5nIG5vdGhpbmcgaXMgcGVyZmVjdGx5IGxlZ2l0Cihmcm9tIHRo
ZSBrZXJuZWwgcG92J3MgYXQgbGVhc3QpIHdvcmtsb2FkLiBOb3RoaW5nIGluIHRoZSBrZXJuZWwg
ZXZlcgp3YWl0cyBvbiBzdWNoIGEgY29udGV4dCB0byBkbyBhbnl0aGluZywgaWYgdGhlIGtlcm5l
bCBuZWVkcyBzb21ldGhpbmcKeW91IGp1c3QgcHJlZW1wdCAob3IgaWYgaXQncyBtZW1vcnkgYW5k
IHlvdSBoYXZlIGdwdSBwYWdlIGZhdWx0CmhhbmRsaW5nLCByaXAgb3V0IHRoZSBwYWdlKS4gQWNj
b3VudGluZyBpcyBhbGwgZG9uZSBvbiBhIHNwZWNpZmljIGdwdQpjb250ZXh0IHRvby4gQW5kIHBy
b2JhYmx5IHdlIG5lZWQgYSBzb21ld2hhdCBjb25zaXN0ZW50IGFwcHJvYWNoIG9uCmhvdyB3ZSBo
YW5kbGUgdGhlc2UgZ3B1IGNvbnRleHQgdGhpbmdzIChkZWZpbml0ZWx5IG5lZWRlZCBmb3IgY2dy
b3VwcwphbmQgYWxsIHRoYXQpLgotRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVu
Z2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5h
cm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
