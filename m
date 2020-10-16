Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCE5290976
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 Oct 2020 18:14:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E986E6600D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 Oct 2020 16:14:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D837466524; Fri, 16 Oct 2020 16:14:21 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B412D66519;
	Fri, 16 Oct 2020 16:13:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B2E1B664F0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Oct 2020 16:13:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9ECD266519; Fri, 16 Oct 2020 16:13:50 +0000 (UTC)
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by lists.linaro.org (Postfix) with ESMTPS id 37CE166525
 for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Oct 2020 16:13:23 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id r4so4576424ioh.0
 for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Oct 2020 09:13:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=SzfzkDBitQIi0dWl8hQ69VYetsUqJh1EpiO/PjfBVJ4=;
 b=G7qQCFNaOAXsMWuRdr+gyb0sFlLYD5fOMSvcmoKYo2NXBfSWdC9pSEUUdr/Y0CV60J
 v2hO1lD6SPOSa1HPL+4o7EAeihWzYaOSKqJjaXLZBq5Jzjl3y/l1iLHmnfb5Y3VsByCv
 4pGh7au8ija6VrfBudw0AzRNoh5rmeFNV7AgPKf5/Z9EWQAlC4MoDz7dfjJY+g9k/f9R
 kAC8daUeGlwdWfYG0FQAmmSn6ujJeOBduk2K1Y0NqiGeVZvfd7p0DXFcIZTumnb1JzLw
 LlFLGvBynI+SG6fAe2gRmi7PwdnXDYIJFfg2so4ZHm/STLpFqgeQedAnYj/Yp3uDAes+
 4WqQ==
X-Gm-Message-State: AOAM531VWB3wY/gphjMJoRM1bOwN6+gyha/87PALKpyMKEq5C7SzL4sE
 Wf2QmgsXKC1H7dxwkFj7GfTvQQ==
X-Google-Smtp-Source: ABdhPJzTc2rLvv4IerCZW/tHbEy8NKIi/ATblrGysyjzLvEYe0ppftMeHbv9aVUT0VxOy6SpaKvMQQ==
X-Received: by 2002:a02:b80f:: with SMTP id o15mr3153369jam.103.1602864802734; 
 Fri, 16 Oct 2020 09:13:22 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-48-30.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.48.30])
 by smtp.gmail.com with ESMTPSA id g17sm2378255ilq.15.2020.10.16.09.13.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Oct 2020 09:13:22 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1kTSM5-000edC-4i; Fri, 16 Oct 2020 13:13:21 -0300
Date: Fri, 16 Oct 2020 13:13:21 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <20201016161321.GF36674@ziepe.ca>
References: <20201012085203.56119-1-christian.koenig@amd.com>
 <20201012085203.56119-2-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201012085203.56119-2-christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linmiaohe@huawei.com, jhubbard@nvidia.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-mm@kvack.org, willy@infradead.org, daniel@ffwll.ch, airlied@redhat.com,
 akpm@linux-foundation.org, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 2/2] mm: introduce vma_set_file function
	v4
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

T24gTW9uLCBPY3QgMTIsIDIwMjAgYXQgMTA6NTI6MDNBTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBBZGQgdGhlIG5ldyB2bWFfc2V0X2ZpbGUoKSBmdW5jdGlvbiB0byBhbGxvdyBj
aGFuZ2luZwo+IHZtYS0+dm1fZmlsZSB3aXRoIHRoZSBuZWNlc3NhcnkgcmVmY291bnQgZGFuY2Uu
Cj4gCj4gdjI6IGFkZCBtb3JlIHVzZXJzIG9mIHRoaXMuCj4gdjM6IGFkZCBtaXNzaW5nIEVYUE9S
VF9TWU1CT0wsIHJlYmFzZSBvbiBtbWFwIGNsZWFudXAsCj4gICAgIGFkZCBjb21tZW50cyB3aHkg
d2UgZHJvcCB0aGUgcmVmZXJlbmNlIG9uIHR3byBvY2Nhc2lvbnMuCj4gdjQ6IG1ha2UgaXQgY2xl
YXIgdGhhdCBjaGFuZ2luZyBhbiBhbm9ueW1vdXMgdm1hIGlzIGlsbGVnYWwuCj4gCj4gU2lnbmVk
LW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IFJl
dmlld2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPiAodjIpCj4g
LS0tCj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgICAgICAgICAgICAgICAgICB8ICAzICst
LQo+ICBkcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbS5jICAgICAgfCAgNCArLS0t
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYyB8ICAzICstLQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jICAgfCAgNSArKystLQo+
ICBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYyAgICAgICAgICAgICAgfCAgNCArLS0tCj4g
IGRyaXZlcnMvZ3B1L2RybS9vbWFwZHJtL29tYXBfZ2VtLmMgICAgICAgICB8ICAzICstLQo+ICBk
cml2ZXJzL2dwdS9kcm0vdmdlbS92Z2VtX2Rydi5jICAgICAgICAgICAgfCAgMyArLS0KPiAgZHJp
dmVycy9zdGFnaW5nL2FuZHJvaWQvYXNobWVtLmMgICAgICAgICAgIHwgIDYgKysrLS0tCj4gIGlu
Y2x1ZGUvbGludXgvbW0uaCAgICAgICAgICAgICAgICAgICAgICAgICB8ICAyICsrCj4gIG1tL21t
YXAuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDEyICsrKysrKysrKysrKwo+
ICAxMCBmaWxlcyBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspLCAxOSBkZWxldGlvbnMoLSkKClJl
dmlld2VkLWJ5OiBKYXNvbiBHdW50aG9ycGUgPGpnZ0BudmlkaWEuY29tPgoKSmFzb24KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMu
bGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
