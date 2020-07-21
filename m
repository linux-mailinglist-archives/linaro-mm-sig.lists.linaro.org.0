Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ABDE228C2E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Jul 2020 00:46:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 86E5D665C3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Jul 2020 22:46:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 713FE665D6; Tue, 21 Jul 2020 22:46:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 66B3A665DA;
	Tue, 21 Jul 2020 22:46:09 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2B300665C3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Jul 2020 22:46:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 15FCD665DA; Tue, 21 Jul 2020 22:46:07 +0000 (UTC)
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by lists.linaro.org (Postfix) with ESMTPS id DB07F665C3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Jul 2020 22:46:05 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id f12so144037eja.9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Jul 2020 15:46:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=9xr1v2W2JnKVVLyTRtwOt/n6iJhD2D3A0fwqKMz4hPs=;
 b=kIt8QN92zy0m9lPQl1BLqixM4/VPGzuthg86JYYsuntNPi/FLBkW3rYIDbdLwPHbVX
 cjAL1q4k5xNu0DakvrCpTv/LwVG7Hx4Erqn/JdbagEMg+qS1AYUEuAzTP8f33LuYk/Kf
 edlNgZ5MenNeh11LVo4WQqmq6ltl5zjhBdGJ91tAIDkiWX2dabF9+yz+mcLXkw6TRgbg
 34BbdlNzUPcrO+1gMkC5BAO9zSP73osqLM88Bpbp5r+m4Onc4t57MfJvAvEccp4izS/3
 MFVC+JdSBsGZJ9uD9X1P90b6k6KEqS7WOsGnamMkz0zrv9aCQeiTWtRDRuvkf21yr04x
 8hJQ==
X-Gm-Message-State: AOAM530W3YfHeuPLG78ikRMMQK6+qSMmmXYk1qc/LHCIjweLmKF/OcmZ
 XTIKTOpnSN2syOGtqJScbwEndvmoIIOT5GVwZHk=
X-Google-Smtp-Source: ABdhPJwZ3Ot7QKWc1rFSm9ERPUfpZAjcJpv8FnDDuXOOnkUxeoTuK9PsCTyGH0MloHa+IJHrTWbjlRTbPgJrqaOl/nY=
X-Received: by 2002:a17:906:4086:: with SMTP id u6mr3259703ejj.9.1595371564794; 
 Tue, 21 Jul 2020 15:46:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200707201229.472834-4-daniel.vetter@ffwll.ch>
 <20200709123339.547390-1-daniel.vetter@ffwll.ch>
 <93b673b7-bb48-96eb-dc2c-bd4f9304000e@shipmail.org>
 <20200721074157.GB3278063@phenom.ffwll.local>
 <3603bb71-318b-eb53-0532-9daab62dce86@amd.com>
 <57a5eb9d-b74f-8ce4-7199-94e911d9b68b@shipmail.org>
In-Reply-To: <57a5eb9d-b74f-8ce4-7199-94e911d9b68b@shipmail.org>
From: Dave Airlie <airlied@gmail.com>
Date: Wed, 22 Jul 2020 08:45:53 +1000
Message-ID: <CAPM=9twUWeenf-26GEvkuKo3wHgS3BCyrva=sNaWo6+=A5qdoQ@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m_=28Intel=29?= <thomas_os@shipmail.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Felix Kuehling <Felix.Kuehling@amd.com>,
 Daniel Stone <daniels@collabora.com>, linux-rdma <linux-rdma@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Steve Pronovost <spronovo@microsoft.com>,
 amd-gfx mailing list <amd-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, Jesse Natalie <jenatali@microsoft.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Jason Ekstrand <jason@jlekstrand.net>, Mika Kuoppala <mika.kuoppala@intel.com>
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

T24gVHVlLCAyMSBKdWwgMjAyMCBhdCAxODo0NywgVGhvbWFzIEhlbGxzdHLDtm0gKEludGVsKQo8
dGhvbWFzX29zQHNoaXBtYWlsLm9yZz4gd3JvdGU6Cj4KPgo+IE9uIDcvMjEvMjAgOTo0NSBBTSwg
Q2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPiA+IEFtIDIxLjA3LjIwIHVtIDA5OjQxIHNjaHJpZWIg
RGFuaWVsIFZldHRlcjoKPiA+PiBPbiBNb24sIEp1bCAyMCwgMjAyMCBhdCAwMToxNToxN1BNICsw
MjAwLCBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpCj4gPj4gd3JvdGU6Cj4gPj4+IEhpLAo+ID4+
Pgo+ID4+PiBPbiA3LzkvMjAgMjozMyBQTSwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+Pj4+IENv
bWVzIHVwIGV2ZXJ5IGZldyB5ZWFycywgZ2V0cyBzb21ld2hhdCB0ZWRpb3VzIHRvIGRpc2N1c3Ms
IGxldCdzCj4gPj4+PiB3cml0ZSB0aGlzIGRvd24gb25jZSBhbmQgZm9yIGFsbC4KPiA+Pj4+Cj4g
Pj4+PiBXaGF0IEknbSBub3Qgc3VyZSBhYm91dCBpcyB3aGV0aGVyIHRoZSB0ZXh0IHNob3VsZCBi
ZSBtb3JlIGV4cGxpY2l0IGluCj4gPj4+PiBmbGF0IG91dCBtYW5kYXRpbmcgdGhlIGFtZGtmZCBl
dmljdGlvbiBmZW5jZXMgZm9yIGxvbmcgcnVubmluZyBjb21wdXRlCj4gPj4+PiB3b3JrbG9hZHMg
b3Igd29ya2xvYWRzIHdoZXJlIHVzZXJzcGFjZSBmZW5jaW5nIGlzIGFsbG93ZWQuCj4gPj4+IEFs
dGhvdWdoIChpbiBteSBodW1ibGUgb3BpbmlvbikgaXQgbWlnaHQgYmUgcG9zc2libGUgdG8gY29t
cGxldGVseQo+ID4+PiB1bnRhbmdsZQo+ID4+PiBrZXJuZWwtaW50cm9kdWNlZCBmZW5jZXMgZm9y
IHJlc291cmNlIG1hbmFnZW1lbnQgYW5kIGRtYS1mZW5jZXMgdXNlZAo+ID4+PiBmb3IKPiA+Pj4g
Y29tcGxldGlvbi0gYW5kIGRlcGVuZGVuY3kgdHJhY2tpbmcgYW5kIGxpZnQgYSBsb3Qgb2YgcmVz
dHJpY3Rpb25zCj4gPj4+IGZvciB0aGUKPiA+Pj4gZG1hLWZlbmNlcywgaW5jbHVkaW5nIHByb2hp
Yml0aW5nIGluZmluaXRlIG9uZXMsIEkgdGhpbmsgdGhpcyBtYWtlcwo+ID4+PiBzZW5zZQo+ID4+
PiBkZXNjcmliaW5nIHRoZSBjdXJyZW50IHN0YXRlLgo+ID4+IFllYWggSSB0aGluayBhIGZ1dHVy
ZSBwYXRjaCBuZWVkcyB0byB0eXBlIHVwIGhvdyB3ZSB3YW50IHRvIG1ha2UgdGhhdAo+ID4+IGhh
cHBlbiAoZm9yIHNvbWUgY3Jvc3MgZHJpdmVyIGNvbnNpc3RlbmN5KSBhbmQgd2hhdCBuZWVkcyB0
byBiZQo+ID4+IGNvbnNpZGVyZWQuIFNvbWUgb2YgdGhlIG5lY2Vzc2FyeSBwYXJ0cyBhcmUgYWxy
ZWFkeSB0aGVyZSAod2l0aCBsaWtlIHRoZQo+ID4+IHByZWVtcHRpb24gZmVuY2VzIGFtZGtmZCBo
YXMgYXMgYW4gZXhhbXBsZSksIGJ1dCBJIHRoaW5rIHNvbWUgY2xlYXIgZG9jcwo+ID4+IG9uIHdo
YXQncyByZXF1aXJlZCBmcm9tIGJvdGggaHcsIGRyaXZlcnMgYW5kIHVzZXJzcGFjZSB3b3VsZCBi
ZSByZWFsbHkKPiA+PiBnb29kLgo+ID4KPiA+IEknbSBjdXJyZW50bHkgd3JpdGluZyB0aGF0IHVw
LCBidXQgcHJvYmFibHkgc3RpbGwgbmVlZCBhIGZldyBkYXlzIGZvcgo+ID4gdGhpcy4KPgo+IEdy
ZWF0ISBJIHB1dCBkb3duIHNvbWUgKHZlcnkpIGluaXRpYWwgdGhvdWdodHMgYSBjb3VwbGUgb2Yg
d2Vla3MgYWdvCj4gYnVpbGRpbmcgb24gZXZpY3Rpb24gZmVuY2VzIGZvciB2YXJpb3VzIGhhcmR3
YXJlIGNvbXBsZXhpdHkgbGV2ZWxzIGhlcmU6Cj4KPiBodHRwczovL2dpdGxhYi5mcmVlZGVza3Rv
cC5vcmcvdGhvbWFzaC9kb2NzLy0vYmxvYi9tYXN0ZXIvVW50YW5nbGluZyUyMGRtYS1mZW5jZSUy
MGFuZCUyMG1lbW9yeSUyMGFsbG9jYXRpb24ub2R0CgpXZSBhcmUgc2VlaW5nIEhXIHRoYXQgaGFz
IHJlY292ZXJhYmxlIEdQVSBwYWdlIGZhdWx0cyBidXQgb25seSBmb3IKY29tcHV0ZSB0YXNrcywg
YW5kIHNjaGVkdWxlciB3aXRob3V0IHNlbWFwaG9yZXMgaHcgZm9yIGdyYXBoaWNzLgoKU28gYSBz
aW5nbGUgZHJpdmVyIG1heSBoYXZlIHRvIGV4cG9zZSBib3RoIG1vZGVscyB0byB1c2Vyc3BhY2Ug
YW5kCmFsc28gaW50cm9kdWNlcyB0aGUgcHJvYmxlbSBvZiBob3cgdG8gaW50ZXJvcGVyYXRlIGJl
dHdlZW4gdGhlIHR3bwptb2RlbHMgb24gb25lIGNhcmQuCgpEYXZlLgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3Jn
L21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
