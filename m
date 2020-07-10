Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF3E21BE3E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Jul 2020 22:03:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2814061885
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Jul 2020 20:03:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 17198618E3; Fri, 10 Jul 2020 20:03:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 29A586171A;
	Fri, 10 Jul 2020 20:02:36 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id EB8AD60FF9
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Jul 2020 20:02:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CF2426171A; Fri, 10 Jul 2020 20:02:33 +0000 (UTC)
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by lists.linaro.org (Postfix) with ESMTPS id A0D8860FF9
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Jul 2020 20:02:32 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id 12so5780315oir.4
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Jul 2020 13:02:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hlzdQKgtPmO74k0pNR7vHuIZBrt/Pc63RtVTndWe5dA=;
 b=Uj6HpbhtVWbYdJoIV6Nsi2zdBakfTvOkip9tLCgaP7OxKc0dTBY6AK3lIoyEJXxYj2
 HTwdmzpFm8jmoTZ9KU3LdMBXIzTsJ3VnwjdegAbVhfd7hFhJ3P2tGULnWGMrGIU/bAtg
 svEEE+Qgszj39Hald/GC2dSByGDwPnHfsucOXopaHi79s+2l43lnS3bAhXWLFCGRV8dX
 p897r/mXTfBEsDf+vHg/pFRJu7pkn/UqrMupTZ2hqvwLZP1JCCXuPmPceZMGQEVwE3Wx
 UwgX+RB02E/KW7H9QspF9H5gmPbIdSS3ZKf76KAjyZObsR/lp4H5LmPdStAboLDjrfE6
 JjJQ==
X-Gm-Message-State: AOAM532ysg1lFDGTwGT243zDAbbEm3Dfa9OlnmQQtzWba6iEc5Rygpvi
 GHqUpNjxqi/rNyO0Gn0lpSaBFtDWkW67jGS4D3d16Q==
X-Google-Smtp-Source: ABdhPJyXe/UuJLRx5f5TlPpv/BPhnkWHORX2InNLi0AlJObIla3gh+GkiBljOI27Z+bfXCvGSQK4tsearkrRp5oifn8=
X-Received: by 2002:aca:da03:: with SMTP id r3mr5553679oig.14.1594411351996;
 Fri, 10 Jul 2020 13:02:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
 <20200707201229.472834-3-daniel.vetter@ffwll.ch>
 <20200709080911.GP3278063@phenom.ffwll.local>
 <20200710124357.GB23821@mellanox.com>
 <5c163d74-4a28-1d74-be86-099b4729a2e0@amd.com>
 <20200710125453.GC23821@mellanox.com>
 <4f4a2cf7-f505-8494-1461-bd467870481e@amd.com>
 <20200710134826.GD23821@mellanox.com>
 <CAKMK7uGSUULTmL=bDXty6U4e37dzLHzu7wgUyOxo2CvR9KvXGg@mail.gmail.com>
 <20200710142347.GE23821@mellanox.com>
In-Reply-To: <20200710142347.GE23821@mellanox.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 10 Jul 2020 22:02:20 +0200
Message-ID: <CAKMK7uFK6Os5ALHEBr7tqCMtmHS1FpuDeOvqs40GVMv2kqJ90g@mail.gmail.com>
To: Jason Gunthorpe <jgg@mellanox.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: kernel test robot <lkp@intel.com>, linux-rdma <linux-rdma@vger.kernel.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@intel.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Mika Kuoppala <mika.kuoppala@intel.com>
Subject: Re: [Linaro-mm-sig] [PATCH 02/25] dma-fence: prime lockdep
	annotations
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

T24gRnJpLCBKdWwgMTAsIDIwMjAgYXQgNDoyMyBQTSBKYXNvbiBHdW50aG9ycGUgPGpnZ0BtZWxs
YW5veC5jb20+IHdyb3RlOgo+Cj4gT24gRnJpLCBKdWwgMTAsIDIwMjAgYXQgMDQ6MDI6MzVQTSAr
MDIwMCwgRGFuaWVsIFZldHRlciB3cm90ZToKPgo+ID4gPiBkbWFfZmVuY2Ugb25seSBwb3NzaWJs
eSBtYWtlcyBzb21lIHNlbnNlIGlmIHlvdSBpbnRlbmQgdG8gZXhwb3NlIHRoZQo+ID4gPiBjb21w
bGV0aW9uIG91dHNpZGUgYSBzaW5nbGUgZHJpdmVyLgo+ID4gPgo+ID4gPiBUaGUgcHJlZmVyZWQg
a2VybmVsIGRlc2lnbiBwYXR0ZXJuIGZvciB0aGlzIGlzIHRvIGNvbm5lY3QgdGhpbmdzIHdpdGgK
PiA+ID4gYSBmdW5jdGlvbiBjYWxsYmFjay4KPiA+ID4KPiA+ID4gU28gdGhlIGFjdHVhbCB1c2Ug
Y2FzZSBvZiBkbWFfZmVuY2UgaXMgcXVpdGUgbmFycm93IGFuZCB0aWdodGx5IGxpbmtlZAo+ID4g
PiB0byBEUk0uCj4gPiA+Cj4gPiA+IEkgZG9uJ3QgdGhpbmsgd2Ugc2hvdWxkIHNwcmVhZCB0aGlz
IGJleW9uZCBEUk0sIEkgY2FuJ3Qgc2VlIGEgcmVhc29uLgo+ID4KPiA+IFllYWggdjRsIGhhcyBh
IGxlZ2l0IHJlYXNvbiB0byB1c2UgZG1hX2ZlbmNlLCBhbmRyb2lkIHdhbnRzIHRoYXQKPiA+IHRo
ZXJlLgo+Cj4gJ2xlZ2l0JyBpbiB0aGUgc2Vuc2UgdGhlIHY0bCBpcyBzdXBwb3NlZCB0byB0cmln
Z2VyIHN0dWZmIGluIERSTSB3aGVuCj4gVjRMIERNQSBjb21wbGV0ZXM/IEkgd291bGQgc3RpbGwg
c2VlIHRoYXQgYXMgcGFydCBvZiBEUk0KClllcywgYW5kIGFsc28gdGhlIG90aGVyIHdheSBhcm91
bmQuIEJ1dCB0aHVzIGZhciBpdCBkaWRuJ3QgbGFuZC4KLURhbmllbAoKPiBPciBpcyBpdCBidWls
ZGluZyBhIHBhcmFsbGVsIERSTSBsaWtlIERNQSBjb21wbGV0aW9uIGdyYXBoPwo+Cj4gPiA+IFRy
eWluZyB0byBpbXByb3ZlIHBlcmZvcm1hbmNlIG9mIGxpbWl0ZWQgSFcgYnkgdXNpbmcgc2tldGNo
eQo+ID4gPiB0ZWNobmlxdWVzIGF0IHRoZSBjb3N0IG9mIGdlbmVyYWwgc3lzdGVtIHN0YWJpbGl0
eSBzaG91bGQgYmUgYSBOQUsuCj4gPgo+ID4gV2VsbCB0aGF0J3MgcHJldHR5IG11Y2ggZ3B1IGRy
aXZlcnMsIGFsbCB0aGUgaG9ycm9ycyBmb3IgYSBiaXQgbW9yZSBzcGVlZCA6LSkKPiA+Cj4gPiBP
biB0aGUgdGV4dCBpdHNlbGYsIHNob3VsZCBJIHVwZ3JhZGUgdG8gIm11c3Qgbm90IiBpbnN0ZWFk
IG9mICJzaG91bGQKPiA+IG5vdCI/IE9yIG1vcmUgbmVlZGVkPwo+Cj4gRnVuZGFtZW50YWxseSBo
YXZpbmcgc29tZSB1bmtub3dhYmxlIGdyYXBoIG9mIGRlcGVuZGVuY2llcyB3aGVyZSBwYXJ0cwo+
IG9mIHRoZSBncmFwaCBjYW4gYmUgcGxhY2VkIGluIGNyaXRpY2FsIHJlZ2lvbnMgbGlrZSBub3Rp
ZmllcnMgaXMgYQo+IGNvbXBsZXRlIG1haW50ZW5hbmNlIG5pZ2h0bWFyZS4KPgo+IEkgdGhpbmsg
YnVpbGRpbmcgc3lzdGVtcyBsaWtlIHRoaXMgc2hvdWxkIGJlIGRpc2NvdXJhZ2VkIDpcCgotLSAK
RGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDov
L2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1t
bS1zaWcK
