Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0155047A710
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Dec 2021 10:31:43 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3CE4761060
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Dec 2021 09:31:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2151C61018; Mon, 20 Dec 2021 09:31:38 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DCCB460FA4;
	Mon, 20 Dec 2021 09:31:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7B19660FA4
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Dec 2021 09:31:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6BE5060498; Mon, 20 Dec 2021 09:31:33 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by lists.linaro.org (Postfix) with ESMTPS id 506E660498
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Dec 2021 09:31:31 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id a9so18700885wrr.8
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Dec 2021 01:31:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=Htm2M/1UPb5WYk7y28mkq1tTi0RGZ2Jp48YbGwwH0kA=;
 b=ZF/MduX4/4cT+oBmR4T+v8wQ+QDwsxOJuqK9/wRsJS6zcgT2AKpV/tkvOsOZ5L5v6m
 6lR2L48gW5VYExLPAmgVcEuReMeF3qKNn0fEl4cDu9N7mwYe03+7XG7yhhRMXGiShQAG
 VuATgjbbmIZ4i7mM+4AGwwVET8Ejjexw+StR8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=Htm2M/1UPb5WYk7y28mkq1tTi0RGZ2Jp48YbGwwH0kA=;
 b=4WRsS2+ra7G+KVIzAhTQP2Cle9Ek0pBFws84nTBYmZdPtU8E7/IPYUy5Qi+ghrBZVn
 RTZy6bEGLYjLgWE2GDf2TwLBbTHUATlu8LuYyP8pCYt1YEVdBRYaXcCdX+dAvqscjmkC
 m0DQsrhyg3JKJ7pKGo8NCRaZZQxvlop6P6jGPNT+uWZ4wn+SLgfdZMZ01L2NnJuVbih8
 fEChHODy+SUzi0b8FLuk9TJ+CInwhjxKiUQHxElvvlf1y1dy+jBdaoi5Fr6vrv1n5CB0
 f2YV/D1o4a28lzGWtk8JIqPbeJtCWxRcwWLqKXaEWJGzP6+LyvYnQJ+WbIyE78NT9/Km
 xYqw==
X-Gm-Message-State: AOAM5324EAEtQXPtU2xCJ+h7QtjVOg+aN2GxsaH8CZWXrtFkbOih6umQ
 sxnU5Bl7VNdsuAAsnmT/YzJoBQ==
X-Google-Smtp-Source: ABdhPJzIKEWyHUlLuEcrr0JV7s9D8oMvc34Me/oLD7Mq3UMFLkvWeDwegpHqyN1hAZyC9N8Yil8rXg==
X-Received: by 2002:a05:6000:148:: with SMTP id
 r8mr11746823wrx.333.1639992690397; 
 Mon, 20 Dec 2021 01:31:30 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id r17sm15109035wmq.11.2021.12.20.01.31.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Dec 2021 01:31:29 -0800 (PST)
Date: Mon, 20 Dec 2021 10:31:27 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <YcBNbypJT3UJ0RG6@phenom.ffwll.local>
Mail-Followup-To: Jason Gunthorpe <jgg@ziepe.ca>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Shunsuke Mie <mie@igel.co.jp>, Zhu Yanjun <zyjzyj2000@gmail.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Doug Ledford <dledford@redhat.com>,
 Jianxin Xiong <jianxin.xiong@intel.com>,
 Leon Romanovsky <leon@kernel.org>, Maor Gottlieb <maorg@nvidia.com>,
 Sean Hefty <sean.hefty@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-rdma <linux-rdma@vger.kernel.org>,
 Damian Hobson-Garcia <dhobsong@igel.co.jp>,
 Takanari Hayama <taki@igel.co.jp>, Tomohito Esaki <etom@igel.co.jp>
References: <20211122110817.33319-1-mie@igel.co.jp>
 <CANXvt5oB8_2sDGccSiTMqeLYGi3Vuo-6NnHJ9PGgZZMv=fnUVw@mail.gmail.com>
 <20211207171447.GA6467@ziepe.ca>
 <CANXvt5rCayOcengPr7Z_aFmJaXwWj9VcWZbaHnuHj6=2CkPndA@mail.gmail.com>
 <20211210124204.GG6467@ziepe.ca>
 <880e25ad-4fe9-eacd-a971-993eaea37fc4@amd.com>
 <20211210132656.GH6467@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211210132656.GH6467@ziepe.ca>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC PATCH v4 0/2] RDMA/rxe: Add dma-buf support
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
Cc: Damian Hobson-Garcia <dhobsong@igel.co.jp>,
 Takanari Hayama <taki@igel.co.jp>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma <linux-rdma@vger.kernel.org>, Tomohito Esaki <etom@igel.co.jp>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Doug Ledford <dledford@redhat.com>, Zhu Yanjun <zyjzyj2000@gmail.com>,
 Shunsuke Mie <mie@igel.co.jp>, Alex Deucher <alexander.deucher@amd.com>,
 Sean Hefty <sean.hefty@intel.com>, Maor Gottlieb <maorg@nvidia.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Jianxin Xiong <jianxin.xiong@intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gRnJpLCBEZWMgMTAsIDIwMjEgYXQgMDk6MjY6NTZBTSAtMDQwMCwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOgo+IE9uIEZyaSwgRGVjIDEwLCAyMDIxIGF0IDAxOjQ3OjM3UE0gKzAxMDAsIENocmlz
dGlhbiBLw7ZuaWcgd3JvdGU6Cj4gPiBBbSAxMC4xMi4yMSB1bSAxMzo0MiBzY2hyaWViIEphc29u
IEd1bnRob3JwZToKPiA+ID4gT24gRnJpLCBEZWMgMTAsIDIwMjEgYXQgMDg6Mjk6MjRQTSArMDkw
MCwgU2h1bnN1a2UgTWllIHdyb3RlOgo+ID4gPiA+IEhpIEphc29uLAo+ID4gPiA+IFRoYW5rIHlv
dSBmb3IgcmVwbHlpbmcuCj4gPiA+ID4gCj4gPiA+ID4gMjAyMeW5tDEy5pyIOOaXpSjmsLQpIDI6
MTQgSmFzb24gR3VudGhvcnBlIDxqZ2dAemllcGUuY2E+Ogo+ID4gPiA+ID4gT24gRnJpLCBEZWMg
MDMsIDIwMjEgYXQgMTI6NTE6NDRQTSArMDkwMCwgU2h1bnN1a2UgTWllIHdyb3RlOgo+ID4gPiA+
ID4gPiBIaSBtYWludGFpbmVycywKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IENvdWxkIHlvdSBw
bGVhc2UgcmV2aWV3IHRoaXMgcGF0Y2ggc2VyaWVzPwo+ID4gPiA+ID4gV2h5IGlzIGl0IFJGQz8K
PiA+ID4gPiA+IAo+ID4gPiA+ID4gSSdtIGNvbmZ1c2VkIHdoeSB0aGlzIGlzIHVzZWZ1bD8KPiA+
ID4gPiA+IAo+ID4gPiA+ID4gVGhpcyBjYW4ndCBkbyBjb3B5IGZyb20gTU1JTyBtZW1vcnksIHNv
IGl0IHNob3VsZG4ndCBiZSBjb21wYXRpYmxlCj4gPiA+ID4gPiB3aXRoIHRoaW5ncyBsaWtlIEdh
dWRpIC0gZG9lcyBzb21ldGhpbmcgcHJldmVudCB0aGlzPwo+ID4gPiA+IEkgdGhpbmsgaWYgYW4g
ZXhwb3J0IG9mIHRoZSBkbWEtYnVmIHN1cHBvcnRzIHZtYXAsIENQVSBpcyBhYmxlIHRvIGFjY2Vz
cyB0aGUKPiA+ID4gPiBtbWlvIG1lbW9yeS4KPiA+ID4gPiAKPiA+ID4gPiBJcyBpdCB3cm9uZz8g
SWYgdGhpcyBpcyB3cm9uZywgdGhlcmUgaXMgbm8gYWR2YW50YWdlcyB0aGlzIGNoYW5nZXMuLgo+
ID4gPiBJIGRvbid0IGtub3cgd2hhdCB0aGUgZG1hYnVmIGZvbGtzIGRpZCwgYnV0IHllcywgaXQg
aXMgd3JvbmcuCj4gPiA+IAo+ID4gPiBJT01FTSBtdXN0IGJlIHRvdWNoZWQgdXNpbmcgb25seSBz
cGVjaWFsIGFjY2Vzc29ycywgc29tZSBwbGF0Zm9ybXMKPiA+ID4gY3Jhc2ggaWYgeW91IGRvbid0
IGRvIHRoaXMuIEV2ZW4geDg2IHdpbGwgY3Jhc2ggaWYgeW91IHRvdWNoIGl0IHdpdGgKPiA+ID4g
c29tZXRoaW5nIGxpa2UgYW4gWE1NIG9wdGltaXplZCBtZW1jcHkuCj4gPiA+IAo+ID4gPiBDaHJp
c3RpYW4/IElmIHRoZSB2bWFwIHN1Y2NlZWRzIHdoYXQgcnVsZXMgbXVzdCB0aGUgY2FsbGVyIHVz
ZSB0bwo+ID4gPiBhY2Nlc3MgdGhlIG1lbW9yeT8KPiA+IAo+ID4gU2VlIGRtYS1idWYtbWFwLmgg
YW5kIGVzcGVjaWFsbHkgc3RydWN0IGRtYV9idWZfbWFwLgo+ID4gCj4gPiBNTUlPIG1lbW9yeSBp
cyBwZXJmZWN0bHkgc3VwcG9ydGVkIGhlcmUgYW5kIGFjdHVhbGx5IHRoZSBtb3N0IGNvbW1vbiBj
YXNlLgo+IAo+IE9rYXkgdGhhdCBsb29rcyBzYW5lLCBidXQgdGhpcyByeGUgUkZDIHNlZW1zIHRv
IGlnbm9yZSB0aGlzCj4gY29tcGxldGVseS4gSXQgc3R1ZmZzIHRoZSB2YWRkciBkaXJlY3RseSBp
bnRvIGEgdW1lbSB3aGljaCBnb2VzIHRvIGFsbAo+IG1hbm5lciBvZiBwbGFjZXMgaW4gdGhlIGRy
aXZlci4KPiAKPiA/PwoKZG1hX2J1Zl9tYXAgaXMgZmFpcmx5IG5ldyBhbmQgd2UgaGF2ZW4ndCBy
b2xsZWQgaXQgb3V0IGNvbnNpc3RlbnRseSB5ZXQuCkluIHRoZSBwYXN0IDEwIHllYXJzIHdlIHNp
bXBseSB5b2xvJ2QgdGhpcyA6LSkKCkp1c3QgYW4gZXhwbGFuYXRpb24sIG5vdCBhbiBleGN1c2Ug
Zm9yIG5ldyBjb2RlIHRvIG5vdCB1c2UgZG1hX2J1Zl9tYXAKY29uc2lzdGVudGx5IG5vdyB0aGF0
IHdlIGZpeGVkIHRoaXMgbWlzdGFrZS4KLURhbmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2Fy
ZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMu
bGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
