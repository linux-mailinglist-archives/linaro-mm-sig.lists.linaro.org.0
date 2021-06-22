Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 428F83B0953
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Jun 2021 17:40:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3D1DB6117B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Jun 2021 15:40:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0EFC4610C6; Tue, 22 Jun 2021 15:40:34 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3AFBC610D0;
	Tue, 22 Jun 2021 15:40:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A8F9460A90
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 15:40:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A6572610CB; Tue, 22 Jun 2021 15:40:30 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
 [209.85.160.174])
 by lists.linaro.org (Postfix) with ESMTPS id A0B4D60A90
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 15:40:28 +0000 (UTC)
Received: by mail-qt1-f174.google.com with SMTP id 17so3453862qtt.6
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 08:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=NZpdOHQdlbhRQUdadvChaP2QioJ6XoeMWnvncTZxFBo=;
 b=bFrrHAW8qxNFpB4w6q6y0m3wG93Brg5eP/2CDB60bxAwrbV9T0MwsuqH9FqvvIRVEl
 azco9BZHD+pLNHUOUPd0/YqiC7g1TkaOLuSEdEPEQsK/HsRy3mej/q89Q1WOFE2N+Ro6
 7RjC3KVHi7qrQ6NaRAxH4v7ueHDnYI6mNr/5488SwgmJEmoF0yDk72Gp1+3yt3X1dN77
 SwYTmPDOKjoJcVDChtw4TAWYHg4XwJrbCQOByfoyvt7j1+S/eNeqEnvPfIhPHwupoX/C
 fllP05M4t8g69iCpBGPz31XolXRyxDJerhlIIoTtJYVOwqMlMtDxL7QTh8S+XznoKv7T
 C9Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=NZpdOHQdlbhRQUdadvChaP2QioJ6XoeMWnvncTZxFBo=;
 b=sb+OmnRnhNRCQsDuSSXDKJyaMkxpkmJ26oYrO9QldSi474PxMBlPKbyDU1MaUA1S2e
 B/jfkalA84A2b3nuRNwVAkzul0JKXfhhCm21riE4SlGHwRaoRnwzflUUYwGyr9geouza
 DxuJv/SdLjmGEquOU2RulP+3rBomZdt8Rk0osp6JBWNKWgbOIub+7smgTayB3wEbinHy
 CE5XFyfRSzoNDdyKidWF/9DGdzSUcl6A5V2mwjrmKv32T1pY0xA9s8et3fJ4O2YcG5zY
 I5IqH4fNATL2xsRjxrcUej42nl65LS/qTJJR6dWKX41e4bI5AGiRFdYzjocF/X+/0DP6
 aVwA==
X-Gm-Message-State: AOAM533sHE18AUOviSXZJm9Jvh5jXxJeT0JY8ml4aK7u2jW96RXS8hJc
 5ySkC/F19KszvNbdDieWDZ/g3A==
X-Google-Smtp-Source: ABdhPJyBSBJ8ZnJGYH0mWoGpKu8dUURIzu/dEy/gWK1x7lcbRKJ6NR08GtWZTYux23s4RPq5jOQChQ==
X-Received: by 2002:ac8:4241:: with SMTP id r1mr4000088qtm.121.1624376428220; 
 Tue, 22 Jun 2021 08:40:28 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-47-55-113-94.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [47.55.113.94])
 by smtp.gmail.com with ESMTPSA id y18sm1761588qtj.53.2021.06.22.08.40.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Jun 2021 08:40:27 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1lviVn-00ADW0-73; Tue, 22 Jun 2021 12:40:27 -0300
Date: Tue, 22 Jun 2021 12:40:27 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20210622154027.GS1096940@ziepe.ca>
References: <20210621175511.GI1096940@ziepe.ca>
 <CAKMK7uEO1_B59DtM7N2g7kkH7pYtLM_WAkn+0f3FU3ps=XEjZQ@mail.gmail.com>
 <CAFCwf11jOnewkbLuxUESswCJpyo7C0ovZj80UrnwUOZkPv2JYQ@mail.gmail.com>
 <20210621232912.GK1096940@ziepe.ca>
 <d358c740-fd3a-9ecd-7001-676e2cb44ec9@gmail.com>
 <CAFCwf11h_Nj_GEdCdeTzO5jgr-Y9em+W-v_pYUfz64i5Ac25yg@mail.gmail.com>
 <20210622120142.GL1096940@ziepe.ca>
 <d497b0a2-897e-adff-295c-cf0f4ff93cb4@amd.com>
 <20210622152343.GO1096940@ziepe.ca>
 <3fabe8b7-7174-bf49-5ffe-26db30968a27@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3fabe8b7-7174-bf49-5ffe-26db30968a27@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v3 1/2] habanalabs: define uAPI to
 export FD for DMA-BUF
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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
Cc: linux-rdma <linux-rdma@vger.kernel.org>, sleybo@amazon.com,
 Gal Pressman <galpress@amazon.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, Christoph Hellwig <hch@lst.de>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Doug Ledford <dledford@redhat.com>, Tomer Tayar <ttayar@habana.ai>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Greg KH <gregkh@linuxfoundation.org>, Alex Deucher <alexander.deucher@amd.com>,
 Leon Romanovsky <leonro@nvidia.com>, Oded Gabbay <ogabbay@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gVHVlLCBKdW4gMjIsIDIwMjEgYXQgMDU6Mjk6MDFQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBBbSAyMi4wNi4yMSB1bSAxNzoyMyBzY2hyaWViIEphc29uIEd1bnRob3JwZToK
PiA+IE9uIFR1ZSwgSnVuIDIyLCAyMDIxIGF0IDAyOjIzOjAzUE0gKzAyMDAsIENocmlzdGlhbiBL
w7ZuaWcgd3JvdGU6Cj4gPiA+IEFtIDIyLjA2LjIxIHVtIDE0OjAxIHNjaHJpZWIgSmFzb24gR3Vu
dGhvcnBlOgo+ID4gPiA+IE9uIFR1ZSwgSnVuIDIyLCAyMDIxIGF0IDExOjQyOjI3QU0gKzAzMDAs
IE9kZWQgR2FiYmF5IHdyb3RlOgo+ID4gPiA+ID4gT24gVHVlLCBKdW4gMjIsIDIwMjEgYXQgOToz
NyBBTSBDaHJpc3RpYW4gS8O2bmlnCj4gPiA+ID4gPiA8Y2tvZW5pZy5sZWljaHR6dW1lcmtlbkBn
bWFpbC5jb20+IHdyb3RlOgo+ID4gPiA+ID4gPiBBbSAyMi4wNi4yMSB1bSAwMToyOSBzY2hyaWVi
IEphc29uIEd1bnRob3JwZToKPiA+ID4gPiA+ID4gPiBPbiBNb24sIEp1biAyMSwgMjAyMSBhdCAx
MDoyNDoxNlBNICswMzAwLCBPZGVkIEdhYmJheSB3cm90ZToKPiA+ID4gPiA+ID4gPiAKPiA+ID4g
PiA+ID4gPiA+IEFub3RoZXIgdGhpbmcgSSB3YW50IHRvIGVtcGhhc2l6ZSBpcyB0aGF0IHdlIGFy
ZSBkb2luZyBwMnAgb25seQo+ID4gPiA+ID4gPiA+ID4gdGhyb3VnaCB0aGUgZXhwb3J0L2ltcG9y
dCBvZiB0aGUgRkQuIFdlIGRvICpub3QqIGFsbG93IHRoZSB1c2VyIHRvCj4gPiA+ID4gPiA+ID4g
PiBtbWFwIHRoZSBkbWEtYnVmIGFzIHdlIGRvIG5vdCBzdXBwb3J0IGRpcmVjdCBJTy4gU28gdGhl
cmUgaXMgbm8gYWNjZXNzCj4gPiA+ID4gPiA+ID4gPiB0byB0aGVzZSBwYWdlcyB0aHJvdWdoIHRo
ZSB1c2Vyc3BhY2UuCj4gPiA+ID4gPiA+ID4gQXJndWFibHkgbW1hcGluZyB0aGUgbWVtb3J5IGlz
IGEgYmV0dGVyIGNob2ljZSwgYW5kIGlzIHRoZSBkaXJlY3Rpb24KPiA+ID4gPiA+ID4gPiB0aGF0
IExvZ2FuJ3Mgc2VyaWVzIGdvZXMgaW4uIEhlcmUgdGhlIHVzZSBvZiBETUFCVUYgd2FzIHNwZWNp
ZmljYWxseQo+ID4gPiA+ID4gPiA+IGRlc2lnbmVkIHRvIGFsbG93IGhpdGxlc3MgcmV2b2thdGlv
biBvZiB0aGUgbWVtb3J5LCB3aGljaCB0aGlzIGlzbid0Cj4gPiA+ID4gPiA+ID4gZXZlbiB1c2lu
Zy4KPiA+ID4gPiA+ID4gVGhlIG1ham9yIHByb2JsZW0gd2l0aCB0aGlzIGFwcHJvYWNoIGlzIHRo
YXQgRE1BLWJ1ZiBpcyBhbHNvIHVzZWQgZm9yCj4gPiA+ID4gPiA+IG1lbW9yeSB3aGljaCBpc24n
dCBDUFUgYWNjZXNzaWJsZS4KPiA+ID4gPiBUaGF0IGlzbid0IGFuIGlzc3VlIGhlcmUgYmVjYXVz
ZSB0aGUgbWVtb3J5IGlzIG9ubHkgaW50ZW5kZWQgdG8gYmUKPiA+ID4gPiB1c2VkIHdpdGggUDJQ
IHRyYW5zZmVycyBzbyBpdCBtdXN0IGJlIENQVSBhY2Nlc3NpYmxlLgo+ID4gPiBObywgZXNwZWNp
YWxseSBQMlAgaXMgb2Z0ZW4gZG9uZSBvbiBtZW1vcnkgcmVzb3VyY2VzIHdoaWNoIGFyZSBub3Qg
ZXZlbgo+ID4gPiByZW1vdGVseSBDUFUgYWNjZXNzaWJsZS4KPiA+IFRoYXQgaXMgYSBzcGVjaWFs
IEFNRCB0aGluZywgUDJQIGhlcmUgaXMgUENJIFAyUCBhbmQgYWxsIFBDSSBtZW1vcnkgaXMKPiA+
IENQVSBhY2Nlc3NpYmxlLgo+IAo+IE5vIGFic29sdXRlbHkgbm90LiBOVmlkaWEgR1BVcyB3b3Jr
IGV4YWN0bHkgdGhlIHNhbWUgd2F5Lgo+Cj4gQW5kIHlvdSBoYXZlIHRvbnMgb2Ygc2ltaWxhciBj
YXNlcyBpbiBlbWJlZGRlZCBhbmQgU29DIHN5c3RlbXMgd2hlcmUKPiBpbnRlcm1lZGlhdGUgbWVt
b3J5IGJldHdlZW4gZGV2aWNlcyBpc24ndCBkaXJlY3RseSBhZGRyZXNzYWJsZSB3aXRoIHRoZSBD
UFUuCgpOb25lIG9mIHRoYXQgaXMgUENJIFAyUC4KCkl0IGlzIGFsbCBzb21lIHNwZWNpYWx0eSBk
aXJlY3QgdHJhbnNmZXIuCgpZb3UgY2FuJ3QgcmVhc29uYWJseSBjYWxsIGRtYV9tYXBfcmVzb3Vy
Y2UoKSBvbiBub24gQ1BVIG1hcHBlZCBtZW1vcnkKZm9yIGluc3RhbmNlLCB3aGF0IGFkZHJlc3Mg
d291bGQgeW91IHBhc3M/CgpEbyBub3QgY29uZnVzZSAiSSBhbSBkb2luZyB0cmFuc2ZlcnMgYmV0
d2VlbiB0d28gSFcgYmxvY2tzIiB3aXRoIFBDSQpQZWVyIHRvIFBlZXIgRE1BIHRyYW5zZmVycyAt
IHRoZSBsYXR0ZXIgaXMgYSB2ZXJ5IG5hcnJvdyBzdWJjYXNlLgoKPiBObywganVzdCB1c2luZyB0
aGUgZG1hX21hcF9yZXNvdXJjZSgpIGludGVyZmFjZS4KCklrLCBidXQgeWVzIHRoYXQgZG9lcyAi
d29yayIuIExvZ2FuJ3Mgc2VyaWVzIGlzIGJldHRlci4KCj4gPiA+ID4gPiBJJ2xsIGdvIGFuZCBy
ZWFkIExvZ2FuJ3MgcGF0Y2gtc2V0IHRvIHNlZSBpZiB0aGF0IHdpbGwgd29yayBmb3IgdXMgaW4K
PiA+ID4gPiA+IHRoZSBmdXR1cmUuIFBsZWFzZSByZW1lbWJlciwgYXMgRGFuaWVsIHNhaWQsIHdl
IGRvbid0IGhhdmUgc3RydWN0IHBhZ2UKPiA+ID4gPiA+IGJhY2tpbmcgb3VyIGRldmljZSBtZW1v
cnksIHNvIGlmIHRoYXQgaXMgYSByZXF1aXJlbWVudCB0byBjb25uZWN0IHRvCj4gPiA+ID4gPiBM
b2dhbidzIHdvcmssIHRoZW4gSSBkb24ndCB0aGluayB3ZSB3aWxsIHdhbnQgdG8gZG8gaXQgYXQg
dGhpcyBwb2ludC4KPiA+ID4gPiBJdCBpcyB0cml2aWFsIHRvIGdldCB0aGUgc3RydWN0IHBhZ2Ug
Zm9yIGEgUENJIEJBUi4KPiA+ID4gWWVhaCwgYnV0IGl0IGRvZXNuJ3QgbWFrZSBtdWNoIHNlbnNl
LiBXaHkgc2hvdWxkIHdlIGNyZWF0ZSBhIHN0cnVjdCBwYWdlIGZvcgo+ID4gPiBzb21ldGhpbmcg
dGhhdCBpc24ndCBldmVuIG1lbW9yeSBpbiBhIGxvdCBvZiBjYXNlcz8KPiA+IEJlY2F1c2UgdGhl
IGlvbW11IGFuZCBvdGhlciBwbGFjZXMgbmVlZCB0aGlzIGhhbmRsZSB0byBzZXR1cCB0aGVpcgo+
ID4gc3R1ZmYuIE5vYm9keSBoYXMgeWV0IGJlZW4gYnJhdmUgZW5vdWdoIHRvIHRyeSB0byBjaGFu
Z2UgdGhvc2UgZmxvd3MKPiA+IHRvIGJlIGFibGUgdG8gdXNlIGEgcGh5c2ljYWwgQ1BVIGFkZHJl
c3MuCj4gCj4gV2VsbCB0aGF0IGlzIGNlcnRhaW5seSBub3QgdHJ1ZS4gSSdtIGp1c3Qgbm90IHN1
cmUgaWYgdGhhdCB3b3JrcyB3aXRoIGFsbAo+IElPTU1VIGRyaXZlcnMgdGhvdWdodC4KCkh1aD8g
QWxsIHRoZSBpb21tdSBpbnRlcmZhY2VzIGV4Y2VwdCBmb3IgdGhlIGRtYV9tYXBfcmVzb3VyY2Uo
KSBhcmUKc3RydWN0IHBhZ2UgYmFzZWQuIGRtYV9tYXBfcmVzb3VyY2UoKSBpcyBzbG93IGFkIGxp
bWl0ZWQgaW4gd2hhdCBpdApjYW4gZG8uCgpKYXNvbgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
