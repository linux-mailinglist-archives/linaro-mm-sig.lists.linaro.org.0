Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 95DA9470197
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Dec 2021 14:27:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2A9E561F0D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Dec 2021 13:27:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 13EF361EF7; Fri, 10 Dec 2021 13:27:04 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E84E860B6E;
	Fri, 10 Dec 2021 13:27:01 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9DAB2604ED
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Dec 2021 13:27:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9B05060B6E; Fri, 10 Dec 2021 13:27:00 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 by lists.linaro.org (Postfix) with ESMTPS id 938EA604ED
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Dec 2021 13:26:58 +0000 (UTC)
Received: by mail-qt1-f181.google.com with SMTP id m25so8281704qtq.13
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Dec 2021 05:26:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=1UYh94T9ayr7ysirWpvvFTZZFGzB6tr1mHpOwSD9y4s=;
 b=FiKJemIB2KPeLKoECRE6rGJYjv4hRdstnEroyo0FScAIfTVyX59gJElxLx877NPlYm
 PGFbBVh/8q1JC5yRjmmgvx1Jt6jcMl+SMzAeQH2jJMkiI4bpIezFCcHWm+e1EM2XxMpj
 IIokm8OzQ5UbI829syl2gTig/MQZVxTID2rB8nfDlNldoliEX7y0vsjjaQJKFBteILVF
 ZDK1LwZ0Cn1Ypt35t4Ws+HSeYRO/7hXvBT+B9OJLnzfVm6VCPDMWlXuWkmMtUnvX1sZv
 GABTFazWX6FxJ6piDOVari9DDuQ3CZ2xhygcHSLkRVSrej53bH/eYlLl3MnXhG2tLjxo
 1yCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=1UYh94T9ayr7ysirWpvvFTZZFGzB6tr1mHpOwSD9y4s=;
 b=7LcGW766rtGgrKAVJakU6WpaO78EYRakelXI3ITLc3FWNy5RbnclkPLI1MhDbBUREP
 ond9XLvipgvlRsI30/zqCpFzx77F2D7kziZhg9/XnbzPiKqGxMM8VNeFinm6Yd1wJvqo
 Oe4aIXFK0xSO0ujKH1mQF7ew/Sm76FhbtRfgh8hNYnA+qzPijtMCrRzV5CkbJIgWV58M
 Ep8iCc7+OEbBs3i7LZMj4c6K9WtXKOxaFo+mZg9yBnRGVsGLaz/joLjGLXHA90ImVWXs
 IzcFaNb5Ck9pcHGzNlg+UavEolBxKzDFWfJstN4eEuvSRR5XOypRzo4m6lcoVZ7ndhTJ
 JYBQ==
X-Gm-Message-State: AOAM533h6pG5/CdSk8N89u+38UMCN3JHXZZAPlb5KYgMUKCM6iCcLhUt
 PLxSzIb3a2qZwIIcXxTyPPwPzDCXtefDYA==
X-Google-Smtp-Source: ABdhPJxbYEz5peMcGtph84C4nZca8EtKaKkJc+FDRjPqXZgIuFlQNdM0TU3m9QWUAhZY7R/hSUo/KQ==
X-Received: by 2002:ac8:5a53:: with SMTP id o19mr27107538qta.4.1639142818227; 
 Fri, 10 Dec 2021 05:26:58 -0800 (PST)
Received: from ziepe.ca ([206.223.160.26])
 by smtp.gmail.com with ESMTPSA id t15sm2031405qta.45.2021.12.10.05.26.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Dec 2021 05:26:57 -0800 (PST)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1mvfvM-001fZP-B4; Fri, 10 Dec 2021 09:26:56 -0400
Date: Fri, 10 Dec 2021 09:26:56 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20211210132656.GH6467@ziepe.ca>
References: <20211122110817.33319-1-mie@igel.co.jp>
 <CANXvt5oB8_2sDGccSiTMqeLYGi3Vuo-6NnHJ9PGgZZMv=fnUVw@mail.gmail.com>
 <20211207171447.GA6467@ziepe.ca>
 <CANXvt5rCayOcengPr7Z_aFmJaXwWj9VcWZbaHnuHj6=2CkPndA@mail.gmail.com>
 <20211210124204.GG6467@ziepe.ca>
 <880e25ad-4fe9-eacd-a971-993eaea37fc4@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <880e25ad-4fe9-eacd-a971-993eaea37fc4@amd.com>
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
 linux-rdma <linux-rdma@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, Tomohito Esaki <etom@igel.co.jp>,
 linaro-mm-sig@lists.linaro.org, Doug Ledford <dledford@redhat.com>,
 Zhu Yanjun <zyjzyj2000@gmail.com>, Shunsuke Mie <mie@igel.co.jp>,
 Alex Deucher <alexander.deucher@amd.com>, Sean Hefty <sean.hefty@intel.com>,
 Maor Gottlieb <maorg@nvidia.com>, Jianxin Xiong <jianxin.xiong@intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gRnJpLCBEZWMgMTAsIDIwMjEgYXQgMDE6NDc6MzdQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBBbSAxMC4xMi4yMSB1bSAxMzo0MiBzY2hyaWViIEphc29uIEd1bnRob3JwZToK
PiA+IE9uIEZyaSwgRGVjIDEwLCAyMDIxIGF0IDA4OjI5OjI0UE0gKzA5MDAsIFNodW5zdWtlIE1p
ZSB3cm90ZToKPiA+ID4gSGkgSmFzb24sCj4gPiA+IFRoYW5rIHlvdSBmb3IgcmVwbHlpbmcuCj4g
PiA+IAo+ID4gPiAyMDIx5bm0MTLmnIg45pelKOawtCkgMjoxNCBKYXNvbiBHdW50aG9ycGUgPGpn
Z0B6aWVwZS5jYT46Cj4gPiA+ID4gT24gRnJpLCBEZWMgMDMsIDIwMjEgYXQgMTI6NTE6NDRQTSAr
MDkwMCwgU2h1bnN1a2UgTWllIHdyb3RlOgo+ID4gPiA+ID4gSGkgbWFpbnRhaW5lcnMsCj4gPiA+
ID4gPiAKPiA+ID4gPiA+IENvdWxkIHlvdSBwbGVhc2UgcmV2aWV3IHRoaXMgcGF0Y2ggc2VyaWVz
Pwo+ID4gPiA+IFdoeSBpcyBpdCBSRkM/Cj4gPiA+ID4gCj4gPiA+ID4gSSdtIGNvbmZ1c2VkIHdo
eSB0aGlzIGlzIHVzZWZ1bD8KPiA+ID4gPiAKPiA+ID4gPiBUaGlzIGNhbid0IGRvIGNvcHkgZnJv
bSBNTUlPIG1lbW9yeSwgc28gaXQgc2hvdWxkbid0IGJlIGNvbXBhdGlibGUKPiA+ID4gPiB3aXRo
IHRoaW5ncyBsaWtlIEdhdWRpIC0gZG9lcyBzb21ldGhpbmcgcHJldmVudCB0aGlzPwo+ID4gPiBJ
IHRoaW5rIGlmIGFuIGV4cG9ydCBvZiB0aGUgZG1hLWJ1ZiBzdXBwb3J0cyB2bWFwLCBDUFUgaXMg
YWJsZSB0byBhY2Nlc3MgdGhlCj4gPiA+IG1taW8gbWVtb3J5Lgo+ID4gPiAKPiA+ID4gSXMgaXQg
d3Jvbmc/IElmIHRoaXMgaXMgd3JvbmcsIHRoZXJlIGlzIG5vIGFkdmFudGFnZXMgdGhpcyBjaGFu
Z2VzLi4KPiA+IEkgZG9uJ3Qga25vdyB3aGF0IHRoZSBkbWFidWYgZm9sa3MgZGlkLCBidXQgeWVz
LCBpdCBpcyB3cm9uZy4KPiA+IAo+ID4gSU9NRU0gbXVzdCBiZSB0b3VjaGVkIHVzaW5nIG9ubHkg
c3BlY2lhbCBhY2Nlc3NvcnMsIHNvbWUgcGxhdGZvcm1zCj4gPiBjcmFzaCBpZiB5b3UgZG9uJ3Qg
ZG8gdGhpcy4gRXZlbiB4ODYgd2lsbCBjcmFzaCBpZiB5b3UgdG91Y2ggaXQgd2l0aAo+ID4gc29t
ZXRoaW5nIGxpa2UgYW4gWE1NIG9wdGltaXplZCBtZW1jcHkuCj4gPiAKPiA+IENocmlzdGlhbj8g
SWYgdGhlIHZtYXAgc3VjY2VlZHMgd2hhdCBydWxlcyBtdXN0IHRoZSBjYWxsZXIgdXNlIHRvCj4g
PiBhY2Nlc3MgdGhlIG1lbW9yeT8KPiAKPiBTZWUgZG1hLWJ1Zi1tYXAuaCBhbmQgZXNwZWNpYWxs
eSBzdHJ1Y3QgZG1hX2J1Zl9tYXAuCj4gCj4gTU1JTyBtZW1vcnkgaXMgcGVyZmVjdGx5IHN1cHBv
cnRlZCBoZXJlIGFuZCBhY3R1YWxseSB0aGUgbW9zdCBjb21tb24gY2FzZS4KCk9rYXkgdGhhdCBs
b29rcyBzYW5lLCBidXQgdGhpcyByeGUgUkZDIHNlZW1zIHRvIGlnbm9yZSB0aGlzCmNvbXBsZXRl
bHkuIEl0IHN0dWZmcyB0aGUgdmFkZHIgZGlyZWN0bHkgaW50byBhIHVtZW0gd2hpY2ggZ29lcyB0
byBhbGwKbWFubmVyIG9mIHBsYWNlcyBpbiB0aGUgZHJpdmVyLgoKPz8KCkphc29uCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxp
bmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
