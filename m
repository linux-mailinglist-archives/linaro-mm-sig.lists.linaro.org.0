Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E8AF33B203A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Jun 2021 20:24:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5CB8263586
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Jun 2021 18:24:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0F2DC6357C; Wed, 23 Jun 2021 18:24:43 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 70EB061A29;
	Wed, 23 Jun 2021 18:24:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6E62260BC6
 for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Jun 2021 18:24:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6A10C61A29; Wed, 23 Jun 2021 18:24:39 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com
 [209.85.219.43])
 by lists.linaro.org (Postfix) with ESMTPS id 64CA560BC6
 for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Jun 2021 18:24:37 +0000 (UTC)
Received: by mail-qv1-f43.google.com with SMTP id c2so1932287qvs.6
 for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Jun 2021 11:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Ay2MFJ8k8M7R+vcG/EIgcKO9+a17Gdo2IRp61Ubbznw=;
 b=mCvqGy8+wtoV1fX/pyjo8KTMFPXZBXguyo9f6344j9Tuu6bvNitRH+6EMM391SPgX6
 SQMYyLNce8QZVpU7zBjnXebtb+Q1dmFuIlrzFz1aYg4dzKB/BRgz4LB8VyLVDBN8SLbD
 /DnbLaMY7YnyWKxjMZMgiPK42h8fTN66ErFs85v1J8jFaHQ7sl2AsFzx96c0xf/l9U1g
 an4hgyfwGlZSu7q9rvwAQ11c2UHFj6bACLkguqt6g9SVPdmo2aTNRobeEQ+DP+d/WoQh
 ZrnVQWoPWeo+kqw9aoKL73cB5McCCDUOBzJRc7EqyhLF4fkeGZrtBUlGnWa8WWodzdtj
 vF9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Ay2MFJ8k8M7R+vcG/EIgcKO9+a17Gdo2IRp61Ubbznw=;
 b=nex0JwvKfw66K6wFHNdI5C8wMRhEy2ap3faHgGHL7tDz1htauWNF3Io8Z0piGsGUAh
 feLJEXn+Pcw37nf0nX0tGAdOv/RK/qU77DEeW+flvthXc2FjzdDAuSzJdvfPWecX/y4g
 Uij9kyychbVeGJ4ce8qbaKihHfMxRYHHwhw/oYmzHYNSpcEIJ4b3squ56S06FdyRgxzU
 lwAU6j0EYa6OXuBrGet8sudZdMVoG7HlXttq/8JEHWibbZB3qmN1hXxg82QoQUR6RGvF
 VOhWsVxrrUMMVTnXOvO28yTCjUca9SUYRww4i/obvGDyikzDon1UrtcV9QzXl4EeASkT
 8j4Q==
X-Gm-Message-State: AOAM533ShE0fYD6jIqrYKwbhg9REv1VynfOxKWJQVNcO05qan2KNFLnS
 hwB9LKX0YmsXuO10RYBA1P2CYA==
X-Google-Smtp-Source: ABdhPJwlrtEHn8YPQ5NuHFKzj1NcK0jWPqvPQ5lmMB0+rCMklEH74CDToqHNweA68dTG1W74jUsdaA==
X-Received: by 2002:a0c:f309:: with SMTP id j9mr1350376qvl.12.1624472676911;
 Wed, 23 Jun 2021 11:24:36 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-47-55-113-94.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [47.55.113.94])
 by smtp.gmail.com with ESMTPSA id 85sm456567qkl.46.2021.06.23.11.24.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Jun 2021 11:24:36 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1lw7YB-00BlF7-OO; Wed, 23 Jun 2021 15:24:35 -0300
Date: Wed, 23 Jun 2021 15:24:35 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <20210623182435.GX1096940@ziepe.ca>
References: <d358c740-fd3a-9ecd-7001-676e2cb44ec9@gmail.com>
 <CAFCwf11h_Nj_GEdCdeTzO5jgr-Y9em+W-v_pYUfz64i5Ac25yg@mail.gmail.com>
 <20210622120142.GL1096940@ziepe.ca>
 <d497b0a2-897e-adff-295c-cf0f4ff93cb4@amd.com>
 <20210622152343.GO1096940@ziepe.ca>
 <3fabe8b7-7174-bf49-5ffe-26db30968a27@amd.com>
 <20210622154027.GS1096940@ziepe.ca>
 <09df4a03-d99c-3949-05b2-8b49c71a109e@amd.com>
 <20210622160538.GT1096940@ziepe.ca>
 <d600a638-9e55-6249-b574-0986cd5cea1e@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d600a638-9e55-6249-b574-0986cd5cea1e@gmail.com>
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
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, sleybo@amazon.com,
 Gal Pressman <galpress@amazon.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Doug Ledford <dledford@redhat.com>, Tomer Tayar <ttayar@habana.ai>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Greg KH <gregkh@linuxfoundation.org>, Alex Deucher <alexander.deucher@amd.com>,
 Christoph Hellwig <hch@lst.de>, Oded Gabbay <ogabbay@kernel.org>,
 Leon Romanovsky <leonro@nvidia.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gV2VkLCBKdW4gMjMsIDIwMjEgYXQgMTA6NTc6MzVBTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKCj4gPiA+IE5vIGl0IGlzbid0LiBJdCBtYWtlcyBkZXZpY2VzIGRlcGVuZCBvbiBh
bGxvY2F0aW5nIHN0cnVjdCBwYWdlcyBmb3IgdGhlaXIKPiA+ID4gQkFScyB3aGljaCBpcyBub3Qg
bmVjZXNzYXJ5IG5vciBkZXNpcmVkLgo+ID4gV2hpY2ggZHJhbWF0aWNhbGx5IHJlZHVjZXMgdGhl
IGNvc3Qgb2YgZXN0YWJsaXNoaW5nIERNQSBtYXBwaW5ncywgYQo+ID4gbG9vcCBvZiBkbWFfbWFw
X3Jlc291cmNlKCkgaXMgdmVyeSBleHBlbnNpdmUuCj4gCj4gWWVhaCwgYnV0IHRoYXQgaXMgcGVy
ZmVjdGx5IG9rLiBPdXIgQkFSIGFsbG9jYXRpb25zIGFyZSBlaXRoZXIgaW4gY2h1bmtzIG9mCj4g
YXQgbGVhc3QgMk1pQiBvciBvbmx5IGEgc2luZ2xlIDRLaUIgcGFnZS4KCkFuZCB2ZXJ5IHNtYWxs
IGFwcGFyZW50bHkKIAo+ID4gPiBBbGxvY2F0aW5nIGEgc3RydWN0IHBhZ2VzIGhhcyB0aGVpciB1
c2UgY2FzZSwgZm9yIGV4YW1wbGUgZm9yIGV4cG9zaW5nIFZSQU0KPiA+ID4gYXMgbWVtb3J5IGZv
ciBITU0uIEJ1dCB0aGF0IGlzIHNvbWV0aGluZyB2ZXJ5IHNwZWNpZmljIGFuZCBzaG91bGQgbm90
IGxpbWl0Cj4gPiA+IFBDSWUgUDJQIERNQSBpbiBnZW5lcmFsLgo+ID4gU3VyZSwgYnV0IHRoYXQg
aXMgYW4gaWRlYWwgd2UgYXJlIGZhciBmcm9tIG9idGFpbmluZywgYW5kIG5vYm9keSB3YW50cwo+
ID4gdG8gd29yayBvbiBpdCBwcmVmZXJpbmcgdG8gZG8gaGFja3kgaGFja3kgbGlrZSB0aGlzLgo+
ID4gCj4gPiBJZiB5b3UgYmVsaWV2ZSBpbiB0aGlzIHRoZW4gcmVtb3ZlIHRoZSBzY2F0dGVyIGxp
c3QgZnJvbSBkbWFidWYsIGFkZCBhCj4gPiBuZXcgc2V0IG9mIGRtYV9tYXAqIEFQSXMgdG8gd29y
ayBvbiBwaHlzaWNhbCBhZGRyZXNzZXMgYW5kIGFsbCB0aGUKPiA+IG90aGVyIHN0dWZmIG5lZWRl
ZC4KPiAKPiBZZWFoLCB0aGF0J3Mgd2hhdCBJIHRvdGFsbHkgYWdyZWUgb24uIEFuZCBJIGFjdHVh
bGx5IGhvcGVkIHRoYXQgdGhlIG5ldyBQMlAKPiB3b3JrIGZvciBQQ0llIHdvdWxkIGdvIGludG8g
dGhhdCBkaXJlY3Rpb24sIGJ1dCB0aGF0IGRpZG4ndCBtYXRlcmlhbGl6ZWQuCgpJdCBpcyBhIGxv
dCBvZiB3b3JrIGFuZCB0aGUgb25seSBnYWluIGlzIHRvIHNhdmUgYSBiaXQgb2YgbWVtb3J5IGZv
cgpzdHJ1Y3QgcGFnZXMuIE5vdCBhIHZlcnkgYmlnIHBheSBvZmYuCiAKPiBCdXQgYWxsb2NhdGlu
ZyBzdHJ1Y3QgcGFnZXMgZm9yIFBDSWUgQkFScyB3aGljaCBhcmUgZXNzZW50aWFsbHkgcmVnaXN0
ZXJzCj4gYW5kIG5vdCBtZW1vcnkgaXMgbXVjaCBtb3JlIGhhY2t5IHRoYW4gdGhlIGRtYV9yZXNv
dXJjZV9tYXAoKSBhcHByb2FjaC4KCkl0IGRvZXNuJ3QgcmVhbGx5IG1hdHRlci4gVGhlIHBhZ2Vz
IGFyZSBpbiBhIHNwZWNpYWwgem9uZSBhbmQgYXJlIG9ubHkKYmVpbmcgdXNlZCBhcyBoYW5kbGVz
IGZvciB0aGUgQkFSIG1lbW9yeS4KCj4gQnkgdXNpbmcgUENJZSBQMlAgd2Ugd2FudCB0byBhdm9p
ZCB0aGUgcm91bmQgdHJpcCB0byB0aGUgQ1BVIHdoZW4gb25lIGRldmljZQo+IGhhcyBmaWxsZWQg
dGhlIHJpbmcgYnVmZmVyIGFuZCBhbm90aGVyIGRldmljZSBtdXN0IGJlIHdva2VuIHVwIHRvIHBy
b2Nlc3MKPiBpdC4KClN1cmUsIHdlIGFsbCBoYXZlIHRoZXNlIHNjZW5hcmlvcywgd2hhdCBpcyBp
bnNpZGUgdGhlIG1lbW9yeSBkb2Vzbid0CnJlYWx5IG1hdHRlci4gVGhlIG1lY2hhbmlzbSBpcyBn
ZW5lcmljIGFuZCB0aGUgc3RydWN0IHBhZ2VzIGRvbid0IGNhcmUKbXVjaCBpZiB0aGV5IHBvaW50
IGF0IHNvbWV0aGluZyBtZW1vcnktbGlrZSBvciBhdCBzb21ldGhpbmcKcmVnaXN0ZXItbGlrZS4K
ClRoZXkgYXJlIGFscmVhZHkgaW4gYmlnIHRyb3VibGUgYmVjYXVzZSB5b3UgY2FuJ3QgcG9ydGFi
bHkgdXNlIENQVQppbnN0cnVjdGlvbnMgdG8gYWNjZXNzIHRoZW0gYW55aG93LgoKSmFzb24KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlz
dHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
