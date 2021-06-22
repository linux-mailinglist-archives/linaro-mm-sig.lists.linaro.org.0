Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 854FC3B0907
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Jun 2021 17:28:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3B53A63503
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Jun 2021 15:28:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 165C463527; Tue, 22 Jun 2021 15:28:35 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E28A0610DB;
	Tue, 22 Jun 2021 15:28:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 64F2460A90
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 15:28:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 57729610DB; Tue, 22 Jun 2021 15:28:31 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 by lists.linaro.org (Postfix) with ESMTPS id 4E7E060A90
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 15:28:29 +0000 (UTC)
Received: by mail-qt1-f181.google.com with SMTP id w26so11014865qto.13
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 08:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=gSIT2aB7rHsSORmJBVTerFLvPUzJvuTh9nq+ipo1OW4=;
 b=jMJSjWzPfPzqnKB8B3d0txI+f1QCXRwofrHYktBL6Dp/RhK8mDhbKSZcIAeOroGN79
 9QKZyuK/IHnSXDzJVZS3X6lKP7w6E8KyRCjjniSQVc0jCI0AkxFDLwDCLmcInmPgiCnf
 jgWG0hhVMC1nVN8HteDjeVRfh514OJrhlEcH2R925fh0DHPJTQOuXuBlI4DUwVhGyPRl
 DthIYUE4NB1fnKp7n1suCV8ABft4OFetd4l8JY9SJSPUN6ozC3ygwCBUw+HE0mNeNlWt
 b8N9Y1O7r/s/b3RUVZtkPQ9u0U0mfuUS0aqx+/yNM9XPrMJnox3nrIaQn6+gPefKB6rN
 j1AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=gSIT2aB7rHsSORmJBVTerFLvPUzJvuTh9nq+ipo1OW4=;
 b=ZxKw64T+uNO6Y3t7Ay1lH6veWmcO6VR2bV95WyXFd4OIptBBE894/8D5eD5VrkpDsm
 vFn3x6wosMIlpMFAJ7JiNzNYL9CART7fKUs1IzNh7hpTd8w5Yh0fE270XWYvORM+QVfX
 Fespy3CiitnPNYobEXXP+o55spS+ksyTD3cA4XurrsEs+b19Tywp7mHLJ3YpKNs1dM5f
 0Iqh1zD089EtWDMxP4FIoxe5AT4htUPbObSNW0DdGfFb925RXSBmTDD0oRAu/SpneQTk
 bg9MYe4rafihO5Tohbk5Shu8leqShiSLBzqDmP1aXv274CsWffpEGRM/q/UWI5AKMrB0
 3NaQ==
X-Gm-Message-State: AOAM530+S1Fr5/jYrJt3O2fWvgD4Yp4dz0ILJwy9FcBMPwpnCLqcnEVJ
 lkWjLuetYamoYr1MN2p1SkNjuA==
X-Google-Smtp-Source: ABdhPJwvGxEjOXxCirTSFPJmIHH9j6VoDmK24La5Ry2f+RuAq8/L4z8p3qLfsHgu2FnFM9CaTb3hKA==
X-Received: by 2002:ac8:5ad5:: with SMTP id d21mr3797369qtd.166.1624375708968; 
 Tue, 22 Jun 2021 08:28:28 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-47-55-113-94.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [47.55.113.94])
 by smtp.gmail.com with ESMTPSA id f19sm13636743qkg.70.2021.06.22.08.28.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Jun 2021 08:28:28 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1lviKC-00ADKO-08; Tue, 22 Jun 2021 12:28:28 -0300
Date: Tue, 22 Jun 2021 12:28:27 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20210622152827.GQ1096940@ziepe.ca>
References: <CAFCwf11jOnewkbLuxUESswCJpyo7C0ovZj80UrnwUOZkPv2JYQ@mail.gmail.com>
 <20210621232912.GK1096940@ziepe.ca>
 <d358c740-fd3a-9ecd-7001-676e2cb44ec9@gmail.com>
 <CAFCwf11h_Nj_GEdCdeTzO5jgr-Y9em+W-v_pYUfz64i5Ac25yg@mail.gmail.com>
 <20210622120142.GL1096940@ziepe.ca>
 <CAFCwf10GmBjeJAFp0uJsMLiv-8HWAR==RqV9ZdMQz+iW9XWdTA@mail.gmail.com>
 <20210622121546.GN1096940@ziepe.ca>
 <CAFCwf13BuS+U3Pko_62hFPuvZPG26HQXuu-cxPmcADNPO22g9g@mail.gmail.com>
 <20210622151142.GA2431880@ziepe.ca>
 <4a37216d-7c4c-081e-3325-82466f30b6eb@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4a37216d-7c4c-081e-3325-82466f30b6eb@amd.com>
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

T24gVHVlLCBKdW4gMjIsIDIwMjEgYXQgMDU6MjQ6MDhQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKCj4gPiA+IEkgd2lsbCB0YWtlIHR3byBHQVVESSBkZXZpY2VzIGFuZCB1c2Ugb25l
IGFzIGFuIGV4cG9ydGVyIGFuZCBvbmUgYXMgYW4KPiA+ID4gaW1wb3J0ZXIuIEkgd2FudCB0byBz
ZWUgdGhhdCB0aGUgc29sdXRpb24gd29ya3MgZW5kLXRvLWVuZCwgd2l0aCByZWFsCj4gPiA+IGRl
dmljZSBETUEgZnJvbSBpbXBvcnRlciB0byBleHBvcnRlci4KPiA+IEkgY2FuIHRlbGwgeW91IGl0
IGRvZXNuJ3QuIFN0dWZmaW5nIHBoeXNpY2FsIGFkZHJlc3NlcyBkaXJlY3RseSBpbnRvCj4gPiB0
aGUgc2cgbGlzdCBkb2Vzbid0IGludm9sdmUgYW55IG9mIHRoZSBJT01NVSBjb2RlIHNvIGFueSBj
b25maWd1cmF0aW9uCj4gPiB0aGF0IHJlcXVpcmVzIElPTU1VIHBhZ2UgdGFibGUgc2V0dXAgd2ls
bCBub3Qgd29yay4KPiAKPiBTdXJlIGl0IGRvZXMuIFNlZSBhbWRncHVfdnJhbV9tZ3JfYWxsb2Nf
c2d0Ogo+IAo+ICAgICAgICAgYW1kZ3B1X3Jlc19maXJzdChyZXMsIG9mZnNldCwgbGVuZ3RoLCAm
Y3Vyc29yKTsKICAgICAgICAgXl5eXl5eXl5eXgoKSSdtIG5vdCB0YWxraW5nIGFib3V0IHRoZSBB
TUQgZHJpdmVyLCBJJ20gdGFsa2luZyBhYm91dCB0aGlzIHBhdGNoLgoKKwkJYmFyX2FkZHJlc3Mg
PSBoZGV2LT5kcmFtX3BjaV9iYXJfc3RhcnQgKworCQkJCShwYWdlc1tjdXJfcGFnZV0gLSBwcm9w
LT5kcmFtX2Jhc2VfYWRkcmVzcyk7CisJCXNnX2RtYV9hZGRyZXNzKHNnKSA9IGJhcl9hZGRyZXNz
OwoKSmFzb24KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
Cmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
