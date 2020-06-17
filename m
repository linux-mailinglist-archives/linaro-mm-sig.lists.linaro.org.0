Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 920FB219F52
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 13:52:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A8B8F61624
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Jul 2020 11:52:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 99D696183E; Thu,  9 Jul 2020 11:52:05 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 35CBD666D0;
	Thu,  9 Jul 2020 11:34:22 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 86E85615AE
 for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Jun 2020 15:29:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 76725664E3; Wed, 17 Jun 2020 15:29:43 +0000 (UTC)
Received: from mail-qv1-f66.google.com (mail-qv1-f66.google.com
 [209.85.219.66])
 by lists.linaro.org (Postfix) with ESMTPS id 60792615AE
 for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Jun 2020 15:29:42 +0000 (UTC)
Received: by mail-qv1-f66.google.com with SMTP id ec10so1205574qvb.5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 17 Jun 2020 08:29:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=v5BdIMSU0SgDrZuQSRW4xvIrY4rZ7WnbUK5J5TOXFb0=;
 b=RqO0at9CBY/GnR88/CBeb5MVRD6jqiU6I4OJIZNV25dvOcFvKRbPT3jkvQhwYNL90M
 +oq/ZXacRbtPsqSxAJVwxG0SIukEozXocA+e+Phq6+QKnx68Uf/wB/Z7dvddXgGGO45G
 Q2rFV85p39Bovj4TARLi+GtcoUjelyt81z+8YVNG4+C+DxGfGb1g8ZBu5/OwtryDnSCG
 fZVnqNllSFraU+Hm+Z3YdrcMYOyPtjY4zym1vi8ztrcqxc8Rv/Iw/NQhrpC7qfYfJ2Jk
 tQbymxGPMKbT5wFSD5cI0OY0BGskblSOTcxXEN2RNLvdwjkOCpoIpVQy+p5t2gjgUZUJ
 IbDg==
X-Gm-Message-State: AOAM530TQBaLezfcnBCYhIIIP/9SDmqlVLCCTkyqv7bx/K3ISN1AHc1/
 OinsNzA+csMFeuua2mNo1lydZA==
X-Google-Smtp-Source: ABdhPJyWaY8mWagCAPiiX7EhWCqcjbxUamRd5/mDpg63tRR7xxsYdOaA9ycSUwn3S5FVu3UfHzBj0g==
X-Received: by 2002:a0c:f388:: with SMTP id i8mr8163963qvk.224.1592407781973; 
 Wed, 17 Jun 2020 08:29:41 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.48.30])
 by smtp.gmail.com with ESMTPSA id y13sm204954qto.23.2020.06.17.08.29.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 08:29:41 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.93) (envelope-from <jgg@ziepe.ca>)
 id 1jla0S-009d9h-Uc; Wed, 17 Jun 2020 12:29:40 -0300
Date: Wed, 17 Jun 2020 12:29:40 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20200617152940.GG6578@ziepe.ca>
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
 <20200604081224.863494-5-daniel.vetter@ffwll.ch>
 <b11c2140-1b9c-9013-d9bb-9eb2c1906710@shipmail.org>
 <20200611083430.GD20149@phenom.ffwll.local>
 <20200611141515.GW6578@ziepe.ca>
 <20200616120719.GL20149@phenom.ffwll.local>
 <20200616145312.GC6578@ziepe.ca>
 <CAKMK7uER6ax1zr14xYLKqDfDZp+ycBsY9Yx7JaVkKQ849VfSPg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uER6ax1zr14xYLKqDfDZp+ycBsY9Yx7JaVkKQ849VfSPg@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Thu, 09 Jul 2020 11:34:07 +0000
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 04/18] dma-fence: prime lockdep
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

T24gV2VkLCBKdW4gMTcsIDIwMjAgYXQgMDk6NTc6NTRBTSArMDIwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKCj4gPiBBdCB0aGUgdmVyeSBsZWFzdCBJIHRoaW5rIHRoZXJlIHNob3VsZCBiZSBzb21l
IGJpZyB3YXJuaW5nIHRoYXQKPiA+IGRtYV9mZW5jZSBpbiBub3RpZmllcnMgc2hvdWxkIGJlIGF2
b2lkZWQuCj4gCj4gWWVhaCBJJ20gd29ya2luZyBvbiBkb2N1bWVudGF0aW9uLCBhbmQgYWxzbyB0
aGUgbm90aWZpZXJzIGhlcmUKPiBob3BlZnVsbHkgbWFrZSBpdCBjbGVhciBpdCdzIG1hc3NpdmUg
cGFpbi4gSSB0aGluayB3ZSBjb3VsZCBldmVuIG1ha2UKPiBhIGhhcmQgcnVsZSB0aGF0IGRtYV9m
ZW5jZSBpbiBtbXUgbm90aWZpZXIgb3V0c2lkZSBvZiBkcml2ZXJzL2dwdSBpcyBhCj4gYnVnL21p
c2ZlYXR1cmUuCgpZZXAhCiAKPiBNaWdodCBiZSBhIGdvb2QgaWRlYSB0byBhZGQgYSBNQUlOVEFJ
TkVSUyBlbnRyeSB3aXRoIGEgSzogcmVnZXgKPiBwYXR0ZXJuLCBzbyB0aGF0IHlvdSBjYW4gY2F0
Y2ggc3VjaCBtb2RpZmllcnMuIFdlIGRvIGFscmVhZHkgaGF2ZSBzdWNoCj4gYSBwYXR0ZXJuIGZv
ciBkbWEtZmVuY2UsIHRvIGNhdGNoIGFidXNlLiBTbyBpZiB5b3Ugd2FudCBJIGNvdWxkIHR5cGUK
PiB1cCBhIGRvY3VtZW50YXRpb24gcGF0Y2ggZm9yIHRoaXMsIGdldCB5b3VyIGFuZCBvdGhlcnMg
YWNrcyBhbmQgdGhlCj4gZHJpLWRldmVsIGZvbGtzIHdvdWxkIGVuZm9yY2UgdGhhdCB0aGUgZG1h
X2ZlbmNlX3dhaXQgbWFkbmVzcyBkb2Vzbid0Cj4gbGVhayBiZXlvbmQgZHJpdmVycy9ncHUKCkl0
IHNlZW1zIGxpa2UgdGhlIGJlc3QgdGhpbmcKIAo+IE9kZWQgaGFzIGFncmVlZCB0byByZW1vdmUg
dGhlIGRtYS1mZW5jZSB1c2FnZSwgc2luY2UgdGhleSByZWFsbHkgZG9uJ3QKPiBuZWVkIGl0IChh
bmQgYWxsIHRoZSBiYWdnYWdlIHRoYXQgY29tZXMgd2l0aCBpdCksIHBsYWluIG9sZCBjb21wbGV0
aW9uCj4gaXMgZW5vdWdoIGZvciB0aGVpciB1c2UuIFRoaXMgdXNlIGlzIGFsc28gd2h5IEkgYWRk
ZWQgdGhlIHJlZ2V4IHRvCj4gTUFJTlRBSU5FUlMsIHNvIHRoYXQgaW4gdGhlIGZ1dHVyZSB3ZSBj
YW4gY2F0Y2ggcGVvcGxlIHdobyB0cnkgdG8gdXNlCj4gZG1hX2ZlbmNlIGJlY2F1c2UgaXQgbG9v
a3MgY3V0ZSBhbmQgdXNlZnVsLCBhbmQgYXJlIGNvbXBsZXRlbHkKPiBvYmxpdmlvdXMgdG8gYWxs
IHRoZSBwYWluIGFuZCBoZWFkYWNoZXMgaW52b2x2ZWQuCgpUaGlzIGlzIGdvb2QhCgpUaGFua3Ms
Ckphc29uIApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
