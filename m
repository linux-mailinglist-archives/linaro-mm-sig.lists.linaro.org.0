Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4F226C387
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Sep 2020 16:08:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 90F9D666D5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Sep 2020 14:08:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 829A6666D4; Wed, 16 Sep 2020 14:08:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D6278618C2;
	Wed, 16 Sep 2020 14:08:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A71B860CB2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Sep 2020 14:08:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 98CA760F5B; Wed, 16 Sep 2020 14:08:12 +0000 (UTC)
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by lists.linaro.org (Postfix) with ESMTPS id CEC14616DE
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Sep 2020 14:07:12 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id n133so8214698qkn.11
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Sep 2020 07:07:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=La99VFybE95ljQbGxohkbmDHsRKJC2A6ovW4ZDnoPGg=;
 b=Yc3eyrCE0OPTR4V40aG56GOGnCOB//vwBMvmyVdXMcckGoQmFQbm37XhbguXqXnmss
 RjJ0CbFI0vkJI0RdzktCE5uBtukXW6fvJMYN1TbY+BmHruAgBJ+y1KXpAVUIHvpLwTnF
 AW/nDoL0b9Yj219Ixp52ctfcfYROCbs1g3ZP2sLaDM9Hk/vE/Pq6zRqklc2MDa5uIGPV
 KeglxVkSZGBmapOO3Sdw++7oV6rM5eeu/S7DMHgrVwSkCTQlCbw1DrFLCKUcjqNbq0C/
 spddyBKQ7uDBM1zNTsPlQcwQhgcNp/tN3JqkjwPu6m2FVFjOxn83QcjB09W08ghni4C2
 qH8Q==
X-Gm-Message-State: AOAM531386S+wTesrvSWS+LNyuo+gWY5fXmDYlh2a2paad9B7zc7zxNo
 ch9w7uZfdFKYZIEIMolcLLYsMg==
X-Google-Smtp-Source: ABdhPJyGvoVtODTTRAjWRbOAqjMljnU8wALvrzaWChMgxILat6SxGUHhK0nHHjrTElsiKnfbm48/tg==
X-Received: by 2002:a37:84f:: with SMTP id 76mr22783375qki.251.1600265232291; 
 Wed, 16 Sep 2020 07:07:12 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.48.30])
 by smtp.gmail.com with ESMTPSA id k48sm20623786qtk.44.2020.09.16.07.07.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Sep 2020 07:07:11 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1kIY5W-0002hp-NA; Wed, 16 Sep 2020 11:07:10 -0300
Date: Wed, 16 Sep 2020 11:07:10 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: christian.koenig@amd.com, akpm@linux-foundation.org,
 sumit.semwal@linaro.org, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org
Message-ID: <20200916140710.GA8409@ziepe.ca>
References: <20200914132920.59183-1-christian.koenig@amd.com>
 <40cd26ae-b855-4627-5a13-4dcea5d622f6@gmail.com>
 <20200914140632.GD1221970@ziepe.ca>
 <9302e4e0-0ff0-8b00-ada1-85feefb49e88@gmail.com>
 <20200916095359.GD438822@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200916095359.GD438822@phenom.ffwll.local>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] Changing vma->vm_file in dma_buf_mmap()
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

T24gV2VkLCBTZXAgMTYsIDIwMjAgYXQgMTE6NTM6NTlBTSArMDIwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKCj4gQnV0IHdpdGhpbiB0aGUgZHJpdmVyLCB3ZSBnZW5lcmFsbHkgbmVlZCB0aG91c2Fu
ZHMgb2YgdGhlc2UsIGFuZCB0aGF0Cj4gdGVuZHMgdG8gYnJpbmcgZmQgZXhoYXVzdGlvbiBwcm9i
bGVtcyB3aXRoIGl0LiBUaGF0J3Mgd2h5IGFsbCB0aGUgcHJpdmF0ZQo+IGJ1ZmZlciBvYmplY3Rz
IHdoaWNoIGFyZW4ndCBzaGFyZWQgd2l0aCBvdGhlciBwcm9jZXNzIG9yIG90aGVyIGRyaXZlcnMg
YXJlCj4gaGFuZGxlcyBvbmx5IHZhbGlkIGZvciBhIHNwZWNpZmljIGZkIGluc3RhbmNlIG9mIHRo
ZSBkcm0gY2hhcmRldiAoZWFjaAo+IG9wZW4gZ2V0cyB0aGVpciBvd24gbmFtZXNwYWNlKSwgYW5k
IG9ubHkgZm9yIGlvY3RscyBkb25lIG9uIHRoYXQgY2hhcmRldi4KPiBBbmQgZm9yIG1tYXAgd2Ug
YXNzaWduIGZha2UgKGJ1dCB1bmlxdWUgYWNyb3NzIGFsbCBvcGVuIGZkIG9uIGl0KSBvZmZzZXRz
Cj4gd2l0aGluIHRoZSBvdmVyYWxsIGNoYXJkZXYuIEhlbmNlIGFsbCB0aGUgcGdvZmYgbWFuZ2xp
bmcgYW5kIHJlLW1hbmdsaW5nLgoKQXJlIHRoZXkgc3RpbGwgdW5pcXVlIHN0cnVjdCBmaWxlcz8g
SnVzdCB3aXRob3V0IGEgZmRubz8KIAo+IEhlbmNlIHdoeSB3ZSdkIGxpa2UgdG8gYmUgYWJsZSB0
byBmb3J3YXJkIGFsaWFzaW5nIG1hcHBpbmdzIGFuZCBhZGp1c3QgdGhlCj4gZmlsZSBhbmQgcGdv
ZmYsIHdoaWxlIGhvcGVmdWxseSBldmVyeXRoaW5nIGtlZXBzIHdvcmtpbmcuIEkgdGhvdWdodCB0
aGlzCj4gd291bGQgd29yaywgYnV0IENocmlzdGlhbiBub3RpY2VkIGl0IGRvZXNuJ3QgcmVhbGx5
LgoKSXQgc2VlbXMgcmVhc29uYWJsZSB0byBtZSB0aGF0IHRoZSBkbWEgYnVmIHNob3VsZCBiZSB0
aGUgb3duZXIgb2YgdGhlClZNQSwgb3RoZXJ3aXNlIGxpa2UgeW91IHNheSwgdGhlcmUgaXMgYSBi
aWcgbWVzcyBhdHRhY2hpbmcgdGhlIGN1c3RvbQp2bWEgb3BzIGFuZCB3aGF0IG5vdCB0byB0aGUg
cHJvcGVyIGRtYSBidWYuCgpJIGRvbid0IHNlZSBhbnl0aGluZyBvYnZpb3VzbHkgYWdhaW5zdCB0
aGlzIGluIG1tYXBfcmVnaW9uKCkgLSB3aHkgZGlkCkNocml0aWFuIG5vdGljZSBpdCBkb2Vzbid0
IHJlYWxseSB3b3JrPwoKSmFzb24KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK
