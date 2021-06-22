Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A46B3B08BB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Jun 2021 17:23:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9892F6451E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Jun 2021 15:23:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 328D763570; Tue, 22 Jun 2021 15:23:51 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 695C8610DB;
	Tue, 22 Jun 2021 15:23:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2455B60A90
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 15:23:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 19EA9610DB; Tue, 22 Jun 2021 15:23:47 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com
 [209.85.219.42])
 by lists.linaro.org (Postfix) with ESMTPS id 0FF5C60A90
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 15:23:45 +0000 (UTC)
Received: by mail-qv1-f42.google.com with SMTP id u2so2977786qvp.13
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 08:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=r42ocVEmWIA//O7Vp0R5aVeKrTj4f+CjM19TgcLu7yI=;
 b=JbYlgSzYmG1Fc66FYJM2c7uKHMNG0BKhfYRhDl/t4HfZIXCTkXkNOXDsHPqa4n2peB
 ysI6mqNNkHNeAKm8LsjMNdQE2b2zkO/XX6peVaIj0AMNhYUfmW34UNv99J2ObeyW/O4M
 AlP7HDwJNBY8OgpUgjTTorTmyLUlsVUZnNJdeZZN3fBd9t94MplJeK/FtWbF5wQXcwR5
 J/44W0pKR1bz4Y8dMUyaa9V35Pyl3Yzhscasz1N63ZBqjUGbU5HIxyMOZAlZZ1TDg33w
 laau+inbi3QaWeLqDwOYYzVVpGP9v4S02gOhgQLFCKQspXRAAzDLVW1nl9ri0zrdJ0n3
 86Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=r42ocVEmWIA//O7Vp0R5aVeKrTj4f+CjM19TgcLu7yI=;
 b=D4ZSNeo8VgSQoLJ//c4JMe/0ajWs4PXuU02E30CjLO91UuqrpSyMtUS6PXTx1FaQQN
 NNv9UIB8G60T2SgoBV9qexc0ULxI7JDMTHiyG1NFgLRxzaRCgfzauBIFCJ9o0aYVOfYM
 /S6QzvaKq8e7yRTufGbOe6RLvsnsfvBnte6PSR09ehS3iceVXS+Dp2m195+dD87WDNVm
 ljE5Xy6WGfaKHyXnIG0MnTFMKCdHMym6NlnyrWTWVuDlzoyZBKr0XY5FkpgMGlbq6Uux
 kSvbRXtDmpkE1qd4HyZ7ucyq3JPBXhTOeMg5DKgS1fFzYzMudiSCijZsxxnXisxrB44c
 IueQ==
X-Gm-Message-State: AOAM533hXcW8wPURHuTZc7IG2kSlBZW8jPimsLKS9jUvqF6RF99x1BUx
 gVZ1eKBqpoy4GiwgJMteAB8ozA==
X-Google-Smtp-Source: ABdhPJwYy9rg7mWFRLoue2Gvxh5Qw5S6GBldIL56hi68CLiY+GrTF6D8VqH249atgxPW27LFsL858w==
X-Received: by 2002:ad4:56e5:: with SMTP id cr5mr25603185qvb.7.1624375424489; 
 Tue, 22 Jun 2021 08:23:44 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-47-55-113-94.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [47.55.113.94])
 by smtp.gmail.com with ESMTPSA id z3sm13252730qkj.40.2021.06.22.08.23.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Jun 2021 08:23:44 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1lviFb-00ADEI-G0; Tue, 22 Jun 2021 12:23:43 -0300
Date: Tue, 22 Jun 2021 12:23:43 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20210622152343.GO1096940@ziepe.ca>
References: <20210621141217.GE1096940@ziepe.ca>
 <CAFCwf10KvCh0zfHEHqYR-Na6KJh4j+9i-6+==QaMdHHpLH1yEA@mail.gmail.com>
 <20210621175511.GI1096940@ziepe.ca>
 <CAKMK7uEO1_B59DtM7N2g7kkH7pYtLM_WAkn+0f3FU3ps=XEjZQ@mail.gmail.com>
 <CAFCwf11jOnewkbLuxUESswCJpyo7C0ovZj80UrnwUOZkPv2JYQ@mail.gmail.com>
 <20210621232912.GK1096940@ziepe.ca>
 <d358c740-fd3a-9ecd-7001-676e2cb44ec9@gmail.com>
 <CAFCwf11h_Nj_GEdCdeTzO5jgr-Y9em+W-v_pYUfz64i5Ac25yg@mail.gmail.com>
 <20210622120142.GL1096940@ziepe.ca>
 <d497b0a2-897e-adff-295c-cf0f4ff93cb4@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d497b0a2-897e-adff-295c-cf0f4ff93cb4@amd.com>
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

T24gVHVlLCBKdW4gMjIsIDIwMjEgYXQgMDI6MjM6MDNQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBBbSAyMi4wNi4yMSB1bSAxNDowMSBzY2hyaWViIEphc29uIEd1bnRob3JwZToK
PiA+IE9uIFR1ZSwgSnVuIDIyLCAyMDIxIGF0IDExOjQyOjI3QU0gKzAzMDAsIE9kZWQgR2FiYmF5
IHdyb3RlOgo+ID4gPiBPbiBUdWUsIEp1biAyMiwgMjAyMSBhdCA5OjM3IEFNIENocmlzdGlhbiBL
w7ZuaWcKPiA+ID4gPGNrb2VuaWcubGVpY2h0enVtZXJrZW5AZ21haWwuY29tPiB3cm90ZToKPiA+
ID4gPiBBbSAyMi4wNi4yMSB1bSAwMToyOSBzY2hyaWViIEphc29uIEd1bnRob3JwZToKPiA+ID4g
PiA+IE9uIE1vbiwgSnVuIDIxLCAyMDIxIGF0IDEwOjI0OjE2UE0gKzAzMDAsIE9kZWQgR2FiYmF5
IHdyb3RlOgo+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IEFub3RoZXIgdGhpbmcgSSB3YW50IHRvIGVt
cGhhc2l6ZSBpcyB0aGF0IHdlIGFyZSBkb2luZyBwMnAgb25seQo+ID4gPiA+ID4gPiB0aHJvdWdo
IHRoZSBleHBvcnQvaW1wb3J0IG9mIHRoZSBGRC4gV2UgZG8gKm5vdCogYWxsb3cgdGhlIHVzZXIg
dG8KPiA+ID4gPiA+ID4gbW1hcCB0aGUgZG1hLWJ1ZiBhcyB3ZSBkbyBub3Qgc3VwcG9ydCBkaXJl
Y3QgSU8uIFNvIHRoZXJlIGlzIG5vIGFjY2Vzcwo+ID4gPiA+ID4gPiB0byB0aGVzZSBwYWdlcyB0
aHJvdWdoIHRoZSB1c2Vyc3BhY2UuCj4gPiA+ID4gPiBBcmd1YWJseSBtbWFwaW5nIHRoZSBtZW1v
cnkgaXMgYSBiZXR0ZXIgY2hvaWNlLCBhbmQgaXMgdGhlIGRpcmVjdGlvbgo+ID4gPiA+ID4gdGhh
dCBMb2dhbidzIHNlcmllcyBnb2VzIGluLiBIZXJlIHRoZSB1c2Ugb2YgRE1BQlVGIHdhcyBzcGVj
aWZpY2FsbHkKPiA+ID4gPiA+IGRlc2lnbmVkIHRvIGFsbG93IGhpdGxlc3MgcmV2b2thdGlvbiBv
ZiB0aGUgbWVtb3J5LCB3aGljaCB0aGlzIGlzbid0Cj4gPiA+ID4gPiBldmVuIHVzaW5nLgo+ID4g
PiA+IFRoZSBtYWpvciBwcm9ibGVtIHdpdGggdGhpcyBhcHByb2FjaCBpcyB0aGF0IERNQS1idWYg
aXMgYWxzbyB1c2VkIGZvcgo+ID4gPiA+IG1lbW9yeSB3aGljaCBpc24ndCBDUFUgYWNjZXNzaWJs
ZS4KPiA+IFRoYXQgaXNuJ3QgYW4gaXNzdWUgaGVyZSBiZWNhdXNlIHRoZSBtZW1vcnkgaXMgb25s
eSBpbnRlbmRlZCB0byBiZQo+ID4gdXNlZCB3aXRoIFAyUCB0cmFuc2ZlcnMgc28gaXQgbXVzdCBi
ZSBDUFUgYWNjZXNzaWJsZS4KPiAKPiBObywgZXNwZWNpYWxseSBQMlAgaXMgb2Z0ZW4gZG9uZSBv
biBtZW1vcnkgcmVzb3VyY2VzIHdoaWNoIGFyZSBub3QgZXZlbgo+IHJlbW90ZWx5IENQVSBhY2Nl
c3NpYmxlLgoKVGhhdCBpcyBhIHNwZWNpYWwgQU1EIHRoaW5nLCBQMlAgaGVyZSBpcyBQQ0kgUDJQ
IGFuZCBhbGwgUENJIG1lbW9yeSBpcwpDUFUgYWNjZXNzaWJsZS4KCj4gPiA+ID4gPiBTbyB5b3Ug
YXJlIHRha2luZyB0aGUgaGl0IG9mIHZlcnkgbGltaXRlZCBoYXJkd2FyZSBzdXBwb3J0IGFuZCBy
ZWR1Y2VkCj4gPiA+ID4gPiBwZXJmb3JtYW5jZSBqdXN0IHRvIHNxdWVlemUgaW50byBETUFCVUYu
Lgo+ID4gWW91IHN0aWxsIGhhdmUgdGhlIGlzc3VlIHRoYXQgdGhpcyBwYXRjaCBpcyBkb2luZyBh
bGwgb2YgdGhpcyBQMlAKPiA+IHN0dWZmIHdyb25nIC0gZm9sbG93aW5nIHRoZSBhbHJlYWR5IE5B
SydkIEFNRCBhcHByb2FjaC4KPiAKPiBXZWxsIHRoYXQgc3R1ZmYgd2FzIE5BS2VkIGJlY2F1c2Ug
d2Ugc3RpbGwgdXNlIHNnX3RhYmxlcywgbm90IGJlY2F1c2Ugd2UKPiBkb24ndCB3YW50IHRvIGFs
bG9jYXRlIHN0cnVjdCBwYWdlcy4KCnNnIGxpc3RzIGluIGdlbmVyYWwuCiAKPiBUaGUgcGxhbiBp
cyB0byBwdXNoIHRoaXMgZm9yd2FyZCBzaW5jZSBERVZJQ0VfUFJJVkFURSBjbGVhcmx5IGNhbid0
IGhhbmRsZQo+IGFsbCBvZiBvdXIgdXNlIGNhc2VzIGFuZCBpcyBub3QgcmVhbGx5IGEgZ29vZCBm
aXQgdG8gYmUgaG9uZXN0Lgo+IAo+IElPTU1VIGlzIG5vdyB3b3JraW5nIGFzIHdlbGwsIHNvIGFz
IGZhciBhcyBJIGNhbiBzZWUgd2UgYXJlIGFsbCBnb29kIGhlcmUuCgpIb3c/IElzIHRoYXQgbW9y
ZSBBTUQgc3BlY2lhbCBzdHVmZj8KClRoaXMgcGF0Y2ggc2VyaWVzIG5ldmVyIGNhbGxzIHRvIHRo
ZSBpb21tdSBkcml2ZXIsIEFGQUlDVC4KCj4gPiA+IEknbGwgZ28gYW5kIHJlYWQgTG9nYW4ncyBw
YXRjaC1zZXQgdG8gc2VlIGlmIHRoYXQgd2lsbCB3b3JrIGZvciB1cyBpbgo+ID4gPiB0aGUgZnV0
dXJlLiBQbGVhc2UgcmVtZW1iZXIsIGFzIERhbmllbCBzYWlkLCB3ZSBkb24ndCBoYXZlIHN0cnVj
dCBwYWdlCj4gPiA+IGJhY2tpbmcgb3VyIGRldmljZSBtZW1vcnksIHNvIGlmIHRoYXQgaXMgYSBy
ZXF1aXJlbWVudCB0byBjb25uZWN0IHRvCj4gPiA+IExvZ2FuJ3Mgd29yaywgdGhlbiBJIGRvbid0
IHRoaW5rIHdlIHdpbGwgd2FudCB0byBkbyBpdCBhdCB0aGlzIHBvaW50Lgo+ID4gSXQgaXMgdHJp
dmlhbCB0byBnZXQgdGhlIHN0cnVjdCBwYWdlIGZvciBhIFBDSSBCQVIuCj4gCj4gWWVhaCwgYnV0
IGl0IGRvZXNuJ3QgbWFrZSBtdWNoIHNlbnNlLiBXaHkgc2hvdWxkIHdlIGNyZWF0ZSBhIHN0cnVj
dCBwYWdlIGZvcgo+IHNvbWV0aGluZyB0aGF0IGlzbid0IGV2ZW4gbWVtb3J5IGluIGEgbG90IG9m
IGNhc2VzPwoKQmVjYXVzZSB0aGUgaW9tbXUgYW5kIG90aGVyIHBsYWNlcyBuZWVkIHRoaXMgaGFu
ZGxlIHRvIHNldHVwIHRoZWlyCnN0dWZmLiBOb2JvZHkgaGFzIHlldCBiZWVuIGJyYXZlIGVub3Vn
aCB0byB0cnkgdG8gY2hhbmdlIHRob3NlIGZsb3dzCnRvIGJlIGFibGUgdG8gdXNlIGEgcGh5c2lj
YWwgQ1BVIGFkZHJlc3MuCgpUaGlzIGlzIHdoeSB3ZSBoYXZlIGEgc3BlY2lhbCBzdHJ1Y3QgcGFn
ZSB0eXBlIGp1c3QgZm9yIFBDSSBCQVIKbWVtb3J5LgoKSmFzb24KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
