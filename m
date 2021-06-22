Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A7D3B09E7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Jun 2021 18:05:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8CE67631B2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Jun 2021 16:05:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0B3D26328E; Tue, 22 Jun 2021 16:05:46 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1000E610D0;
	Tue, 22 Jun 2021 16:05:44 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F3192610C6
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 16:05:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F0C65610D0; Tue, 22 Jun 2021 16:05:41 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 by lists.linaro.org (Postfix) with ESMTPS id E6944610C6
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 16:05:39 +0000 (UTC)
Received: by mail-qt1-f181.google.com with SMTP id w26so11108048qto.13
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 09:05:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=DZ3pXIZRpSkwolJsuMb/jDRoPgB3Tr5Ed0gJwqNhEn0=;
 b=bPcDo+rlbwvx6J+BbENOrwkAhwr/ApYX6dANLjI5IldJpUZEty9WP/A+WSRSkVnfVp
 fd2e4y/tXjqXDkPAhIKeQEV9eOqRiGPykVl6hBy9OPbjguGQbCXYh8BSABRpZ+0/loeK
 k5B7tYHxXO+OYAqc2XDEiodfylo30HXpiBw3o5xdgwyyFytUxxOswWBt61pJyEvA82JG
 jeswvAaYdQ80zAeU2QU/ihXizpJ995HOOdf81AhQWyQIhwQZLacM2brku76mBW2AwSnt
 rLC2zGxEtGcdZECkACvvAcUZ2O3xmGuKK/Qrbfiv04IEijyo0iWQN51AxkzmtGCV9rNa
 dlIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=DZ3pXIZRpSkwolJsuMb/jDRoPgB3Tr5Ed0gJwqNhEn0=;
 b=cRSkZ/YdX4cuht5qK3hOPBHZwYcFYwpyOaMcj1EKJjwF+M+1XnM4L7BAbur68DymcF
 vewDgPtNt2CBHqrp5QcaBCNxpXg1Xr3rCrJ/Co8i8PNmKg2Yh6jvQQzD7P7MsUsqT9eX
 aDi4qy08kRDXRt+rM6Qvhmix8r/gxFdYSYCae7uycwdID7mxdyW7AMIuf7jwpnpw+fy3
 t2MsV24y4BvczmgWHfNm++eaa5pi/sLzvcoNpU0PhGWNXgI8c3nv4OwI53MVryhcGGrb
 AKcmU4vPp6IlJLgacyLc0KDDX0p9Ldt72atnLQaisrlKxZ+McngzhyAi+PirYcD0lgjm
 BoQQ==
X-Gm-Message-State: AOAM532ZF+iRwG4SteduZuff7YkCc+vMiLsFhuHyfCt900c+xpob74lB
 mbjVicmKfYmVRbkOus2iKnKBoQ==
X-Google-Smtp-Source: ABdhPJwsZvQD0cl9e1oHhoP7iCcZiW+TSb8cEQVE7Z3CfQWJtDN54cMi/qDxEpHPFsGzcH9l1+8wSg==
X-Received: by 2002:a05:622a:13cd:: with SMTP id
 p13mr4098685qtk.235.1624377939521; 
 Tue, 22 Jun 2021 09:05:39 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-47-55-113-94.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [47.55.113.94])
 by smtp.gmail.com with ESMTPSA id j7sm13254363qkd.21.2021.06.22.09.05.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Jun 2021 09:05:38 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1lviuA-00ADrH-BE; Tue, 22 Jun 2021 13:05:38 -0300
Date: Tue, 22 Jun 2021 13:05:38 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20210622160538.GT1096940@ziepe.ca>
References: <CAFCwf11jOnewkbLuxUESswCJpyo7C0ovZj80UrnwUOZkPv2JYQ@mail.gmail.com>
 <20210621232912.GK1096940@ziepe.ca>
 <d358c740-fd3a-9ecd-7001-676e2cb44ec9@gmail.com>
 <CAFCwf11h_Nj_GEdCdeTzO5jgr-Y9em+W-v_pYUfz64i5Ac25yg@mail.gmail.com>
 <20210622120142.GL1096940@ziepe.ca>
 <d497b0a2-897e-adff-295c-cf0f4ff93cb4@amd.com>
 <20210622152343.GO1096940@ziepe.ca>
 <3fabe8b7-7174-bf49-5ffe-26db30968a27@amd.com>
 <20210622154027.GS1096940@ziepe.ca>
 <09df4a03-d99c-3949-05b2-8b49c71a109e@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <09df4a03-d99c-3949-05b2-8b49c71a109e@amd.com>
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

T24gVHVlLCBKdW4gMjIsIDIwMjEgYXQgMDU6NDg6MTBQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBBbSAyMi4wNi4yMSB1bSAxNzo0MCBzY2hyaWViIEphc29uIEd1bnRob3JwZToK
PiA+IE9uIFR1ZSwgSnVuIDIyLCAyMDIxIGF0IDA1OjI5OjAxUE0gKzAyMDAsIENocmlzdGlhbiBL
w7ZuaWcgd3JvdGU6Cj4gPiA+IFtTTklQXQo+ID4gPiBObyBhYnNvbHV0ZWx5IG5vdC4gTlZpZGlh
IEdQVXMgd29yayBleGFjdGx5IHRoZSBzYW1lIHdheS4KPiA+ID4gCj4gPiA+IEFuZCB5b3UgaGF2
ZSB0b25zIG9mIHNpbWlsYXIgY2FzZXMgaW4gZW1iZWRkZWQgYW5kIFNvQyBzeXN0ZW1zIHdoZXJl
Cj4gPiA+IGludGVybWVkaWF0ZSBtZW1vcnkgYmV0d2VlbiBkZXZpY2VzIGlzbid0IGRpcmVjdGx5
IGFkZHJlc3NhYmxlIHdpdGggdGhlIENQVS4KPiA+IE5vbmUgb2YgdGhhdCBpcyBQQ0kgUDJQLgo+
ID4gCj4gPiBJdCBpcyBhbGwgc29tZSBzcGVjaWFsdHkgZGlyZWN0IHRyYW5zZmVyLgo+ID4gCj4g
PiBZb3UgY2FuJ3QgcmVhc29uYWJseSBjYWxsIGRtYV9tYXBfcmVzb3VyY2UoKSBvbiBub24gQ1BV
IG1hcHBlZCBtZW1vcnkKPiA+IGZvciBpbnN0YW5jZSwgd2hhdCBhZGRyZXNzIHdvdWxkIHlvdSBw
YXNzPwo+ID4gCj4gPiBEbyBub3QgY29uZnVzZSAiSSBhbSBkb2luZyB0cmFuc2ZlcnMgYmV0d2Vl
biB0d28gSFcgYmxvY2tzIiB3aXRoIFBDSQo+ID4gUGVlciB0byBQZWVyIERNQSB0cmFuc2ZlcnMg
LSB0aGUgbGF0dGVyIGlzIGEgdmVyeSBuYXJyb3cgc3ViY2FzZS4KPiA+IAo+ID4gPiBObywganVz
dCB1c2luZyB0aGUgZG1hX21hcF9yZXNvdXJjZSgpIGludGVyZmFjZS4KPiA+IElrLCBidXQgeWVz
IHRoYXQgZG9lcyAid29yayIuIExvZ2FuJ3Mgc2VyaWVzIGlzIGJldHRlci4KPgo+IE5vIGl0IGlz
bid0LiBJdCBtYWtlcyBkZXZpY2VzIGRlcGVuZCBvbiBhbGxvY2F0aW5nIHN0cnVjdCBwYWdlcyBm
b3IgdGhlaXIKPiBCQVJzIHdoaWNoIGlzIG5vdCBuZWNlc3Nhcnkgbm9yIGRlc2lyZWQuCgpXaGlj
aCBkcmFtYXRpY2FsbHkgcmVkdWNlcyB0aGUgY29zdCBvZiBlc3RhYmxpc2hpbmcgRE1BIG1hcHBp
bmdzLCBhCmxvb3Agb2YgZG1hX21hcF9yZXNvdXJjZSgpIGlzIHZlcnkgZXhwZW5zaXZlLgogCj4g
SG93IGRvIHlvdSBwcmV2ZW50IGRpcmVjdCBJL08gb24gdGhvc2UgcGFnZXMgZm9yIGV4YW1wbGU/
CgpHVVAgZmFpbHMuCgo+IEFsbG9jYXRpbmcgYSBzdHJ1Y3QgcGFnZXMgaGFzIHRoZWlyIHVzZSBj
YXNlLCBmb3IgZXhhbXBsZSBmb3IgZXhwb3NpbmcgVlJBTQo+IGFzIG1lbW9yeSBmb3IgSE1NLiBC
dXQgdGhhdCBpcyBzb21ldGhpbmcgdmVyeSBzcGVjaWZpYyBhbmQgc2hvdWxkIG5vdCBsaW1pdAo+
IFBDSWUgUDJQIERNQSBpbiBnZW5lcmFsLgoKU3VyZSwgYnV0IHRoYXQgaXMgYW4gaWRlYWwgd2Ug
YXJlIGZhciBmcm9tIG9idGFpbmluZywgYW5kIG5vYm9keSB3YW50cwp0byB3b3JrIG9uIGl0IHBy
ZWZlcmluZyB0byBkbyBoYWNreSBoYWNreSBsaWtlIHRoaXMuCgpJZiB5b3UgYmVsaWV2ZSBpbiB0
aGlzIHRoZW4gcmVtb3ZlIHRoZSBzY2F0dGVyIGxpc3QgZnJvbSBkbWFidWYsIGFkZCBhCm5ldyBz
ZXQgb2YgZG1hX21hcCogQVBJcyB0byB3b3JrIG9uIHBoeXNpY2FsIGFkZHJlc3NlcyBhbmQgYWxs
IHRoZQpvdGhlciBzdHVmZiBuZWVkZWQuCgpPdGhlcndpc2UsIHdlIGhhdmUgd2hhdCB3ZSBoYXZl
IGFuZCBkcml2ZXJzIGRvbid0IGdldCB0byBvcHQgb3V0LiBUaGlzCmlzIHdoeSB0aGUgc3R1ZmYg
aW4gQU1ER1BVIHdhcyBOQUsnZC4KCkphc29uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==
