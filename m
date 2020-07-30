Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4002484F6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 14:43:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3F8D865FD7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 12:43:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0EF7E6601F; Tue, 18 Aug 2020 12:43:04 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C404E66609;
	Tue, 18 Aug 2020 12:32:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 67ACD609C5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Jul 2020 12:17:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4C63B66070; Thu, 30 Jul 2020 12:17:54 +0000 (UTC)
Received: from ste-pvt-msa2.bahnhof.se (ste-pvt-msa2.bahnhof.se
 [213.80.101.71])
 by lists.linaro.org (Postfix) with ESMTPS id 204DB609C5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Jul 2020 12:17:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTP id 1E9933FA20;
 Thu, 30 Jul 2020 14:17:50 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
Received: from ste-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (ste-ftg-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nBo2n-c5eens; Thu, 30 Jul 2020 14:17:49 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id ABF163FA05;
 Thu, 30 Jul 2020 14:17:45 +0200 (CEST)
Received: from localhost.localdomain (jfdmzpr03-ext.jf.intel.com
 [134.134.139.72])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 047E2361FE2;
 Thu, 30 Jul 2020 14:17:39 +0200 (CEST)
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20200728135839.1035515-1-daniel.vetter@ffwll.ch>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <38cbc4fb-3a88-47c4-2d6c-4d90f9be42e7@shipmail.org>
Date: Thu, 30 Jul 2020 14:17:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200728135839.1035515-1-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Tue, 18 Aug 2020 12:32:33 +0000
Cc: linux-xfs@vger.kernel.org, linux-rdma@vger.kernel.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Dave Chinner <david@fromorbit.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org,
 Jason Gunthorpe <jgg@mellanox.com>, Qian Cai <cai@lca.pw>,
 linux-fsdevel@vger.kernel.org, Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] dma-resv: lockdep-prime
 address_space->i_mmap_rwsem for dma-resv
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Ck9uIDcvMjgvMjAgMzo1OCBQTSwgRGFuaWVsIFZldHRlciB3cm90ZToKPiBHUFUgZHJpdmVycyBu
ZWVkIHRoaXMgaW4gdGhlaXIgc2hyaW5rZXJzLCB0byBiZSBhYmxlIHRvIHRocm93IG91dAo+IG1t
YXAnZWQgYnVmZmVycy4gTm90ZSB0aGF0IHdlIGFsc28gbmVlZCBkbWFfcmVzdl9sb2NrIGluIHNo
cmlua2VycywKPiBidXQgdGhhdCBsb29wIGlzIHJlc29sdmVkIGJ5IHRyeWxvY2tpbmcgaW4gc2hy
aW5rZXJzLgo+Cj4gU28gZnVsbCBoaWVyYXJjaHkgaXMgbm93IChpZ25vcmUgc29tZSBvZiB0aGUg
b3RoZXIgYnJhbmNoZXMgd2UgYWxyZWFkeQo+IGhhdmUgcHJpbWVkKToKPgo+IG1tYXBfcmVhZF9s
b2NrIC0+IGRtYV9yZXN2IC0+IHNocmlua2VycyAtPiBpX21tYXBfbG9ja193cml0ZQo+Cj4gSSBo
b3BlIHRoYXQncyBub3QgaW5jb25zaXN0ZW50IHdpdGggYW55dGhpbmcgbW0gb3IgZnMgZG9lcywg
YWRkaW5nCj4gcmVsZXZhbnQgcGVvcGxlLgo+Ckxvb2tzIE9LIHRvIG1lLiBUaGUgbWFwcGluZ19k
aXJ0eV9oZWxwZXJzIHJ1biB1bmRlciB0aGUgaV9tbWFwX2xvY2ssIGJ1dCAKZG9uJ3QgYWxsb2Nh
dGUgYW55IG1lbW9yeSBBRkFJQ1QuCgpTaW5jZSBodWdlIHBhZ2UtdGFibGUtZW50cnkgc3BsaXR0
aW5nIG1heSBoYXBwZW4gdW5kZXIgdGhlIGlfbW1hcF9sb2NrIApmcm9tIHVubWFwX21hcHBpbmdf
cmFuZ2UoKSBpdCBtaWdodCBiZSB3b3J0aCBmaWd1cmluZyBvdXQgaG93IG5ldyBwYWdlIApkaXJl
Y3RvcnkgcGFnZXMgYXJlIGFsbG9jYXRlZCwgdGhvdWdoLgoKL1Rob21hcwoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5h
cm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
