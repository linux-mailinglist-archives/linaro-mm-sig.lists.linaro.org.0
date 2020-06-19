Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4892F20059E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 11:44:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 699726659B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 09:43:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5A37F6659D; Fri, 19 Jun 2020 09:43:59 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 807DD6659C;
	Fri, 19 Jun 2020 09:43:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F264E66597
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 09:43:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D31AF6659C; Fri, 19 Jun 2020 09:43:14 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by lists.linaro.org (Postfix) with ESMTPS id 2274066597
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 09:43:13 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id x6so8996313wrm.13
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 02:43:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=ZHgTo7kQEBwdRaFjgsK02o5pMjtqk4kUjryXyM8W8mg=;
 b=Sl4L3eeq+7LsX8hg6LKnIUvied+G+VHMAGfT3ZTE9g7KSdSXYucLQ9ZvNqWdrgp4CN
 dX4mCL6A7ioMrwmvnuIBnRyIxH6lazrAXMHXhSJKRXJreO5Ms5V7HtwhTt/G/9owdjjl
 OckUvO+uZbhSpRbwESzDlWN958dU+m55sD32qoUGKaeMGHe11dZuVGqD0sGtgxvFfb1o
 oBtqGcokIT/ML5KUUEaPClV7aR6ROUEsu+bWUKC3TG9I/Y3KP5i+pM5J+igAhiYmC8v4
 CfpA1cHVRW2KKgh4Xz7tAmMFgI/XDE7T0xekyLNoi3YCeW15lgoIRh+wm84n8OYdUtox
 UJSQ==
X-Gm-Message-State: AOAM533IbSR1k7n6zDTl8MEWEl4eQtijJYy9rnMnGc2iOuS7LkCq54vB
 Hy3x2sPZbJplRlms7q7UL+1OuA==
X-Google-Smtp-Source: ABdhPJwqgNUvffYXxa/S+rlBZrViACLxBhhTw7FlRJqnm8zxiB3mJ48YaBn2SIoIEMpe1hAXpHV3tg==
X-Received: by 2002:a5d:55c2:: with SMTP id i2mr3151783wrw.225.1592559792157; 
 Fri, 19 Jun 2020 02:43:12 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s18sm7574797wra.85.2020.06.19.02.43.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 02:43:11 -0700 (PDT)
Date: Fri, 19 Jun 2020 11:43:09 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200619094309.GT20149@phenom.ffwll.local>
Mail-Followup-To: Chris Wilson <chris@chris-wilson.co.uk>,
 amd-gfx mailing list <amd-gfx@lists.freedesktop.org>,
 linux-rdma <linux-rdma@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
 <20200604081224.863494-4-daniel.vetter@ffwll.ch>
 <159186243606.1506.4437341616828968890@build.alporthouse.com>
 <CAPM=9ty6r1LuXAH_rf98GH0R9yN3x8xzKPjZG3QyvokpQBR-Hg@mail.gmail.com>
 <CAPj87rM0S2OPssf+WA+pjanT-0Om3yuUM1zUJCv4qTx5VYE=Fw@mail.gmail.com>
 <159255511144.7737.12635440776531222029@build.alporthouse.com>
 <CAKMK7uHEwj6jiZkRZ5PaCUNWcuU9oE4KYm4XHZwHnFzEuChZ7w@mail.gmail.com>
 <159255801588.7737.4425728073225310839@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159255801588.7737.4425728073225310839@build.alporthouse.com>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 amd-gfx mailing list <amd-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH 03/18] dma-fence: basic
	lockdep annotations
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

T24gRnJpLCBKdW4gMTksIDIwMjAgYXQgMTA6MTM6MzVBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgRGFuaWVsIFZldHRlciAoMjAyMC0wNi0xOSAwOTo1MTo1OSkKPiA+IE9u
IEZyaSwgSnVuIDE5LCAyMDIwIGF0IDEwOjI1IEFNIENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPiB3cm90ZToKPiA+ID4gRm9yY2luZyBhIGdlbmVyaWMgcHJpbWl0aXZlIHRv
IGFsd2F5cyBiZSBwYXJ0IG9mIHRoZSBzYW1lIGdsb2JhbCBtYXAgaXMKPiA+ID4gaG9ycmlibGUu
Cj4gPiAKPiA+IEFuZCAgbm8gY29uY3JldGUgZXhhbXBsZSBvciByZWFzb24gZm9yIHdoeSB0aGF0
J3Mgbm90IHBvc3NpYmxlLgo+ID4gQmVjYXVzZSBmcmFua2x5IGl0J3Mgbm90IGhvcnJpYmxlLCB0
aGlzIGlzIHdoYXQgdXBzdHJlYW0gaXMgYWxsIGFib3V0Ogo+ID4gU2hhcmVkIGNvbmNlcHRzLCBz
aGFyZWQgY29udHJhY3RzLCBzaGFyZWQgY29kZS4KPiA+IAo+ID4gVGhlIHByb3Bvc2VkIHBhdGNo
ZXMgbWlnaHQgdmVyeSB3ZWxsIGVuY29kZSB0aGUgd3JvbmcgY29udHJhY3QsIHRoYXQncwo+ID4g
YWxsIHVwIGZvciBkaXNjdXNzaW9uLiBCdXQgZnVuZGFtZW50YWxseSBxdWVzdGlvbmluZyB0aGF0
IHdlIG5lZWQgb25lCj4gPiBpcyBtaXNzaW5nIHdoYXQgdXBzdHJlYW0gaXMgYWxsIGFib3V0Lgo+
IAo+IFRoZW4gSSBoYXZlIG5vdCBjbGVhcmx5IGNvbW11bmljYXRlZCwgYXMgbXkgb3BpbmlvbiBp
cyBub3QgdGhhdAo+IHZhbGlkYXRpb24gaXMgd29ydGhsZXNzLCBidXQgdGhhdCB0aGUgaW1wbGVt
ZW50YXRpb24gaXMgZW5zaHJpbmluZyBhCj4gZ2xvYmFsIHByb3BlcnR5IG9uIGEgbG93IGxldmVs
IHByaW1pdGl2ZSB0aGF0IHByZXZlbnRzIGl0IGZyb20gYmVpbmcKPiB1c2VkIGVsc2V3aGVyZS4g
QW5kIEkgd2FudCB0byByZXBsYWNlIGNvbXBsZXRpb24gW2NoYWluc10gd2l0aCBmZW5jZXMsIGFu
ZAo+IGJpbyB3aXRoIGZlbmNlcywgYW5kIGNsb3N1cmVzIHdpdGggZmVuY2VzLCBhbmQgd2hhdCBv
dGhlciBlcXVpdmFsZW5jaWVzCj4gdGhlcmUgYXJlIGluIHRoZSBrZXJuZWwuIFRoZSBmZW5jZSBp
cyBhcyBjZW50cmFsIGEgbG9ja2luZyBjb25zdHJ1Y3QgYXMKPiBzdHJ1Y3QgY29tcGxldGlvbiBh
bmQgZGVzZXJ2ZXMgdG8gYmUgYSBmb3VuZGF0aW9uYWwgcHJpbWl0aXZlIHByb3ZpZGVkCj4gYnkg
a2VybmVsLyB1c2VkIHRocm91Z2hvdXQgYWxsIGRyaXZlcnMgZm9yIGRpc2NyZXRlIHByb2JsZW0g
ZG9tYWlucy4KPiAKPiBUaGlzIGlzIG5hcnJvd2luZyBkbWFfZmVuY2Ugd2hlcmVieSBhZGRpbmcK
PiAJc3RydWN0IGxvY2tkZXBfbWFwICpkbWFfZmVuY2U6OndhaXRfbWFwCj4gYW5kIGFubm90YXRp
bmcgbGlua2FnZSwgYWxsb3dzIHlvdSB0byBjb250aW51ZSB0byBzcGVjaWZ5IHRoYXQgYWxsCj4g
ZG1hX2ZlbmNlIHVzZWQgZm9yIGEgcGFydGljdWxhciBwdXJwb3NlIG11c3QgZm9sbG93IGNvbW1v
biBydWxlcywKPiB3aXRob3V0IHJlc3RyaWN0aW5nIHRoZSBwcmltaXRpdmUgZm9yIHVzZXMgb3V0
c2lkZSBvZiB0aGlzIHNjb3BlLgoKU29tZXdoZXJlIGVsc2UgaW4gdGhpcyB0aHJlYWQgSSBoYWQg
ZGlzY3Vzc2lvbnMgd2l0aCBKYXNvbiBHdW50aG9ycGUgYWJvdXQKdGhpcyB0b3BpYy4gSXQgbWln
aHQgbWF5YmUgY2hhbmdlIHNvbWV3aGF0IGRlcGVuZGluZyB1cG9uIGV4YWN0IHJ1bGVzLCBidXQK
aGlzIHRha2UgaXMgdmVyeSBtdWNoICJJIGRvbid0IHdhbnQgZG1hX2ZlbmNlIGluIHJkbWEiLiBP
ciBwcmV0dHkgY2xvc2UgdG8KdGhhdCBhdCBsZWFzdC4KClNpbWlsYXIgZGlzY3Vzc2lvbnMgd2l0
aCBoYWJhbmFsYWJzLCB0aGV5J3JlIHVzaW5nIGRtYV9mZW5jZSBpbnRlcm5hbGx5CndpdGhvdXQg
YW55IG9mIHRoZSB1YXBpLiBEaXNjdXNzaW9uIHRoZXJlIGhhcyBhbHNvIG5vdyBjb25jbHVkZWQg
dGhhdCBpdCdzCmJlc3QgaWYgdGhleSByZW1vdmUgdGhlbSwgYW5kIHNpbXBseSBzd2l0Y2ggb3Zl
ciB0byBhIHdhaXRfcXVldWUgb3IKY29tcGxldGlvbiBsaWtlIGV2ZXJ5IG90aGVyIGRyaXZlciBk
b2VzLgoKVGhlIG5leHQgcm91bmQgb2YgdGhlIHBhdGNoZXMgYWxyZWFkeSBoYXZlIGEgcGFyYWdy
YXBoIHRvIGF0IGxlYXN0CnNvbWV3aGF0IGxpbWl0IGhvdyBub24tZ3B1IGRyaXZlcnMgdXNlIGRt
YV9mZW5jZS4gQW5kIEkgZ3Vlc3MgYWN0dWFsCmNvbnNlbnN1cyBtaWdodCBiZSBwb2ludGluZyBl
dmVuIG1vcmUgc3Ryb25nbHkgYXQgZG1hX2ZlbmNlIGJlaW5nIHNvbGVseQpzb21ldGhpbmcgZm9y
IGdwdXMgYW5kIGNsb3NlbHkgcmVsYXRlZCBzdWJzeXN0ZW0gKG1heWJlIG1lZGlhKSBmb3Igc3lu
Y2luZwpkbWEtYnVmIGFjY2Vzcy4KClNvIGRtYV9mZW5jZSBhcyBnZW5lcmFsIHJlcGxhY2VtZW50
IGZvciBjb21wbGV0aW9uIGNoYWlucyBJIHRoaW5rIGp1c3QKd29udCBoYXBwZW4uCgpXaGF0IG1p
Z2h0IG1ha2Ugc2Vuc2UgaXMgaWYgZS5nLiB0aGUgbG9ja2RlcCBhbm5vdGF0aW9ucyBjb3VsZCBi
ZSByZXVzZWQsCmF0IGxlYXN0IGluIGRlc2lnbiwgZm9yIHdhaXRfcXVldWUgb3IgY29tcGxldGlv
biBvciBhbnl0aGluZyBlbHNlCnJlYWxseS4gSSBkbyB0aGluayB0aGF0IGhhcyBhIGZhaXIgY2hh
bmNlIGNvbXBhcmVkIHRvIHRoZSBhdXRvbWFnaWMKY3Jvc3MtcmVsZWFzZSBhbm5vdGF0aW9ucyBh
cHByb2FjaCwgd2hpY2ggcmVsaWVkIHdheSB0b28gaGVhdmlseSBvbgpndWVzc2luZyB3aGVyZSBi
YXJyaWVycyBhcmUuIE15IGV4cGVyaWVuY2UgZnJvbSBqdXN0IGEgYml0IG9mIHBsYXlpbmcKYXJv
dW5kIHdpdGggdGhlc2UgcGF0Y2hlcyBoZXJlIGFuZCBkaXNjdXNzaW5nIHRoZW0gd2l0aCBvdGhl
ciBkcml2ZXIKbWFpbnRhaW5lcnMgaXMgdGhhdCBhY2N1cmF0ZWx5IGRlY2lkaW5nIHdoZXJlIGNy
aXRpY2FsIHNlY3Rpb25zIHN0YXJ0IGFuZAplbmQgaXMgYSBqb2IgZm9yIGh1bWFucyBvbmx5LiBB
bmQgaWYgeW91IGdldCBpdCB3cm9uZywgeW91IHdpbGwgaGF2ZSBhCmZhbHNlIHBvc2l0aXZlLgoK
QW5kIHlvdSdyZSBpbmRlZWQgY29ycmVjdCB0aGF0IGlmIHdlJ2QgZG8gYW5ub3RhdGlvbnMgZm9y
IGNvbXBsZXRpb25zIGFuZAp3YWl0IHF1ZXVlcywgdGhlbiB0aGF0IHdvdWxkIG5lZWQgdG8gaGF2
ZSBhIGNsYXNzIHBlciBzZW1hbnRpY2FsbHkKZXF1aXZhbGVudCB1c2VyLCBsaWtlIHdlIGhhdmUg
bG9ja2RlcCBjbGFzc2VzIGZvciBtdXRleGVzLCBub3QganVzdCBvbmUKb3ZlcmFsbC4KCkJ1dCBk
bWFfZmVuY2Ugb3RvaCBpcyBzb21ldGhpbmcgdmVyeSBzcGVjaWZpYywgd2hpY2ggY29tZXMgd2l0
aCB2ZXJ5CnNwZWNpZmljIHJ1bGVzIGF0dGFjaGVkIC0gaXQncyBub3QgYSBnZW5lcmljIHdhaXRf
cXVldWUgYXQgYWxsLiBPcmlnaW5hbGx5Cml0IGRpZCBzdGFydCBvdXQgYXMgb25lIGV2ZW4sIGJ1
dCBpdCBpcyBhIHZlcnkgc3BlY2lhbGl6ZWQgd2FpdF9xdWV1ZS4KClNvIHRoZXJlJ3MgaW1vIHR3
byBjYXNlczoKCi0gWW91ciBjb21wbGV0aW9uIGlzIGVudGlyZWx5IG9ydGhvZ29uYWwgb2YgZG1h
X2ZlbmNlcywgYW5kIGNhbiBuZXZlciBldmVyCiAgYmxvY2sgYSBkbWFfZmVuY2UuIERvbid0IHVz
ZSBkbWFfZmVuY2UgZm9yIHRoaXMsIGFuZCBubyBwcm9ibGVtLiBJdCdzCiAganVzdCBhbm90aGVy
IHdhaXRfcXVldWUgc29tZXdoZXJlLgoKLSBZb3VyIGNvbXBsZXRpb24gY2FuIGV2ZW50dWFsbHks
IG1heWJlIHRocm91Z2ggbG90cyBvZiBjb252b2x1dGlvbnMgYW5kCiAgZGVwZGVuY2llcywgYmxv
Y2sgYSBkbWFfZmVuY2UuIEluIHRoYXQgY2FzZSBmdWxsIGRtYV9mZW5jZSBydWxlcyBhcHBseSwK
ICBhbmQgdGhlIG9ubHkgdGhpbmcgeW91IGNhbiBkbyB3aXRoIGEgY3VzdG9tIGFubm90YXRpb24g
aXMgbWFrZSB0aGUgcnVsZXMKICBldmVuIHN0cmljdGVyLiBFLmcuIGlmIGEgc3ViLXRpbWVsaW5l
IGluIHRoZSBzY2hlZHVsZXIgaXNuJ3QgYWxsb3dlZCB0bwogIHRha2UgY2VydGFpbiBzY2hlZHVs
ZXIgbG9ja3MuIEJ1dCB0aGUgdXNlcnNwYWNlIHZpc2libGUvcHVibGlzaGVkIGZlbmNlCiAgZG8g
dGFrZSB0aGVtLCBtYXliZSBhcyBwYXJ0IG9mIGNvbW1hbmQgc3VibWlzc2lvbiBvciByZXRpcmVt
ZW50LgogIEVudGlyZWx5IGh5cG90ZXRoaWNhbCwgbm8gaWRlYSBhbnkgZHJpdmVyIGFjdHVhbGx5
IG5lZWRzIHRoaXMuCgpDaGVlcnMsIERhbmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBF
bmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGlu
YXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
