Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDC028AFD3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Oct 2020 10:13:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 61C9866519
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Oct 2020 08:13:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 56AFE66521; Mon, 12 Oct 2020 08:13:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 13E4460EBF;
	Mon, 12 Oct 2020 08:13:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E882E60911
 for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Oct 2020 08:13:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D48DC60EBF; Mon, 12 Oct 2020 08:13:17 +0000 (UTC)
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by lists.linaro.org (Postfix) with ESMTPS id C4A3B60911
 for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Oct 2020 08:13:16 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id t25so21891679ejd.13
 for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Oct 2020 01:13:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=ISkqozpSXsD9a8Oh/2Mwcyva57KxR87dIuzCIf+AzK4=;
 b=Wg5LrOvms2J7XpPHVoNw1VC+g0liY27QfvFCGO5GI4Ek8NkdlJWvX0m2RNHAUKXXOV
 406bGwbkXM99iZ5PS9NFMwd+Ae6IcgUQABs5YPLOS+w9KWk70iGMByPflyTqS/ubYgUy
 I4d1rKmW6RvbuPRyhJ7Lhf1mqnNwNzLi3v21SU+9HgNvHFAKdKF2FCV4KHtqY6z1KZVl
 /IZNARFkxTadJycHyOfQ2nc8dLDGhR27/lCZ2CN69GKmfP4wUNB+H58LTerdMaBvm0vG
 kBcy9w3vHC2cUURDZ9CoaXFfmWhLO0I4JaO+Jmn7edrKy16y2YX3AqypdpJ7SSr9wG+n
 1q9Q==
X-Gm-Message-State: AOAM532vWPMOld+6qzu+K1Uk8s3lCM4+eJvicqjmrjmukJ7bnYZ0mdee
 1CtKeMWQRJMuYE3+H2fMaaY=
X-Google-Smtp-Source: ABdhPJyESr76MyJXr7Jw9FX0sBn+vlDp7RU85Q8VgP3nIl7qNvty4ksx+a/gWI8+0WMbFKdXmfr7Ow==
X-Received: by 2002:a17:906:4e06:: with SMTP id
 z6mr28073702eju.370.1602490395918; 
 Mon, 12 Oct 2020 01:13:15 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id p16sm10218325ejz.103.2020.10.12.01.13.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 Oct 2020 01:13:15 -0700 (PDT)
To: Jason Gunthorpe <jgg@ziepe.ca>, Andrew Morton <akpm@linux-foundation.org>
References: <20201009150342.1979-1-christian.koenig@amd.com>
 <20201009150420.450833e3830b9d39a2385dd9@linux-foundation.org>
 <20201009222509.GC5177@ziepe.ca>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <666ef8f3-6299-3c0b-6ebb-04e957a115a1@gmail.com>
Date: Mon, 12 Oct 2020 10:13:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201009222509.GC5177@ziepe.ca>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Miaohe Lin <linmiaohe@huawei.com>, jhubbard@nvidia.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, willy@infradead.org,
 daniel@ffwll.ch, airlied@redhat.com, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 1/6] mm: mmap: fix fput in error path
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
Reply-To: christian.koenig@amd.com
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

QW0gMTAuMTAuMjAgdW0gMDA6MjUgc2NocmllYiBKYXNvbiBHdW50aG9ycGU6Cj4gT24gRnJpLCBP
Y3QgMDksIDIwMjAgYXQgMDM6MDQ6MjBQTSAtMDcwMCwgQW5kcmV3IE1vcnRvbiB3cm90ZToKPj4g
T24gRnJpLCAgOSBPY3QgMjAyMCAxNzowMzozNyArMDIwMCAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNr
b2VuaWcubGVpY2h0enVtZXJrZW5AZ21haWwuY29tPiB3cm90ZToKPj4KPj4+IFBhdGNoICI0OTVj
MTBjYzFjMGMgQ0hST01JVU06IGRtYS1idWY6IHJlc3RvcmUgYXJncy4uLiIKPj4+IGFkZHMgYSB3
b3JrYXJvdW5kIGZvciBhIGJ1ZyBpbiBtbWFwX3JlZ2lvbi4KPj4+Cj4+PiBBcyB0aGUgY29tbWVu
dCBzdGF0ZXMgLT5tbWFwKCkgY2FsbGJhY2sgY2FuIGNoYW5nZQo+Pj4gdm1hLT52bV9maWxlIGFu
ZCBzbyB3ZSBtaWdodCBjYWxsIGZwdXQoKSBvbiB0aGUgd3JvbmcgZmlsZS4KPj4+Cj4+PiBSZXZl
cnQgdGhlIHdvcmthcm91bmQgYW5kIHByb3BlciBmaXggdGhpcyBpbiBtbWFwX3JlZ2lvbi4KPj4+
Cj4+IERvZXNuJ3QgdGhpcyBwYXRjaCBzZXJpZXMgYWRkcmVzcyB0aGUgc2FtZSB0aGluZyBhcwo+
PiBodHRwczovL2xrbWwua2VybmVsLm9yZy9yLzIwMjAwOTE2MDkwNzMzLjMxNDI3LTEtbGlubWlh
b2hlQGh1YXdlaS5jb20/Cj4gU2FtZSBiYXNpYyBpc3N1ZSwgbG9va3MgbGlrZSBib3RoIG9mIHRo
ZXNlIHBhdGNoZXMgc2hvdWxkIGJlIGNvbWJpbmVkCj4gdG8gcGx1ZyBpdCBmdWxseS4KClllcywg
YWdyZWUgY29tcGxldGVseS4KCkl0J3MgYSBkaWZmZXJlbnQgZXJyb3IgcGF0aCwgYnV0IHdlIG5l
ZWQgdG8gZml4IGJvdGggb2NjYXNpb25zLgoKQ2hyaXN0aWFuLgoKPgo+IEphc29uCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5s
aW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
